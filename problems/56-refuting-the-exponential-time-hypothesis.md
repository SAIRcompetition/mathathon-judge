# 56 · Refuting the Exponential Time Hypothesis

- **Status:** Claimed disproved by OpenAI and, independently, by Anthropic (October 2026 preprints, not yet refereed); conjectured by Impagliazzo and Paturi (2001).
- **Task:** A simpler, more elementary disproof of the Exponential Time Hypothesis.
- **Tracks:** Computation/Applied Math · **Area:** Computational complexity theory, theoretical computer science
- **Key reference:** [OpenAI, The Exponential Time Hypothesis is False (17 Oct. 2026, revised 25 Oct. 2026)](https://github.com/openai/math/blob/main/preprints/The-Exponential-Time-Hypothesis-is-False-October-25-2026/paper.pdf)
- **Lean:** Official statement; a Lean proof already exists.

## Notes

- Both disproofs are recent preprints and have not been refereed. OpenAI states that an independent working group led by R. Impagliazzo, R. Paturi and R. Williams will examine and explain its proof.

## Description

A 3-SAT problem is a long list of logical conditions joined together. To solve it, one must assign TRUE or FALSE to every variable so that the whole formula evaluates to TRUE. 3-SAT is NP-complete, so an efficient algorithm for it would give P = NP. The Exponential Time Hypothesis (ETH) states that 3-SAT cannot be solved in subexponential time. In October 2026, OpenAI and Anthropic independently released claimed disproofs of ETH, each providing a subexponential-time algorithm. The problem is to simplify these proofs.

## Desired outcome

A simpler disproof of the Exponential Time Hypothesis, ideally with a shorter and more elementary argument.

## The result

ETH (Impagliazzo–Paturi 2001) states that for some $\delta>0$, 3-SAT on $n$ variables needs time $2^{\delta n}$. OpenAI (Theorem 1.1): for each fixed $k\ge2$, a deterministic algorithm computes the number $\#F$ of satisfying assignments of a $k$-CNF with $n$ variables and $m$ clauses using polynomial space and
$$(n+m)^{O_k(1)}\,2^{O_k(n\log\log n/\sqrt{\log n})}$$
bit operations, which refutes ETH, SETH and Gap-ETH. The official Lean statement asserts the weaker exponent $O_k\big(n(\log\log n)^2/\sqrt{\log n}\big)$ of OpenAI's Section 6.4, with polynomial space. Anthropic (Theorem 1) obtains time $2^{O(\min\{k^2n\log\log n/\sqrt{\log n},\ km/\sqrt{\log m}\})}$ by a different method; for $m=5n$ its bound beats $2^n$ only when $n>10^{10\,000}$.

## How the known proof works

- Count-preserving sparsification, OR-gates and Tovey's variable copying reduce $\#k$-SAT to 3-CNFs with at most three occurrences per variable (Section 2.8).
- Then $\#F=\sum_{x\in\{0,1\}^n}\prod_e\Phi_e(x)$, with clause polynomials of total degree at most $3n$ (Section 2.2).
- Each occurrence of $X_v$ becomes a linear form of degree $\le R$ in a parameter $T$, equal to $X_v$ at $T=0$; this gives $H(T)$ with $H(0)=\#F$ (Section 2.3).
- At $t=1,\dots,Q$ the variables split into small groups linked only by a few bounded integer measurements; fixing these, the sum factors over groups (Section 2.4).
- $H(0)$ is recovered from Taylor coefficients at $t=1,\dots,Q$ by Hermite interpolation (Section 2.5).
- The central step constructs the low-degree forms from an auxiliary matrix, obtained by interpolating $(-1)^j$ with a polynomial in commuting permutation matrices (Sections 2.7, 4).

## Background

- Earlier 3-SAT algorithms ran in time $c^n$ with $c>1$, e.g. randomized $O(1.308^n)$ (PPSZ with Hertli's 2014 analysis) and deterministic $O(1.32793^n)$ (Liu 2018); Williams (2016) refuted a Merlin–Arthur version of SETH.
- Anthropic writes the count as a sum of products over a graph of clauses, recursively merges and cuts it, and rewrites pairs of equality tests with the eight-square identity.
- Weaker versions with shorter proofs: Anthropic's main text proves only Theorem 2 (time $O(2^{\delta n})$ for every $\delta>0$), and OpenAI's Section 2.8 gives a weaker algorithm.

## Where to start

- [The Exponential Time Hypothesis is False](https://github.com/openai/math/blob/main/preprints/The-Exponential-Time-Hypothesis-is-False-October-25-2026/paper.pdf), OpenAI, 2026: Section 2 is a 15-page overview.
- [A 2^{o(n)} time algorithm for 3-SAT](https://github.com/anthropics/formal-math/blob/main/eth/paper.pdf), Anthropic, 2026: Section 2 outlines the proof of Theorem 2 in six steps.
- Prerequisites: sparsification lemma, polynomial interpolation, basic exact exponential algorithms.

## References

- OpenAI: <https://github.com/openai/math/blob/main/preprints/The-Exponential-Time-Hypothesis-is-False-October-25-2026/paper.pdf>
- Anthropic: <https://github.com/anthropics/formal-math/blob/main/eth/paper.pdf>

Further references:

- R. Impagliazzo and R. Paturi, On the complexity of k-SAT, J. Comput. System Sci. 62 (2001), 367–375 <https://doi.org/10.1006/jcss.2000.1727>

## Lean

### Official statement

`OAI.Algorithms.SubexponentialSAT.SqrtLogSpace.exact_count_and_sat` in [`lean/MathathonProblems/P56_SubexponentialSAT.lean`](lean/MathathonProblems/P56_SubexponentialSAT.lean).

The statement of `exact_count_and_sat` is long; see the file.

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/SubexponentialSAT.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Algorithms/SubexponentialSAT/Main.lean>. A Lean-verified claim must not use or copy it.

### Related Lean formalizations

- [anthropics/formal-math, `eth/`](https://github.com/anthropics/formal-math/tree/16a5ce41304fcdaea4e0be7c132e1c361dc26da5/eth): another Lean proof that ETH fails (`MainResults.ethIsFalse`).
- [NotETHSimplified](https://github.com/suquark/NotETHSimplified/tree/b94016813c5f14074a036d8933994678d15854d9): two simplified proofs of the same algorithm for 3-SAT, each with a paper and a Lean formalization.

Projects outside the Palomar registry are described as their authors describe them; the organizers have not checked their proofs.

### Mathlib

Mathlib has time-bounded multi-stack Turing machines (`Turing.TM2ComputableInTime`) and tapes (`Turing.Tape`); CNF formulas appear only inside the `lrat_proof` tactic. It has no SAT algorithms or #SAT; the official statement defines its own CNFs and machine model.

---

*Description and Desired outcome are the proposer's text. The other sections were written by the organizers from the literature.*
