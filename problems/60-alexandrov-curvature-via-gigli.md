# 60 · Alexandrov curvature via Gigli

- **Status:** Conjectured by Gigli (2019); claimed proved by an OpenAI preprint (September 2026), not yet refereed.
- **Task:** Explain the proof and the tools it uses.
- **Tracks:** Geometry · **Area:** Differential geometry/Geometric analysis
- **Key reference:** [OpenAI, “Gigli's distributional curvature characterization of Alexandrov spaces” (preprint, 2026)](https://github.com/openai/math/blob/main/preprints/Giglis-distributional-curvature-characterization-of-Alexandrov-spaces-September-24-2026/main.pdf)
- **Lean:** No official statement.

## Notes

- The proof relies on a companion OpenAI preprint, “Weak Hessian bounds along every geodesic in RCD spaces” (September 2026), also not yet refereed.
- Gigli's curvature tensor is defined on RCD metric measure spaces, not on general metric spaces, and the theorem needs the reference measure to be $\mathcal H^n$.

## Description

Gigli gave a notion of distributional curvature of a metric space.  OpenAI proved that (under the condition that the space is $RCD$) a metric space is Alexandrov (has sectional curvature bounded below by $k$ in the sense of triangular comparison) if and only if Gigli's distributional curvature is bounded below by $k$.

## Desired outcome

The goal is to provide understanding of the proof and the tools employed.

## The result

Gigli (C. R. Math. 2019) defined, on an RCD space, a distributional Riemann tensor $R(X,Y,Z,W)(f)$ by integrating by parts against test functions $f$ and test vector fields $X,Y,Z,W$. Theorem (OpenAI, 2026; Gigli's Conjecture 1.1): for an integer $n\ge2$, $\kappa\in\mathbb R$ and a complete separable metric space $(M,d)$, the following are equivalent: (A) $(M,d)$ is an $n$-dimensional Alexandrov space of curvature $\ge\kappa$; (B) $(M,d,\mathcal H^n)$ has full support, is $\mathrm{RCD}((n-1)\kappa,n)$, and
$$R(X,Y,Y,X)(f)\;\ge\;\kappa\int_M f\big(|X|^2|Y|^2-\langle X,Y\rangle^2\big)\,d\mathcal H^n$$
for all test fields $X,Y$ and all test functions $f\ge0$. That (A) implies the RCD part of (B) was known (Kuwae–Machigashira–Shioya, Petrunin, Zhang–Zhu).

## How the known proof works

- (A)⇒(B): small Alexandrov configurations are integrated against optimal-transport densities; a fourth-order transport estimate and averaging isolate the curvature term plus a nonnegative square error, made small by local choice of gradient tests, then extended to the global test classes.
- (B)⇒(A), step 1: a heat-regularized index inequality, built from forward and backward heat flows whose product solves a continuity equation, with a Riccati identity in which the viscosity terms cancel.
- Step 2: frames along almost every geodesic in the noncollapsed setting (harmonic splitting maps, capacity estimates, Deng's continuity of tangent cones), giving a Hessian comparison for distance functions.
- Step 3: bounded modifications of the distance function and the companion theorem (weak Hessian bounds hold along every geodesic in RCD$(K,N)$ spaces) give the model ODE on every geodesic; a 1D comparison and the local-to-global theorem give Alexandrov curvature $\ge\kappa$.
- The difficulty lies in passing from almost-everywhere Sobolev information to statements along every geodesic.

## Background

- Synthetic Ricci bounds: Lott–Villani and Sturm (curvature-dimension condition $\mathrm{CD}(K,N)$, 2006–09); Ambrosio–Gigli–Savaré introduced $\mathrm{RCD}(K,\infty)$ (2014). Gigli's nonsmooth calculus (Mem. AMS 251) provides Hessians, covariant derivatives and Ricci curvature on RCD spaces.
- Related: Ketterer–Mondino characterize sectional bounds of smooth manifolds by optimal transport; Lebedeva–Petrunin build a curvature tensor for smoothable Alexandrov spaces; Brena–Gigli explain why a distributional Hessian bound does not directly give convexity.
- Noncollapsed RCD spaces ($\mathfrak m=\mathcal H^N$) were studied by De Philippis–Gigli (2018).

## Where to start

- [Riemann curvature tensor on RCD spaces and possible applications](https://arxiv.org/abs/1902.02282), N. Gigli, 2019: 7-page note defining the tensor and stating the conjecture.
- [Nonsmooth differential geometry](https://arxiv.org/abs/1407.0809), N. Gigli, 2014: the first- and second-order calculus behind the test classes.
- [Alexandrov geometry: foundations](https://arxiv.org/abs/1903.08539), S. Alexander, V. Kapovitch, A. Petrunin, 2019: definitions and comparison theorems for Alexandrov spaces.
Prerequisites: optimal transport and Wasserstein geodesics, Sobolev spaces on metric measure spaces, heat flow, comparison geometry.

## References

- <https://github.com/openai/math/blob/main/preprints/Giglis-distributional-curvature-characterization-of-Alexandrov-spaces-September-24-2026/main.pdf>

Further references:

- N. Gigli, “Riemann curvature tensor on RCD spaces and possible applications,” C. R. Math. Acad. Sci. Paris 357 (2019), 613–619. <https://doi.org/10.1016/j.crma.2019.06.003>
- N. Gigli, “Nonsmooth differential geometry – an approach tailored for spaces with Ricci curvature bounded from below,” Mem. Amer. Math. Soc. 251, no. 1196. <https://doi.org/10.1090/memo/1196>
- OpenAI, “Weak Hessian bounds along every geodesic in RCD spaces,” preprint (2026). <https://github.com/openai/math/blob/main/preprints/Weak-Hessian-bounds-along-every-geodesic-in-RCD-spaces-September-24-2026/weak-hessian-geodesics.pdf>
- S. Alexander, V. Kapovitch, A. Petrunin, “Alexandrov geometry: foundations,” arXiv:1903.08539. <https://arxiv.org/abs/1903.08539>
- A. Petrunin, “Alexandrov meets Lott–Villani–Sturm,” Münster J. Math. 4 (2011), 53–64. <https://www.uni-muenster.de/FB10/mjm/vol_4/mjm_vol_4_03.pdf>

## Lean

### Official statement

This problem has no official Lean statement: a faithful statement needs RCD spaces and Gigli's distributional curvature, which Mathlib does not have yet.

### Mathlib

Mathlib has metric spaces, Hausdorff measure (`MeasureTheory.Measure.hausdorffMeasure`) and Euclidean angles (`EuclideanGeometry.angle`). It has no length or geodesic spaces, Alexandrov comparison, Wasserstein spaces, Cheeger energy or RCD spaces.

---

*Description and Desired outcome are the proposer's text. The other sections were written by the organizers from the literature.*
