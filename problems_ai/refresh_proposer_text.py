#!/usr/bin/env python3
"""Rebuild the proposer part of every page in problems_ai/ from problems_original/.

Run after refreshing problems_original/ (python3 problems_original/split_sheet.py):

    python3 problems_ai/refresh_proposer_text.py

For each problem in problems_original/, the page in problems_ai/ with the same Problem ID
gets a new title line and "From the proposer" section built from the sheet text: title,
area and tracks with surrounding spaces collapsed, and description, desired outcome and
references unchanged (checked), except for the typos and wrong bibliographic details
listed in corrections.json (problems_original/ keeps the sheet text as it is). Each
correction states how often its text occurs; the script stops if the sheet no longer
matches. Its "AI-generated notes" section is kept exactly as it is; a new problem gets a
placeholder. The problem table in README.md (between the problem-index markers) is rebuilt.

The notes are never changed by this script, so after a substantive change to a problem
in the sheet, its notes need to be reviewed by hand.
"""
import json
import re
import sys
from pathlib import Path

AI = Path(__file__).resolve().parent
ORIG = AI.parent / "problems_original"
sys.path.insert(0, str(ORIG))
import split_sheet  # noqa: E402  (HEADER, parse_back, LINKS_HEADING)

NOTES_HEADING = "## AI-generated notes"
PLACEHOLDER = (f"{NOTES_HEADING}\n\n<!-- status: — -->\n\n"
               "> No AI notes have been written for this problem yet.\n")
INDEX_START = "<!-- problem-index:start -->"
INDEX_END = "<!-- problem-index:end -->"
CORRECTIONS = json.loads((AI / "corrections.json").read_text(encoding="utf-8"))


def corrected(pid, fields):
    """The sheet fields of a problem with its corrections from corrections.json applied."""
    fields = list(fields)
    for c in (c for c in CORRECTIONS if c["id"] == pid):
        i = split_sheet.HEADER.index(c["field"])
        if fields[i].count(c["old"]) != c["count"]:
            sys.exit(f"problem {pid}: correction {c['old']!r} no longer matches the sheet")
        fields[i] = fields[i].replace(c["old"], c["new"])
    return fields


def ws(s):
    return " ".join(s.split())


def load_original():
    """[(pid, file name, the seven field values, links block or '')], in Problem ID order."""
    out = []
    for path in sorted(ORIG.glob("[0-9][0-9][0-9]-*.md")):
        text = path.read_text(encoding="utf-8")
        fields = split_sheet.parse_back(text)
        marker = f"\n## {split_sheet.LINKS_HEADING}\n\n"
        links = text.split(marker, 1)[1] if marker in text else ""
        out.append((int(fields[0]), path.name, fields, links))
    return out


# Long sections of the page: (heading, index of the sheet field), in page order.
SECTIONS = [("Description", 2), ("Desired outcome", 6), ("References", 5)]


def render_page(pid, fname, fields, links, notes):
    parts = [
        f"# {pid} · {ws(fields[1])}\n\n",
        "## From the proposer\n\n",
        f"- **Area:** {ws(fields[3])}\n",
        f"- **Tracks:** {ws(fields[4])}\n",
    ]
    for name, i in SECTIONS:
        parts.append(f"\n### {name}\n\n{fields[i]}\n")
    if links:
        parts.append(f"\n### {split_sheet.LINKS_HEADING}\n\n{links}")
    parts.append("\n" + notes.rstrip("\n") + "\n")
    return "".join(parts)


def proposer_ok(page, pid, fields):
    """Check that a page's title line and 'From the proposer' section match the sheet."""
    # The section ends with the last value followed by exactly one added newline.
    body = page.split("\n## From the proposer\n", 1)[1].split("\n" + NOTES_HEADING, 1)[0]
    if page.split("\n", 1)[0] != f"# {pid} · {ws(fields[1])}":
        return False
    if (f"\n- **Area:** {ws(fields[3])}\n" not in body
            or f"\n- **Tracks:** {ws(fields[4])}\n" not in body):
        return False
    for name, i in SECTIONS:
        start = body.index(f"\n### {name}\n\n") + len(f"\n### {name}\n\n")
        end = body.find("\n\n### ", start)
        if (body[start:end] if end != -1 else body[start:-1]) != fields[i]:
            return False
    return True


def notes_of(page):
    i = page.find("\n" + NOTES_HEADING + "\n")
    return page[i + 1:] if i != -1 else None


def status_of(notes):
    m = re.search(r"<!-- status: (.*?) -->", notes)
    return m.group(1) if m else "—"


def lean_of(notes):
    return "✓" if re.search(r"^- \*\*Lean:\*\* Official statement", notes, re.M) else "—"


def write_index(rows):
    readme = AI / "README.md"
    text = readme.read_text(encoding="utf-8")
    if INDEX_START not in text or INDEX_END not in text:
        sys.exit("README.md has no problem-index markers")
    cell = lambda s: ws(s).replace("|", "\\|")
    table = ["| ID | Problem | Tracks | Status | Lean |", "|---|---|---|---|---|"]
    for pid, fname, title, tracks, status, lean in rows:
        table.append(f"| {pid} | [{cell(title)}]({fname}) | {cell(tracks)} | {status} | {lean} |")
    head, rest = text.split(INDEX_START, 1)
    tail = rest.split(INDEX_END, 1)[1]
    readme.write_text(f"{head}{INDEX_START}\n{chr(10).join(table)}\n{INDEX_END}{tail}",
                      encoding="utf-8")


def write_pages(notes_for):
    """notes_for(pid, existing_notes) -> notes section; writes every page and the index."""
    rows = []
    for pid, fname, fields, links in load_original():
        fields = corrected(pid, fields)
        existing = sorted(AI.glob(f"{pid:03d}-*.md"))
        old_notes = notes_of(existing[0].read_text(encoding="utf-8")) if existing else None
        notes = notes_for(pid, old_notes)
        page = render_page(pid, fname, fields, links, notes)
        if not proposer_ok(page, pid, fields):
            sys.exit(f"problem {pid}: proposer text would not match the sheet")
        for p in existing:
            p.unlink()
        (AI / fname).write_text(page, encoding="utf-8")
        rows.append((pid, fname, fields[1], fields[4], status_of(notes), lean_of(notes)))
    write_index(rows)
    return rows


def main():
    rows = write_pages(lambda pid, old: old if old is not None else PLACEHOLDER)
    missing = [r[0] for r in rows if r[4] == "—"]
    print(f"rebuilt {len(rows)} pages; proposer text checked against the sheet; "
          f"pages without notes: {missing or 'none'}")


if __name__ == "__main__":
    main()
