# 56 · Simplifying the Disproof of the Exponential Time Hypothesis

## From the proposer

- **Area:** Computational complexity theory, theoretical computer science
- **Tracks:** Computation/Applied Math

### Description

A 3-SAT problem consists of a long list of logic conditions joined together. To solve the puzzle, you must find a way to assign a value of TRUE or FALSE to every variable so that the entire formula evaluates to TRUE.

It was previously widely expected that such an algorithm did not exist: 3-SAT is the prototypical NP-complete problem, and a strengthening of P≠NP, the Exponential Time Hypothesis, asserted that there should be no “free-lunch” universally applicable trick for speeding up such a general problem, beyond constant multiplicative repackagings of the input (corresponding to lowering the base of the exponent).

These have been proven to be NP-complete (so if they are solvable efficiently, then P=NP). The Exponential Time Hypothesis (ETH) states that 3-SAT cannot be solved in subexponential time. In October 2026, OpenAI and Anthropic independently released claimed disproofs of ETH, each providing a subexponential-time algorithm. The problem is to simplify these proofs.

### Desired outcome

A simpler disproof of the Exponential Time Hypothesis, ideally with a shorter and more elementary argument.

Both papers contain unexpected moves enabling their unprecedented results. There is an extensive literature furnishing varied frameworks from which to view the SAT problem. It would thus be helpful to human understanding to recast the unexpected moves of these LLM-generated papers in the existing frameworks of human mathematicians.

### References

OpenAI: https://github.com/openai/math/blob/main/preprints/The-Exponential-Time-Hypothesis-is-False-October-25-2026/paper.pdf

Anthropic: https://github.com/anthropics/formal-math/blob/main/eth/paper.pdf

## AI-generated notes

<!-- status: Disproved (preprint) -->

- **Status:** Claimed disproved by OpenAI and, independently, by Anthropic (October 2026 preprints, not yet refereed); conjectured by Impagliazzo and Paturi (2001).
- **Task:** A simpler, more elementary disproof of the Exponential Time Hypothesis, and an account of the papers' unexpected steps in established frameworks for SAT and counting.
- **Key reference:** [OpenAI, The Exponential Time Hypothesis is False (17 Oct. 2026, revised 25 Oct. 2026)](https://github.com/openai/math/blob/main/preprints/The-Exponential-Time-Hypothesis-is-False-October-25-2026/paper.pdf)
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- Both disproofs are recent preprints and have not been refereed. OpenAI states that an independent working group led by R. Impagliazzo, R. Paturi and R. Williams will examine and explain its proof; the three have opened a community examination site and write that their involvement "should not be taken as certification of the claim".
- Simpler proofs already circulate, none refereed: S. Kintali's simplified exposition of OpenAI's proof (26 October 2026, 22 pages), R. O'Donnell's exposition through permanents of sparse matrices (30 October 2026, 20 pages, produced with LLMs), and the two NotETHSimplified papers (13 pages each, with 3- and 4-page proof-only versions and Lean formalizations). A submission should say what it adds to these.
- The official Lean statement is OpenAI's counting theorem, with the exponent $n(\log\log n)^2/\sqrt{\log n}$, polynomial space and a fixed machine model, not the bare statement that ETH fails. A simpler disproof that gives only time $2^{\varepsilon n}$ for every $\varepsilon>0$, as Kintali's paper and the NotETHSimplified papers do, would not prove it.

### The result

ETH (Impagliazzo–Paturi 2001) states that for some $\delta>0$, 3-SAT on $n$ variables needs time $2^{\delta n}$. OpenAI (Theorem 1.1): for each fixed $k\ge2$, a deterministic algorithm computes the number $\#F$ of satisfying assignments of a $k$-CNF with $n$ variables and $m$ clauses using polynomial space and
$$(n+m)^{O_k(1)}\,2^{O_k(n\log\log n/\sqrt{\log n})}$$
bit operations, which refutes ETH, SETH and Gap-ETH. The official Lean statement asserts the weaker exponent $O_k\big(n(\log\log n)^2/\sqrt{\log n}\big)$ of OpenAI's Section 6.4, with polynomial space. Anthropic (Theorem 1) obtains time $2^{O(\min\{k^2n\log\log n/\sqrt{\log n},\ km/\sqrt{\log m}\})}$ by a different method; for $m=5n$ its bound beats $2^n$ only when $n>10^{10\,000}$.

### How the known proof works

- Count-preserving sparsification, OR-gates and Tovey's variable copying reduce $\#k$-SAT to 3-CNFs with at most three occurrences per variable (Section 2.8).
- Then $\#F=\sum_{x\in\{0,1\}^n}\prod_e\Phi_e(x)$, with clause polynomials of total degree at most $3n$ (Section 2.2).
- Each occurrence of $X_v$ becomes a linear form of degree $\le R$ in a parameter $T$, equal to $X_v$ at $T=0$; this gives $H(T)$ with $H(0)=\#F$ (Section 2.3).
- At $t=1,\dots,Q$ the variables split into small groups linked only by a few bounded integer measurements; fixing these, the sum factors over groups (Section 2.4).
- $H(0)$ is recovered from Taylor coefficients at $t=1,\dots,Q$ by Hermite interpolation (Section 2.5).
- The central step constructs the low-degree forms from an auxiliary matrix, obtained by interpolating $(-1)^j$ with a polynomial in commuting permutation matrices (Sections 2.7, 4).

### Background

- Earlier 3-SAT algorithms ran in time $c^n$ with $c>1$, e.g. randomized $O(1.308^n)$ (PPSZ with Hertli's 2014 analysis) and deterministic $O(1.32793^n)$ (Liu 2018); Williams (2016) refuted a Merlin–Arthur version of SETH.
- Anthropic writes the count as a sum of products over a graph of clauses, recursively merges and cuts it, and rewrites pairs of equality tests with the eight-square identity.
- Both papers place their methods in existing frameworks. OpenAI (§§1.1.4–1.1.5) compares its algorithm with split-and-list and sum–product algorithms (Williams 2005, Koivisto 2006), recovery of a count from structured evaluations (Björklund 2016; Björklund–Kaski–Williams 2019), Hermite interpolation with Hasse derivatives (Bhargava–Ghosh–Kumar–Mohapatra 2023), and the interpolation of $(-1)^j$ used for matrix rigidity (Alman–Williams 2017); Appendix D of its 25 October version proves Theorem 1.1 by contracting Boolean tensor networks. Anthropic (§1.2, Appendix G) treats its sums as weighted #CSPs and tensor-network contractions, notes that its algorithm lies outside the single-contraction-tree model in which Austrin, Kaski and Kubjas (2022) prove lower bounds, and relates its expansion of a crossing to rank-based dynamic programming and Hurwitz's sum-of-squares problem.
- Weaker versions with shorter proofs: Anthropic's main text proves only Theorem 2 (time $O(2^{\delta n})$ for every $\delta>0$), and OpenAI's Section 2.8 gives a weaker algorithm.

### Where to start

- [Some exposition of “The Exponential Time Hypothesis Is False”](https://www.cs.cmu.edu/~odonnell/some_eth_false_exposition.pdf), R. O'Donnell, 2026: OpenAI's argument recast as computing permanents of sparse matrices by interpolation, in 20 pages.
- [The Exponential Time Hypothesis is False](https://github.com/openai/math/blob/main/preprints/The-Exponential-Time-Hypothesis-is-False-October-25-2026/paper.pdf), OpenAI, 2026: Section 2 is a 15-page overview.
- [A 2^{o(n)} time algorithm for 3-SAT](https://github.com/anthropics/formal-math/blob/main/eth/paper.pdf), Anthropic, 2026: Section 2 outlines the proof of Theorem 2 in six steps.
- [ETH Refutation: Examination and Discussion](https://ethdiscussion.blog/2026/10/26/eth-refutation-examination-and-discussion/), R. Impagliazzo, R. Paturi, R. Williams, 2026: the community examination effort.

Prerequisites: sparsification lemma, polynomial interpolation, basic exact exponential algorithms, tensor-network contraction.

### References, with links

- OpenAI, “The Exponential Time Hypothesis is False”, preprint, 17 October 2026, revised 25 October 2026. <https://github.com/openai/math/blob/main/preprints/The-Exponential-Time-Hypothesis-is-False-October-25-2026/paper.pdf>
- Anthropic (Claude), “A 2^{o(n)} Time Algorithm for 3-SAT”, preprint, 26 October 2026. <https://github.com/anthropics/formal-math/blob/main/eth/paper.pdf>

### Further references

- R. Impagliazzo and R. Paturi, On the complexity of k-SAT, J. Comput. System Sci. 62 (2001), 367–375 <https://doi.org/10.1006/jcss.2000.1727>
- R. O'Donnell, Some exposition of “The Exponential Time Hypothesis Is False”, 30 October 2026 <https://www.cs.cmu.edu/~odonnell/some_eth_false_exposition.pdf>
- S. Kintali, A simplified proof of ETH is false, 26 October 2026 <https://shivakintali.github.io/papers/ETH.pdf>
- OpenAI, history of the openai/math repository (entry of 26 October 2026 on the working group) <https://github.com/openai/math/blob/main/history.md>

### Lean

#### Official statement

`OAI.Algorithms.SubexponentialSAT.SqrtLogSpace.exact_count_and_sat` in [`lean/MathathonProblems/P56_SubexponentialSAT.lean`](lean/MathathonProblems/P56_SubexponentialSAT.lean).

The statement of `exact_count_and_sat` is long; see the file.

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/SubexponentialSAT.lean> (copied unchanged).

A Lean proof of this statement already exists: `exact_count_and_sat` in <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Algorithms/SubexponentialSAT/SqrtLogSpace/Final.lean>, imported by <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Algorithms/SubexponentialSAT/Main.lean>. A Lean-verified claim must not use or copy it.

#### Related Lean formalizations

- [anthropics/formal-math, `eth/`](https://github.com/anthropics/formal-math/tree/16a5ce41304fcdaea4e0be7c132e1c361dc26da5/eth): another Lean proof that ETH fails (`MainResults.ethIsFalse`).
- [NotETHSimplified](https://github.com/suquark/NotETHSimplified/tree/b94016813c5f14074a036d8933994678d15854d9): two simplified proofs that, for every $\varepsilon>0$, 3-SAT can be decided in time $C_\varepsilon|\varphi|^{O_\varepsilon(1)}2^{\varepsilon n}$, each with a paper and a Lean formalization down to a primitive multitape machine.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has time-bounded multi-stack Turing machines (`Turing.TM2ComputableInTime`) and tapes (`Turing.Tape`); CNF formulas appear only inside the `lrat_proof` tactic. It has no SAT algorithms or #SAT; the official statement defines its own CNFs and machine model.
