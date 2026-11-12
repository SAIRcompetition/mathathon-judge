# 59 · Digesting openAI's claimed proof of Bloch's conjecture

## From the proposer

- **Area:** Algebraic and complex geometry
- **Tracks:** Geometry

### Description

Bloch's conjecture predicts that for a smooth connected projective complex surface X with geometric genus p_g(X) = 0, the Albanese homomorphism on degree-zero zero-cycles CH_0(X)_{deg=0} -> Alb(X) is an isomorphism.

### Desired outcome

Carefully digest and verify the AI-generated proof of Bloch's conjecture. For example, participants can give an exposition for the main strategy of the proof, and check whether the steps hold rigorously or contain subtle gaps. They can optionally formalize key lemmas in Lean. Participants can compare the approach to classical methods, identify which parts of the proof use existing techniques, and which parts provide new techniques. Finally, they can provide some comments on whether the new techniques are helpful for proving higher dimensional analogs of Bloch's conjecture beyond surfaces.

### References

For problem and background: Bloch's 'Lectures on Algebraic Cycles' 
OpenAI's claimed solution: https://github.com/openai/math/blob/main/preprints/Blochs-Conjecture-for-Surfaces-with-pg-equals-q-equals-0-September-24-2026/paper.pdf

## From the judges

I know Marc Levine is trying to read the proof. Open AI's approach is a strategy that people in Pandharipande's circle have carried out on a number of intersection theory questions, but I don't think they've applied it to this style of algebraic cycles result. Reading some of Pandharipande's papers using virtual localization would be useful. A good produce would be just to give a readable description of the virtual fundamental class or virtual localization as it pertains to this paper. 

## AI-generated notes

<!-- status: Proved (preprint) -->

- **Status:** Claimed proved by an OpenAI preprint (September 2026), not yet refereed; known before for non-general-type surfaces (Bloch–Kas–Lieberman 1976) and for many families.
- **Task:** Check and explain the claimed proof; compare with classical methods.
- **Key reference:** [OpenAI, “Bloch's conjecture for surfaces with p<sub>g</sub>=0” (preprint, 2026)](https://github.com/openai/math/blob/main/preprints/Blochs-Conjecture-for-Surfaces-with-pg-equals-q-equals-0-September-24-2026/paper.pdf)
- **Lean:** Official statement.

### Notes

- Other recent preprints also claim proofs: V. Guletskiĭ (arXiv:2512.12451, the case $p_g=q=0$) and K. Banerjee (arXiv:2508.13594, surfaces with $p_g=q=0$, $K^2=9$).

### The result

Let $S$ be a smooth connected projective complex surface with $p_g(S)=h^0(\omega_S)=0$, and $\mathrm{CH} _ 0(S)^0$ the group of degree-zero zero-cycles modulo rational equivalence (integral coefficients). Bloch's conjecture: the Albanese map $\mathrm{alb} _ S\colon\mathrm{CH} _ 0(S)^0\to\mathrm{Alb}(S)(\mathbb C)$ is an isomorphism. Mumford (1969) showed that $p_g\gt0$ makes $\mathrm{CH} _ 0$ infinite-dimensional; Bloch's conjecture is the converse. For surfaces of general type $p_g=0$ forces $q=0$, so the open case was

$$p_g=q=0\ \Longrightarrow\ \deg\colon \mathrm{CH} _ 0(S)\xrightarrow{\ \sim\ }\mathbb Z .$$

The OpenAI preprint (September 2026) claims this with no minimality, fundamental-group or construction hypothesis, and hence the full conjecture by Bloch–Kas–Lieberman.

### How the known proof works

- Goal: a relation $0=c[\Delta_X]+\Gamma$ in $\mathrm{CH}^2(X\times X) _ {\mathbb Q}$ with $c\ne0$ and $\Gamma$ a sum of external products, on a minimal model or a point blow-up $X$; this gives $\mathrm{CH} _ 0(X)^0\otimes\mathbb Q=0$.
- The relation comes from torus localization on a Quot scheme of rank-zero quotients of $L_1\oplus L_2$ with fixed determinant, with a derived determinant constraint and obstruction theory (§§3–4).
- An Ellingsrud–Göttsche–Lehn type recursion on Hilbert schemes, keeping two surface factors, computes the class on $X\times X$ and the diagonal coefficient $c$ (§5).
- $c\neq0$: for $K^2\le 8$ a lattice class $\alpha$ with $\alpha^2\lt0$ gives $0=c\alpha^2+\sum(\alpha H)^2$ (§6); for $K^2=9$ a comparison with the Cartwright–Steger surface ($p_g=q=1$) gives $c\gt0$ (§7).
- Roitman's torsion theorem and $q=0$ then remove torsion, giving the integral statement.

### Background

- Proved cases before 2025: all surfaces not of general type (Bloch–Kas–Lieberman); surfaces rationally dominated by a product of curves (Kimura's finite-dimensional motives); group-action methods (Inose–Mizukami 1979, Barlow 1985, Bauer 2014, Pedrini–Weibel 2016); general Catanese and Barlow surfaces (Voisin, J. Differential Geom. 2014), via families and correspondences.
- Controlling zero-cycles through relations for the diagonal goes back to Bloch–Srinivas (1983).
- The preprint also derives that $h(S) _ {\mathbb Q}$ is Kimura finite-dimensional with $t_2(S)=0$, and pure Tate when $q=0$.
- General form (Voisin's Conjecture 0.1): for a surface $X$ and a correspondence $\Gamma\in\mathrm{CH}^2(Y\times X)$ with $[\Gamma]^{\ast}=0$ on $H^{2,0}(X)$, $\Gamma_{\ast}$ vanishes on the Albanese kernel $\mathrm{CH} _ 0(Y) _ {\rm alb}$.

### Where to start

- [Bloch's conjecture for Catanese and Barlow surfaces](https://arxiv.org/abs/1210.3935), C. Voisin, 2012: the general form of the conjecture and the known cases in 2012.
- [Hodge Theory and Complex Algebraic Geometry II](https://doi.org/10.1017/CBO9780511615177), C. Voisin, 2003: chapters “Mumford's theorem and its generalisations” and “The Bloch conjecture and its generalisations”.
- [Segre classes and Hilbert schemes of points](https://arxiv.org/abs/1507.00688), A. Marian, D. Oprea, R. Pandharipande, 2015: Quot schemes of surfaces and their virtual classes, the setting of the new proof.

Prerequisites: Chow groups and correspondences, surfaces of general type, Hilbert and Quot schemes, virtual fundamental classes and torus localization.

### References, with links

- Background: S. Bloch, *Lectures on Algebraic Cycles*. <https://doi.org/10.1017/CBO9780511760693>
- OpenAI's claimed solution: <https://github.com/openai/math/blob/main/preprints/Blochs-Conjecture-for-Surfaces-with-pg-equals-q-equals-0-September-24-2026/paper.pdf>

### Further references

- S. Bloch, A. Kas, D. Lieberman, “Zero cycles on surfaces with p_g = 0,” Compositio Math. 33 (1976), 135–145. <http://www.numdam.org/item/CM_1976__33_2_135_0/>
- C. Voisin, “Bloch's conjecture for Catanese and Barlow surfaces,” J. Differential Geom. 97 (2014), 149–175. <https://arxiv.org/abs/1210.3935>
- D. Mumford, “Rational equivalence of 0-cycles on surfaces,” J. Math. Kyoto Univ. 9 (1969), 195–204. <https://doi.org/10.1215/kjm/1250523940>
- A. A. Roitman, “The torsion of the group of 0-cycles modulo rational equivalence,” Ann. of Math. 111 (1980), 553–569. <https://doi.org/10.2307/1971109>
- C. Voisin, *Hodge Theory and Complex Algebraic Geometry II*, Cambridge Univ. Press (2003). <https://doi.org/10.1017/CBO9780511615177>

### Lean

#### Official statement

`Mathathon.P59.bloch_pg_eq_q_eq_zero` in [`lean/MathathonProblems/P59_BlochConjecture.lean`](lean/MathathonProblems/P59_BlochConjecture.lean).

```lean
theorem bloch_pg_eq_q_eq_zero (S : Scheme.{0}) (p : S ⟶ Spec (CommRingCat.of ℂ))
    [IsProper p] [SmoothOfRelativeDimension 2 p] [ConnectedSpace S]
    (hq : Subsingleton (structureSheafCohomology S 1))
    (hpg : Subsingleton (structureSheafCohomology S 2))
    (D : AlgebraicCycle S ℤ) (hD : ∀ x, D x ≠ 0 → IsClosed ({x} : Set S))
    (hdeg : degree p D = 0) :
    D ∈ rationallyTrivial S
```

This is Theorem 1.1 of the OpenAI preprint, the case $q=0$ of Bloch's conjecture: on a smooth connected projective complex surface with $p_g=q=0$, every zero-cycle of degree zero is rationally equivalent to zero, so $\deg\colon\mathrm{CH} _ 0(S)\to\mathbb Z$ is an isomorphism. The hypotheses are $H^1(S,\mathcal O_S)=H^2(S,\mathcal O_S)=0$ ($q=h^1(\mathcal O_S)$, and $p_g=h^2(\mathcal O_S)$ by Serre duality), "projective" is replaced by "proper" (equivalent for smooth surfaces), and rational equivalence is generated by divisors of rational functions on integral curves in $S$. The case $q\gt0$ (Bloch–Kas–Lieberman) needs the Albanese variety, which Mathlib does not have, and is not stated.

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Mathlib

Mathlib has algebraic cycles on schemes with a degree map (`AlgebraicGeometry.AlgebraicCycle`, `AlgebraicCycle.degree`), orders of vanishing of rational functions (`AlgebraicGeometry.Scheme.ord`) and sheaf cohomology on sites (`CategoryTheory.Sheaf.H`). It has no rational equivalence or Chow groups, no Albanese variety and no geometric genus of a surface.
