# 111 · Kervaire invariant one theorem

## From the proposer

- **Area:** Algebraic topology, stable homotopy theory
- **Tracks:** Geometry

### Description

Formalize the Hill-Hopkins-Ravenel theorem in Lean: no smooth framed manifold of dimension greater than 126 has Kervaire invariant one. Their proof uses equivariant stable homotopy theory and a large amount of spectral sequence machinery. A related target is the Lin-Wang-Xu proof that dimension 126 does admit such manifolds. Formalizing these arguments would check the topology and computations together and build tools for other stable homotopy problems.

### Desired outcome

Prove the Hill-Hopkins-Ravenel nonexistence theorem in Lean and develop the equivariant spectra and spectral sequence tools it needs. Another goal is to verify the dimension-126 existence proof, including its computational steps.

### References

Hill, Hopkins and Ravenel, On the nonexistence of elements of Kervaire invariant one, Annals of Mathematics 184 (2016), 1-262.
https://annals.math.princeton.edu/2016/184-1/p01

Lin, Wang and Xu, On the Last Kervaire Invariant Problem.
https://arxiv.org/abs/2412.10879

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved: Hill, Hopkins and Ravenel showed that the Kervaire invariant one elements $\theta_j$ exist only for $j\le6$ (announced 2009, Annals 2016), so no framed manifold of dimension greater than 126 has Kervaire invariant one; Lin, Wang and Xu proved that dimension 126 does have one in a preprint (arXiv 2024).
- **Task:** Formalize the Hill–Hopkins–Ravenel nonexistence theorem in Lean with the equivariant and spectral-sequence tools it needs, or verify the dimension-126 existence proof and its computations.
- **Key reference:** [M. A. Hill, M. J. Hopkins, D. C. Ravenel, “On the nonexistence of elements of Kervaire invariant one”, Ann. of Math. 184 (2016), 1–262](https://annals.math.princeton.edu/2016/184-1/p01)
- **Lean:** No official statement.

### Notes

- The Lin–Wang–Xu paper is an arXiv preprint (version 2, February 2025); I found no journal version. Its proof uses machine-generated differentials, documented in a companion preprint (arXiv:2412.10876) with a Zenodo data set.

### The result

A framed $(4k+2)$-manifold $M$ has a Kervaire invariant $\kappa(M)\in\mathbb Z/2$, the Arf invariant of a quadratic refinement of the intersection form on $H^{2k+1}(M;\mathbb F_2)$; it vanishes exactly when $M$ can be framed-surgered to a homotopy sphere. Through the Pontryagin–Thom isomorphism $\Omega^{\rm fr}_n\cong\pi_n^s$ it is a homomorphism on the stable stems. Browder (1969): $\kappa$ can be nonzero only in dimensions $n=2^{j+1}-2$, and there it is nonzero exactly when $h_j^2\in\mathrm{Ext}^{2,2^{j+1}}_{\mathcal A}(\mathbb F_2,\mathbb F_2)$ survives the Adams spectral sequence; the classes it detects are called $\theta_j\in\pi^s_{2^{j+1}-2}$.

**Theorem** (Hill–Hopkins–Ravenel). The elements $\theta_j$ exist only for $j\le6$.

**Theorem** (Lin–Wang–Xu, preprint). $h_6^2$ is a permanent cycle, so $\theta_6$ exists.

With the earlier existence results for $j\le5$ ($j=4$ Mahowald–Tangora, $j=5$ Barratt–Jones–Mahowald), framed manifolds of Kervaire invariant one exist exactly in dimensions $2,6,14,30,62,126$; in dimensions 2, 6, 14 one can take $S^1\times S^1$, $S^3\times S^3$, $S^7\times S^7$. Lin–Wang–Xu list as open whether some $\theta_6$ has order 2 and whether some $\theta_5$ has $\theta_5^2=0$.

### How the known proof works

Hill–Hopkins–Ravenel, in the form of Miller's Bourbaki report (Theorem 2.1 there):
- Build a $C_8$-spectrum $L=D^{-1}MU^{((4))}$: the norm from $C_2$ to $C_8$ of real bordism (complex cobordism with complex conjugation), with a suitable class $D$ inverted.
- Detection: if $\theta_j$ exists with $j\ge7$, its image in $\pi_*(L^{hC_8})$ is nonzero; this compares the Adams–Novikov $E_2$-term with $H^*(C_8;\pi_*L)$.
- Slice theorem, from the reduction theorem $R\wedge_AS^0\simeq H\mathbb Z$: the slices of $MU^{((4))}$ are of a very simple form, which gives the gap theorem $\pi^{C_8}_j(L)=0$ for $-3\le j\le-1$.
- Fixed points: $\pi^{C_8}_*(L)\to\pi_*(L^{hC_8})$ is an isomorphism. Periodicity: $\pi_*(L^{hC_8})\cong\pi_{*+256}(L^{hC_8})$.
- Since $2^{j+1}-2\equiv-2\pmod{256}$ for $j\ge7$, the group receiving $\theta_j$ is $\pi_{-2}=0$, a contradiction.

Lin–Wang–Xu:
- Lin's programs compute Adams $E_2$-pages (Ext over the Steenrod algebra, via noncommutative Gröbner bases) for many finite spectra and the maps between them, and some $d_2$ differentials via secondary Steenrod algebras.
- A "generalized Leibniz rule" and "generalized Mahowald trick", formulated with $H\mathbb F_2$-synthetic spectra, propagate differentials; the program writes human-readable proofs of the machine-derived ones.
- By Burklund–Xu, $h_6^2$ survives iff $\lambda\eta\theta_5^2=0$ in the synthetic sphere. Of the 105 possible targets of a differential on $h_6^2$ in stem 125, the program and this inductive approach exclude 101, and the generalized rules all but one; that case needs an $\eta$-extension, ruled out by an ad hoc argument (Proposition 7.9).

### Background

- Kervaire (1960) used this invariant to build a 10-dimensional PL manifold with no smooth structure, and the question is closely tied to Kervaire–Milnor's classification of homotopy spheres (problem 115).
- The companion Hopf invariant one problem was solved by Adams (1960): $h_j$ survives the Adams spectral sequence only for $j\le3$.
- The full foundations of the equivariant theory are in the Hill–Hopkins–Ravenel book (Cambridge, 2021).

### Where to start

- [Kervaire invariant one [after M. A. Hill, M. J. Hopkins, and D. C. Ravenel]](https://arxiv.org/abs/1104.4523), H. Miller, 2011: a 30-page Séminaire Bourbaki report on the structure of the proof.
- [On the Last Kervaire Invariant Problem](https://arxiv.org/abs/2412.10879), W. Lin, G. Wang, Z. Xu, 2024: §1 explains Browder's criterion, the history of each $h_j^2$ and the strategy for $j=6$.
- [Doug Ravenel's Kervaire invariant page](https://www.sas.rochester.edu/mth/sites/doug-ravenel/kervaire.html): links to the published paper, the book and a draft of the book.

Prerequisites: stable homotopy groups and the Adams spectral sequence, framed bordism and the Pontryagin–Thom construction, complex cobordism and the Adams–Novikov spectral sequence; for Hill–Hopkins–Ravenel, $G$-spectra, norms and homotopy fixed points.

### References, with links

- M. A. Hill, M. J. Hopkins and D. C. Ravenel, “On the nonexistence of elements of Kervaire invariant one,” Ann. of Math. 184 (2016), 1–262. <https://annals.math.princeton.edu/2016/184-1/p01> <https://doi.org/10.4007/annals.2016.184.1.1>
- W. Lin, G. Wang and Z. Xu, “On the last Kervaire invariant problem,” arXiv:2412.10879 (2024). <https://arxiv.org/abs/2412.10879>

### Further references

- W. Browder, “The Kervaire invariant of framed manifolds and its generalization,” Ann. of Math. 90 (1969), 157–186. <https://doi.org/10.2307/1970686>
- M. A. Kervaire, “A manifold which does not admit any differentiable structure,” Comment. Math. Helv. 34 (1960), 257–270. <https://doi.org/10.1007/BF02565940>
- H. Miller, “Kervaire invariant one [after M. A. Hill, M. J. Hopkins, and D. C. Ravenel],” Séminaire Bourbaki report (2011). <https://arxiv.org/abs/1104.4523>
- M. A. Hill, M. J. Hopkins and D. C. Ravenel, *Equivariant Stable Homotopy Theory and the Kervaire Invariant Problem*, Cambridge University Press (2021). <https://www.sas.rochester.edu/mth/sites/doug-ravenel/kervaire.html>
- W. Lin, G. Wang and Z. Xu, “Machine proofs for Adams differentials and extension problems among CW spectra,” arXiv:2412.10876 (2024). <https://arxiv.org/abs/2412.10876>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs stable homotopy groups of spheres or framed bordism groups, and the Kervaire invariant, none of which Mathlib has.

#### Related Lean formalizations

- [KIP](https://github.com/surenny/KIP/tree/38d465ab3b4145bfefbeb746e6e69b436584bc10), described as a “Lean 4 formalization of the Kervaire Invariant Problem with leanblueprint”: a [blueprint](https://surenny.github.io/KIP/blueprint/) adapted from Lin–Wang–Xu. Its Lean sources introduce the stable homotopy category, the Adams spectral sequence and synthetic spectra through `axiom` declarations.
- [Kervaire126](https://github.com/GAIR-NLP/Kervaire126/tree/565e2df6bb614112023c765bd4f160f110f64a5b), J. Zhang and K. Bao with G. Wang and W. Lin: a Lean 4 formalization and blueprint of Lin–Wang–Xu; its README says that foundational constructions, comparisons and computational certifications still contain `sorry`.
- The [lean-eval](https://github.com/leanprover/lean-eval/tree/85a88c37f80170d9f08651dc63ce6b81a8a48cb9) benchmark poses Adams' Hopf invariant one theorem in H-space form ([`hSpace_sphere_iff`](https://lean-lang.org/eval/problems/hSpace_sphere_iff/)) and $\pi_6(S^3)\cong\mathbb Z/12$; its [results store](https://github.com/leanprover/lean-eval-submissions/tree/0548925a543c89eb9ff692af1a3592fdb86951bb/results) lists solutions of both accepted by its comparator (September–October 2026), all with private sources.
- [Spectral](https://github.com/cmu-phil/Spectral/tree/3b078f5f1de251637decf04bd3fc8aa01930a6b3), CMU HoTT group: Lean 2 (homotopy type theory) construction of the Serre spectral sequence, spectral sequences of exact couples, and Eilenberg–MacLane spaces.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has homotopy groups (`HomotopyGroup`, notation `π_ n X x`), H-spaces (`HSpace`), the first definitions of bordism (`SingularManifold`), pretriangulated and triangulated categories (`CategoryTheory.Pretriangulated`, `CategoryTheory.IsTriangulated`), spectral sequences (`CategoryTheory.SpectralSequence`, `CategoryTheory.Abelian.SpectralObject.spectralSequence`) and model categories (`HomotopicalAlgebra.ModelCategory`). It has no spectra or stable homotopy groups, no Steenrod algebra or Adams spectral sequence, no complex cobordism, no equivariant homotopy theory and no framed manifolds.
