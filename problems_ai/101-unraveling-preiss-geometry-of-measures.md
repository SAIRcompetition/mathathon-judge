# 101 · Unraveling Preiss' Geometry of Measures

## From the proposer

- **Area:** geometric measure theory; geometric analysis
- **Tracks:** Geometry, Analysis

### Description

Preiss’s rectifiability theorem derives geometric structure from local density information, but its proof is notoriously difficult to navigate. We propose an interactive exposition combining a multiscale proof graph with geometric laboratories. Working through selected arguments, AI agents and human reviewers will reconstruct dependencies, clarify hypotheses, and develop alternative explanations. Initial modules will investigate tangent measures, the Kowalski–Preiss cone, and the passage from one flat tangent to flatness of all tangents under the appropriate hypotheses. The aim is to make the proof’s mechanisms explorable, while preserving precise statements, source attribution, and a transparent record of AI contributions.

### Desired outcome

A carefully checked, interactive exposition that helps readers explain why the obvious proof fails and how Preiss repairs it. The initial deliverable will combine an overview graph, a detailed treatment of one central argument, and geometric demonstrations built from matlab (or other software). A reproducible repository will contain code, original explanatory material, source references, and relevant AI records. The two-month continuation will expand and refine the exposition. Alternative proofs or simplifications will also be sought.

### References

David Preiss, “Geometry of measures in (\mathbb R^n): Distribution, rectifiability, and densities,” Annals of Mathematics 125 (1987), 537–643. 

Camillo De Lellis, Rectifiable Sets, Densities, and Tangent Measures, Zürich Lectures in Advanced Mathematics, EMS, 2008

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved by D. Preiss (Ann. of Math. 1987), completing work of Besicovitch, Marstrand and Mattila; C. De Lellis (EMS 2008) gives a self-contained account of the main case.
- **Task:** An interactive, carefully checked exposition of Preiss's proof: a dependency graph, one central argument treated in detail, and geometric demonstrations.
- **Key reference:** [C. De Lellis, *Rectifiable Sets, Densities and Tangent Measures*, Zurich Lectures in Advanced Mathematics, EMS (2008)](https://doi.org/10.4171/044) (lecture-note version: [UZH](https://www.math.uzh.ch/en/fileadmin/user/delellis/publikation/Delellis_note136_corrected.pdf))
- **Lean:** Official statement.

### Notes

- De Lellis proves the version in which the density exists (Theorem 1.1 below). Preiss's paper proves a stronger statement in which the upper and lower densities need only be comparable (Theorem 1.2 of the notes); De Lellis says this is "longer and more difficult".
- The proposer's step "from one flat tangent to flatness of all tangents" is Theorem 6.10 (Part B) in De Lellis's notes, which splits it into Propositions 6.16, 6.18 and 6.19, proved in Chapters 7–9.

### The result

For a locally finite Borel measure $\mu$ on $\mathbb R^n$ and $\alpha\ge0$, consider the density ratio $\mu(B_r(x))/r^\alpha$ as $r\downarrow0$.

**Theorem (Marstrand 1964; Preiss 1987).** Suppose that $\lim_{r\downarrow0}\mu(B_r(x))/r^\alpha$ exists in $(0,\infty)$ for $\mu$-a.e. $x$. Then either $\mu=0$ or $\alpha=k$ is an integer with $k\le n$. In the latter case the hypothesis holds if and only if there are a Borel function $f$ and countably many Lipschitz $k$-dimensional submanifolds $\Gamma_i$ with
$$\mu(A)=\sum_i\int_{\Gamma_i\cap A}f\,d\mathrm{Vol}_k\qquad\text{for all Borel }A,$$
that is, $\mu$ is $k$-rectifiable.

Marstrand proved that $\alpha$ must be an integer; Preiss proved rectifiability. Preiss's stronger form: there is $c(k,n)>1$ such that $0<\limsup_{r\downarrow0}\mu(B_r(x))/r^k<c(k,n)\liminf_{r\downarrow0}\mu(B_r(x))/r^k<\infty$ a.e. already implies rectifiability. The optimal $c(k,n)$ is unknown (De Lellis, Problem 10.2).

### How the known proof works

Following De Lellis, Chapters 3 and 5–9:
- Tangent measures: weak-* limits of the blow-ups $r_i^{-k}\mu_{x,r_i}$ as $r_i\to0$. Where the density exists, every tangent measure is a multiple of a $k$-uniform measure: $\nu(B_r(y))=\omega_kr^k$ for all $y\in\operatorname{supp}\nu$ and $r>0$ (Proposition 3.4).
- If all tangent measures were flat, i.e. of the form $\mathcal H^k\llcorner V$ for a $k$-plane $V$, the Marstrand–Mattila rectifiability criterion would finish the proof. For $k\le2$ every $k$-uniform measure is flat, which needs real work for $k=2$. For $k=3$ the Kowalski–Preiss cone $\{x_4^2=x_1^2+x_2^2+x_3^2\}\subset\mathbb R^4$ carries a $3$-uniform measure that is not flat.
- Part A: at a.e. point, tangent measures of tangent measures are again tangent measures (Lemma 6.6). With Marstrand's argument this gives a flat tangent measure at a.e. point (Theorem 6.8).
- Part B: if one tangent measure at $x$ is flat, all are (Theorem 6.10). Three steps: a $k$-uniform measure has a unique tangent measure at infinity, its blow-down, and it is a cone (Proposition 6.16, by expanding moments). If that cone is within $\varepsilon(k,n)$ of a plane in an $L^2$ sense on $B_1$, it is flat (Proposition 6.18). A uniform measure that is flat at infinity is flat (Proposition 6.19).
- Conclusion: the distance from flatness of $r^{-k}\mu_{x,r}$ depends continuously on $r$. A point with one flat tangent and one tangent curved at infinity would force an intermediate value, which the gap excludes (§6.4).

### Background

- History: Besicovitch (1938) treated $k=1$ in the plane for sets; Morse and Randolph (1944) extended this to planar measures, and Moore (1950) to $k=1$ in $\mathbb R^n$. Marstrand (1961) proved a weaker theorem for 2-dimensional sets in $\mathbb R^3$, extended by Mattila (1975) to all dimensions. Preiss (1987) introduced tangent measures to solve the general case.
- Uniform measures: Kowalski and Preiss (1987) showed that every $(n-1)$-uniform measure on $\mathbb R^n$ is flat or, for $n\ge4$ and in suitable coordinates, $\mathcal H^{n-1}$ on $\{x_1^2+x_2^2+x_3^2=x_4^2\}$. Kirchheim and Preiss (2002) proved that the support of a uniformly distributed measure is a real-analytic variety. Nimer (J. Differential Geom. 2022) constructed an infinite family of new 3-uniform measures in arbitrary codimension and classified the conical ones in $\mathbb R^5$. De Lellis lists the classification of $k$-uniform measures as an open problem that would give a new view of Preiss's proof; Nimer's work answers it only in part.
- Besicovitch's $\tfrac12$-conjecture, on rectifiability of planar sets whose lower density exceeds $\tfrac12$, is listed as open by De Lellis (Conjecture 10.5).

### Where to start

- [Lecture notes on rectifiable sets, densities, and tangent measures](https://www.math.uzh.ch/en/fileadmin/user/delellis/publikation/Delellis_note136_corrected.pdf), C. De Lellis: Chapter 6 maps the proof and reduces it to three propositions; Chapter 10 lists open problems.
- [Rectifiability; a survey](https://arxiv.org/abs/2112.00540), P. Mattila, 2021: a broad survey of rectifiability, including tangent measures and densities.
- [Conical 3-uniform measures: a family of new examples and characterizations](https://arxiv.org/abs/1608.02604), A. D. Nimer, 2016: explicit uniform measures beyond the Kowalski–Preiss cone, which are natural objects for geometric demonstrations.

Prerequisites: measure theory, Hausdorff measures, covering theorems and Besicovitch differentiation, weak-* convergence of Radon measures, Rademacher's theorem.

### References, with links

- D. Preiss, “Geometry of measures in $\mathbb R^n$: distribution, rectifiability, and densities,” Ann. of Math. 125 (1987), 537–643. <https://doi.org/10.2307/1971410>
- C. De Lellis, *Rectifiable Sets, Densities and Tangent Measures*, Zurich Lectures in Advanced Mathematics, EMS (2008). <https://doi.org/10.4171/044>

### Further references

- O. Kowalski and D. Preiss, “Besicovitch-type properties of measures and submanifolds,” J. Reine Angew. Math. 379 (1987), 115–151. <https://doi.org/10.1515/crll.1987.379.115>
- B. Kirchheim and D. Preiss, “Uniformly distributed measures in Euclidean spaces,” Math. Scand. 90 (2002), 152–160. <https://doi.org/10.7146/math.scand.a-14367>
- A. D. Nimer, “Conical 3-uniform measures: a family of new examples and characterizations,” J. Differential Geom. 121 (2022), 57–99. <https://doi.org/10.4310/jdg/1656005496>
- P. Mattila, “Rectifiability; a survey,” arXiv:2112.00540 (2021). <https://arxiv.org/abs/2112.00540>

### Lean

#### Official statement

`Mathathon.P101.preiss` in [`lean/MathathonProblems/P101_PreissRectifiability.lean`](lean/MathathonProblems/P101_PreissRectifiability.lean).

```lean
theorem preiss {n : ℕ} (μ : Measure (EuclideanSpace ℝ (Fin n))) [IsLocallyFiniteMeasure μ]
    (α : ℝ) (hα : 0 ≤ α) (hμ : ∀ᵐ x ∂μ, HasPosFiniteDensity μ α x) :
    μ = 0 ∨ ∃ k : ℕ, k ≤ n ∧ α = k ∧ IsRectifiable μ k
```

This is Theorem 1.1 of De Lellis's notes (Marstrand and Preiss): the density is the limit of $\mu(\bar B_r(x))/r^\alpha$, and a $k$-rectifiable measure is one that is absolutely continuous with respect to $\mathcal H^k$ and concentrated on countably many Lipschitz images of $\mathbb R^k$. Preiss's stronger form with comparable upper and lower densities, and the classical converse, are not included.

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Mathlib

Mathlib has Hausdorff measures (`MeasureTheory.Measure.hausdorffMeasure`), the Besicovitch covering and differentiation theorems (`Besicovitch.ae_tendsto_rnDeriv`), Rademacher's theorem (`LipschitzWith.ae_differentiableAt`) and the change of variables formula (`MeasureTheory.integral_image_eq_integral_abs_det_fderiv_smul`). It has no rectifiable sets or measures, no densities of measures, no tangent measures and no vague (weak-*) convergence of locally finite measures.
