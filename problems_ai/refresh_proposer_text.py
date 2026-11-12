#!/usr/bin/env python3
"""Rebuild the proposer part of every page in problems_ai/ from problems_original/.

Run after refreshing problems_original/ (python3 problems_original/source/split_sheet.py):

    python3 problems_ai/refresh_proposer_text.py

For each problem in problems_original/, the page in problems_ai/ with the same Problem ID
gets a new title line and "From the proposer" section, copied verbatim from the sheet.
Its "AI-generated notes" section is kept exactly as it is; a new problem gets a placeholder.
The problem table in README.md (between the problem-index markers) is rebuilt.

The notes are never changed by this script, so after a substantive change to a problem
in the sheet, its notes need to be reviewed by hand.
"""
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


def render_page(pid, fname, fields, links, notes):
    parts = [
        f"# {pid} · {ws(fields[1])}\n\n",
        "> Only the section **From the proposer** comes from the problem sheet; it is copied "
        f"verbatim from [`problems_original/{fname}`](../problems_original/{fname}). "
        f"Everything under **AI-generated notes** was written by AI and may contain errors.\n\n",
        "## From the proposer\n",
    ]
    for name, value in zip(split_sheet.HEADER[1:], fields[1:]):
        parts.append(f"\n### {name}\n\n{value}\n")
    if links:
        parts.append(f"\n### {split_sheet.LINKS_HEADING}\n\n{links}")
    parts.append("\n" + notes.rstrip("\n") + "\n")
    return "".join(parts)


def proposer_fields(page):
    """The field values of a page's 'From the proposer' section (for checking)."""
    # The section ends with the last value followed by exactly one added newline.
    body = page.split("\n## From the proposer\n", 1)[1].split("\n" + NOTES_HEADING, 1)[0]
    values = []
    for name in split_sheet.HEADER[1:]:
        start = body.index(f"\n### {name}\n\n") + len(f"\n### {name}\n\n")
        end = body.find("\n\n### ", start)
        values.append(body[start:end] if end != -1 else body[start:-1])
    return values


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
        existing = sorted(AI.glob(f"{pid:03d}-*.md"))
        old_notes = notes_of(existing[0].read_text(encoding="utf-8")) if existing else None
        notes = notes_for(pid, old_notes)
        page = render_page(pid, fname, fields, links, notes)
        if proposer_fields(page) != fields[1:]:
            sys.exit(f"problem {pid}: proposer text would not be verbatim")
        for p in existing:
            p.unlink()
        (AI / fname).write_text(page, encoding="utf-8")
        rows.append((pid, fname, fields[1], fields[4], status_of(notes), lean_of(notes)))
    write_index(rows)
    return rows


def main():
    rows = write_pages(lambda pid, old: old if old is not None else PLACEHOLDER)
    missing = [r[0] for r in rows if r[4] == "—"]
    print(f"rebuilt {len(rows)} pages; proposer text checked verbatim; "
          f"pages without notes: {missing or 'none'}")


if __name__ == "__main__":
    main()
