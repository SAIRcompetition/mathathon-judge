#!/usr/bin/env python3
"""Build the per-problem files in problems_original/ and the table in its README.md
from the sheet exports in source/.

Run:  python3 problems_original/split_sheet.py

The exports in source/ are not tracked in the repository; download them first
(see source/README.txt, also untracked, or README.md).

The problems are the first tab of the sheet; other tabs are not read.  The text under
each field heading is the CSV cell, unchanged, except that track names the sheet spells
differently are replaced by the five official names (TRACK_NAMES).  The column "Judge Suggestions" gets its
own heading in the files where it is not empty.  Hyperlinks attached to cells are read
from the HTML export and cross-checked against the XLSX export; those of the judge
column are listed under their own heading.  After writing, the script reads every file
back and checks that each field is byte-identical to its CSV cell (after that track
name replacement); it exits with an error otherwise.
"""
import csv
import re
import sys
import unicodedata
import xml.etree.ElementTree as ET
import zipfile
from html.parser import HTMLParser
from pathlib import Path

OUT = Path(__file__).resolve().parent
SRC = OUT / "source"
CSV_FILE = SRC / "mathathon-problem-sheet.csv"
XLSX_FILE = SRC / "mathathon-problem-sheet.xlsx"
HTML_ZIP = SRC / "mathathon-problem-sheet-html.zip"

HEADER = [
    "Problem ID",
    "Title/name of problem",
    "Short description of problem (100 words or less)",
    "Submitted Area",
    "Proposed Tracks",
    "Reference/source material",
    "Desired outcome",
]
LINKS_HEADING = "Reference links"
JUDGE = "Judge Suggestions"  # column 8; rendered only when not empty
JUDGE_COL = len(HEADER)
JUDGE_LINKS_HEADING = "Links in Judge Suggestions"
# The sheet spells some of the five tracks differently; the files use the names in
# rules/submission-guidelines.md, which the platform's problem import matches exactly.
TRACK_NAMES = {
    "Number Theory/Algebra": "Algebra/Number Theory",
    "Numer Theory/Algebra": "Algebra/Number Theory",
    "Computation/Applied Mathematics": "Computation/Applied Math",
    "Computation/Applied mathematics": "Computation/Applied Math",
    "Computaiton/Applied Math": "Computation/Applied Math",
}
INDEX_START = "<!-- problem-index:start -->"
INDEX_END = "<!-- problem-index:end -->"


def write_index(written):
    """Rebuild the problem table in README.md, between the problem-index markers."""
    readme = OUT / "README.md"
    text = readme.read_text(encoding="utf-8")
    if INDEX_START not in text or INDEX_END not in text:
        sys.exit("README.md has no problem-index markers")
    cell = lambda s: " ".join(s.split()).replace("|", "\\|")
    rows = ["| ID | Problem | Tracks |", "|---|---|---|"]
    rows += [f"| {int(row[0])} | [{cell(row[1])}]({path.name}) | {cell(row[4])} |"
             for path, row in written]
    head, rest = text.split(INDEX_START, 1)
    tail = rest.split(INDEX_END, 1)[1]
    readme.write_text(f"{head}{INDEX_START}\n" + "\n".join(rows) + f"\n{INDEX_END}{tail}",
                      encoding="utf-8")


def official_tracks(cell):
    """The Proposed Tracks cell with TRACK_NAMES applied; unchanged if none occurs."""
    parts = [t.strip() for t in cell.split(",")]
    if not any(t in TRACK_NAMES for t in parts):
        return cell
    return ", ".join(TRACK_NAMES.get(t, t) for t in parts)


def slug(title):
    s = unicodedata.normalize("NFKD", title).encode("ascii", "ignore").decode().lower()
    s = re.sub(r"['`]", "", s)
    s = re.sub(r"[^a-z0-9]+", "-", s).strip("-")
    if len(s) > 60:
        s = s[:60].rsplit("-", 1)[0]
    return s or "untitled"


def read_csv():
    rows = list(csv.reader(open(CSV_FILE, newline="", encoding="utf-8")))
    if rows[0][:7] != HEADER or rows[0][7:] not in ([], [""], [JUDGE]):
        sys.exit(f"unexpected header: {rows[0]}")
    if any(c.strip() for r in rows for c in r[8:]):
        sys.exit("the CSV has content beyond the column Judge Suggestions")
    for r in rows[1:]:
        if len(r) > 4:
            r[4] = official_tracks(r[4])
    # sheet row number (1-based, header = row 1) -> row
    return {i + 1: r for i, r in enumerate(rows) if i > 0 and any(c.strip() for c in r)}


def col_index(letters):
    n = 0
    for ch in letters:
        n = n * 26 + ord(ch) - 64
    return n - 1


M_NS = "{http://schemas.openxmlformats.org/spreadsheetml/2006/main}"
R_NS = "{http://schemas.openxmlformats.org/officeDocument/2006/relationships}"


def first_tab():
    """Name of the first tab (the problems); its XLSX part must be sheet1.xml."""
    z = zipfile.ZipFile(XLSX_FILE)
    wb = ET.fromstring(z.read("xl/workbook.xml"))
    rels = {e.get("Id"): e.get("Target")
            for e in ET.fromstring(z.read("xl/_rels/workbook.xml.rels"))}
    first = next(wb.iter(M_NS + "sheet"))
    if not rels[first.get(R_NS + "id")].endswith("worksheets/sheet1.xml"):
        sys.exit("the first tab of the XLSX export is not sheet1.xml")
    return first.get("name")


def xlsx_sheet():
    z = zipfile.ZipFile(XLSX_FILE)
    sheet = ET.fromstring(z.read("xl/worksheets/sheet1.xml"))
    rels = {e.get("Id"): e.get("Target")
            for e in ET.fromstring(z.read("xl/worksheets/_rels/sheet1.xml.rels"))}
    return sheet, rels


def xlsx_links():
    sheet, rels = xlsx_sheet()
    out = {}
    for h in sheet.iter(M_NS + "hyperlink"):
        ref = re.fullmatch(r"([A-Z]+)(\d+)", h.get("ref"))
        out[(int(ref.group(2)), col_index(ref.group(1)))] = rels[h.get(R_NS + "id")]
    return out


def hidden_columns():
    """0-based indices of the columns hidden in the sheet (the HTML export leaves them out)."""
    sheet, _ = xlsx_sheet()
    out = set()
    for c in sheet.iter(M_NS + "col"):
        if c.get("hidden") == "1":
            out.update(range(int(c.get("min")) - 1, int(c.get("max"))))
    return out


class SheetHTML(HTMLParser):
    """Collect the links in each cell of the exported table, keyed by (row, html column)."""

    def __init__(self):
        super().__init__()
        self.row = None
        self.col = -1
        self.cell = None
        self.anchor = None
        self.links = {}

    def handle_starttag(self, tag, attrs):
        a = dict(attrs)
        if tag == "tr":
            self.row, self.col = None, -1
        elif tag == "th" and re.fullmatch(r"\d+R\d+", a.get("id") or ""):
            self.row = int(a["id"].split("R")[1]) + 1  # id "0R<n>" is sheet row n+1
        elif tag == "td":
            self.col += 1
            self.cell = []
            self.span = int(a.get("colspan", 1))
        elif tag == "a" and self.cell is not None:
            self.anchor = [a.get("href"), ""]
        elif tag == "br" and self.anchor is not None:
            self.anchor[1] += "\n"

    def handle_endtag(self, tag):
        if tag == "a" and self.anchor is not None:
            self.cell.append(tuple(self.anchor))
            self.anchor = None
        elif tag == "td" and self.cell is not None:
            if self.cell and self.row is not None:
                self.links[(self.row, self.col)] = self.cell
            self.col += self.span - 1
            self.cell = None

    def handle_data(self, data):
        if self.anchor is not None:
            self.anchor[1] += data


def html_links():
    z = zipfile.ZipFile(HTML_ZIP)
    p = SheetHTML()
    p.feed(z.read(f"{first_tab()}.html").decode("utf-8"))
    hidden = hidden_columns()
    visible = [c for c in range(1000) if c not in hidden]
    return {(row, visible[col]): lst for (row, col), lst in p.links.items()}


def judge_of(row):
    """The Judge Suggestions cell, or '' when it is missing or blank."""
    value = row[JUDGE_COL] if len(row) > JUDGE_COL else ""
    return value if value.strip() else ""


def render(row, links):
    pid = row[0]
    parts = [f"# Problem {pid}\n"]
    for name, value in zip(HEADER, row[:7]):
        parts.append(f"\n## {name}\n\n{value}\n")
    if judge_of(row):
        parts.append(f"\n## {JUDGE}\n\n{judge_of(row)}\n")
    # in order, without repeats; links of the judge column under their own heading
    for heading, urls in [
        (LINKS_HEADING, [url for col, url, _ in links if col != JUDGE_COL]),
        (JUDGE_LINKS_HEADING, [url for col, url, _ in links if col == JUDGE_COL]),
    ]:
        urls = list(dict.fromkeys(urls))
        if urls:
            parts.append(f"\n## {heading}\n\n")
            parts.extend(f"- <{url}>\n" for url in urls)
    return "".join(parts)


def parse_section(text, name):
    """The text under the heading '## name', cut at the next heading; '' if absent."""
    marker = f"\n## {name}\n\n"
    if marker not in text:
        return ""
    start = text.index(marker) + len(marker)
    end = text.find("\n\n## ", start)
    return text[start:end] if end != -1 else text[start:-1]


def parse_back(text):
    """Return the field values of a rendered file, cut at the headings."""
    values = []
    for i, name in enumerate(HEADER):
        start = text.index(f"\n## {name}\n\n") + len(f"\n## {name}\n\n")
        end = text.find("\n\n## ", start)
        values.append(text[start:end] if end != -1 else text[start:-1])
    return values


def main():
    rows = read_csv()
    xl = xlsx_links()
    hl = html_links()
    # Cross-check: same cells, same targets (the XLSX export drops a #fragment; the HTML
    # export keeps it, and the HTML targets are the ones written).
    defrag = lambda u: u.split("#", 1)[0]
    flat = {k: [defrag(u) for u, _ in v] for k, v in hl.items()}
    if set(flat) != set(xl) or any(defrag(xl[k]) not in flat[k] for k in xl):
        sys.exit(f"HTML and XLSX links disagree:\n{sorted(set(flat) ^ set(xl))}")
    for old in OUT.glob("[0-9][0-9][0-9]-*.md"):
        old.unlink()
    written = []
    for sheet_row, row in sorted(rows.items()):
        pid = int(row[0])
        links = [(col, url, text) for (r, col), lst in sorted(hl.items()) if r == sheet_row
                 for url, text in lst]
        path = OUT / f"{pid:03d}-{slug(row[1])}.md"
        path.write_text(render(row, links), encoding="utf-8")
        written.append((path, row))
    bad = [p.name for p, row in written
           if parse_back(p.read_text(encoding="utf-8")) != row[:7]
           or parse_section(p.read_text(encoding="utf-8"), JUDGE) != judge_of(row)]
    if bad:
        sys.exit(f"round-trip check failed for: {bad}")
    write_index(written)
    print(f"wrote {len(written)} files and the README table; every field matches its CSV cell byte for byte (track names aside); "
          f"{sum(len(v) for v in hl.values())} links in {len(hl)} cells")


if __name__ == "__main__":
    main()
