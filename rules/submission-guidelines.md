# Mathathon Round 1: Submission Guidelines

These guidelines explain how to prepare each item you submit. When and how to submit are in the [Participant Rules](participant-rules.md#4-submission). In each section, **Requirements** must be followed and **Suggestions** are advice.

## 1. Overview

| Item | Required | Format | Who uses it |
|---|---|---|---|
| Report | Yes | One `.tex` file and the PDF compiled from it | The LLM panel reviews it. Judges may read it. |
| Slides | Yes | PDF | Judges see them at your presentation and on the platform. |
| Supplementary materials | Optional | Files in your submission | The LLM panel reads them. Judges may read them. |
| Lean project | Optional | A repository with its full commit hash | An automated check builds it. The results go to the judges and the LLM panel. |

**All items go in one submission:** one ZIP file or one repository link ([Participant Rules §4](participant-rules.md#4-submission)).

**The report is the official record of your work.** Put every result you want judged in it, including everything in your slides. Supplementary materials and the Lean project support the report; they do not replace it. Anything that appears only in your presentation is judged by the human judges only.

## 2. Report

**Requirements**

- **One self-contained `.tex` file,** and the PDF compiled from it. Put the appendix and the bibliography entries in the file; do not use `\input` or a separate `.bib` file.
- **Length.** There is no length limit. Length earns no credit.
- **Team identity.** Names, affiliations, and the repository link go only in the title block. The title block is removed before the LLM review.
- **Text, not images.** The LLM panel reads the report as text. Describe every key figure in words. Links are pointers, not content.
- **Work done during the event.** Make clear what you did during the 40 hours. Prior work may be used, but it does not count as event work.
- **How each claim is supported.** For each main claim, say whether it is proved in the report, verified in Lean (§5), checked by computation (say what you computed and over what range), cited from the literature, or still a conjecture. An honestly stated conjecture costs nothing; presenting an unproved claim as proved is a Correctness problem.
- **AI use.** You may use AI tools. Say which tools you used, what for, and how you checked their output. You must be able to explain everything you submit. Using AI, or not using it, does not change your score by itself.
- **Sources.** Credit every source and every kind of help you used. If your argument closely follows a known one, say so.

**Suggestions**

- **Outline.** The structure is up to you. A report usually covers:
  - the problem and its known proofs;
  - your motivation;
  - your contribution and main arguments;
  - the work done during the event;
  - how each main claim is supported;
  - limitations and next steps;
  - references;
  - AI use and acknowledgements.
- **Abstract.** Start with a short abstract.
- **Clarity.** Define notation early, and keep rigorous arguments separate from heuristic ones.

## 3. Slides

**Requirements**

- **PDF.**
- **Covered by the report.** Everything in your slides must also be in the report.

**Suggestions**

- **Length.** Plan them for a presentation of at most 20 minutes, followed by up to 10 minutes of questions.

## 4. Supplementary materials and repositories

Supplementary materials are code, numerics, data, or anything else that supports the report.

**Requirements**

- **Format.** Put them in your submission: the ZIP file or the repository.
- **Commit hash.** For every repository link, give the full commit hash of the version to be judged. Put the link and the hash in the report's title block too.
- **Access.** Every repository must be accessible to the organizers at the deadline.

**Suggestions**

- **One repository** can hold both your supplementary materials and your Lean project.

## 5. Lean project (optional)

Lean is optional and earns no credit by itself. A Lean proof is evidence for Correctness, and only for the claims it verifies.

**Requirements**

- **Submitting.** Put the Lean project in your submission repository. If you submit a ZIP file, give the project's repository link and full commit hash in the report's title block.
- **Version.** Lean v4.35.0 and Mathlib `v4.35.0`. Pin any other library to a fixed version.
- **Official statements.** If your problem has an official Lean statement (shown on its page) and you claim to have formalized its main theorem, prove that statement unchanged. Do not use or copy an existing Lean proof linked on the page.
- **In the report.** List each Lean declaration the report relies on, the claim it supports, and any difference between the two.
- **Lean-verified** means that the project builds; that the declaration and everything it uses have no `sorry` and no axioms beyond `propext`, `Classical.choice`, and `Quot.sound`; and that its statement says what the report claims. `native_decide` does not count. If some lemmas are left as `sorry`, name them and call the claim Lean-conditional.
- **Automated check.** At the deadline, an automated check builds your project. If its results differ from your report, its results count.
