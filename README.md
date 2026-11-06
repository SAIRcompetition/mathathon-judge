# Caltech Mathathon: Judging Design

This repository holds the judging policy, the rubric, and the automated review (Lean check and LLM panel) for the [Caltech Mathathon](https://mathathonchallenge.com/), whose theme is *Old Problems, New Proofs*. The Mathathon has two rounds:

- **Round 1** is a 40-hour onsite event (Nov 13–15) with about 100 teams.
- **Round 2** is a two-month project with a mentor.

**Status:** This is a draft and has not yet been adopted. Items marked **[TBD]** need a decision from the organizers.

## Contents

**For the website** (`rules/`)

| File | What it is | Audience |
|---|---|---|
| [`rules/overview.md`](rules/overview.md) | The introduction and FAQ from the Mathathon website | Everyone |
| [`rules/participant-rules.md`](rules/participant-rules.md) | Round 1 rules in four steps: registration, teams, problem selection, and submission (items, deadline, integrity). Then the presentation. How work is judged is in the judge rules. | Participants |
| [`rules/submission-guidelines.md`](rules/submission-guidelines.md) | How to prepare each item: the report, slides, supplementary materials and repositories, and the Lean project. Requirements and suggestions are kept apart. | Participants |
| [`rules/judge-rules.md`](rules/judge-rules.md) | Round 1 rules in three steps: registration, problem selection (with conflicts of interest), and scoring (the scoring form). Then the LLM judge: the seven-model panel that reviews each report. | Judges |
| [`rules/judge-guidelines.md`](rules/judge-guidelines.md) | How to score: the dimensions and their guidelines, the rubric, notes, and questions to ask. The Evidence Summary section is commented out for now. Participants can read it to see how their work is judged. | Judges, participants |

**Internal** (`docs/`)

| File | What it is | Audience |
|---|---|---|
| [`docs/judging_policy.md`](docs/judging_policy.md) | The full judging policy for Rounds 1 and 2, with the 1–5 rubric. The appendices cover problem selection, the written submission, judges, organizer procedures, and notes for organizers. | Organizers |
| [`docs/automated_review.md`](docs/automated_review.md) | Round 1 automated review: Lean rules and the automated Lean check; the seven-model LLM panel, the review package, aggregation, human triage, failure handling, publication, and research records. | Organizers, LLM operator |
| [`docs/llm_panel_prompts.md`](docs/llm_panel_prompts.md) | The prompt shared by all panel models and the summarizer prompt, with their output formats and validation rules. The prompts stay private until results are announced. | LLM operator |
| [`docs/platform_configuration.md`](docs/platform_configuration.md) | How to configure the SAIR competition platform for Round 1: settings, changes needed in the participant, judge, and organizer flows, and open decisions. | Platform team, organizers |

Apart from the overview, which reproduces the Mathathon website, the pages in `rules/` are drawn from the judging policy and the automated review. If they differ, the judging policy and the automated review prevail.

## Design in brief

**Round 1**

- **Human judges** score the talk and Q&A on four dimensions: Correctness, Clarity, Motivation, and Interest. Each score is a whole number from 1 to 5 and needs a written justification.
- **A panel of seven LLMs** scores the written report on the same four dimensions plus Attribution and Novelty.
  - The panel has three proprietary models and four open models, and all of them get the same prompt.
  - A summarizer merges the seven evaluations of each team into one.
- **Lean is optional.** An automated check confirms that each declared result builds and depends on no `sorry` or non-standard axiom, and the LLM panel checks that the formal statements match the report's claims. The results count as evidence for Correctness.
- **Scores only build a shortlist:** the top 10 teams by human scores, the top 10 by LLM scores, and every team a judge nominates. How the winners are chosen is [TBD]. A human checks every critical issue an LLM flags before it can affect a team.
- **Publication.** After a correction window, all submissions and their LLM evaluations are published.

**Round 2**

- Teams that continue work with a mentor for two months.
- Their projects are judged through feedback from the mentor, feedback from other judges, and a public vote.

## Not included

- **The Terms of Service and the Privacy Policy.** Participants accept both before submitting. They are drafted separately.
- **Software.** The repository has no Lean tooling and no LLM pipeline code. The documents state rules and process steps only.

## License

Apache License 2.0. See [`LICENSE`](LICENSE).

This license covers the documents and prompts in this repository. Participants' submissions are published separately: reports and LLM evaluations under CC BY 4.0, and code under the license each team chooses (Automated Review §10).
