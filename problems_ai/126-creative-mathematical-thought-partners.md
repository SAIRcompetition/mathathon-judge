# 126 · Creative Mathematical Thought Partners

## From the proposer

- **Area:** Automated and interactive theorem proving and formalization; human–AI collaboration. Mathematical case studies may span any field.
- **Tracks:** Computation/Applied Math

### Description

Can creativity-focused AI agents help mathematicians find more illuminating proofs of established results? Build a model-agnostic harness that complements humans and formalization agents through literature-informed strategies: lemma abduction, analogy, inductive inference, and representation change. Users configure proof preferences, intervention triggers, and parallel exploration. Each suggestion identifies an obstruction, an actionable mathematical move, and a test. Persistent project memory preserves alternatives and failed attempts, while a reusable strategy library evolves through user-approved additions. Demonstrate the system on known theorems, distinguish heuristic promise from proof status, and evaluate its contribution to mathematical understanding.

### Desired outcome

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

### References

Yutaka Nagashima and Daniel Sebastian Goc, Proof By Abduction in Isabelle/HOL, AITP 2024. 
- A concrete approach to recursively conjecturing auxiliary lemmas and proving them to establish a target theorem.

Ben Goertzel, From AITP to AGITP: Toward a Neural-Symbolic Architecture for Creative Math Conjecturing, AITP 2026, presentation slides, especially slides 19-24 and 27-28.
- An architectural proposal for persistent mathematical research combining creative operators, formal verification and evaluation of conjectured lemmas.

Katherine M. Collins et al., Building Machines that Learn and Think with People (2024), arXiv:2408.03943. 
- Conceptual background for designing AI thought partners that complement human reasoning, support collaborative exploration and adapt to their human collaborators.

H. Furstenberg, On the Infinitude of Primes, American Mathematical Monthly 62 (1955), p. 353. 
- A suggested mathematical case study for exploring alternative perspectives on an established theorem.

Don Zagier, A One-Sentence Proof That Every Prime (p\equiv1\pmod4) Is a Sum of Two Squares, American Mathematical Monthly 97 (1990), p. 144. 
- A suggested case study for exploring the relationship between proof brevity, explanation and understanding.

## AI-generated notes

<!-- status: Not a single theorem -->

- **Status:** Not a single theorem: a software and evaluation project; both suggested case studies are classical results, Furstenberg's topological proof that there are infinitely many primes (1955) and Zagier's one-sentence proof of Fermat's two-squares theorem (1990).
- **Task:** A model-agnostic harness of "creativity" agents (lemma abduction, analogy, induction, change of representation), demonstrated and evaluated on known theorems.
- **Key reference:** [K. M. Collins et al., "Building machines that learn and think with people", Nature Human Behaviour 8 (2024), 1851–1863](https://doi.org/10.1038/s41562-024-01991-9) (arXiv:2408.03943)
- **Lean:** No official statement.

### Notes

- The AITP 2026 programme lists Goertzel's invited talk (2 September 2026) but links no slides, and we found none online, so the slide numbers given in the sheet could not be checked.
- The Nagashima–Goc abstract (AITP 2024) now has a longer version, "Abduction Prover in Isabelle/HOL" (arXiv:2606.04877, June 2026; accepted to Isabelle 2026 according to arXiv). The prototype is distributed with the authors' PSL tools for Isabelle.

### The result

The two case studies:
- **Furstenberg (1955).** Call a set of integers open if it is a union of arithmetic progressions $a+b\mathbb Z$ ($b\ge1$). This is a topology on $\mathbb Z$ in which every progression is also closed and every nonempty open set is infinite. Since $\mathbb Z\setminus\lbrace\pm1\rbrace=\bigcup_{p\ \text{prime}}p\mathbb Z$, finitely many primes would make $\lbrace\pm1\rbrace$ open; hence there are infinitely many primes.
- **Fermat's two-squares theorem, Zagier (1990).** Every prime $p=4k+1$ is a sum of two squares. On the finite set $S=\lbrace(x,y,z)\in\mathbb Z_{\gt0}^3: x^2+4yz=p\rbrace$ the map sending $(x,y,z)$ to $(x+2z,\ z,\ y-x-z)$ if $x\lt y-z$, to $(2y-x,\ y,\ x-y+z)$ if $y-z\lt x\lt2y$, and to $(x-2y,\ x-y+z,\ y)$ if $x\gt2y$
is an involution whose only fixed point is $(1,1,k)$. So $|S|$ is odd, the involution $(x,y,z)\mapsto(x,z,y)$ has a fixed point $(x,y,y)$, and $p=x^2+(2y)^2$.

### How the known proof works

- Furstenberg: progressions form a basis of a topology; the complement of $a+b\mathbb Z$ is the union of the other $b-1$ residue classes mod $b$, so it is closed; a finite union of closed sets is closed, which gives the contradiction. Mercer (2009) removes the topology: the key fact is that a finite intersection of two-sided progressions is empty or infinite, which makes the proof a close relative of Euclid's. This is a ready-made example of one proof in two representations.
- Zagier: check case by case that the piecewise-linear map preserves $S$ and is an involution, find its unique fixed point, and use that an involution on a finite set has as many fixed points as the set has elements, mod 2. Pak's partition survey (Ramanujan J. 2006, notes to §8) attributes the underlying involution to Heath-Brown and points out that, via the Garsia–Milne involution principle, the proof is effective.

### Background

- Classical sources for the strategy library: Pólya's *How to Solve It* (1945) and *Mathematics and Plausible Reasoning* (1954), Lakatos's *Proofs and Refutations* (1976), Hadamard's *Psychology of Invention in the Mathematical Field* (1945), Poincaré's essay on mathematical invention (1908), and the Tricki, a wiki of problem-solving techniques.
- Machine conjecturing and lemma discovery: the Abduction Prover builds an "abduction graph" of conjectured lemmas and tries to prove the goal from them (Nagashima–Goc); Davies et al. (Nature 2021) used machine learning to suggest conjectures to mathematicians; Ganesalingam and Gowers (2017) built a prover whose output reads like a human proof.
- Evaluation: in an interactive study with mathematicians (CheckMate, Collins et al., PNAS 2024), the correctness and the perceived helpfulness of model answers were correlated but sometimes diverged, which supports tracking "promise" separately from "proof status", as the sheet asks.
- Both case studies already have formal proofs (see Lean below), so a demonstration can aim at Lean-checked alternative proofs and compare them with existing ones.

### Where to start

- [Building machines that learn and think with people](https://arxiv.org/abs/2408.03943), K. M. Collins et al., 2024: modes of human–AI collaborative thinking and design desiderata for thought partners.
- [Abduction Prover in Isabelle/HOL](https://arxiv.org/abs/2606.04877), Y. Nagashima and D. S. Goc, 2026: a working recursive lemma-conjecturing loop; code in the [PSL repository](https://github.com/data61/PSL).
- [Evaluating language models for mathematics through interactions](https://arxiv.org/abs/2306.01694), K. M. Collins et al., 2023: a protocol for having mathematicians rate interactive assistance.
- [`Archive/ZagierTwoSquares.lean`](https://github.com/leanprover-community/mathlib4/blob/v4.35.0/Archive/ZagierTwoSquares.lean), Mathlib Archive: a ready formal target for the Zagier case study.

Prerequisites: an LLM agent framework and one proof assistant (Lean or Isabelle) at user level; elementary number theory and point-set topology for the case studies.

### References, with links

- Y. Nagashima and D. S. Goc, "Proof By Abduction in Isabelle/HOL", AITP 2024 (extended abstract). <https://aitp-conference.org/2024/abstract/AITP_2024_paper_35.pdf>
- B. Goertzel, "From AITP to AGITP: Toward a Neural-Symbolic Architecture for Creative Math Conjecturing", invited talk, AITP 2026; listed in the programme at <https://aitp-conference.org/2026/>; slides not found (not verified).
- K. M. Collins et al., "Building Machines that Learn and Think with People", arXiv:2408.03943 (2024); Nature Human Behaviour 8 (2024), 1851–1863. <https://arxiv.org/abs/2408.03943> <https://doi.org/10.1038/s41562-024-01991-9>
- H. Furstenberg, "On the Infinitude of Primes", Amer. Math. Monthly 62 (1955), 353. <https://doi.org/10.2307/2307043>
- D. Zagier, "A One-Sentence Proof That Every Prime $p\equiv1\pmod 4$ Is a Sum of Two Squares", Amer. Math. Monthly 97 (1990), 144. <https://doi.org/10.2307/2323918>

### Further references

- Y. Nagashima and D. S. Goc, "Abduction Prover in Isabelle/HOL", arXiv:2606.04877 (2026). <https://arxiv.org/abs/2606.04877>
- K. M. Collins, A. Q. Jiang, S. Frieder et al., "Evaluating language models for mathematics through interactions", PNAS 121 (2024), e2318124121. <https://doi.org/10.1073/pnas.2318124121>
- M. Ganesalingam and W. T. Gowers, "A fully automatic theorem prover with human-style output", J. Automated Reasoning 58 (2017), 253–291. <https://doi.org/10.1007/s10817-016-9377-1>
- A. Davies et al., "Advancing mathematics by guiding human intuition with AI", Nature 600 (2021), 70–74. <https://doi.org/10.1038/s41586-021-04086-x>
- I. Lakatos, *Proofs and Refutations*, Cambridge University Press, 1976. <https://doi.org/10.1017/CBO9781139171472>
- M. Aigner and G. M. Ziegler, *Proofs from THE BOOK*, 6th ed. (2018): "Six proofs of the infinity of primes" and "Representing numbers as sums of two squares". <https://doi.org/10.1007/978-3-662-57265-8_1> <https://doi.org/10.1007/978-3-662-57265-8_4>
- I. D. Mercer, "On Furstenberg's Proof of the Infinitude of Primes", Amer. Math. Monthly 116 (2009), 355–356. <https://doi.org/10.4169/193009709X470218>
- M. Eberl, "Furstenberg's topology and his proof of the infinitude of primes", Archive of Formal Proofs (Isabelle), 2020. <https://isa-afp.org/entries/Furstenberg_Topology.html>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for software and its evaluation, not for a theorem, and its two case studies (the infinitude of primes and Fermat's two-squares theorem) are already proved in Mathlib (`Nat.exists_infinite_primes`, `Nat.Prime.sq_add_sq`).

#### Related Lean formalizations

- `Nat.Prime.sq_add_sq'` in [`Archive/ZagierTwoSquares.lean`](https://github.com/leanprover-community/mathlib4/blob/v4.35.0/Archive/ZagierTwoSquares.lean) (J. Tan, T. Browning), part of the Mathlib repository and built by its CI: Zagier's proof, with the piecewise involution `Zagier.complexInvo`.
- `infinitude_primes` in [Formal Proofs from THE BOOK](https://thebook.zib.de/number%20theory/2024/03/15/primes-infinitude-furstenberg.html) (C. Spiegel; earlier versions by Y. E. Jäckle and Y. Dillies): Furstenberg's proof in Lean 4.

Projects outside Mathlib and the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has Euclid's theorem (`Nat.exists_infinite_primes`, `Nat.infinite_setOfPred_prime`), Dirichlet's theorem (`Nat.infinite_setOfPred_prime_and_eq_mod`), Fermat's two-squares theorem proved through the Gaussian integers (`Nat.Prime.sq_add_sq`), and `TopologicalSpace.generateFrom`, with which Furstenberg's topology takes a few lines to define. It has no tooling for the harness itself (strategy libraries, agent orchestration), which lies outside its scope.
