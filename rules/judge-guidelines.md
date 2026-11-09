# Mathathon Round 1: Judge Guidelines

These guidelines explain how to score a presentation. When and where you score are in the [Judge Rules](judge-rules.md). Participants can read this page too: it is how their work is judged.

## 1. Dimensions

You score the presentation and its Q&A on Correctness, Clarity, Motivation, and Interest. The LLM panel scores the report on the same four dimensions, plus Attribution and Novelty.

| Dimension | Guideline |
|---|---|
| **Correctness** | The participants should be able to discuss the mathematics relevant to their presentation in a clear, correct, and sophisticated way. They should accurately convey their uncertainty and be truthful. They should be able to define the mathematical objects under consideration. |
| **Clarity** | They should be able to form clean, correct sentences about the relevant objects, which go beyond surface level considerations. |
| **Motivation** | The participants should be able to explain what mathematical contribution they hope to make. If their project is about finding a new approach to an old result, they need to be able to explain what is unsatisfying about the old approach. If their approach is about crystalizing the connection between two related settings, then they should be able to explain why this crystallization would be useful to the relevant mathematical community. Saying that something is an open problem ("finding a proof of the four color theorem that avoids computer-assisted case checking is an open problem") is not sufficient: they need to explain what is unsatisfying about computer-assisted case checking. |
| **Interest** | The participants should do something interesting during the mathathon event, related to the mathematical contribution they want to make. This can mean doing numerics, proving a lemma, or scaffolding a plan of attack. This interesting thing should demonstrate creativity and critical thinking. |
| **Attribution** (LLM panel only) | Sources are credited, and known results are not presented as new. AI use is disclosed and is consistent with the rest of the report. |
| **Novelty** (LLM panel only) | How the proof, exposition, or connection differs from known work. |

## 2. Rubric

Score each dimension as a whole number from 1 to 5. "Expected" means what a team can do in 40 hours, not a finished research paper.

| | 5 · Excellent | 4 · Good | 3 · Acceptable | 2 · Unsatisfactory | 1 · Highly unsatisfactory |
|---|---|---|---|---|---|
| *All dimensions* | *Going above and beyond what was expected* | *Few flaws and some creative elements* | *Only a few minor issues* | *A major issue or multiple minor issues* | *Many major issues* |
| **Correctness** | All claims and arguments correct and precisely stated; objects defined; the status of every claim exact; probing questions answered accurately | Correct apart from small slips; objects defined; uncertainty conveyed accurately; most technical questions answered well | Main claims correct; a few minor errors or loose definitions; uncertainty mostly clear | A significant error or unsupported claim, or several minor errors; some claims overstated | Main claims wrong or seriously overstated; key objects undefined; many errors |
| **Clarity** | Exceptionally clear and well organized; rigorous and heuristic arguments always distinguished; accessible beyond the subfield | Clear and well organized; notation defined; few rough spots | Generally easy to follow; some unclear passages or undefined notation | Hard to follow in key parts, or rigorous and heuristic arguments mixed up | Disorganized and hard to follow throughout |
| **Motivation** | Contribution sharply stated, with a compelling case for why it matters to the relevant community | Contribution clear and its importance convincingly argued, with minor gaps | Contribution stated, but the case for its importance is thin or generic | Contribution vague, or justified only by "it is an open problem" | No discernible contribution or reason |
| **Interest** | Substantial, creative event work yielding real insight, beyond what 40 hours would lead one to expect | Solid event work showing creativity and critical thinking | Reasonable event work, mostly routine | Little event work, or mostly surface-level | No meaningful work during the event |
| **Attribution** (LLM only) | Every source and form of help credited precisely; AI use fully disclosed and consistent | Sources credited, with minor omissions | Main sources credited; some peripheral gaps | A known result or argument not credited, or AI disclosure inconsistent with the report | Known work presented as the team's own |
| **Novelty** (LLM only) | A genuinely new proof, connection, or viewpoint, not found in known work | Substantial new elements on known foundations | A meaningful variation of known work | A minor variation of standard methods | Reproduces known work with no new element |

## 3. Notes

- The Q&A counts as part of the presentation, and should be reflected in the judging.
- Partial results that are honestly labeled are not penalized.
- **Interest and Novelty are different.** Novelty asks whether the work differs from what already exists. Interest asks whether the work is worthwhile and was well executed during the event.

  | Example | Interest | Novelty |
  |---|---|---|
  | A known proof re-explained through new worked examples that make a hard step transparent | High | Low |
  | A genuinely different proof that is longer and less illuminating than the known ones | Low | High |

- **None of these earns credit by itself:**
  - length;
  - using Lean (it is evidence for Correctness, and only for what it verifies);
  - using AI, or not using it;
  - saying that something is an open problem.

## 4. Questions to ask

Useful topics for the Q&A:

- definitions;
- the key step;
- what is new and what is already known;
- what the AI did, and whether the team understands it;
- how sure the team is of its claims.

<!-- §5 is commented out together with Judge Rules §4 (After scoring).

## 5. Reading the Evidence Summary

Each shortlisted team has a one-page Evidence Summary. One is available for any other team on request. It contains:

1. **Human judges:** each judge's scores and comments, and the human signal. The human signal is each judge's mean of the four scores, averaged over the team's judges.
2. **LLM panel:**
   - the median of the models' scores for each dimension, and the medians of the proprietary and open models;
   - disagreement flags, raised when the models' highest and lowest scores differ by 2 or more;
   - the LLM signal: the mean of the medians for Correctness, Clarity, Motivation, Interest, and Novelty;
   - any missing models.
3. **LLM summary:** where the models agree, where they disagree, the merged issues, and suggested questions.
4. **Critical issues,** each with its triage status ([Judge Rules §4.2](judge-rules.md#42-triage-in-field-judges)).
5. **Lean:** the automated check results for each declaration.
6. **Notes:** missing or late materials, and any corrections.

How to read it:

- **Different artifacts.** You judged the presentation; the LLM panel judged the report. A strong difference between the two views is worth discussing, not averaging away.
- **The models are not independent.** They share much of their training data, so agreement among them is a signal, not proof.
- **Triage status.** A confirmed issue counts. A rejected issue is dropped. An unverified issue is an open question, not a finding.
- **Lean.** A declaration is verified only if the project builds, nothing it depends on uses `sorry` or a non-standard axiom, and its formal statement matches the claim in the report. A successful build alone verifies nothing, and `native_decide` does not count. Lean shows nothing about whether a proof is new or interesting.
- **Missing LLM results** never count against a team.

-->
