# Problem 126

## Problem ID

126

## Title/name of problem

Creative Mathematical Thought Partners

## Short description of problem (100 words or less)

Can creativity-focused AI agents help mathematicians find more illuminating proofs of established results? Build a model-agnostic harness that complements humans and formalization agents through literature-informed strategies: lemma abduction, analogy, inductive inference, and representation change. Users configure proof preferences, intervention triggers, and parallel exploration. Each suggestion identifies an obstruction, an actionable mathematical move, and a test. Persistent project memory preserves alternatives and failed attempts, while a reusable strategy library evolves through user-approved additions. Demonstrate the system on known theorems, distinguish heuristic promise from proof status, and evaluate its contribution to mathematical understanding.

## Submitted Area

Automated and interactive theorem proving and formalization; human–AI collaboration. Mathematical case studies may span any field.

## Proposed Tracks

Computation/Applied Math

## Reference/source material

Yutaka Nagashima and Daniel Sebastian Goc, Proof By Abduction in Isabelle/HOL, AITP 2024. 
- A concrete approach to recursively conjecturing auxiliary lemmas and proving them to establish a target theorem.

Ben Goertzel, From AITP to AGITP: Toward a Neural-Symbolic Architecture for Creative Math Conjecturing, AITP 2026, presentation slides, especially slides 19-24 and 27-28.
- An architectural proposal for persistent mathematical research combining creative operators, formal verification and evaluation of conjectured lemmas.

Katherine M. Collins et al., Building Machines that Learn and Think with People (2024), arXiv:2408.03943. 
- Conceptual background for designing AI thought partners that complement human reasoning, support collaborative exploration and adapt to their human collaborators.

H. Furstenberg, On the Infinitude of Primes, American Mathematical Monthly 62 (1955), p. 353. 
- A suggested mathematical case study for exploring alternative perspectives on an established theorem.

Don Zagier, A One-Sentence Proof That Every Prime $p\equiv1\pmod4$ Is a Sum of Two Squares, American Mathematical Monthly 97 (1990), p. 144. 
- A suggested case study for exploring the relationship between proof brevity, explanation and understanding.

## Desired outcome

An open-source, model-agnostic harness for creative mathematical exploration, accompanied by concrete demonstrations on established results. Participants would investigate which interventions help produce useful lemmas, alternative proofs, clearer explanations or connections between mathematical areas.

The system could include:
- Complementary creativity agents: Agents explicitly tasked with proposing auxiliary lemmas, changing representations, finding analogies, generalizing or specializing statements, examining examples and counterexamples, or simplifying an existing argument. Their suggestions feed into the main mathematical or formalization workflow.
- Configurable collaboration: Users specify proof style, desired length, permitted techniques, mathematical field and intended audience. They also control when agents intervene, how they communicate with the user and main agents, and the budget for parallel brainstorming.
- A sourced strategy library: Translate ideas from Pólya, Lakatos, Poincaré, Hadamard, Tricki.org, and research on abduction, induction and conjecturing into actionable strategies. Record each strategy's source, intended use and examples.
- Adaptive, user-approved learning: Propose additions to the library based on periodic literature searches and patterns observed in sessions. Preserve the evidence and context behind each proposed addition, including unsuccessful applications.
- Explicit tracking of uncertainty: Record each idea's assumptions, supporting evidence, unresolved obligations and status, for example, conjectured, tested, refuted or formally verified. Track expectations about an approach's usefulness separately from evidence of mathematical correctness.
- Mathematical demonstrations and evaluation: Produce an accessible account of one or more known results, with Lean-checked proofs where feasible. Compare sessions with and without creativity interventions under comparable resource budgets, assessing useful contributions, diversity of approaches, explanation quality and human effort.
- Each creativity intervention should address a specific mathematical obstruction and produce a structured proposal with assumptions, expected consequences and a practical test. Alongside the general strategy library, the harness should maintain persistent project memory containing attempted approaches, failed routes, conjectures and their dependencies. Users could configure interventions after stagnation, at milestones or on request. Evaluation should examine whether interventions contribute useful lemmas, clearer representations or better explanations under comparable resource budgets, including experiments that remove proposed lemmas to assess their downstream value. Successful and unsuccessful interventions should inform context-specific strategy recommendations, with user approval for durable library updates.

A feasible 40-hour prototype would combine a small strategy library, one configurable intervention mechanism and a documented demonstration on one theorem. Over the following two months, participants could extend the case studies, test multiple model backends, implement user-approved library updates and publish a reproducible repository and explainer.
