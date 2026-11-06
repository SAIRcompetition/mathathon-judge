# Mathathon Judging Policy

The theme of the Caltech Mathathon is **Old Problems, New Proofs**:

> By shifting the focus from open problems, we want to encourage Mathathon participants to explore everything else we do to make sense of mathematics: generalizations, new notations and techniques, connections to other problems. These innovations can be more exciting than solving individual problems.

We are looking for teams that make deep, meaningful explorations of this kind. Judging is holistic, because there are many different ways to do meaningful mathematics, and resolving an open problem is not the goal. Numerical scores are only suggestive. They are used to build a shortlist, and the judges decide the winners through discussion and a vote.

Appendices A–E contain the details. Items marked **[TBD]** are still to be decided; Appendix F lists them.

## Round 1 Process

**Problems.** Teams choose a problem from the published problem list, with at most 4 teams per problem. A team may switch problems at any time until the submission deadline, when its problem is locked. Each team presents one problem. *(Appendix A)*

**Submission.** The event starts on Nov 13 at 6:00 PM. At the end of the 40 hours (T0: Nov 15, 10:00 AM), each team submits:
- a report of about 10 pages, in LaTeX;
- its slides;
- optionally, supplementary materials (code, numerics, data);
- if it did formal verification, its Lean project.

The report must contain everything in the slides. It must also state the status of each main claim and disclose the team's sources and AI use. *(Appendix B; for Lean, Automated Review §2)*

**Talks.** The talks run on Nov 15 from 12:00 PM and end by 5:00 PM. The teams are divided into six sessions. Each team gives a talk of at most 20 minutes followed by at most 10 minutes of questions. Organizers assign 2–5 judges to each talk, including at least one from the team's field wherever possible. *(Appendix C)*

**Two views.** Human judges score the talk and the Q&A using the guidelines and rubric below. In parallel, a panel of seven LLMs scores the written report on the same dimensions, plus Attribution and Novelty, and any Lean code is checked automatically (Automated Review). Human judges submit their scores before they see any LLM output. A human checks every critical issue the LLMs flag before it can count against a team.

**Deliberation.** The shortlist is made up of:
- the top teams by human scores;
- the top teams by LLM scores;
- every team nominated by a judge.

The judges first meet with the other judges in their field to decide the track winners. Then they all meet together to decide the overall winners. Each prize is decided by nominations, then discussion, then a vote. Each shortlisted team has a one-page Evidence Summary to support the discussion. *(Appendix D)*

**After the event.** Judges' scores and comments are returned to the teams privately. After a correction window, all submissions and their LLM evaluations are published as open source, under the Terms of Service that every participant accepts before submitting.

## Round 1 Guidelines

| Dimension | Guideline |
|---|---|
| **Correctness** | The participants should be able to discuss the mathematics relevant to their presentation in a clear, correct, and sophisticated way. They should accurately convey their uncertainty and be truthful. They should be able to define the mathematical objects under consideration. |
| **Clarity** | They should be able to form clean, correct sentences about the relevant objects, which go beyond surface level considerations. |
| **Motivation** | The participants should be able to explain what mathematical contribution they hope to make. If their project is about finding a new approach to an old result, they need to be able to explain what is unsatisfying about the old approach. If their approach is about crystalizing the connection between two related settings, then they should be able to explain why this crystallization would be useful to the relevant mathematical community. Saying that doing something is an open problem ("finding a proof of [bla] that avoids [bla] technique is an open problem") is not sufficient - they need to explain why [bla] technique is undesirable. |
| **Interest** | The participants should do something interesting during the mathathon event, related to the mathematical contribution they want to make. This can mean doing numerics, proving a lemma, or scaffolding a plan of attack. This interesting thing should demonstrate creativity and critical thinking. |
| **Attribution** (LLM panel only) | Sources are credited, and known results are not presented as new. AI use is disclosed and is consistent with the rest of the report. |
| **Novelty** (LLM panel only) | How the proof, exposition, or connection differs from known work. Failing to find a precedent does not show that something is new. |

- Human judges score the first four dimensions from the talk and the Q&A. The LLM panel scores all six from the report.
- Partial results that are honestly labeled are not penalized.

## Round 2 Process

Teams that wish to continue are matched with a judge who mentors them; Round 1 judges' recommendations inform the matching. The mentor meets the team about every other week for 1–2 hours. After two months, each team submits a webpage presenting its work (a paper, visualization, video, code, and so on) and a GitHub repository with its materials and AI chat logs. Projects are judged in three ways:

1. **Technical feedback from the mentor** on the rigor, novelty, and usefulness of the work, like an advisor evaluating a student's dissertation.
2. **Non-technical feedback from other judges**, each reviewing at most 5 projects for presentation quality, accessibility, communication style, and creativity, like judging a poster session.
3. **Public vote.** Submissions are posted on the website and the public votes for its favorites. The vote counts less than the judges' feedback.

As in Round 1, judges score each guideline from 1 to 5 with a short justification, and decide the winners through discussion and a vote.

## Round 2 Guidelines

| Dimension | Guideline |
|---|---|
| **Communication** | The participants should be able to fluently discuss their project, demonstrating deep digested knowledge of the subject matter. |
| **Contribution** | The project produced should be a positive contribution to the mathematical community. This means that, because of the project, the relevant mathematical community should gain understanding, clarity, or substance. The main justification of the contribution is not allowed to be the resolution of an open problem - it must target some other aspect of mathematics. |

<!-- landscape -->

## Rubric

Score each dimension as a whole number from 1 to 5. Justify each score in at least one sentence. "Expected" means what a team can do in 40 hours, not a finished research paper.

| | 5 · Excellent | 4 · Good | 3 · Acceptable | 2 · Unsatisfactory | 1 · Highly unsatisfactory | Notes |
|---|---|---|---|---|---|---|
| *All dimensions* | *Going above and beyond what was expected* | *Few flaws and some creative elements* | *Only a few minor issues* | *A major issue or multiple minor issues* | *Many major issues* | |
| **Correctness** | All claims and arguments correct and precisely stated; objects defined; the status of every claim exact; probing questions answered accurately | Correct apart from small slips; objects defined; uncertainty conveyed accurately; most technical questions answered well | Main claims correct; a few minor errors or loose definitions; uncertainty mostly clear | A significant error or unsupported claim, or several minor errors; some claims overstated | Main claims wrong or seriously overstated; key objects undefined; many errors | |
| **Clarity** | Exceptionally clear and well organized; rigorous and heuristic arguments always distinguished; accessible beyond the subfield | Clear and well organized; notation defined; few rough spots | Generally easy to follow; some unclear passages or undefined notation | Hard to follow in key parts, or rigorous and heuristic arguments mixed up | Disorganized and hard to follow throughout | |
| **Motivation** | Contribution sharply stated, with a compelling case for why it matters to the relevant community | Contribution clear and its importance convincingly argued, with minor gaps | Contribution stated, but the case for its importance is thin or generic | Contribution vague, or justified only by "it is an open problem" | No discernible contribution or reason | |
| **Interest** | Substantial, creative event work yielding real insight, beyond what 40 hours would lead one to expect | Solid event work showing creativity and critical thinking | Reasonable event work, mostly routine | Little event work, or mostly surface-level | No meaningful work during the event | |
| **Attribution** (LLM only) | Every source and form of help credited precisely; AI use fully disclosed and consistent | Sources credited, with minor omissions | Main sources credited; some peripheral gaps | A known result or argument not credited, or AI disclosure inconsistent with the report | Known work presented as the team's own | |
| **Novelty** (LLM only) | A genuinely new proof, connection, or viewpoint, not found in known work | Substantial new elements on known foundations | A meaningful variation of known work | A minor variation of standard methods | Reproduces known work with no new element | |

<!-- portrait -->

---

## Appendix A: Problem selection

- **Submission.** Participants, sponsors, judges, community members, and others may submit problems before the event. No problems are accepted once the event starts.
- **Review.**
  - Judges review the submitted problems, contribute resources and desired outcomes, and indicate which problems they are able to judge.
  - A problem may be left out if it is far outside the judges' expertise, or if it does not fit the event (for example, an open problem).
  - Organizers contact the submitter about any unclear submission before publishing the problem.
- **The list.**
  - All participants see the same list, published before the event together with any official Lean statements (Automated Review §2.1).
  - Problems are published on the Mathathon website and on social media; full details may be omitted.
  - Any team may work on any problem. Only problems on the list are judged.
- **Choosing.**
  - Each team is signed up for exactly one problem at a time and may change problems at any time.
  - At most 4 teams may be signed up for the same problem at once.
  - A team that submitted a problem starts the event signed up for it. A team that submitted several problems chooses one of them.
- **Lock.** Each team's problem is locked at T0. Each team presents, and is judged on, that one problem.
- **What each problem carries.** For judging, each problem on the list carries:
  - a track, if tracks are adopted (Appendix E.1);
  - the judges able to judge it;
  - optionally, references to its known proofs;
  - optionally, an official Lean statement (Automated Review §2.1).

## Appendix B: Written submission

### B.1 What to submit, and when

| Item | Required | Deadline |
|---|---|---|
| Report: LaTeX source and PDF | Yes | T0 |
| Slides (PDF) | Yes | T0 |
| Supplementary materials (code, numerics, data): a ZIP file or a repository | Optional | T0; a repository is frozen at T0 |
| Lean project: a repository | Optional; needed for any Lean-verified or Lean-conditional claim | Frozen at T0 (see Automated Review §2.1) |

- **T0.** Nov 15 at 10:00 AM: the end of the 40-hour working period, which starts on Nov 13 at 6:00 PM. The talks start at 12:00 PM the same day.
- **Late reports.** A report that arrives after T0 is treated as missing for the LLM review.
- **Terms.** Every team member must accept the Mathathon Terms of Service and Privacy Policy before the team submits.

### B.2 Format

- **Length.** The main body is about 10 pages. An appendix is allowed. Length earns no credit by itself.
- **One file.** Submit a single self-contained `.tex` file that includes the appendix and the bibliography entries, with no `\input` and no separate `.bib` file. Also submit the PDF.
- **The report is the authoritative record.** It must contain everything in the slides. Anything that appears only in the talk is assessed by the human judges only.
- **Figures and links.** Describe every key figure in words. Links are pointers, not content.
- **Team identity.** Names, affiliations, and the repository link go in the title block only. The title block is removed before LLM review.
- **LLM review.** The report is reviewed as text. If it exceeds the review length limit, the appendix is trimmed from the end (Automated Review §5). Do not include instructions addressed to AI reviewers: attempts to manipulate the LLM review can lead to disqualification.

### B.3 Suggested outline

The structure is up to the team. The table lists what a report usually covers; it is a suggestion, not a requirement.

| Section | What it contains |
|---|---|
| Problem and known proof(s) | The problem, and how it is known to be proved or treated, with sources |
| Motivation | What is unsatisfying about the known approach, or why your connection, exposition, example, or exploration is useful |
| Contribution and main arguments | What you did, and the arguments behind it |
| Work done during the event | What you had before the event, and what you did during the 40 hours. Prior work may be used, but it does not count as event work. |
| Status of claims | One label for each main claim (B.4) |
| References | Every source you actually used |
| AI use and acknowledgements | Which AI tools you used, what for, and how you checked their output; any help from people |

An abstract and a "Limitations and next steps" section are also useful.

### B.4 Status of claims

| Label | Meaning |
|---|---|
| Proved | A complete argument is given in the report |
| Lean-verified | Verified in Lean (see Automated Review §2.2) |
| Lean-conditional | Derived in Lean from listed unproved lemmas (Automated Review §2.3) |
| Numerically checked | Supported by computation; say what was computed and over what range |
| Conjectural | Not proved; say why you believe it |
| Known (cited) | Established in the literature; give the reference |

Labeling a claim honestly as conjectural costs nothing. Labeling an unproved claim as proved is a Correctness problem.

Example:

| Claim | Label | Where |
|---|---|---|
| Theorem 1 (main result, case n ≤ 3) | Proved | Section 4.1 |
| Lemma 2 | Lean-verified | Appendix B, `Mathathon.lemma2` |
| Theorem 1 for general n | Conjectural | Section 6; supported by Table 2 |
| Classical bound (2.1) | Known (cited) | [3, Thm 4.2] |

### B.5 AI use and attribution

- **AI use.** AI tools are allowed: the event treats AI "as one of many tools available to mathematicians". Disclose your AI use in the report, and be able to explain everything you submit. Using AI, or not using it, does not change a score by itself.
- **Attribution.** Acknowledge every source and every kind of help you actually used. Do not present known results as your own. If your argument closely follows a known one, say so. You do not need to add references you did not use.

### B.6 LaTeX skeleton

```latex
\documentclass[11pt]{amsart}
\usepackage{amsmath,amssymb,amsthm}
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{conjecture}[theorem]{Conjecture}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}

% --- Title block: the ONLY place for team identity (removed before LLM review) ---
\title{<Title>}
\author{<Team name; member names>}
\address{<Affiliations>}
\thanks{Repository: <link>, commit <hash>}

\begin{document}
\begin{abstract}
<Short summary.>
\end{abstract}
\maketitle

\section{Problem and known proofs}
\section{Motivation}
\section{Contribution and main arguments}
\section{Work done during the event}         % before the event vs. during the 40 hours
\section{Status of claims}
\begin{tabular}{lll}
Claim & Status & Where \\ \hline
Theorem 3.1 & Proved & Section 3 \\
Lemma 3.2 & Lean-verified & Appendix B, \texttt{Mathathon.lemma32} \\
Conjecture 5.1 & Conjectural & Section 5 \\
\end{tabular}
\section{Limitations and next steps}
\section*{AI use and acknowledgements}

\begin{thebibliography}{9}                   % no separate .bib file
\bibitem{ref1} <Author>, \emph{<Title>}, <Journal> (<Year>).
\end{thebibliography}

\appendix
\section{Figures and computations}           % describe every key figure in words
\section{Formal statements}                  % if Lean is used: see Automated Review §2.1
\end{document}
```

## Appendix C: Guide for judges

### C.1 Assignment and capacity

- Organizers assign judges to talks. They use the problem list's information on which judges can judge which problems.
- Each team gets 2–5 judges, with at least one from the team's field or track wherever possible.
- Each judge attends at most one talk per session, so at most six talks in total.
- **Capacity.** With 100 teams, 2 judges per team, and up to 6 talks per judge, we recommend 34 or more judges in total, with twice as many judges as talks in each session. [TBD: confirm the roster before the event, and agree a fallback in advance.]

### C.2 Conflicts of interest

Judges must tell the organizers about any relationship with a team that could affect impartiality.

- **Recuse** from a team if you have a close personal or professional relationship with one of its members, such as family, an advisor or advisee, the same research group, or a close collaborator. Also recuse if you helped the team substantively during the event.
- **Declare** if you proposed the team's problem. This does not mean automatic recusal; the organizers decide.

### C.3 Briefing

Before Session 1, a 10–15 minute briefing covers:
- the guidelines and rubric;
- the notes in C.5;
- the scoring form;
- the independence rule;
- the timeline.

### C.4 During and after each talk

- **What you score.** Score the talk and the Q&A. You may read the team's report, but you do not have to.
- **Independence.** Do not look at any LLM output until you have submitted all your scores.
- **Shared problems.** You will be told which teams worked on the same problem.
- **Useful questions:**
  - definitions;
  - the key step;
  - what is new and what is already known;
  - what the AI did, and whether the team understands it;
  - how sure the team is of its claims.
- **Submitting.** Submit the scoring form (C.6) right after the talk, and no later than T2.
- **LLM-suggested questions.** Judges do not receive LLM-suggested questions before talks: they could not be ready for Session 1, and every session should be treated the same way.

### C.5 Notes on scoring

- **Q&A** counts toward Correctness and Clarity.
- **Interest and Novelty are different.** Novelty asks whether the work differs from what already exists. Interest asks whether the work is worthwhile and was well executed during the event.

  | Example | Interest | Novelty |
  |---|---|---|
  | A known proof re-explained through new worked examples that make a hard step transparent | High | Low |
  | A genuinely different proof that is longer and less illuminating than the known ones | Low | High |

- **No credit by itself.** None of these earns credit on its own:
  - length;
  - using Lean (it is evidence for Correctness, and only for what it verifies; see Automated Review §2);
  - using AI, or not using it;
  - saying that something is an open problem.

### C.6 Scoring form

For each talk:
- each of the four dimensions, with a whole-number score from 1 to 5 and at least one sentence of justification;
- a shortlist nomination, yes or no, with a one-sentence reason if yes;
- feedback for the team;
- a recommendation on continuing in Round 2: yes, maybe, or no.

After the last session, each judge also gives a personal ranking of the talks they attended.

```
Judge: ____________   Session: __   Team ID: ______   Problem: ______________

Conflict of interest? (none / declared: ____________)

Correctness  [1–5]: ____   Why: ________________________________________
Clarity      [1–5]: ____   Why: ________________________________________
Motivation   [1–5]: ____   Why: ________________________________________
Interest     [1–5]: ____   Why: ________________________________________

Nominate for the shortlist?  yes / no    Reason (if yes): __________________

Feedback for the team:
____________________________________________________________________________

Should this project continue in Round 2?  yes / maybe / no

(After the last session) Personal ranking of the talks you attended:
1. ______  2. ______  3. ______  4. ______  5. ______  6. ______
```

## Appendix D: Procedures for organizers

### D.1 Scores and shortlist

1. **Human signal.** For each judge, take the mean of their four scores. The team's human signal is the mean of these values across its judges.
2. **LLM signal.** For each of the five merit dimensions (Correctness, Clarity, Motivation, Interest, Novelty), take the panel median. The LLM signal is the mean of these medians. If any of the five is not assessable, the team has no LLM signal (Automated Review §6.2).
   - Attribution is not part of the signal. It is a flag that sends the team to human triage.
3. **Shortlist.** The shortlist is the top K teams by human signal ∪ the top K teams by LLM signal ∪ every team nominated by at least one judge.
   - **K.** K = 10 for each signal.
   - **Ties.** All teams tied at the K boundary are included.
   - **Nominations.** Nominations close at T2. During deliberation, any judge may still add a nomination, with a reason, until the vote.
   - **No LLM signal.** A team without an LLM signal can still enter the shortlist through the human signal or a nomination.
4. **Rankings.** Judges' personal rankings are shown during deliberation for reference. Human and LLM scores are never added together, and no formula selects the winners.

### D.2 Evidence Summary

Each shortlisted team has a one-page Evidence Summary. One is available for any other team on request. Automated Review, Appendix C, has a template. The Evidence Summary contains:

1. **Human judges:** each judge's scores and comments, and the human signal.
2. **LLM panel:**
   - the median for each dimension;
   - the medians of the proprietary and open groups;
   - disagreement flags;
   - the LLM signal;
   - any missing models.
3. **LLM summary:**
   - where the models agree;
   - where they disagree;
   - the merged issues, with their source IDs;
   - suggested questions.
4. **Critical issues,** each with its triage status: unverified, rejected, or confirmed.
5. **Lean:** the automated check results for each declaration (Automated Review §2.4).
6. **Notes:** missing or late materials, and any corrections.

### D.3 Deliberation details

- **Format.** Without tracks, there is a plenary session only. Special awards, if adopted (E.1), are decided in plenary. The voting rule is [TBD].
- **Cases to discuss explicitly:**
  - teams where the human and LLM views differ strongly;
  - teams with disagreement flags within the LLM panel;
  - critical issues. A confirmed issue counts. A rejected issue is dropped. An unverified issue is an open question, not a finding.

### D.4 Timeline

**Before the event**

- Problem submissions close; judges review the problems and indicate which ones they can judge.
- Rules, rubric, Terms of Service, and Privacy Policy are announced to participants and frozen; the judge roster is confirmed.
- The problem list is published to all participants, with official formal statements for selected problems (Automated Review §2.1).
- The LLM pilot is complete and the prompts are frozen (Automated Review §12).

**During the event.** The sessions run on Nov 15 from 12:00 PM and end by 5:00 PM. The organizers name an owner for each step before the event.

| Step | When | What happens |
|---|---|---|
| Start | Nov 13, 6:00 PM | The 40-hour working period begins |
| T0 | Nov 15, 10:00 AM | Submissions freeze; problems are locked |
| Session 1 | Nov 15, 12:00 PM | Talks and judging begin; the talk schedule and judge assignments are final by then |
| T1 | Fixed deadline | All LLM evaluations and summaries are in |
| T2 | End of the last session, by 5:00 PM | Human scores and nominations are in; shortlist formed |
| T3 | After T2 | Human triage of critical issues for shortlisted teams is complete |
| T4 | After T3 | Deliberation |
| Results | After T4 | Announced at the closing ceremony |

### D.5 Special cases

1. **Missing or late report.** The team still presents and is judged on its talk. It has no LLM signal, and the gap is noted in its Evidence Summary. Whether it remains eligible for prizes is [TBD by the organizers].
2. **Missing LLM results.** These are handled as described in Automated Review §7. A technical failure never counts against a team, and judges can always nominate the team directly.
3. **Corrections after T0.** No new content is accepted. Corrections of errors are recorded separately, shown to judges next to the original, and not re-evaluated by the LLM panel.

### D.6 Integrity

- **LLM flags** are leads, not findings. Humans decide.
- **Attribution problems** are checked by an in-field judge or an organizer before any action is taken.
- **Misrepresented Lean verification:** see Automated Review §2.4.
- **Attempts to manipulate the LLM panel:** see Automated Review §8. Two human leads with no conflict of interest decide, after hearing from the team.
- **Consequences** range from a note in deliberation to disqualification.

## Appendix E: Notes for organizers

### E.1 Suggested tracks and special awards

The Caltech organizing team and the faculty advisors decide. Judges first deliberate with the other judges in their field, so tracks based on fields fit this procedure.

| Track | Covers | Example from the website |
|---|---|---|
| Algebra & Number Theory | Algebra, number theory, arithmetic and algebraic geometry | ABC conjecture |
| Analysis, PDE & Probability | Real, complex, and harmonic analysis; PDE; probability | Navier–Stokes |
| Geometry, Topology & Mathematical Physics | Differential and algebraic geometry, topology, mathematical physics | — |
| Combinatorics, Logic & Computation | Combinatorics, graph theory, logic, algorithmic and computational mathematics | Four color theorem |

- **Problems, not teams, are assigned to tracks.** Judges are then assigned by track.
- **Adjust the split** to the actual distribution of problems and of judges' expertise.
- **Optional cross-track special awards:**
  - Best New Proof;
  - Best Exposition or Visualization;
  - Best Connection or Generalization;
  - Best Formalization (Lean);
  - Best Use of Open Models. SAIR has said it will offer prizes to teams that use open-source models.

### E.2 Design notes

- **Short dimension names on a common scale.** Each dimension has a short name and is scored as a whole number from 1 to 5. Every score needs a written justification. This makes scores comparable across judges while keeping each one explainable.
- **Scores are suggestive.** Scores are used to extract a shortlist and to structure the discussion. The final deliberation does not rely blindly on the numbers and stays as holistic as possible.
- **Division of labor.** Human judging time is limited, so human judges focus on the presentation. The LLM panel assesses the written technical materials for correctness, attribution, and novelty. Both feed into the deliberation.
- **Verifiable evidence.** Three things add evidence that does not depend on presentation skill:
  - optional Lean verification;
  - official formal statements for selected problems;
  - LLM checks of novelty against known proofs.
- **Honest labeling.** These requirements help teams communicate their uncertainty accurately:
  - a status for every claim;
  - rigorous argument kept separate from heuristic argument;
  - notation defined early;
  - acknowledgement of all assistance.
- **Not dimensions.**
  - **Effort.** Effort cannot be observed in a talk. It is replaced by what the report says about work done during the event, and by the AI-use disclosure.
  - **Impact and open-problem difficulty.** These conflict with the theme, and impact on the community is unrealistic to expect after 40 hours. Motivation covers the part of impact that is relevant here.
  - **Verifiability.** This counts as evidence for Correctness.
  - **Presentation.** This is covered by Clarity, with the Q&A counted under Correctness and Clarity.
- **Process choices.**
  - Organizers assign judges, so that each team has a judge from its field wherever possible.
  - Talks are fixed at ≤ 20 minutes plus ≤ 10 minutes of questions.
  - Problems are locked at T0, so that teams can switch problems throughout the 40 hours.
- **Presentation emphasis.** The Round 1 format gives the talk considerable weight. Public descriptions of the event should say so openly.

## Appendix F: Open decisions [TBD]

| Item | Where | Proposed default |
|---|---|---|
| Prize eligibility without a report | D.5 | Organizers decide |
| Tracks | E.1 | 4 field tracks |
| Special awards | E.1 | — |
| Voting rule | D.3 | Set by the organizers |
| Judge roster and fallback | C.1 | Confirm before the event |
