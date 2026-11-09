# Caltech Mathathon: Judging Design

This repository holds the Round 1 rules, the judging guidelines and rubric, and the problem list for the [Caltech Mathathon](https://mathathonchallenge.com/), whose theme is *Old Problems, New Proofs*. The Mathathon has two rounds:

- **Round 1** is an onsite event at Caltech (Nov 13–15) with about 100 teams and 40 hours of work.
- **Round 2** is a two-month project with a mentor.

**Status:** Items marked **[TBD]** still need a decision from the organizers.

## Contents

**For the website** (`rules/`)

| File | What it is | Audience |
|---|---|---|
| [`rules/overview.md`](rules/overview.md) | The introduction and FAQ from the Mathathon website | Everyone |
| [`rules/participant-rules.md`](rules/participant-rules.md) | Round 1 rules in four steps: registration, teams, problem selection, and submission (items, deadline, integrity). Then the presentation. How work is judged is in the judge rules. | Participants |
| [`rules/submission-guidelines.md`](rules/submission-guidelines.md) | How to prepare each item: the report, slides, supplementary materials and repositories, and the Lean project. Requirements and suggestions are kept apart. | Participants |
| [`rules/judge-rules.md`](rules/judge-rules.md) | Round 1 rules in three steps: registration, problem preferences (with conflicts of interest), and scoring (the scoring form). Then the LLM panel: the seven models that review each report. | Judges |
| [`rules/judge-guidelines.md`](rules/judge-guidelines.md) | How to score: the dimensions and their guidelines, the rubric, notes, and questions to ask. Participants can read it to see how their work is judged. | Judges, participants |

**Problems** (`problems/`)

| File | What it is | Audience |
|---|---|---|
| [`problems/README.md`](problems/README.md) | The Round 1 problem list: one page per problem, with tracks, area, description, desired outcome, references, and the official Lean statement if there is one | Everyone |
| [`problems/lean/`](problems/lean/) | The official Lean statements, as a Lean project for Lean v4.35.0 and Mathlib `v4.35.0` (configuration files and statements only) | Participants, LLM operator |

The overview reproduces the Mathathon website.

## Round 1 judging in brief

- **Human judges** score each presentation and its Q&A on four dimensions: Correctness, Clarity, Motivation, and Interest. Each score is a whole number from 1 to 5, with a comment.
- **A panel of seven AI models** reviews each written report on the same four dimensions plus Attribution and Novelty. Its scores are advisory, and an issue a model raises counts against a team only after a human has checked it.
- **Lean is optional.** An automated check builds each Lean project and records what each declared result depends on. A Lean result is evidence for Correctness, and only for the claims it verifies.
- **The judges decide the winners.**

## Not included

- **The Terms of Service and the Privacy Policy.** Participants accept both before submitting. They are drafted separately.
- **Software.** The repository has no Lean tooling and no LLM pipeline code. The documents state rules and process steps only.

## License

Apache License 2.0. See [`LICENSE`](LICENSE).

This license covers the documents in this repository.
