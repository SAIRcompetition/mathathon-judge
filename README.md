# Caltech Mathathon Round 1: Judging Design

Judging rules, rubric, Lean verification rules, and an LLM-judge workflow for Round 1 of the [Caltech Mathathon](https://mathathonchallenge.com/), whose theme is *Old Problems, New Proofs*. Round 1 is a 40-hour onsite event (Nov 13–15) with about 100 teams.

**Status:** Draft, not yet adopted. Every item marked **[TBD]** needs a decision from the organizers.

## Contents

| File | What it is | Main audience |
|---|---|---|
| [`docs/judging_policy.md`](docs/judging_policy.md) | Judging policy: Round 1 process and guidelines, Round 2 process and guidelines, and a 1–5 rubric grid. The appendices cover problem selection, the written submission, judges, organizer procedures, and notes for organizers (suggested tracks and design rationale). | Participants, judges, organizers |
| [`docs/lean_verification_rules.md`](docs/lean_verification_rules.md) | Lean verification rules: Lean v4.35.0 with Mathlib v4.35.0, what "verified" means, claim labels, and declared levels. Lean is optional. | Participants, judges |
| [`docs/llm_judge_workflow.md`](docs/llm_judge_workflow.md) | LLM judge rules and workflow: the 7-model panel, the review package, aggregation, human triage, failure handling, publication, and research records. | Organizers, judges |
| [`docs/llm_judge_prompts.md`](docs/llm_judge_prompts.md) | The judge prompt, shared by all panel models, and the summarizer prompt, with their output formats and validation rules. These stay private until results are announced. | LLM operator |

## Design in brief

- **Human judges** score the talk and Q&A on four dimensions: Correctness, Clarity, Motivation, and Interest. They use a 1–5 scale, and every score needs a written justification.
- **A panel of seven LLMs** scores the written report.
  - The panel has three proprietary models and four open models, all given the same prompt.
  - Each model scores the same four dimensions plus two of its own: Attribution and Novelty.
  - A summarizer merges the seven evaluations of each team.
- **Lean formalization** is optional. When a team uses it, organizers check it, and it counts as evidence for Correctness.
- **Scores are only suggestive.** They build a shortlist. Winners are chosen through holistic deliberation and a vote.
- Any critical issue flagged by an LLM is checked by a human before it can affect a team.
- After results are announced, all submissions and LLM evaluations are published.

## Not included

- **The Terms of Service and the Privacy Policy.** Participants must accept both before submitting, but they will be drafted separately.
- **Software.** There is no Lean tooling and no LLM pipeline code. The documents state rules and process steps only.
- **The source materials** in `reference/` and the internal design plan (`round1_judging_plan.md`). Both are kept locally and are not tracked.

## License

Apache License 2.0. See [`LICENSE`](LICENSE).

This license covers the documents and prompts in this repository. It does not cover the participants' submissions, which will be published under the license that the organizers choose (LLM Judge Workflow §9).
