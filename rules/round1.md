# Mathathon Round 1: Rules for Participants

Round 1 is a 40-hour onsite event at Caltech. Your team picks one problem from the problem list and works on it. Then you submit a written report and slides, and give a talk to a panel of judges.

All times are Pacific Time.

## 1. Key dates

| When | What happens |
|---|---|
| Before Nov 13, 6:00 PM | Register on the platform and form your team. The problem list is published before Round 1 starts. |
| **Nov 13, 6:00 PM** | Round 1 starts. Registration closes and teams are fixed. Problem selection and submission open. |
| **Nov 15, 10:00 AM** | **Submission deadline.** Problems are locked. |
| **Nov 15, 12:00 PM to 5:00 PM** | Talks, in six sessions. |
| Nov 15, after the talks | Closing ceremony. Results are announced. |
| After the results | Your team receives the judges' feedback. A 7-day correction window, then publication (§10). |

## 2. Registration and teams

- **Platform.** Registration, teams, problem selection, and submission all take place on the SAIR competition platform. You need a SAIR ID.
- **Invitation only.** Sign up or log in with a SAIR ID that uses the email address your invitation was sent to. Other addresses cannot register.
- **Registration closes** when Round 1 starts, on Nov 13 at 6:00 PM. When you register, you accept the Mathathon Terms of Service and Privacy Policy.
- **Team size.** At most 4 members.
- **Forming a team.** There are four ways to join a team:
  - the organizers place you in a team;
  - you create a team;
  - you ask to join a team that has a free place, and its Owner approves;
  - you accept an invitation from a team's Owner.
- **Teams are fixed from Nov 13, 6:00 PM.** After that, no one can join, leave, or change teams.
- **Roles.** The Owner is the person who created the team, or the person named by the organizers. The Owner can make any member an Admin.

  | | Owner | Admin | Member |
  |---|---|---|---|
  | Invite members and set roles | ✓ | | |
  | Select or switch the problem | ✓ | ✓ | |
  | Submit, replace, or withdraw the submission | ✓ | ✓ | ✓ |

## 3. Choosing a problem

- **One problem.** Your team is signed up for exactly one problem at a time. You present, and are judged on, only that problem.
- **From the list only.** Only problems on the published list are judged. No new problems are accepted after Round 1 starts.
- **Who selects.** The Owner or an Admin, on the platform, from Nov 13 at 6:00 PM.
- **At most 4 teams per problem,** first come, first served. A full problem cannot be selected until a team leaves it.
- **Proposed problems.** If your team proposed a problem that is on the list, your team starts Round 1 signed up for it. If it proposed several, it chooses one of them.
- **Switching.** Until the submission deadline, you can switch to any problem that has a free place. Your old place is released at once.
- **Lock.** At the submission deadline, Nov 15 at 10:00 AM, your problem is locked.

## 4. Submission

Submit on the platform by **Nov 15, 10:00 AM**.

| Item | Required | Format |
|---|---|---|
| Talk abstract | Yes | A short paragraph of text |
| Report source | Yes | One `.tex` file (§5) |
| Report PDF | Yes | The PDF compiled from that file |
| Slides | Yes | PDF |
| Repository link | No | A link to your Lean, code, or numerics repository |
| Commit hash | Yes, if you give a repository link | The full commit hash of the version to be judged |

- **Who.** Any team member can submit.
- **Before the deadline,** you can replace your submission, or withdraw it and submit again. The version in place at the deadline is the one that is judged.
- **After the deadline,** nothing can be submitted or changed, and a missing report gets no LLM review. Submit on time.
- **Errors found after the deadline.** Tell the organizers. They show your correction to the judges next to the original. The LLM panel does not review it.
- **Repository.** It must be accessible to the organizers at the deadline. It is published with your submission.

## 5. The report

The report is the official record of your work. It must contain everything in your slides. Anything that appears only in your talk is judged by the human judges only.

**Format**

- One self-contained `.tex` file. Put the appendix and the bibliography entries in it; do not use `\input` or a separate `.bib` file. A template is at the end of this page.
- Main body: about 10 pages. An appendix is allowed. Length earns no credit.
- Names, affiliations, and the repository link go only in the title block. The title block is removed before the LLM review.
- Describe every key figure in words. Links are pointers, not content.
- The LLM panel reads the report as text. The main body is always read in full. If the whole report is longer than the review limit, which is announced before Round 1, the appendix is cut from the end.
- Do not write instructions to AI reviewers. Trying to manipulate the LLM review can lead to disqualification.

**Required sections**

| Section | What it contains |
|---|---|
| Problem and known proof(s) | The problem, and how it is known to be proved or treated, with sources |
| Motivation | What is unsatisfying about the known approach, or why your connection, exposition, example, or exploration is useful |
| Contribution and main arguments | What you did, and the arguments behind it |
| Work done during the event | What you had before the event, and what you did during the 40 hours. Prior work may be used, but it does not count as event work. |
| Status of claims | One label for each main claim (see below) |
| References | Every source you actually used |
| AI use and acknowledgements | Which AI tools you used, what for, and how you checked their output; any help from people |

An abstract and a "Limitations and next steps" section are recommended.

**Status of claims.** Give each main claim exactly one label:

| Label | Meaning |
|---|---|
| Proved | A complete argument is given in the report |
| Lean-verified | Verified in Lean (§8) |
| Lean-conditional | Derived in Lean from listed unproved lemmas (§8) |
| Numerically checked | Supported by computation; say what was computed and over what range |
| Conjectural | Not proved; say why you believe it |
| Known (cited) | Established in the literature; give the reference |

Labeling a claim honestly as conjectural costs nothing. Labeling an unproved claim as proved is a Correctness problem.

**AI use and sources**

- You may use AI tools. In the report, say which tools you used, what for, and how you checked their output. You must be able to explain everything you submit. Using AI, or not using it, does not change your score by itself.
- Credit every source and every kind of help you used. Do not present known results as your own. If your argument closely follows a known one, say so.

## 6. Talks

- **When.** Nov 15, from 12:00 PM to 5:00 PM, in six sessions. Your session, time, and room are announced after the submission deadline.
- **Length.** At most 20 minutes of talk, followed by at most 10 minutes of questions.
- **Judges.** Each talk has 2 to 5 judges, including at least one from your field when possible. They score the talk and the Q&A, and they may read your report.
- **Questions to expect:**
  - definitions;
  - the key step;
  - what is new and what is already known;
  - what the AI did, and whether you understand it;
  - how sure you are of your claims.

## 7. How you are judged

- **Human judges** score your talk and Q&A on Correctness, Clarity, Motivation, and Interest. Each score is a whole number from 1 to 5. The Q&A counts toward Correctness and Clarity.
- **The LLM panel** is seven AI models: Claude Opus 5.5, GPT 6.1 sol, Gemini 4, DeepSeek 4.1 Flash, Kimi K3.1, Muse Spark (open), and Mistral Large 4. Each model reads your report, without the title block, and scores the same four dimensions plus Attribution and Novelty. The models do not see your slides or your talk.
- **LLM scores are advisory.** They can add a team to the shortlist, but never remove one. An issue raised by a model counts against you only after a human has checked it.
- **Shortlist.** The top 10 teams by human scores, the top 10 teams by LLM scores, and every team a judge nominates. Human and LLM scores are never added together.
- **Winners and prizes.** [TBD]
- **No credit by itself:** length; using Lean; using AI, or not using it; saying that something is an open problem.
- **Partial results** that are honestly labeled are not penalized.

**Guidelines**

| Dimension | Guideline |
|---|---|
| **Correctness** | The participants should be able to discuss the mathematics relevant to their presentation in a clear, correct, and sophisticated way. They should accurately convey their uncertainty and be truthful. They should be able to define the mathematical objects under consideration. |
| **Clarity** | They should be able to form clean, correct sentences about the relevant objects, which go beyond surface level considerations. |
| **Motivation** | The participants should be able to explain what mathematical contribution they hope to make. If their project is about finding a new approach to an old result, they need to be able to explain what is unsatisfying about the old approach. If their approach is about crystalizing the connection between two related settings, then they should be able to explain why this crystallization would be useful to the relevant mathematical community. Saying that doing something is an open problem ("finding a proof of [bla] that avoids [bla] technique is an open problem") is not sufficient - they need to explain why [bla] technique is undesirable. |
| **Interest** | The participants should do something interesting during the mathathon event, related to the mathematical contribution they want to make. This can mean doing numerics, proving a lemma, or scaffolding a plan of attack. This interesting thing should demonstrate creativity and critical thinking. |
| **Attribution** (LLM panel only) | Sources are credited, and known results are not presented as new. AI use is disclosed and is consistent with the rest of the report. |
| **Novelty** (LLM panel only) | How the proof, exposition, or connection differs from known work. Failing to find a precedent does not show that something is new. |

Interest and Novelty are different. Novelty asks whether the work differs from what already exists. Interest asks whether the work is worthwhile and was well executed during the event.

**Rubric.** Each dimension is scored as a whole number from 1 to 5. "Expected" means what a team can do in 40 hours, not a finished research paper.

| | 5 · Excellent | 4 · Good | 3 · Acceptable | 2 · Unsatisfactory | 1 · Highly unsatisfactory |
|---|---|---|---|---|---|
| *All dimensions* | *Going above and beyond what was expected* | *Few flaws and some creative elements* | *Only a few minor issues* | *A major issue or multiple minor issues* | *Many major issues* |
| **Correctness** | All claims and arguments correct and precisely stated; objects defined; the status of every claim exact; probing questions answered accurately | Correct apart from small slips; objects defined; uncertainty conveyed accurately; most technical questions answered well | Main claims correct; a few minor errors or loose definitions; uncertainty mostly clear | A significant error or unsupported claim, or several minor errors; some claims overstated | Main claims wrong or seriously overstated; key objects undefined; many errors |
| **Clarity** | Exceptionally clear and well organized; rigorous and heuristic arguments always distinguished; accessible beyond the subfield | Clear and well organized; notation defined; few rough spots | Generally easy to follow; some unclear passages or undefined notation | Hard to follow in key parts, or rigorous and heuristic arguments mixed up | Disorganized and hard to follow throughout |
| **Motivation** | Contribution sharply stated, with a compelling case for why it matters to the relevant community | Contribution clear and its importance convincingly argued, with minor gaps | Contribution stated, but the case for its importance is thin or generic | Contribution vague, or justified only by "it is an open problem" | No discernible contribution or reason |
| **Interest** | Substantial, creative event work yielding real insight, beyond what 40 hours would lead one to expect | Solid event work showing creativity and critical thinking | Reasonable event work, mostly routine | Little event work, or mostly surface-level | No meaningful work during the event |
| **Attribution** (LLM only) | Every source and form of help credited precisely; AI use fully disclosed and consistent | Sources credited, with minor omissions | Main sources credited; some peripheral gaps | A known result or argument not credited, or AI disclosure inconsistent with the report | Known work presented as the team's own |
| **Novelty** (LLM only) | A genuinely new proof, connection, or viewpoint, not found in known work | Substantial new elements on known foundations | A meaningful variation of known work | A minor variation of standard methods | Reproduces known work with no new element |

## 8. Lean (optional)

Lean is optional. Not using it costs nothing. Using it earns nothing by itself: a Lean result is evidence for Correctness, and only for the claims it verifies.

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

## 9. Integrity

- **Violations:**
  - presenting known work as your own;
  - labeling a claim Lean-verified when it fails the checks, or hiding a mismatch between a formal statement and its claim;
  - trying to manipulate the LLM review, for example with hidden text addressed to AI reviewers. Discussing such attacks as part of your mathematics is allowed.
- **Who decides.** A model's flag is not a finding. Two organizers with no conflict of interest decide, after hearing from your team.
- **Consequences** range from a note in the judges' discussion to disqualification.

## 10. After Round 1

- **Feedback.** Your team receives the judges' scores and comments privately. They are not published.
- **Correction window.** For 7 days after the results are announced, you can report factual errors in the LLM evaluations of your report, and attach a response of up to 300 words. The original LLM outputs are not edited; your corrections and response are shown next to them.
- **Publication.** Then all submissions are published, together with their LLM evaluations. Reports and LLM evaluations are published under CC BY 4.0, and code under your team's license. Personal information is not published.
- **Data.** Open models run on SAIR's own servers. Proprietary models are called through zero-data-retention endpoints. Submissions and evaluations are also used for research on how AI models judge mathematics.

---

## Appendix: LaTeX template

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

\section{Problem and known proofs}           % required
\section{Motivation}                         % required
\section{Contribution and main arguments}    % required
\section{Work done during the event}         % required: before the event vs. during the 40 hours
\section{Status of claims}                   % required
\begin{tabular}{lll}
Claim & Status & Where \\ \hline
Theorem 3.1 & Proved & Section 3 \\
Lemma 3.2 & Lean-verified & Appendix B, \texttt{Mathathon.lemma32} \\
Conjecture 5.1 & Conjectural & Section 5 \\
\end{tabular}
\section{Limitations and next steps}
\section*{AI use and acknowledgements}       % required

\begin{thebibliography}{9}                   % required; no separate .bib file
\bibitem{ref1} <Author>, \emph{<Title>}, <Journal> (<Year>).
\end{thebibliography}

\appendix
\section{Figures and computations}           % describe every key figure in words
\section{Formal statements}                  % if Lean is used: see Section 8 (Lean)
\end{document}
```
