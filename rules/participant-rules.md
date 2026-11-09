# Mathathon Round 1: Participant Rules

Round 1 is a 40-hour onsite event at Caltech, from Nov 13 at 8:00 PM to Nov 15 at 12:00 PM. Your team picks one problem from the problem list and works toward an alternative proof, a clearer exposition, or a new connection. By the submission deadline, Nov 15 at 12:00 PM, you submit a report and slides, plus, optionally, supplementary materials and a Lean project. On the afternoon of Nov 15 you present your work to a panel of judges.

The judges score your presentation. A panel of AI models reviews your report, and its scores are advisory. The judges decide the winners.

You take four steps on the SAIR competition platform: registration (§1), teams (§2), problem selection (§3), and submission (§4). Then you give your presentation (§5). How to prepare each item you submit is in the [Submission Guidelines](submission-guidelines.md). All times are Pacific Time.

## Key dates

| When | What happens |
|---|---|
| Before Nov 13, 8:00 PM | Register (§1) and form your team (§2). The problem list is published. |
| **Nov 13, 8:00 PM** | Round 1 starts. Teams are fixed. Problem selection (§3) and submission (§4) open. |
| **Nov 14, 11:59 PM** | **Problem selection deadline.** Problems are locked. |
| **Nov 15, 12:00 PM** | **Submission deadline.** |
| **Nov 15, 12:00 PM to 3:30 PM** | Presentations, in six sessions (§5). |
| **Nov 15, 5:00 PM to 6:00 PM** | Closing ceremony. Results are announced. |

## 1. Registration

- **When.** Register before Round 1 starts, on Nov 13 at 8:00 PM. After that, teams are fixed and you cannot join one.
- **Where.** On the SAIR competition platform. Teams, problem selection, and submission also take place there.
- **Invitation only.** Sign up or log in with a SAIR ID that uses the email address your invitation was sent to. Other addresses cannot register.
- **Terms.** When you register, you accept the Mathathon Terms of Service and Privacy Policy.

## 2. Teams

- **When.** Until Round 1 starts, on Nov 13 at 8:00 PM. From then on, teams are fixed: no one can join, leave, or change teams.
- **Size.** At most 4 members. You can be on only one team.
- **Joining a team.** There are four ways to be on a team:
  - **Your team is already set up.** If you formed a team when you applied to Mathathon, the organizers enter it on the platform for you. You see your team as soon as you log in, and you do not need to do anything.
  - **Create a team.** You become its Owner, and you can invite others to join.
  - **Ask to join a team** that has fewer than 4 members. You join once the team accepts your request.
  - **Accept an invitation** from a team's Owner or Admin.
- **Roles.** The Owner is the person who created the team, or the person named by the organizers. The Owner can make any member an Admin.

  | | Owner | Admin | Member |
  |---|---|---|---|
  | Invite members | ✓ | ✓ | |
  | Set roles | ✓ | | |
  | Select or switch the problem (§3) | ✓ | ✓ | |
  | Submit, replace, or withdraw the submission (§4) | ✓ | ✓ | ✓ |

## 3. Problem selection

- **When.** From Nov 13 at 8:00 PM until the problem selection deadline, **Nov 14 at 11:59 PM**. At that deadline your problem is locked.
- **Who.** The Owner or an Admin.
- **One problem.** Your team is signed up for exactly one problem at a time. You present, and are judged on, only that problem.
- **From the list only.** Only problems on the published problem list are judged.
- **At most 4 teams per problem.** Places are first come, first served. A problem is full when 4 teams are signed up for it. A full problem cannot be selected until one of its teams switches to another problem.
- **Switching.** Until the problem selection deadline, you can switch to any problem that is not full. Your old place is released at once.
- **No problem at the deadline.** If your team has no problem at the problem selection deadline, you will not be assigned a presentation slot, and will not be judged.

## 4. Submission

- **When.** From Nov 13 at 8:00 PM until **Nov 15 at 12:00 PM**.
- **Who.** Any team member.
- **What to submit:**
  - a report, as one `.tex` file and its PDF (required);
  - slides, as a PDF (required);
  - supplementary materials, as a ZIP file or a repository link (optional);
  - a Lean project, as a repository link (optional).

  Give the full commit hash for every repository link. How to prepare each item is in the [Submission Guidelines](submission-guidelines.md).
- **One submission per team.** The platform takes either one ZIP file or one GitHub repository link with its full commit hash. Put the report, the slides, and any supplementary materials in it. If you submit a ZIP file and have a Lean project, give the Lean repository's link and full commit hash in the report's title block. The maximum file size is [TBD].
- **Before the deadline,** you can replace your submission, or withdraw it and submit again. The version in place at the deadline is the one that is judged.
- **After the deadline,** nothing can be submitted or changed, and a missing report gets no LLM review. Submit on time.
- **Integrity.** The following are violations. Consequences range from a note in the judges' discussion to disqualification.
  - presenting known work as your own;
  - calling a claim Lean-verified when it fails the checks, or hiding a mismatch between a formal statement and its claim;
  - trying to manipulate the LLM review, for example with text addressed to AI reviewers.

## 5. Presentation

- **When.** Nov 15, from 12:00 PM to 3:30 PM, in six sessions. Your session, time, and room are announced after problems are locked (§3).
- **Length.** At most 20 minutes of presentation, followed by at most 10 minutes of questions (Q&A).
- **Judges.** Each presentation has 2 to 5 judges. When possible, at least one of them is an expert in your problem's field. They score the presentation and the Q&A. They may view your report and other materials after scoring your presentation, but before making final decisions.
- **Questions to expect:**
  - definitions;
  - the key step;
  - what is new and what is already known;
  - what the AI did, and whether you understand it;
  - how sure you are of your claims.
- **How you are judged:**
  - how judges score your presentation, with the guidelines and the rubric: [Judge Guidelines](judge-guidelines.md);
  - how the LLM panel reviews your report: [Judge Rules §4](judge-rules.md#4-llm-panel).
