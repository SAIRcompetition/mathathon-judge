#!/usr/bin/env python3
"""Build the per-problem files in problems_original/ from the sheet exports in source/.

Run:  python3 problems_original/split_sheet.py

The exports in source/ are not tracked in the repository; download them first
(see source/README.txt, also untracked, or README.md).

The text under each field heading is the CSV cell, unchanged.  Hyperlinks attached to
cells are read from the HTML export and cross-checked against the XLSX export.  After
writing, the script reads every file back and checks that each field is byte-identical
to its CSV cell; it exits with an error otherwise.
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


def slug(title):
    s = unicodedata.normalize("NFKD", title).encode("ascii", "ignore").decode().lower()
    s = re.sub(r"['`]", "", s)
    s = re.sub(r"[^a-z0-9]+", "-", s).strip("-")
    if len(s) > 60:
        s = s[:60].rsplit("-", 1)[0]
    return s or "untitled"


def read_csv():
    rows = list(csv.reader(open(CSV_FILE, newline="", encoding="utf-8")))
    if rows[0][:7] != HEADER:
        sys.exit(f"unexpected header: {rows[0]}")
    # sheet row number (1-based, header = row 1) -> row
    return {i + 1: r for i, r in enumerate(rows) if i > 0 and any(c.strip() for c in r)}


def col_index(letters):
    n = 0
    for ch in letters:
        n = n * 26 + ord(ch) - 64
    return n - 1


M_NS = "{http://schemas.openxmlformats.org/spreadsheetml/2006/main}"
R_NS = "{http://schemas.openxmlformats.org/officeDocument/2006/relationships}"


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
    p.feed(z.read("Sheet1.html").decode("utf-8"))
    hidden = hidden_columns()
    visible = [c for c in range(1000) if c not in hidden]
    return {(row, visible[col]): lst for (row, col), lst in p.links.items()}


def render(row, links):
    pid = row[0]
    parts = [f"# Problem {pid}\n"]
    for name, value in zip(HEADER, row[:7]):
        parts.append(f"\n## {name}\n\n{value}\n")
    urls = list(dict.fromkeys(url for _, url, _ in links))  # in order, without repeats
    if urls:
        parts.append(f"\n## {LINKS_HEADING}\n\n")
        parts.extend(f"- <{url}>\n" for url in urls)
    return "".join(parts)


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
    # Cross-check: same cells, same targets.
    flat = {k: [u for u, _ in v] for k, v in hl.items()}
    if set(flat) != set(xl) or any(xl[k] not in flat[k] for k in xl):
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
           if parse_back(p.read_text(encoding="utf-8")) != row[:7]]
    if bad:
        sys.exit(f"round-trip check failed for: {bad}")
    print(f"wrote {len(written)} files; every field matches its CSV cell byte for byte; "
          f"{sum(len(v) for v in hl.values())} links in {len(hl)} cells")


if __name__ == "__main__":
    main()
