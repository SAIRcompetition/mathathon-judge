# Mathathon Round 1: Platform Configuration

This document tells the platform team how to configure the SAIR competition platform so that Round 1 follows the Judging Policy (cited below as "Policy"). Sections 2 and 3 follow the numbering of the platform's capability checklist (participant side 1–8, judge side 1–8). Items marked **[TBD]** need a decision from the organizers; §6 lists them.

## 1. Key times

All times are Pacific Time.

| What | When |
|---|---|
| Registration and team changes close; problem selection and submission open | Nov 13, 6:00 PM |
| Problem selection deadline and problem lock | [TBD] |
| Submission deadline | Nov 15, 10:00 AM |
| Judge assignments final | Before Nov 15, 12:00 PM |
| Scoring opens (Session 1 starts) | Nov 15, 12:00 PM |
| Last session ends; scoring closes | By Nov 15, 5:00 PM |
| Closing ceremony and prizes | After deliberation |

## 2. Participant side

| # | Capability | Setting | Basis |
|---|---|---|---|
| 1 | Email allowlist and registration | On; the platform imports the invited emails and sends invitation emails. Registration is open until the event starts (Nov 13, 6:00 PM). Registering requires accepting the Terms of Service and Privacy Policy. | Policy B.1 |
| 2 | Teams entered by the platform | On | |
| 3 | Self-formed teams | On; teams can be created, and join requests are approved by the Owner | |
| 4 | Owner invites teammates | On | |
| 5 | Changing teams | On, for all members, until the event starts (Nov 13, 6:00 PM). Teams are fixed after that. Rejoin through Teams or an Owner invitation. | |
| 6 | Owner manages roles | On | |
| 7 | Problem selection | Owner and Admin. **4 teams per problem.** Opens Nov 13, 6:00 PM; locks [TBD]. **Changes before the lock: yes.** | Policy, Round 1 Process; Appendix A |
| 8 | Submission | All members. Form as in §2.1, item 2. Opens Nov 13, 6:00 PM; closes Nov 15, 10:00 AM. Replace before the deadline: yes. Withdraw before the deadline: yes; recommended for Owner and Admin only. | Policy B.1 |
| — | Team size | At most 4 members | |

### 2.1 Changes to the participant flow

1. **Switching problems before the lock.** The current flow has no way to change a selected problem. Until the lock, the Owner or an Admin must be able to move the team to another problem with a free place. The old place is released immediately.
2. **Submission form.** Replace the choice between a GitHub link and a file upload with one form:

   | Field | Type | Required |
   |---|---|---|
   | Report source | One `.tex` file | Yes |
   | Report PDF | PDF | Yes |
   | Slides | PDF | Yes |
   | Supplementary materials | ZIP file or repository URL | Optional |
   | Lean project | Repository URL | Optional |
   | Commit | Commit hash for each repository URL; recorded automatically at the deadline if possible | If a repository URL is given |

3. **Withdrawal.** With the current setting, any member can withdraw the whole team's submission minutes before the deadline. We recommend limiting withdrawal to the Owner and Admins.
4. **Teams without a submission.** Participants are asked to submit on time. Under the Judging Policy (D.5), a team with no report still gives its talk and is judged on it, but the current flow takes a team with no valid submission out of review. Organizers need a way to create judge tasks for such a team.

## 3. Judge side

| # | Capability | Setting | Basis |
|---|---|---|---|
| 1 | Invitations and access | Invitation emails on. Judges are appointed by the organizers. The judge agreement includes the conflict-of-interest rules (Policy C.2) and the independence rule (C.4). | Policy C.2, C.4 |
| 2 | View all submissions | On, read-only, from the submission deadline | Policy C.4 |
| 3 | Judges choose problems | Judges choose first; the organizers then assign and rebalance (§4.1). No real limit: minimum 1, maximum the whole list. Opens when the problem list is final, before the event. | Policy A |
| 4 | Review direction text box | On, optional | |
| 5 | Own review tasks | On | |
| 6 | Scoring and comments | Opens Nov 15, 12:00 PM; closes at the end of the last session. Drafts: yes. Editing after submitting: yes, until scoring closes. Form as in §3.2. | Policy C.4, C.6 |
| 7 | Reopening and organizer edits | On, under the rules in §4.3 | |
| 8 | Notification when scoring opens | On | |

### 3.1 Changes to the judge flow

1. **When judges choose problems.** In the judge flow, judges choose problems once "problems are locked". This must mean the problem list is final, before the event. Waiting until teams' problems are locked is too late.
2. **Conflicts of interest.** Add a conflict-of-interest declaration to the judge agreement, and let a judge declare a conflict on any assigned task. The organizers then reassign the task.
3. **Personal ranking.** After the last session, each judge ranks the talks they attended. This spans several tasks, so it needs its own form, or it is collected outside the platform.
4. **LLM outputs stay hidden.** Judges must not see any LLM output before they have submitted all their scores. If LLM evaluations or Evidence Summaries are loaded into the platform, show them only after scoring closes.

### 3.2 Scoring form

| Field | Type | Required | Returned to the team |
|---|---|---|---|
| Conflict of interest | None, or declared with a note | Yes | No |
| Correctness, Clarity, Motivation, Interest | Whole number from 1 to 5 | Yes | Yes |
| Justification for each score | Text, at least one sentence | Yes | Yes |
| Shortlist nomination | Yes or no | Yes | No |
| Reason for nomination | Text | If nominated | No |
| Feedback for the team | Text | Yes | Yes |
| Round 2 recommendation | Yes, maybe, or no | Yes | No |

Each dimension shows its guideline and its 1–5 descriptors from the Judging Policy (Round 1 Guidelines and Rubric).

## 4. Organizer side

### 4.1 Judge assignment

Each talk's judges must satisfy all of these:

- 2–5 judges per talk, with at least one from the team's field or track wherever possible;
- each judge attends at most one talk per session;
- no judge with a conflict of interest;
- judges come from those who chose the problem, wherever possible.

**Timing.** The platform allows assignment only after the submission deadline, which leaves two hours before Session 1. Assignment depends only on each team's problem, so we recommend allowing it as soon as problems are locked, at the problem selection deadline [TBD]. If the platform cannot do this, prepare the assignment outside the platform and enter it after the submission deadline.

**Coverage check.** Before the event, check that every problem on the list has been chosen by at least two judges, ideally including one from its field.

### 4.2 Talk schedule

The platform has no sessions, rooms, or talk times. Round 1 has six sessions on Nov 15, from 12:00 PM to 5:00 PM at the latest, with about 17 talks in parallel per session. The organizers arrange the schedule on site, outside the platform. The platform only needs each judge's assigned talks.

### 4.3 Changing scores after submission

The organizer flow can reopen a review or edit a score directly, both during scoring and after it closes. Human scores build the shortlist, so we propose these rules [TBD]:

- Changes only fix errors, such as a mistyped score or a conflict found late. They never change a judgment.
- Prefer reopening the task for the judge. Edit a score directly only at the judge's request.
- Log every change with its reason.
- No changes after deliberation starts.

## 5. Steps outside the current flows

| Step | When | What is needed |
|---|---|---|
| Review packages to the LLM operator (SAIR) | At the deadline | For each team: an anonymous ID, the problem, the report source, and the repository link with its commit (Automated Review §5) |
| Score export | End of the last session | All scores, nominations, and personal rankings, to build the shortlist (Policy D.1) |
| Feedback to teams | After results | Each team's scores, justifications, and feedback, sent privately |
| Correction window | 7 days after results | Teams flag factual errors in the LLM evaluations and may attach a response of up to 300 words (Automated Review §10) |
| Publication | After the correction window | Submissions and LLM outputs (Automated Review §10) |
| Round 2 matching | After the event | Teams that wish to continue, matched with mentors |

## 6. Decisions needed

| Decision | Recommendation |
|---|---|
| Who can withdraw a submission | Owner and Admin |
| Judge assignment from the problem lock, before the submission deadline | Yes |
| Rules for changing scores | §4.3 |
| Problem selection deadline | No later than the submission deadline |
