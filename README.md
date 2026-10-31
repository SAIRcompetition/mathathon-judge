# Caltech Mathathon: Judging Design

This repository holds the judging policy, rubric, Lean verification rules, and LLM-judge workflow for the [Caltech Mathathon](https://mathathonchallenge.com/), whose theme is *Old Problems, New Proofs*. The Mathathon has two rounds:

- **Round 1** is a 40-hour onsite event (Nov 13–15) with about 100 teams.
- **Round 2** is a two-month project with a mentor.

**Status:** This is a draft and has not yet been adopted. Items marked **[TBD]** in the judging policy need a decision from the organizers.

## Contents

| File | What it is | Main audience |
|---|---|---|
| [`docs/judging_policy.md`](docs/judging_policy.md) | The process and guidelines for Rounds 1 and 2, and the 1–5 rubric. The appendices cover problem selection, the written submission, judges, organizer procedures, and notes for organizers. | Participants, judges, organizers |
| [`docs/lean_verification_rules.md`](docs/lean_verification_rules.md) | Round 1 Lean rules: Lean v4.35.0 with Mathlib v4.35.0, what "verified" means, claim labels, and declared levels. Lean is optional. | Participants, judges |
| [`docs/llm_judge_workflow.md`](docs/llm_judge_workflow.md) | Round 1 LLM judging: the seven-model panel, the review package, aggregation, human triage, failure handling, publication, and research records. | Organizers, judges |
| [`docs/llm_judge_prompts.md`](docs/llm_judge_prompts.md) | The judge prompt shared by all panel models and the summarizer prompt, with their output formats and validation rules. The prompts stay private until results are announced. | LLM operator |

## Design in brief

**Round 1**

- **Human judges** score the talk and Q&A on four dimensions: Correctness, Clarity, Motivation, and Interest. Each score is from 1 to 5 and needs a written justification.
- **A panel of seven LLMs** scores the written report on the same four dimensions plus Attribution and Novelty.
  - The panel has three proprietary models and four open models, and all of them get the same prompt.
  - A summarizer merges the seven evaluations of each team into one.
- **Lean is optional.** Organizers check any Lean submissions, and the results count as evidence for Correctness.
- **Scores only build a shortlist.** The judges choose the winners through deliberation and a vote. A human checks every critical issue an LLM flags before it can affect a team.
- **Publication.** After a correction window, all submissions and their LLM evaluations are published.

**Round 2**

- Teams that continue work with a mentor for two months.
- Their projects are judged through feedback from the mentor, feedback from other judges, and a public vote.

## Not included

- **The Terms of Service and the Privacy Policy.** Participants accept both before submitting. They are drafted separately.
- **Software.** The repository has no Lean tooling and no LLM pipeline code. The documents state rules and process steps only.

## License

Apache License 2.0. See [`LICENSE`](LICENSE).

This license covers the documents and prompts in this repository. Participants' submissions are published separately: reports and LLM evaluations under CC BY 4.0, and code under the license each team chooses (LLM Judge Workflow §9).
