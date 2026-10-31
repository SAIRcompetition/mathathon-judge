# Mathathon Round 1: Lean Verification Rules

These rules apply to every team whose report relies on Lean code. They set out the rules only, not how organizers run the checks.

---

## 1. Summary

- **Lean is optional.** Not using it costs nothing, and using it earns nothing by itself.
- **"Verified" is a precise term.** A declaration counts as verified only if it passes three checks: build, dependencies, and statement (§5).
- **Declare everything.** For every formal statement used in the report, give its informal counterpart, its status, and anything it leaves unproved.
- **Lean is evidence for Correctness, and only for what it verifies (§11).**

## 2. Toolchain and freeze

- **Versions.** Lean v4.35.0 and the Mathlib release tagged `v4.35.0`. A submission is checked only with these versions.
- **Freeze.** The repository is frozen at T0, the submission deadline (Judging Policy, Appendix B.1).
  - Give the commit hash in the report's title block, next to the repository link. Both identify the team, so they go only in the title block.
  - The repository must be accessible to the organizers at T0.
- **Publication.** The repository is published with the rest of the submission, under the Terms of Service.

## 3. Official formal statements

- For selected problems, organizers publish an **official formal statement** before the event, together with the problem list.
- A team that claims to have formalized the main theorem of such a problem must prove the official statement **unmodified**.
- For any other problem, the team writes its own formal statement under §4.

## 4. Statements that teams write themselves

For each Lean declaration that the report relies on:

1. **Put the formal statement next to the informal claim** it supports, in the report or its appendix.
2. **Show everything the statement depends on for its meaning:** all of its hypotheses, and every definition it uses that is not in Mathlib.
3. **Explain any difference** between the formal and the informal versions. For example, the formal version may cover only a special case.

A difference that is explained honestly is acceptable and is judged as part of the work. A difference that is not explained is treated as misrepresentation (§11).

## 5. What "verified" means

"Verified" applies to a **specific named declaration**, together with **everything it depends on, directly or indirectly**, including lemmas in other files and in external libraries. A declaration is verified only if it passes all three checks. Each check is recorded separately.

| Check | Requirement | Who assesses it |
|---|---|---|
| **1. Build** | The project builds with Lean v4.35.0 and Mathlib `v4.35.0`. | Organizers (authoritative) |
| **2. Dependencies** | Neither the declaration nor anything it depends on uses `sorry`. The only axioms used are Lean's standard ones: `propext`, `Classical.choice`, and `Quot.sound`. | Organizers (authoritative) |
| **3. Statement** | The formal statement, with all its hypotheses and the definitions it uses, matches the claim made in the report. An official statement is used unmodified. | Human judges and the LLM panel |

**A successful build alone does not make anything verified.** A project can build even when some declarations depend on `sorry`, or when a statement says something other than what the report claims.

**`native_decide` does not count as verified.** It relies on trusting Lean's compiler rather than the kernel, and it can be made unsound, for example with `@[implemented_by]`. A computation checked with `native_decide` may be reported as **Numerically checked**.

## 6. External dependencies

Libraries other than Lean and Mathlib must be pinned to a fixed version and declared in the report. They are checked like the team's own code: anything they contribute to a verified declaration must pass §5.

## 7. Claim labels

These are the Lean-related labels for the report's "Status of claims" table (Judging Policy, Appendix B.4):

| Label | Meaning |
|---|---|
| **Lean-verified** | All three checks in §5 pass. |
| **Lean-conditional** | The claim is derived in Lean from explicitly listed lemmas that are left unproved, for example cited results stated with `sorry`. The claim itself is **not** verified. List every unproved lemma it relies on. |

A formal statement with no proof is not Lean-verified in any sense. Label the claim by its non-Lean status: Proved, Conjectural, or Known (cited).

## 8. Declared level

Each team that uses Lean declares one overall level. The level does not replace the label on each claim.

| Level | Meaning |
|---|---|
| L0 | No formalization |
| L1 | Statements formalized, no proofs |
| L2 | Key lemmas verified |
| L3 | Conditional formalization: the main theorem is Lean-conditional |
| L4 | The main theorem is verified |

## 9. What to include

**In the report**, include a "Formalization" table, normally in the appendix. It gives each declaration's formal statement, together with its hypotheses and the definitions it uses (§4).

| Report claim | Lean declaration | File | Label | Notes |
|---|---|---|---|---|
| Lemma 3.2 | `Mathathon.lemma32` | `Mathathon/Basic.lean` | Lean-verified | — |
| Theorem 3.1 | `Mathathon.main` | `Mathathon/Main.lean` | Lean-conditional | Assumes `Mathathon.cited_bound` (Known, [3]) |

**In the repository**, include a README that lists the declarations named in the report.

## 10. Organizer results

- **What organizers record.** For each declaration named in the report, the organizers record:
  - **Build:** pass or fail.
  - **Dependencies:** clean, or not clean with what was found (for example, `sorry` in a named lemma).
- **Where the results go.** The results go into the LLM review package and the team's Evidence Summary (Judging Policy, Appendix D.2). If they are not ready when the LLM panel runs, the package says "organizer check pending", and the results go straight into the Evidence Summary.
- **Precedence.** The organizers' results take precedence over the team's labels. If the two disagree, the Evidence Summary shows the disagreement, and humans decide whether it was an honest mistake or misrepresentation.

## 11. How Lean evidence is used in judging

- **Evidence for Correctness only.** Lean results are evidence for Correctness, and only for the claims they actually verify. They are not a separate score.
- **What Lean does not show.** A Lean proof shows that a proof is valid. It does not show:
  - that the formal statement is the intended one (check 3 exists for this reason);
  - that the proof is new: reusing an existing formal proof, for example one from Mathlib, is not a new proof;
  - that the result is significant or interesting.
- **Special prize.** Organizers or SAIR may offer a special formalization prize (Judging Policy, Appendix E.1).
- **Misrepresentation** means labeling a claim as verified when it fails the checks, or hiding a mismatch between a formal statement and its claim. It is treated as an integrity issue (Judging Policy, Appendix D.6).

## 12. FAQ

**Can we formalize only one lemma?**
Yes. Label that lemma Lean-verified and declare level L2. If only statements are formalized, declare L1.

**Can we use `sorry`?**
Yes, but nothing that depends on it counts as verified. If your main theorem depends on lemmas left as `sorry`, label it Lean-conditional and list those lemmas.

**Can we use `native_decide`?**
Yes, but the result does not count as Lean-verified. Report the computation as Numerically checked.

**Do we get extra points for using Lean?**
Not by itself. A verified claim strengthens the evidence for Correctness.

**Can we change the official statement to make it easier to prove?**
Then you are no longer proving the official statement. Present your result as your own formal statement, explain how it differs, and label it accordingly.

**Our formal statement covers only a special case. Is that a problem?**
No, as long as the report says so clearly (§4).
