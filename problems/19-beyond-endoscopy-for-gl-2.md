# 19 · Beyond Endoscopy for GL(2)

- **Status:** Langlands' Beyond Endoscopy program (2004) is open in general; Altuğ carried out the first GL(2) case with the trace formula (2015–2020).
- **Task:** A self-contained, verified exposition of Beyond Endoscopy for GL(2).
- **Tracks:** Algebra/Number Theory · **Area:** Number Theory (Automorphic Forms and the Langlands Program), Representation Theory, and Harmonic Analysis
- **Key reference:** [Beyond Endoscopy via the trace formula – III: The standard representation](https://arxiv.org/abs/1512.09249), S. A. Altuğ, *J. Inst. Math. Jussieu* 19 (2020), 1349–1387.
- **Lean:** No official statement.

## Description

Langlands’ Beyond Endoscopy program seeks to establish functoriality through the analytic properties of automorphic L-functions and trace formulas. Significant progress for GL_2 has been achieved through the work of Langlands, Venkatesh, Altug, and others. However, the existing proofs are technically demanding, scattered across multiple papers, and difficult to fully understand. This project aims to systematically reconstruct, summarize, simplify, and independently verify these proofs, potentially using AI-assisted tools. The ultimate goals are to develop a coherent, accessible exposition, discover more conceptual arguments, and identify techniques that may extend to higher-rank groups.

## Desired outcome

A comprehensive, self-contained, and accessible exposition of the existing proofs of Beyond Endoscopy for GL(2), with a clear explanation of the main ideas, technical arguments, and logical dependencies. Participants should independently verify key steps, identify and resolve any gaps or ambiguities, and explore opportunities to simplify the proofs or develop more conceptual alternative arguments. AI-assisted mathematical reasoning and formal verification tools may be employed where appropriate. Ideally, the project will produce a polished mathematical manuscript, potentially accompanied by computational or formal verification resources, and identify promising directions for extending the methods to higher-rank groups.

## The result

Beyond Endoscopy (Langlands 2004) proposes to detect functorial transfers through poles of partial $L$-functions $L^S(s,\pi,\rho)$ in $\operatorname{Re}s\ge1$, by studying with the trace formula the averages $\sum'_{n<X}\operatorname{tr}R_{\rm disc}(f_Sf^{n,\rho})$ as $X\to\infty$. For $G=\mathrm{GL}(2)$ over $\mathbb Q$, $S=\{\infty\}$, $\rho$ the standard representation and holomorphic weight $k\ge3$, Altuğ (Part III, Theorem 1.1) proved, with $T_k(n)$ the normalized Hecke operators on cusp forms,
$$\sum_{n<X}\operatorname{tr}T_k(n)=O_{k,\epsilon}\big(X^{31/32+\epsilon}\big),$$
the first case carried out with the Arthur–Selberg trace formula. Part I applies an approximate functional equation and Poisson summation to the elliptic terms, isolating the special representations; Part II expands the resulting Fourier transforms of orbital integrals; Part III combines them. The proposer wants one checked account of this work and Venkatesh's.

## Background

- Venkatesh (thesis 2002; *Crelle* 577, 2004) gave the first example: the pole at $s=1$ of the symmetric-square $L$-function detects dihedral forms, using the Petersson–Kuznetsov formula instead of the Arthur–Selberg trace formula.
- Part II recovers Kuznetsov's bound $\operatorname{tr}T(p)\ll p^{1/4}$; Part III gives a new proof of the analytic continuation of $L(s,\Delta)$.
- Expositions: Arthur's "Problems beyond endoscopy" (motivation from endoscopy, open problems suggested by Altuğ's work); Altuğ's survey "Beyond Endoscopy and the Trace Formula" (*On the Langlands Program*, 2024); Sarnak's 2001 comments on Langlands' lecture.
- Extensions of Part I: to a class of totally real fields (Emory, Espinosa-Lara, Kundu, Wong, arXiv:2404.10139) and to GL(2) over $\mathbb Q$ with ramification (Cheng, arXiv:2505.18967). Kwan and Leung treat functional equations with the Petersson formula (arXiv:2410.16921).

## Where to start

- [Problems Beyond Endoscopy](https://www.math.toronto.edu/arthur/pdf/Arthur.pdf), J. Arthur, 2015: a 23-page introduction that explains the proposal through its analogy with endoscopy.
- [Beyond Endoscopy via the trace formula – III](https://arxiv.org/abs/1512.09249), S. A. Altuğ, 2015: the introduction summarizes Parts I–II and states the main theorem.
- [Beyond endoscopy](https://publications.ias.edu/sites/default/files/beyond-endoscopy_rpl.pdf), R. P. Langlands, 2004: the original proposal (Parts I–II give the formal structure and the first analysis).

Prerequisites: automorphic representations of GL(2), the Arthur–Selberg trace formula for GL(2), analytic number theory (Poisson summation, approximate functional equations).

## References

- R. P. Langlands, “Beyond Endoscopy,” in *Contributions to Automorphic Forms, Geometry, and Number Theory*, edited by H. Hida, D. Ramakrishnan, and F. Shahidi, Johns Hopkins University Press, 2004, pp. 611–697. <https://doi.org/10.56021/9780801878602>
- A. Venkatesh, “Beyond Endoscopy and Special Forms on GL(2),” Journal für die reine und angewandte Mathematik 577 (2004), 23–80. DOI: 10.1515/crll.2004.2004.577.23 <https://doi.org/10.1515/crll.2004.2004.577.23>
- S. Ali Altug, “Beyond Endoscopy via the Trace Formula,” Parts I–III:
  - Part I: Poisson Summation and Isolation of Special Representations, Compositio Mathematica 151 (2015), no. 10, 1791–1820. <https://doi.org/10.1112/S0010437X15007320>
  - Part II: Asymptotic Expansions of Fourier Transforms and Bounds Towards the Ramanujan Conjecture, American Journal of Mathematics 139 (2017), no. 4, 863–913. <https://arxiv.org/abs/1506.08911>
  - Part III: The Standard Representation, Journal of the Institute of Mathematics of Jussieu 19 (2020), no. 4, 1349–1387. <https://arxiv.org/abs/1512.09249>

Further references:

- J. Arthur, "Problems Beyond Endoscopy," preprint, 2015. <https://www.math.toronto.edu/arthur/pdf/Arthur.pdf>
- S. A. Altuğ, "Beyond Endoscopy and the Trace Formula," in *On the Langlands Program*, IMS Lecture Notes Series, World Scientific, 2024, 315–377. <https://doi.org/10.1142/9789811285820_0006>
- M. Emory, M. Espinosa-Lara, D. Kundu, T. A. Wong, "Beyond Endoscopy via Poisson Summation for GL(2,K)," 2024. <https://arxiv.org/abs/2404.10139>
- Y. Cheng, "Beyond endoscopy for GL₂ over ℚ with ramification 1: Poisson summation," 2025. <https://arxiv.org/abs/2505.18967>
- C.-H. Kwan and W. H. Leung, "Trace formula and functional equation," 2024. <https://arxiv.org/abs/2410.16921>

## Lean

### Official statement

This problem has no official Lean statement: a faithful statement needs automorphic representations and the trace formula, which Mathlib does not have yet.

### Mathlib

Mathlib has `Matrix.GeneralLinearGroup`, adeles `NumberField.AdeleRing`, modular forms `ModularForm` on `CongruenceSubgroup.Gamma0`, and abstract Hecke rings (`Mathlib/NumberTheory/HeckeRing/Defs.lean`). It lacks automorphic representations, orbital integrals and the Arthur–Selberg trace formula.

---

*Description and Desired outcome are the proposer's text. The other sections were written by the organizers from the literature.*
