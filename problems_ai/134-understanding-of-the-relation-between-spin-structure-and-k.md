# 134 · Understanding of the relation between Spin structure and K-theory and possible generalization to higher height.

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/134-understanding-of-the-relation-between-spin-structure-and-k.md`](../problems_original/134-understanding-of-the-relation-between-spin-structure-and-k.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Understanding of the relation between Spin structure and K-theory and possible generalization to higher height.

### Short description of problem (100 words or less)

Last century, Atiyah-Singer index theorem built a foundamental relation between local spin structure and the global K-theory. However, the proof involves a lot of techniques and hard to recover. We hope to use this chance to have a better understanding of the theorem and try to find possible generalization to cohomology theory with higher height, like tmf. We also find it might be interesting to find some perspectives from physics.

### Submitted Area

Algebraic topology

### Proposed Tracks

Computation/Applied Mathematics

### Reference/source material

[1] Zhou, Z., Duan, X., & Sun, K.-J. (2018). Proof of the Atiyah–Singer index theorem by canonical quantum mechanics. Journal of Physics. A, Mathematical and Theoretical (Online), 51(31), [10 p.]. https://doi.org/10.1088/1751-8121/aac546
[2] Lawson, H. Blaine, Jr., and Marie-Louise Michelsohn. Spin Geometry. Princeton University Press, 1989.

### Desired outcome

I would like to write an expository starting from the algebraic topological perspective and arriving at the physical meaning of Atiyah-Singer Index theorem. 

## AI-generated notes

<!-- status: Not a single theorem -->

> Written by Claude Opus 5.5 on 2026-11-11 from the proposer's text above.

- **Status:** An exposition task: the Atiyah–Singer index theorem (announced 1963, proofs published 1968) and the Atiyah–Bott–Shapiro K-theory orientation of spin bundles (1964) are classical; at height 2, M. Ando, M. J. Hopkins and C. Rezk construct the String orientation of tmf refining the Witten genus (2010 preprint), and a field-theoretic description of tmf is conjectured by S. Stolz and P. Teichner (2011).
- **Task:** An exposition that starts from spin structures and K-theory, reaches the physical meaning of the index theorem, and looks for analogues for tmf.
- **Key reference:** [H. B. Lawson, M.-L. Michelsohn, *Spin Geometry*, Princeton University Press, 1989](https://doi.org/10.1515/9781400883912)
- **Lean:** No official statement.

### Notes

- The index theorem holds for every elliptic operator; spin structures enter through the Dirac operator, whose index is the $\hat A$-genus, and through the Atiyah–Bott–Shapiro orientation. "Height" in the title is chromatic height: K-theory has height 1, while tmf, built from elliptic curves, has height 2.
- Reference [1] proves the local index formula for twisted Dirac operators on spin manifolds in the Hilbert-space (canonical) formulation of quantum mechanics, without path integrals; it does not treat general elliptic operators.

### The result

Let $M$ be a closed manifold and $D$ an elliptic differential operator on $M$. Then $D$ is Fredholm, and Atiyah–Singer (1968) show that its analytic index $\dim\ker D-\dim\operatorname{coker}D$ equals a topological index computed from the symbol class $[\sigma(D)]\in K(T^*M)$ by a push-forward in K-theory; the Gauss–Bonnet–Chern, Hirzebruch signature and Hirzebruch–Riemann–Roch theorems are special cases. For a closed spin manifold $M$ of dimension $4k$ and a Hermitian vector bundle $E$, the Dirac operator twisted by $E$ satisfies
$$\operatorname{ind}D^+_E=\int_M \hat A(TM)\,\mathrm{ch}(E).$$
Atiyah, Bott and Shapiro (1964) showed that spin vector bundles are oriented for real K-theory $KO$; the resulting genus $\pi_*MSpin\to\pi_*KO$ sends a spin manifold to the index of its Dirac operator, which after complexification is $\hat A(M)$ in dimension $4k$.

Height 2: Witten introduced a genus of spin manifolds with $KO$-characteristic series
$$\sigma(L,q)=(L^{1/2}-L^{-1/2})\prod_{n\ge1}\frac{(1-q^nL)(1-q^nL^{-1})}{(1-q^n)^2},$$
formally the index of the Dirac operator on the free loop space, and argued physically that on spin manifolds with $\tfrac{p_1}{2}=0$ (string manifolds) its values are $q$-expansions of modular forms for $SL_2(\mathbb Z)$. Ando, Hopkins and Rezk show that the $\hat A$-orientation $MSpin\to KO$ refines to a map of $E_\infty$ ring spectra and that the Witten genus $\pi_*MString\to MF_*$ is the effect on homotopy groups of an $E_\infty$ map $MString\to tmf$.

### How the known proof works

- K-theory (Atiyah–Singer I): analytic and topological index are both homomorphisms $K(T^*M)\to\mathbb Z$ compatible with push-forward along embeddings and normalized on a point; these properties characterize the topological index, defined by embedding $M$ in $\mathbb R^N$ and using the Thom isomorphism and Bott periodicity.
- Heat kernel: $\operatorname{ind}D^+=\operatorname{Tr}e^{-tD^-D^+}-\operatorname{Tr}e^{-tD^+D^-}$ for every $t>0$ (McKean–Singer); as $t\to0$, Getzler's rescaling of Clifford variables turns the local supertrace into $\hat A(TM)\,\mathrm{ch}(E)$.
- Physics: the index is the Witten index $\operatorname{Tr}(-1)^Fe^{-tH}$ of supersymmetric quantum mechanics on $M$ with $H=D^2$, and the path integral localizes on constant loops (Alvarez-Gaumé 1983; Friedan–Windey 1984). Fine and Sawin (2018) make the path integral rigorous; reference [1] uses the canonical formalism instead.

### Background

- In Stolz–Teichner's framework the Dirac operator of a spin$^c$ manifold $N$ gives a $1|1$-dimensional Euclidean field theory ("supersymmetric quantum mechanics on $N$"); the Feynman–Kac formula identifies fibrewise quantization with the analytic push-forward, so its agreement with the topological push-forward is the family index theorem. Their Conjecture 1.17 says that concordance classes of local $2|1$-dimensional Euclidean field theories over $X$ form $TMF^n(X)$; Theorem 1.15 shows that partition functions of $2|1$-theories are integral holomorphic modular functions.
- tmf was constructed by Hopkins with Mahowald and Miller around 1994 (Hopkins, ICM 2002); every elliptic spectrum receives a canonical "sigma orientation" from $MU\langle 6\rangle$ (Ando–Hopkins–Strickland 2001).

### Where to start

- [*Spin Geometry*](https://doi.org/10.1515/9781400883912), H. B. Lawson, M.-L. Michelsohn, 1989: Clifford algebras and spin structures, Clifford modules and K-theory, Dirac operators and the index theorems.
- [*Heat Kernels and Dirac Operators*](https://doi.org/10.1007/978-3-642-58088-8), N. Berline, E. Getzler, M. Vergne, 1992: the heat-kernel proof with Getzler's rescaling.
- [Supersymmetry and the Atiyah–Singer index theorem](https://doi.org/10.1007/BF01205500), L. Alvarez-Gaumé, 1983: the physicists' derivation.
- [Supersymmetric field theories and generalized cohomology](https://arxiv.org/abs/1108.0189), S. Stolz, P. Teichner, 2011: §1 explains the field-theory view of K-theory and the conjecture for TMF.

Prerequisites: vector bundles and characteristic classes, Clifford algebras, elliptic operators and Fredholm index, topological K-theory and Bott periodicity; for tmf, complex-oriented cohomology, formal groups and modular forms.

### References, with links

1. Z. Zhou, X. Duan and K.-J. Sun, "Proof of the Atiyah–Singer index theorem by canonical quantum mechanics", J. Phys. A 51 (2018), no. 31, 315201. <https://doi.org/10.1088/1751-8121/aac546> (arXiv: <https://arxiv.org/abs/1703.05508>)
2. H. B. Lawson and M.-L. Michelsohn, *Spin Geometry*, Princeton Mathematical Series 38, Princeton University Press, 1989. <https://doi.org/10.1515/9781400883912>

### Further references

- M. F. Atiyah and I. M. Singer, "The index of elliptic operators on compact manifolds", Bull. Amer. Math. Soc. 69 (1963), 422–433. <https://doi.org/10.1090/S0002-9904-1963-10957-X>
- M. F. Atiyah and I. M. Singer, "The index of elliptic operators I" and "III", Ann. of Math. 87 (1968), 484–530 and 546–604. <https://doi.org/10.2307/1970715>, <https://doi.org/10.2307/1970717>
- M. F. Atiyah, R. Bott and A. Shapiro, "Clifford modules", Topology 3 (1964), suppl. 1, 3–38. <https://doi.org/10.1016/0040-9383(64)90003-5>
- D. Friedan and P. Windey, "Supersymmetric derivation of the Atiyah–Singer index and the chiral anomaly", Nuclear Phys. B 235 (1984), 395–416. <https://doi.org/10.1016/0550-3213(84)90506-6>
- E. Getzler, "A short proof of the local Atiyah–Singer index theorem", Topology 25 (1986), 111–117. <https://doi.org/10.1016/0040-9383(86)90008-X>
- D. S. Fine and S. F. Sawin, "Rigorous path integrals for supersymmetric quantum mechanics: completing the path integral proof of the index theorem", preprint, arXiv:1805.00399 (2018). <https://arxiv.org/abs/1805.00399>
- E. Witten, "The index of the Dirac operator in loop space", in *Elliptic Curves and Modular Forms in Algebraic Topology*, Lecture Notes in Math. 1326, Springer (1988), 161–181. <https://doi.org/10.1007/BFb0078045>
- M. J. Hopkins, "Algebraic topology and modular forms", Proceedings of the ICM (Beijing, 2002). <https://arxiv.org/abs/math/0212397>
- M. Ando, M. J. Hopkins and N. P. Strickland, "Elliptic spectra, the Witten genus and the theorem of the cube", Invent. Math. 146 (2001), 595–687. <https://doi.org/10.1007/s002220100175>
- M. Ando, M. J. Hopkins and C. Rezk, "Multiplicative orientations of KO-theory and of the spectrum of topological modular forms", preprint, version 0.5 (May 2010). <https://rezk.web.illinois.edu/koandtmf.pdf>
- S. Stolz and P. Teichner, "Supersymmetric field theories and generalized cohomology", in *Mathematical Foundations of Quantum Field Theory and Perturbative String Theory*, Proc. Sympos. Pure Math. 83 (2011), 279–340. <https://arxiv.org/abs/1108.0189>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for an exposition, and the index theorem itself would need K-theory of spaces, characteristic classes and elliptic operators on manifolds, which Mathlib does not have yet.

#### Mathlib

Mathlib has Clifford algebras with spin and pin groups (`CliffordAlgebra`, `spinGroup`, `pinGroup`), smooth manifolds and vector bundles (`IsManifold`, `ContMDiffVectorBundle`), Fredholm operators (`ContinuousLinearMap.IsFredholm`) with the index `LinearMap.index` and its local constancy (`ContinuousLinearMap.IsFredholm.eventually_nhds_index_eq`), Weierstrass curves (`WeierstrassCurve`), modular forms (`ModularForm`, `CuspForm`) and the Dedekind eta function (`ModularForm.eta`). It has no topological K-theory, Dirac operators, characteristic classes, spectra or tmf.
