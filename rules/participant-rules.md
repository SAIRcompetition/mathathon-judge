# Mathathon Round 1: Participant Rules

Round 1 is a 40-hour onsite event at Caltech, from Nov 13 at 6:00 PM to Nov 15 at 10:00 AM. Your team picks one problem from the problem list and works toward an alternative proof, a clearer exposition, or a new connection. By the deadline you submit a report and slides, plus, optionally, supplementary materials and a Lean project. On the afternoon of Nov 15 you present your work to a panel of judges.

The judges score your presentation. A panel of AI models reviews your report, and its scores are advisory. The judges decide the winners.

You take four steps on the SAIR competition platform: registration (§1), teams (§2), problem selection (§3), and submission (§4). Then you give your presentation (§5). What happens after Round 1 is in §6. All times are Pacific Time.

## Key dates

| When | What happens |
|---|---|
| Before Nov 13, 6:00 PM | Register (§1) and form your team (§2). The problem list is published. |
| **Nov 13, 6:00 PM** | Round 1 starts. Registration closes and teams are fixed. Problem selection (§3) and submission (§4) open. |
| **Nov 15, 10:00 AM** | **Submission deadline.** Problems are locked. |
| **Nov 15, 12:00 PM to 5:00 PM** | Presentations, in six sessions (§5). |
| Nov 15, after the presentations | Closing ceremony. Results are announced. |
| After the results | Feedback, a 7-day correction window, then publication (§6). |

## 1. Registration

- **When.** Registration is open until Round 1 starts, on Nov 13 at 6:00 PM.
- **Where.** On the SAIR competition platform. Teams, problem selection, and submission also take place there.
- **Invitation only.** Sign up or log in with a SAIR ID that uses the email address your invitation was sent to. Other addresses cannot register.
- **Terms.** When you register, you accept the Mathathon Terms of Service and Privacy Policy.

## 2. Teams

- **When.** Until Round 1 starts, on Nov 13 at 6:00 PM. From then on, teams are fixed: no one can join, leave, or change teams.
- **Size.** At most 4 members. You can be on only one team.
- **Joining a team.** There are four ways to be on a team:
  - **Your team is already set up.** If you formed a team when you applied to Mathathon, the organizers enter it on the platform for you. You see your team as soon as you log in, and you do not need to do anything.
  - **Create a team.** You become its Owner, and you can invite others to join.
  - **Ask to join a team** that has fewer than 4 members. You join once its Owner approves.
  - **Accept an invitation** from a team's Owner.
- **Roles.** The Owner is the person who created the team, or the person named by the organizers. The Owner can make any member an Admin.

  | | Owner | Admin | Member |
  |---|---|---|---|
  | Invite members and set roles | ✓ | | |
  | Select or switch the problem (§3) | ✓ | ✓ | |
  | Submit, replace, or withdraw the submission (§4) | ✓ | ✓ | ✓ |

## 3. Problem selection

- **When.** From Nov 13 at 6:00 PM until the submission deadline, Nov 15 at 10:00 AM. At the deadline your problem is locked.
- **Who.** The Owner or an Admin.
- **One problem.** Your team is signed up for exactly one problem at a time. You present, and are judged on, only that problem.
- **From the list only.** Only problems on the published list are judged. No new problems are accepted after Round 1 starts.
- **Proposed problems.** If your team proposed a problem that is on the list, your team starts Round 1 signed up for it. If it proposed several, it chooses one of them.
- **At most 4 teams per problem.** Places are first come, first served. A problem is full when 4 teams are signed up for it, including any team that proposed it. A full problem cannot be selected until one of its teams switches to another problem.
- **Switching.** Until the deadline, you can switch to any problem that is not full. Your old place is released at once.

## 4. Submission

- **When.** From Nov 13 at 6:00 PM until **Nov 15 at 10:00 AM**.
- **Who.** Any team member.

### 4.1 What to submit

| Item | Required | Format |
|---|---|---|
| Report | Yes | One `.tex` file and the PDF compiled from it (see below) |
| Slides | Yes | PDF |
| Supplementary materials | Optional | Code, numerics, data, or anything else that supports the report. Upload a ZIP file or give a repository link. |
| Lean project | Optional | A repository link (§4.3). Needed for any claim labeled Lean-verified or Lean-conditional. |
| Commit hash | Yes, for every repository link | The full commit hash of the version to be judged |

**Repositories.** One repository can hold both your supplementary materials and your Lean project. Every repository must be accessible to the organizers at the deadline, and is published with your submission.

**The report** is the official record of your work. Put every result you want judged in it, including everything in your slides. The LLM panel reads only the report: supplementary materials and the Lean project support it, but do not replace it. Anything that appears only in your presentation is judged by the human judges only.

**Report format**

- One self-contained `.tex` file. Put the appendix and the bibliography entries in it; do not use `\input` or a separate `.bib` file.
- Main body: about 10 pages. An appendix is allowed. Length earns no credit.
- Names, affiliations, and the repository link go only in the title block. The title block is removed before the LLM review.
- Describe every key figure in words. Links are pointers, not content.
- The LLM panel reads the report as text. The main body is always read in full. If the whole report is longer than the review limit, which is announced before Round 1, the appendix is cut from the end.

**Suggested outline.** The structure is up to you. A report usually covers the problem and its known proofs, your motivation, your contribution and main arguments, the work done during the event, the status of claims, references, and AI use and acknowledgements. Make clear what you did during the 40 hours: prior work may be used, but it does not count as event work.

**Status of claims.** Give each main claim exactly one label:

| Label | Meaning |
|---|---|
| Proved | A complete argument is given in the report |
| Lean-verified | Verified in Lean (§4.3) |
| Lean-conditional | Derived in Lean from listed unproved lemmas (§4.3) |
| Numerically checked | Supported by computation; say what was computed and over what range |
| Conjectural | Not proved; say why you believe it |
| Known (cited) | Established in the literature; give the reference |

Labeling a claim honestly as conjectural costs nothing. Labeling an unproved claim as proved is a Correctness problem.

### 4.2 Changes and the deadline

- **Before the deadline,** you can replace your submission, or withdraw it and submit again. The version in place at the deadline is the one that is judged.
- **After the deadline,** nothing can be submitted or changed, and a missing report gets no LLM review. Submit on time.
- **Errors found after the deadline.** Tell the organizers. They show your correction to the judges next to the original. The LLM panel does not review it.

### 4.3 Lean project (optional)

Not using Lean costs nothing. Using it earns nothing by itself: a Lean result is evidence for Correctness, and only for the claims it verifies.

- **Submitting.** Submit your Lean project as a repository link with its full commit hash (§4.1).
- **Version.** Lean v4.35.0 with the Mathlib release tagged `v4.35.0`. Pin any other library to a fixed version and name it in the report.
- **Official statements.** Some problems on the list come with an official Lean statement. If you claim to have formalized the main theorem of such a problem, prove the official statement without changing it.
- **Formalization table.** In the report's appendix, list every Lean declaration the report relies on. For each one, give:
  - the claim it supports;
  - its formal statement, with all its hypotheses and every definition it uses that is not in Mathlib;
  - its label;
  - any difference from the claim in the report, such as covering only a special case. An honestly explained difference is acceptable.

  The repository README lists the same declarations.
- **Lean-verified.** A declaration is Lean-verified only if all three of these hold, for it and for everything it depends on:
  1. the project builds with the version above;
  2. nothing uses `sorry`, and no axioms are used other than `propext`, `Classical.choice`, and `Quot.sound`;
  3. its formal statement, with its hypotheses and definitions, says what the report claims.

  A successful build alone is not enough. A proof that uses `native_decide` is not Lean-verified; that computation can be labeled Numerically checked.
- **Lean-conditional.** The claim is derived in Lean from lemmas that are left unproved, for example cited results stated with `sorry`. List every one of these lemmas.
- **A statement without a proof** is neither Lean-verified nor Lean-conditional. Label the claim Proved, Conjectural, or Known (cited).
- **Automated check.** At the deadline, an automated check builds your repository and records what each listed declaration depends on. If its results differ from your labels, its results count.

### 4.4 Sources, AI use, and integrity

- **AI use.** You may use AI tools. In the report, say which tools you used, what for, and how you checked their output. You must be able to explain everything you submit. Using AI, or not using it, does not change your score by itself.
- **Sources.** Credit every source and every kind of help you used. Do not present known results as your own. If your argument closely follows a known one, say so.
- **Violations:**
  - presenting known work as your own;
  - labeling a claim Lean-verified when it fails the checks, or hiding a mismatch between a formal statement and its claim;
  - trying to manipulate the LLM review, for example with hidden text addressed to AI reviewers. Discussing such attacks as part of your mathematics is allowed.
- **Who decides.** A model's flag is not a finding. Two organizers with no conflict of interest decide, after hearing from your team.
- **Consequences** range from a note in the judges' discussion to disqualification.

## 5. Presentation

- **When.** Nov 15, from 12:00 PM to 5:00 PM, in six sessions. Your session, time, and room are announced after the submission deadline.
- **Length.** At most 20 minutes of presentation, followed by at most 10 minutes of questions (Q&A).
- **Judges.** Each presentation has 2 to 5 judges, including at least one from your field when possible. They score the presentation and the Q&A, and they may read your report.
- **Questions to expect:**
  - definitions;
  - the key step;
  - what is new and what is already known;
  - what the AI did, and whether you understand it;
  - how sure you are of your claims.
- **How you are judged** is set out in the Judge Rules:
  - how judges score your presentation, with the guidelines and the rubric: [Judge Rules §3](judge-rules.md#3-scoring);
  - the LLM panel's review of your report, the shortlist, and how the winners are chosen: [Judge Rules §4](judge-rules.md#4-after-scoring).

## 6. After Round 1

- **Feedback.** Your team receives the judges' scores and comments privately. They are not published.
- **Correction window.** For 7 days after the results are announced, you can report factual errors in the LLM evaluations of your report, and attach a response of up to 300 words. The original LLM outputs are not edited; your corrections and response are shown next to them.
- **Publication.** Then all submissions are published, together with their LLM evaluations. Reports and LLM evaluations are published under CC BY 4.0, and code under your team's license. Personal information is not published.
- **Data.** Open models run on SAIR's own servers. Proprietary models are called through zero-data-retention endpoints. Submissions and evaluations are also used for research on how AI models judge mathematics.
