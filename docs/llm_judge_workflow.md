# Mathathon Round 1: LLM Judge Workflow

This document describes the rules and the steps of the process. It does not describe software or infrastructure.

---

## 1. Role of the LLM panel

A panel of seven large language models reads each team's written report and produces an **advisory** evaluation. The panel has three purposes:

1. **Careful reading.** It gives the judging process a careful reading of each team's written technical work, which a 30-minute talk cannot provide.
2. **Flagging.** It flags possible errors, mismatches between formal statements and claims, and attribution problems, so that humans can check them.
3. **Research.** It produces a research record of how different models judge the same mathematics.

**What the panel does not do:**
- The LLM scores feed **only the shortlist** (Judging Policy, Appendix D.1). They do not decide final rankings or winners.
- LLM scores can only add teams to the shortlist. No LLM finding is treated as fact until a human has checked it (§5.3).

## 2. Panel and settings

| Model | Group | Served by |
|---|---|---|
| Claude Opus 5.5 | Proprietary | OpenRouter, zero-data-retention (ZDR) endpoints |
| GPT 6.1 sol | Proprietary | OpenRouter, ZDR endpoints |
| Gemini 4 | Proprietary | OpenRouter, ZDR endpoints |
| DeepSeek 4.1 Flash | Open | SAIR deployment |
| Kimi K3.1 | Open | SAIR deployment |
| Muse Spark (open) | Open | SAIR deployment |
| Mistral Large 4 | Open | SAIR deployment |

**Settings for every panel model:**
- the same judge prompt (LLM Judge Prompts §1);
- the same review package;
- the strongest available reasoning setting;
- no web or tool access, so that conditions stay comparable and runs are traceable (this does not guarantee identical outputs on repeated runs);
- **one official evaluation per team.**

**Summarizer.** Claude Opus 5.5 runs the summarizer prompt (LLM Judge Prompts §2) once per team. Opus 5.5 is also on the panel, so the summarizer receives the evaluations anonymized and shuffled (§5.1). It only merges them; it never scores.

**Model record.** The exact model IDs and settings are recorded before the pilot and frozen together with the prompts (Appendix A).

## 3. What the panel assesses

The dimensions, their definitions, and the 1–5 level descriptors are the same as in the Judging Policy (Round 1 Guidelines and Rubric).

| Dimension | Human judges (talk) | LLM panel (report) | Use of the LLM score |
|---|---|---|---|
| Correctness | ✓ | ✓ | LLM signal |
| Clarity | ✓ | ✓ | LLM signal |
| Motivation | ✓ | ✓ | LLM signal |
| Interest | ✓ | ✓ | LLM signal |
| Novelty | — | ✓ | LLM signal |
| Attribution | — | ✓ | Flag only (§5.3) |

- **Scale.** The panel uses the Judging Policy's scale in steps of 0.5.
- **"Not assessable."** A model may mark a dimension "not assessable" when the materials give no basis at all for judging it. This is different from a low score.

## 4. The review package

The organizers assemble one package per team at T0. Every panel model receives the identical package, as text only.

| Part | Content |
|---|---|
| Team ID | An anonymous ID, such as `T-037` |
| Problem statement | Taken from the official problem list |
| Problem references | References supplied by whoever proposed the problem, or "None supplied" |
| Report source | The team's single flattened `.tex` file (Judging Policy, Appendix B.2), with the title block removed |
| Lean summary | For teams that submitted a repository: the declared level, plus each declaration's formal statement, the claim it supports, the team's label, and the organizers' results (Lean Verification Rules §10). Otherwise: "No Lean submission". The full Lean code is not included. |

**Not included:** slides, the talk, human scores, team identity, the repository link.

**Length rule.** There is one maximum length for every model. It is set during the pilot so that every panel model can read a whole package, and it is announced before the event. A longer package is cut the same way for every model: the main body is kept in full, the appendix is trimmed from the end, and a note marks the cut. Packages are never truncated silently.

## 5. Workflow

### 5.1 Steps

| Step | When | Who | Output |
|---|---|---|---|
| 1. Freeze and assemble the packages | T0 | Organizers | One package per team |
| 2. Lean checks | From T0 | Organizers (Lean Verification Rules) | Lean summaries. If a check is still running, the package says "organizer check pending". |
| 3. Panel evaluation | T0 → T1 | LLM operator | Seven evaluations per team (JSON) |
| 4. Validation | As outputs arrive | LLM operator | Format checks (LLM Judge Prompts); failures are handled under §6 |
| 5. Score aggregation | After step 4 | LLM operator | Per-team score table (§5.2) |
| 6. Summarizer | After step 4 | LLM operator | One summary per team (LLM Judge Prompts §2) |
| 7. Evidence Summaries | T2–T3 | Organizers | One page per team (Judging Policy, Appendix D.2; template in Appendix C); triage statuses are added as they are decided |
| 8. Human triage | Shortlisted teams by T3; all other teams before publication | In-field judges; integrity leads | Triage statuses (§5.3) |
| 9. Publication | After results and the correction window | Organizers | Public release (§9) |

Before step 6, each team's evaluations are relabeled Judge A–G in a random order, and the summarizer is not told which model wrote which (LLM Judge Prompts §2.3).

### 5.2 Score aggregation

Aggregation is mechanical; no LLM is involved. For each team and each dimension:

1. **Collect the scores.** Gather the numeric scores from the panel models. Leave out "not assessable" answers and failed outputs.
2. **Panel median.** If at least 4 scores remain, the panel median is the median of those scores. With an even number of scores, take the mean of the two middle values. If fewer than 4 scores remain, the dimension is marked **not assessable** for this team.
3. **Group medians.** Also compute the median of the proprietary models and the median of the open models, using only the scores available. These are reported but not used in the signal.
4. **Disagreement flag.** The dimension is flagged if the highest score minus the lowest score is ≥ 2.

From these per-dimension results:

- **LLM signal.** The mean of the panel medians of the five merit dimensions (Correctness, Clarity, Motivation, Interest, Novelty). If any of them is not assessable, the team has no LLM signal.
- **Attribution flag.** If the Attribution panel median is ≤ 2, the team goes to human triage.

Appendix B gives a worked example.

*Caveat:* the seven models share much of their training data, so they are not seven independent pieces of evidence. Agreement among them is a signal, not proof.

### 5.3 Human triage

**What is sent to triage:**
- Every issue that any model rated **critical**, even if only one model raised it.
- Every issue in the **integrity** category, such as an apparent attempt to manipulate reviewers.
- Every team with an **Attribution flag** (§5.2).

**Priority.** Critical issues come first. Within them, issues are ordered by the number of distinct models that raised them, as shown in the summarizer's merged issues. That number sets priority only; it never proves that an issue is real.

**Who checks:**
- Mathematical issues go to an in-field judge.
- Integrity issues go to two integrity leads with no conflict of interest. They hear from the team before deciding anything.

**Status.** Each issue gets one status, with a one-line reason:

| Status | Meaning |
|---|---|
| unverified | Not yet checked |
| rejected | Checked; not a real problem |
| confirmed | Checked; a real problem |

**Timing:** shortlisted teams by T3, before deliberation; all other teams before publication.

**Summary check.** For shortlisted teams, the person doing the triage also checks the summarizer's output against the seven raw evaluations.

In deliberation, an unverified issue is an open question, not a finding (Judging Policy, Appendix D.3).

## 6. Failure handling

- **What counts as a failure:** a technical error, a refusal, output that is not valid under the format in LLM Judge Prompts, or output that is missing required fields.
- **Re-runs.** A failed call is re-run with the same model, package, and prompt, up to 2 times. Re-runs only fix failures. Once a model returns a valid output, that output is final; a valid output is never re-run to get a different answer.
- **Still missing at T1.** That model is left out of the team's aggregation, and its absence is noted in the Evidence Summary.
- **No penalty and no ordering effects.** A failure is never turned into a low score. Teams are not treated differently because of the order in which results arrive.
- **Summarizer failure.** The Evidence Summary shows the mechanical scores and points to the raw evaluations. Judges then read the raw evaluations directly.
- **Nominations are unaffected.** Judges can always nominate a team directly, whatever happens in the LLM step.

## 7. Safeguards

- **Submissions are data.** The prompt tells each model to treat the materials as data, never as instructions. Any apparent attempt to influence the reviewers is reported as an integrity issue.
- **Manipulation.** Deliberately trying to manipulate the LLM judges, for example with hidden text addressed to AI reviewers, can lead to disqualification. The integrity leads decide (§5.3). Quoting or discussing such attacks as part of the mathematics is not a violation.
- **No length reward.** The prompt tells the models not to reward length.
- **Anonymity.** The title block is removed from the report, and the models are told not to try to identify the team.
- **Transparency.** The rubric in the Judging Policy is public in advance. The prompts stay private until results are announced; then they are published.
- **Freeze.** The prompts are frozen after the pilot. Wording may change before the freeze, but the criteria are the ones announced to participants by about Nov 6.

## 8. Data handling

- **Open models** run on SAIR's own deployment.
- **Proprietary models** are called through OpenRouter's ZDR endpoints. ZDR describes the providers' data policy for those calls only.
- **Records.** The organizers keep the packages, raw outputs, summaries, and logs (§10). Only the items listed in §9 are published.
- **Consent.** Participants accept the Terms of Service and Privacy Policy before submitting. These documents describe how materials are processed and published.

## 9. Publication

**Published, after results are announced:**
- all submissions;
- for each team, the seven evaluations, the summarizer output, the score table, and the triage statuses;
- both prompts;
- the model record table.

**Not published:** human judges' scores and comments, personal information, and third-party content that the team cannot license.

**Correction window** (7 days):
- Before publication, each team may point out factual errors in the LLM outputs about it, such as misquoted content.
- Each team may attach a response of up to 300 words.
- Changes are recorded in a public correction log.
- The original LLM outputs are never edited. Corrections, responses, and triage statuses are shown next to them.

**License.** Reports and LLM outputs are published under CC BY 4.0. Code is published under the license the team chooses. The Terms of Service state the same.

**Disclaimer** shown with every LLM output:

> This evaluation was produced by a language model as advisory input to human judges. It may contain errors and did not by itself determine any result. See the triage status of any issue it raises and the team's response, if any.

## 10. Research records

**Recorded:**
- the prompts as run;
- the model record table (Appendix A);
- the review packages;
- the raw outputs, with timestamps;
- the letter-to-model mapping used for the summarizer;
- the failures and re-runs;
- the AI tools each team declared using.

**Questions, stated in advance:**
1. How well do the panel models agree with each other?
2. How well do the human and LLM scores agree on the four shared dimensions?
3. How do proprietary and open models compare? DeepSeek 4.1 Flash, the only Flash-tier model, is also reported separately.
4. Does a model score work more favorably when the team declared using a model from the same family?

**Caveats:**
- Humans judge the talk, while LLMs judge the report. Human–LLM agreement therefore measures convergence across different artifacts.
- The models are not independent of each other (§5.2).
- With one official run per model, run-to-run variation cannot be separated from differences between models. Any extra runs are for research only and never enter the official process.

## 11. Pilot and freeze

To be completed by about Nov 11.

1. **Samples.** Prepare 2–3 sample reports that do not come from participants:
   - at least one with planted mathematical errors;
   - at least one that presents a known proof without credit;
   - ideally one with a Lean summary.
2. **Run the whole chain.** Go from package assembly to Evidence Summary (steps 1–7), on all seven models plus the summarizer, and time it.
3. **Check:**
   - every output follows the format;
   - the planted problems are caught;
   - "not assessable" is used sensibly;
   - the summarizer covers every issue ID and reflects the evaluations faithfully;
   - the chain fits between T0 and T1.
4. **Fix** the prompts, the length limit, and the timing.
5. **Freeze** the prompts and fill in the model record table.

## 12. Roles

| Role | Responsibility | Who |
|---|---|---|
| LLM operator | Runs the panel and the summarizer; validation, re-runs, aggregation, records | SAIR |
| Organizers | Packages, Lean checks (Lean Verification Rules), Evidence Summaries, publication, correction window | Caltech organizing team |
| In-field judges | Triage of mathematical issues | Assigned by track |
| Integrity leads (2) | Triage of integrity issues; hearing from teams | Two organizers with no conflict of interest, named before the event |
| Timeline owners | One per step, from the problem lock through T4 (Judging Policy, Appendix D.4) | Named by the organizers before the event |

---

## Appendix A: Model record table (template)

| Model | Exact model ID / weights version | Served by / upstream provider | Precision or quantization (open models) | Reasoning setting | Other settings | Date |
|---|---|---|---|---|---|---|
| Claude Opus 5.5 | | OpenRouter → | n/a | | | |
| GPT 6.1 sol | | OpenRouter → | n/a | | | |
| Gemini 4 | | OpenRouter → | n/a | | | |
| DeepSeek 4.1 Flash | | SAIR | | | | |
| Kimi K3.1 | | SAIR | | | | |
| Muse Spark (open) | | SAIR | | | | |
| Mistral Large 4 | | SAIR | | | | |
| Summarizer: Claude Opus 5.5 | | OpenRouter → | n/a | | | |

## Appendix B: Worked example of aggregation

Correctness scores for one team. Models 1–3 are proprietary; models 4–7 are open.

| Model | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
|---|---|---|---|---|---|---|---|
| Score | 4 | 4.5 | 3 | not assessable | 2 | 4 | 4 |

- **Scores used:** 4, 4.5, 3, 2, 4, 4. There are six values; sorted, they are 2, 3, 4, 4, 4, 4.5.
- **Panel median:** (4 + 4) / 2 = **4**.
- **Disagreement flag:** 4.5 − 2 = 2.5 ≥ 2, so the dimension is **flagged**.
- **Group medians:**
  - proprietary (4, 4.5, 3) → **4**;
  - open (2, 4, 4) → **4**.

Suppose the panel medians for the other merit dimensions are Clarity 3.5, Motivation 4, Interest 3, and Novelty 3.5. Then:

- **LLM signal** = (4 + 3.5 + 4 + 3 + 3.5) / 5 = **3.6**.
- **Attribution:** if its panel median is 2, the team is also sent to triage.

## Appendix C: Evidence Summary (template)

```
Team T-___   Problem: ______________   Track: ______

HUMAN JUDGES
  Judge | Corr | Clar | Motiv | Inter | Nominated? | Comment (short)
  ...   |      |      |       |       |            |
  Human signal: ____

LLM PANEL                  (models present: _/7; missing: ______)
  Dimension   | Panel median | Proprietary | Open | Flag
  Correctness |              |             |      |
  Clarity     |              |             |      |
  Motivation  |              |             |      |
  Interest    |              |             |      |
  Novelty     |              |             |      |
  Attribution |              |             |      |  (flag if ≤ 2)
  LLM signal: ____

LLM SUMMARY (summarizer)
  Agreements: ...
  Disagreements: ...
  Questions for judges: ...

CRITICAL ISSUES
  M_ | summary | sources (e.g. B-I2, E-I1) | triage status: unverified / rejected / confirmed | note

LEAN (Lean Verification Rules)
  Declared level: L_
  Declaration | Team label | Build | Dependencies | Statement-match notes

NOTES
  Missing or late materials, corrections, other remarks
```
