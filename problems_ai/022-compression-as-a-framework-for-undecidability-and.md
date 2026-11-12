# 22 · Compression as a Framework for Undecidability and Computational Complexity

## From the proposer

- **Area:** Computational complexity
- **Tracks:** Computation/Applied Math

### Description

Compression is a recurring mechanism in undecidability proofs, including those for Wang tilings, MIP* = RE, and MIP^co = coRE. Abstract compression criteria characterize RE/coRE-completeness under suitable hypotheses, suggesting a reusable framework for understanding computational hardness. This project explores three directions: simplifying existing undecidability proofs through compression; finding new applications, potentially to quantum channel capacity; and developing analogous compression criteria for completeness at higher levels of the arithmetical hierarchy or for decidable complexity classes. The goal is to clarify what makes compression work and turn that understanding into more accessible proofs and new mathematical connections.

### Desired outcome

Participants should develop a clearer understanding of compression as a reusable method for proving computational hardness. Teams may pursue one or more of three directions:

1. Simplify existing proofs. Reconstruct a known undecidability proof using an abstract compression lemma, separating the problem-specific construction from the general recursion argument. Identify opportunities to weaken hypotheses, streamline the construction, or explain connections between different proofs.

2. Explore new applications. Investigate compression procedures for other mathematical problems. Ordinary quantum channel capacity is an ambitious candidate; a valuable intermediate outcome would be a precisely formulated decision problem and a conditional undecidability proof identifying the missing compression lemma.

3. Extend completeness characterizations. Seek analogues of the RE/coRE compression criteria for higher levels of the arithmetical hierarchy, beginning with Σ₂⁰ or Π₂⁰, or for selected decidable complexity classes. The aim is to identify useful necessary-and-sufficient conditions, including quantitative requirements, rather than merely restating completeness in different language.

Deliverables could include a self-contained exposition with worked examples, a simplified or formalized proof, a new compression theorem, or a rigorous obstruction to a proposed extension. Teams need not resolve a new open problem: a substantial improvement in understanding an existing result would be a successful contribution.

### References

1. Andrew Marks, “A remark on compression,” lecture slides, October 19, 2023. Presents an abstract recursive compression lemma, its proof, and applications to Wang tilings and nonlocal games. Particularly relevant are the slides titled “Compression lemma,” “Proof,” and “Open problems/requests.”
https://sfo3.digitaloceanspaces.com/slmath-production-assets/system/paperclip/documents/data/000/097/705/original/AM.pdf

2. Junqiao Lin, “MIPᶜᵒ = coRE” (2025), arXiv:2510.07162. See §1.1.1 and §4, especially Definitions 4.1 and 4.3 and Theorems 4.4–4.5, for compression conditions characterizing RE/coRE-completeness under the stated hypotheses.
https://arxiv.org/abs/2510.07162

3. Hamoon Mousavi, Seyed Sajjad Nezhadi, and Henry Yuen, “Nonlocal Games, Compression Theorems, and the Arithmetical Hierarchy,” STOC 2022, pp. 1–11; arXiv:2110.04651. Develops gapless compression and establishes Π₂⁰-completeness of deciding whether a nonlocal game’s quantum value equals one, providing a concrete starting point for exploring higher-level compression criteria.
https://arxiv.org/abs/2110.04651

## AI-generated notes

<!-- status: Not a single theorem -->

- **Status:** Research program on compression; Lin (2025) characterizes RE- and coRE-completeness by abstract compression conditions.
- **Task:** Clarify compression as a reusable method for proving undecidability.
- **Key reference:** [J. Lin, MIPᶜᵒ = coRE (2025), arXiv:2510.07162, §1.1.1 and §4](https://arxiv.org/abs/2510.07162)
- **Lean:** No official statement.

### Notes

- Lin cites a paper of Nezhadi, Marks and Yuen on the recursive compression method as in preparation; a 2025 talk abstract by Marks announces an extension of the lemma through the arithmetical hierarchy, which overlaps direction 3.
- Lin's MIPᶜᵒ = coRE is a 2025 preprint, not yet refereed.

### The result

Compression maps, in polynomial time, a succinct description of an instance (a machine that generates it) to a new instance with the same answer and a larger "cost". Marks's lemma: if $f:\lbrace0,1\rbrace^{\ast}\to[0,\infty]$, $\emptyset\ne A\subseteq\lbrace f\lt\infty\rbrace$, and Compress satisfies $f(y)\ge\max(f(x),n)$ and $x\in A\Rightarrow y\in A$ for $y=\mathrm{Compress}(\hat x,n)$, then a polynomial-time reduction sends halting machines into $A$ and non-halting ones into $\lbrace f=\infty\rbrace$. Lin (Theorems 4.4–4.5): a decision problem whose no-instances form a coRE set is RE-complete iff it is (weakly) compressible; dually for coRE. The proposer asks for simpler proofs via such lemmas, new applications (e.g. quantum channel capacity) and analogues at $\Sigma^0_2/\Pi^0_2$ or for decidable classes.

### Background

- Wang tiling is undecidable (Berger, 1966); Durand, Romashchenko and Shen (2008) reproved it with self-simulating "fixed-point" tile sets, an early instance of compression.
- MIP* = RE (Ji, Natarajan, Vidick, Wright, Yuen, 2020) builds on the recursive compression framework of Fitzsimons et al. (STOC 2019).
- Mousavi, Nezhadi and Yuen (STOC 2022) proved a gapless compression theorem and showed that deciding whether a game's quantum value equals 1 is $\Pi^0_2$-complete.
- Lin (2025) proved MIPᶜᵒ = coRE with the same compression procedure; his Example 4.2 (credited to Nezhadi, Marks and Yuen) shows that the halting problem itself is compressible.
- Marks lists open requests: compression proofs of the word problem for groups and of the operator-norm result of Fritz–Netzer–Thom.

### Where to start

- [A remark on compression](https://sfo3.digitaloceanspaces.com/slmath-production-assets/system/paperclip/documents/data/000/097/705/original/AM.pdf), Marks, 2023: the lemma and its proof on two slides.
- [MIPᶜᵒ = coRE](https://arxiv.org/abs/2510.07162), Lin, 2025: §1.1.1 gives the reduction in a simplified setting.
- [Fixed point and aperiodic tilings](https://arxiv.org/abs/0802.2432), Durand, Romashchenko and Shen, 2008: compression without quantum information.
- Prerequisites: Kleene's recursion theorem, succinct representations, arithmetical hierarchy; nonlocal games for the quantum applications.

### Further references

- B. Durand, A. Romashchenko and A. Shen, Fixed point and aperiodic tilings, DLT 2008 <https://arxiv.org/abs/0802.2432>
- Z. Ji, A. Natarajan, T. Vidick, J. Wright and H. Yuen, MIP* = RE (2020) <https://arxiv.org/abs/2001.04383>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for a framework for undecidability proofs, pursued in three open-ended directions, not for the proof of one theorem.

#### Related Lean formalizations

- [MIP* = RE](https://palomar-registry.org/entry?id=PALOMAR-2026-10-09-000012&version=1), Palomar registry (Lean-checked, trust level high): T. Vidick's Lean formalization of MIP* = RE, including the halting reduction and the compression steps.
- [MIP* = RE for the computable class](https://prove2.me/theorems/af76c716-61d4-4b88-a68d-418bb88ade24), Prove2Me: the same development's main theorem, listed as proved.
- [MIPStarRE](https://github.com/LionSR/MIPStarRE/tree/95ccdf5a7591d6eb98b4c9c425f1e2d8408d8610): a Lean proof of the quantum soundness of the low individual-degree test, a core step of MIP* = RE (arXiv:2609.19814).
- [lean-wang](https://github.com/edemaine/lean-wang/tree/64268a3aaaef3eac65559352ef94f62ab9c00482): two Lean proofs that the Wang tiling problem is undecidable.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `REPred`, `ManyOneReducible`, the undecidability of halting (`ComputablePred.halting_problem`) and Kleene's recursion theorem (`Nat.Partrec.Code.fixed_point`). It has no polynomial-time recursion theorem, no succinct representations, no Wang tiles, no nonlocal games and no arithmetical-hierarchy classes.
