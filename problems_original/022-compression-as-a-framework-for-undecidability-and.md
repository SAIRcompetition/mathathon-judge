# Problem 22

## Problem ID

22

## Title/name of problem

Compression as a Framework for Undecidability and Computational Complexity

## Short description of problem (100 words or less)

Compression is a recurring mechanism in undecidability proofs, including those for Wang tilings, MIP* = RE, and MIP^co = coRE. Abstract compression criteria characterize RE/coRE-completeness under suitable hypotheses, suggesting a reusable framework for understanding computational hardness. This project explores three directions: simplifying existing undecidability proofs through compression; finding new applications, potentially to quantum channel capacity; and developing analogous compression criteria for completeness at higher levels of the arithmetical hierarchy or for decidable complexity classes. The goal is to clarify what makes compression work and turn that understanding into more accessible proofs and new mathematical connections.

## Submitted Area

Computational complexity

## Proposed Tracks

Computation/Applied Math

## Reference/source material

1. Andrew Marks, “A remark on compression,” lecture slides, October 19, 2023. Presents an abstract recursive compression lemma, its proof, and applications to Wang tilings and nonlocal games. Particularly relevant are the slides titled “Compression lemma,” “Proof,” and “Open problems/requests.”
https://sfo3.digitaloceanspaces.com/slmath-production-assets/system/paperclip/documents/data/000/097/705/original/AM.pdf

2. Junqiao Lin, “MIPᶜᵒ = coRE” (2025), arXiv:2510.07162. See §1.1.1 and §4, especially Definitions 4.1 and 4.3 and Theorems 4.4–4.5, for compression conditions characterizing RE/coRE-completeness under the stated hypotheses.
https://arxiv.org/abs/2510.07162

3. Hamoon Mousavi, Seyed Sajjad Nezhadi, and Henry Yuen, “Nonlocal Games, Compression Theorems, and the Arithmetical Hierarchy,” STOC 2022, pp. 1–11; arXiv:2110.04651. Develops gapless compression and establishes Π₂⁰-completeness of deciding whether a nonlocal game’s quantum value equals one, providing a concrete starting point for exploring higher-level compression criteria.
https://arxiv.org/abs/2110.04651

## Desired outcome

Participants should develop a clearer understanding of compression as a reusable method for proving computational hardness. Teams may pursue one or more of three directions:

1. Simplify existing proofs. Reconstruct a known undecidability proof using an abstract compression lemma, separating the problem-specific construction from the general recursion argument. Identify opportunities to weaken hypotheses, streamline the construction, or explain connections between different proofs.

2. Explore new applications. Investigate compression procedures for other mathematical problems. Ordinary quantum channel capacity is an ambitious candidate; a valuable intermediate outcome would be a precisely formulated decision problem and a conditional undecidability proof identifying the missing compression lemma.

3. Extend completeness characterizations. Seek analogues of the RE/coRE compression criteria for higher levels of the arithmetical hierarchy, beginning with Σ₂⁰ or Π₂⁰, or for selected decidable complexity classes. The aim is to identify useful necessary-and-sufficient conditions, including quantitative requirements, rather than merely restating completeness in different language.

Deliverables could include a self-contained exposition with worked examples, a simplified or formalized proof, a new compression theorem, or a rigorous obstruction to a proposed extension. Teams need not resolve a new open problem: a substantial improvement in understanding an existing result would be a successful contribution.
