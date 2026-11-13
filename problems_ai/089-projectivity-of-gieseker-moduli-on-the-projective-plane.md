# 89 · Projectivity of Gieseker Moduli on the Projective Plane without GIT

## From the proposer

- **Area:** Algebraic Geometry/Moduli theory
- **Tracks:** Geometry, Algebra/Number Theory

### Description

Good moduli spaces offer a way to revisit classical moduli constructions without relying on geometric invariant theory (GIT) quotients. Following the blueprint of Alper and collaborators for vector bundles on curves, we aim to give a proof of projectivity for the moduli space of Gieseker-semistable torsion-free sheaves on the projective plane with arbitrary fixed rank and Chern classes. We will use AHLH '23 to obtain a proper good moduli space, construct a finite morphism to a Kronecker quiver moduli space, and prove projectivity by pulling back its ample determinantal line bundle.

### Desired outcome

A short expository note giving a proof of projectivity for the moduli space of Gieseker-semistable torsion-free sheaves on the projective plane with arbitrary fixed rank and Chern classes, without using classical GIT quotients.

### References

Jarod Alper, Daniel Halpern-Leistner, and Jochen Heinloth, “Existence of moduli spaces for algebraic stacks,” Inventiones Mathematicae 234 (2023)

Luis Álvarez-Cónsul and Alastair King, “A functorial construction of moduli of sheaves,” Inventiones Mathematicae 168 (2007), 613–666.

Pieter Belmans, Chiara Damiolini, Hans Franzen, Victoria Hoskins, Svetlana Makarova, and Tuomas Tajakka, “Projectivity and effective global generation of determinantal line bundles on quiver moduli,” Algebra & Number Theory 20 (2026), no. 4.

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved with GIT (Gieseker 1977 for surfaces; Maruyama 1977–78; Simpson 1994). Alper–Halpern-Leistner–Heinloth (2023) give a proper good moduli space without GIT; no GIT-free proof of projectivity for sheaves on surfaces was found.
- **Task:** A short expository note proving projectivity of Gieseker moduli on $\mathbb P^2$ without GIT quotients.
- **Key reference:** [Projectivity and effective global generation of determinantal line bundles on quiver moduli](https://doi.org/10.2140/ant.2026.20.747), P. Belmans et al., Algebra Number Theory 20 (2026), 747–800.
- **Lean:** No official statement.

### Notes

- Projectivity is classical; the task is a new proof. The existence theorem of Alper, Halpern-Leistner and Heinloth (AHLH) glues affine GIT quotients of étale local charts, so "without GIT" means without a global projective GIT quotient.

### The result

Let $k$ be algebraically closed of characteristic 0, as AHLH's existence theorems (Theorem A, Theorem 7.27) require. For a torsion-free sheaf $E$ on $\mathbb P^2$ of rank $r\gt0$, Riemann–Roch shows that $(r,c_1,c_2)$ fixes the Hilbert polynomial $P_E(m)=\chi(E(m))$. $E$ is Gieseker semistable if $\chi(F(m))/\mathop{\mathrm{rk}}F\le P_E(m)/r$ for $m\gg0$ and all $0\ne F\subset E$. These sheaves form an algebraic stack $\mathcal M$ of finite type, and AHLH (Theorem 7.27, Example 7.28) give a proper good moduli space $\mathcal M\to M$, an algebraic space. The claim to prove without GIT is that $M$ is a projective scheme.

For $m\gg n\gg0$, Álvarez-Cónsul and King (ACK) send $E$ to the Kronecker module

$$\alpha_E:\ H^0(E(n))\otimes H^0(\mathcal O(m-n))\longrightarrow H^0(E(m)),$$

of dimension vector $d=(P_E(n),P_E(m))$. By their Theorem 5.10 and Corollary 5.11, an $n$-regular pure $E$ is semistable if and only if $\alpha_E$ is $\theta$-semistable for $\theta(a,b)=P_E(m)\thinspace a-P_E(n)\thinspace b$ ($\theta\le0$ on submodules), and S-equivalence is preserved. Belmans et al. (Theorem 6.2.1) prove without GIT that the determinantal line bundle $L_\theta=(\det V)^{-P_E(m)}\otimes(\det W)^{P_E(n)}$ ($V,W$ the universal bundles at the two vertices) descends to an ample line bundle on the Kronecker moduli space $M_d^{\theta\text{-ss}}$. Substituting $V=\pi_{\ast}E(n)$, $W=\pi_{\ast}E(m)$ (a substitution made here via ACK Proposition 4.1, not stated in the sources) gives its pullback to $\mathcal M$: $\det(\pi_{\ast}E(n))^{-P_E(m)}\otimes\det(\pi_{\ast}E(m))^{P_E(n)}$.

### How the known proof works

The classical proof, then the planned route (after Alper et al. 2022):
- Classical (ACK): King's GIT quotient of a locally closed subscheme of the Kronecker representation space, properness by Langton's argument (Proposition 6.6), closed embedding $M\to M_d^{\theta\text{-ss}}$ (Proposition 6.7).
- Step 1 (AHLH §7): the stack of coherent sheaves is S-complete, Θ-reductive and satisfies the existence part of the valuative criterion (Lemmas 7.16–7.18); the Harder–Narasimhan stratification is a Θ-stratification with open, bounded semistable locus (Example 7.28); Theorem 7.27 gives $M$.
- Step 2 (ACK Theorem 3.4, Proposition 4.1, Theorem 5.10): $E\mapsto\alpha_E$ is fully faithful on $n$-regular sheaves and preserves flat families; the morphism of stacks descends to $\varphi:M\to M_d^{\theta\text{-ss}}$ (Alper, Theorem 6.6).
- Step 3: $\varphi$ is proper, and injective on $k$-points by ACK Corollary 5.11 once these are identified with S-equivalence classes (for curves: Alper et al., Lemma 3.11, Theorem 3.12). So $\varphi$ is finite (Stacks 0A4X), $M$ is a scheme and $\varphi^{\ast}L_\theta$ is ample (Stacks 0892). The proof of Theorem 6.2.1 of Belmans et al. is a model.

### Background

- GIT-free projectivity is known for $\overline M_g$ (Kollár), vector bundles on curves (Faltings 1993, Esteves–Popa 2004; with good moduli spaces: Alper et al. 2022), acyclic quivers (Belmans et al.) and vector bundles on stacky curves (Damiolini–Hoskins–Makarova–Taams, preprint 2024).

### Where to start

- [Projectivity of the moduli space of vector bundles on a curve](https://arxiv.org/abs/2206.06195), J. Alper et al., 2022: the blueprint; Sections 1–3 and 5.
- [A functorial construction of moduli of sheaves](https://arxiv.org/abs/math/0602032), L. Álvarez-Cónsul, A. King, 2007: Sections 2–3 and 5.
- [Projectivity and effective global generation of determinantal line bundles on quiver moduli](https://arxiv.org/abs/2210.00033), P. Belmans et al., 2022: §3.3 and §6.2.
- [Existence of moduli spaces for algebraic stacks](https://arxiv.org/abs/1812.01128), J. Alper, D. Halpern-Leistner, J. Heinloth, 2018: Theorem A and §7.3.

Prerequisites: Gieseker stability, Castelnuovo–Mumford regularity, algebraic stacks and good moduli spaces, quiver representations.

### References, with links

- J. Alper, D. Halpern-Leistner, and J. Heinloth, “Existence of moduli spaces for algebraic stacks,” Inventiones Mathematicae 234 (2023), 949–1038. <https://doi.org/10.1007/s00222-023-01214-4>
- L. Álvarez-Cónsul and A. King, “A functorial construction of moduli of sheaves,” Inventiones Mathematicae 168 (2007), 613–666. <https://doi.org/10.1007/s00222-007-0042-5>
- P. Belmans, C. Damiolini, H. Franzen, V. Hoskins, S. Makarova, and T. Tajakka, “Projectivity and effective global generation of determinantal line bundles on quiver moduli,” Algebra & Number Theory 20 (2026), no. 4, 747–800. <https://doi.org/10.2140/ant.2026.20.747>

### Further references

- J. Alper, P. Belmans, D. Bragg, J. Liang, and T. Tajakka, “Projectivity of the moduli space of vector bundles on a curve,” in Stacks Project Expository Collection, LMS Lecture Note Ser. 480 (2022), 90–125. <https://arxiv.org/abs/2206.06195>
- J. Alper, “Good moduli spaces for Artin stacks,” Ann. Inst. Fourier 63 (2013), 2349–2402. <https://doi.org/10.5802/aif.2833>
- V. Hoskins, “Moduli spaces and geometric invariant theory: old and new perspectives,” arXiv:2302.14499 (2023). <https://arxiv.org/abs/2302.14499>
- D. Gieseker, “On the moduli of vector bundles on an algebraic surface,” Ann. of Math. 106 (1977), 45–60. <https://doi.org/10.2307/1971157>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for a new proof, avoiding GIT, of a classical theorem (projectivity of the moduli space of Gieseker-semistable sheaves on $\mathbb P^2$), and the theorem needs moduli spaces of semistable sheaves, good moduli spaces of algebraic stacks and ample line bundles, which Mathlib does not have and which cannot be defined faithfully within a statement file.

#### Mathlib

Mathlib has schemes and `AlgebraicGeometry.Proj` (so $\mathbb P^2$ as Proj of a graded polynomial ring), sheaves of modules on a scheme (`AlgebraicGeometry.Scheme.Modules`) with `SheafOfModules.IsQuasicoherent` and `SheafOfModules.IsLocallyFree`, sheaf cohomology (`CategoryTheory.Sheaf.H`), proper, finite and locally quasi-finite morphisms (`AlgebraicGeometry.IsProper`, `AlgebraicGeometry.IsFinite`, `AlgebraicGeometry.LocallyQuasiFinite`), quivers (`Quiver`) and stacks in the descent sense (`CategoryTheory.Pseudofunctor.IsStack`). It has no twisting sheaves $\mathcal O(n)$, Hilbert polynomials or Chern classes of sheaves (`Polynomial.hilbertPoly` concerns power series, not sheaves), ample line bundles, algebraic spaces or algebraic stacks, good moduli spaces, Gieseker stability, or quiver representations and their moduli.
