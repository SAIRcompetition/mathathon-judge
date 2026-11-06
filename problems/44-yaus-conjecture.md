# 44 · Yau's conjecture

- **Status:** Lower bound proved by Logunov (2018); OpenAI preprints (September 2026, not yet refereed) claim the upper bound on surfaces and counterexamples in dimensions ≥ 3.
- **Task:** A readable account of the 2D proof and the higher-dimensional counterexamples.
- **Tracks:** Analysis, Geometry · **Area:** Analysis of PDE, spectral geometry, differential geometry, harmonic analysis — specifically: nodal sets of Laplace eigenfunctions and unique continuation
- **Key reference:** [A. Logunov, E. Malinnikova, “Review of Yau's conjecture on zero sets of Laplace eigenfunctions”, CDM 2018, arXiv:1908.01639](https://arxiv.org/abs/1908.01639)
- **Lean:** Official statement; a Lean proof already exists.

## Notes

- The dimension-5 claim in the Description is a third preprint, not listed on the page (“Power-law violations of Yau's nodal upper bound”, on $S^4\times S^1$).
- For Landis' conjecture the contrast has two axes: with complex potentials it fails already in the plane (Meshkov); with real potentials Logunov–Malinnikova–Nadirashvili–Nazarov (2020) proved, with 2D tools, that in the plane $|u(x)|\le\exp(-C|x|\log^{1/2}|x|)$ forces $u\equiv0$ (the conjecture asks for $\exp(-C|x|)$), and the higher-dimensional real case was open.

## Description

Yau’s conjecture predicts that the nodal set of a Laplace eigenfunction with eigenvalue λ on a closed smooth manifold has measure comparable to √λ. In September 2026, AI-generated preprints claimed the upper bound on smooth surfaces and counterexamples in dimensions 3–5. These ~120 pages are hard to read and not yet confirmed by experts. The project explains them around one question: why does dimension 2 differ from dimension ≥3? The same dichotomy appears for Landis’ conjecture. It relates the AI arguments to prior human work, identifying what the AI added, and isolate the new idea in the 2D proof.

## Desired outcome

A readable account of what the AI-generated arguments actually do, aimed at mathematicians outside the immediate specialty. Concretely:

- A clear outline of the counterexample in dimensions ≥3: its main steps, which ones are standard and which are new, and why the construction does not work on surfaces.
- An identification of the key new ingredient in the 2D proof, compared with earlier approaches (doubling index, Carleman estimates) that reached weaker bounds.
- A map of prior human work: which ideas were already available in the literature, including the analogous dimension-2 vs ≥3 dichotomy for Landis’ conjecture, and what exactly the AI contributed beyond them.
- Visualizations that make the mechanism tangible: nodal sets of the constructed eigenfunctions compared with typical (random-wave) eigenfunctions, and the growth of nodal measure relative to √λ.

## The result

Yau's conjecture: on a closed smooth Riemannian $n$-manifold, every eigenfunction $-\Delta_g u=\lambda u$ satisfies
$$c\sqrt\lambda\le \mathcal H^{n-1}(\{u=0\})\le C\sqrt\lambda .$$
Donnelly–Fefferman proved both bounds for real-analytic metrics (Invent. Math. 1988). For smooth metrics Logunov proved the lower bound in every dimension and a polynomial upper bound $C\lambda^{\alpha}$ for $n\ge 3$ (Annals 2018). On surfaces the best upper bound was $C\lambda^{3/4-\beta}$ (Logunov–Malinnikova 2018). The OpenAI preprints claim: $C\sqrt\lambda$ on every smooth closed surface; smooth metrics on $S^3$ arbitrarily close to round and on $S^2\times T^2$ with $\mathcal H^{n-1}(\{u_j=0\})/\sqrt{\lambda_j}\to\infty$; and growth faster than $\lambda^{1/2+\varepsilon_0}$ in dimension 5.

## How the known proof works

- Surface bound: in isothermal coordinates $\Delta u+k^2p(x)u=0$, $k=\sqrt\lambda$. Roy-Fortin's planar theorem bounds nodal length on a square of side $s\approx k^{-1}$ by $Cs(1+E)$, with $E$ the logarithmic growth there, so it suffices to bound the average of $E$.
- New ingredient: a mean-growth bound. Logarithmic limits of tilted local norms are subharmonic by a 2D Carleman estimate that sees the full trace of the weight Hessian; affine parts are subtracted scale by scale, and a packing argument controls persistent growth.
- Counterexamples: a convex logarithmic envelope is corrugated so its integrated gradient is large; complex-phase WKB quasimodes give many sign changes, hence large nodal measure.
- Each quasimode becomes an exact eigenfunction of a nearby metric, by arguments specific to $S^3$ and to $S^2\times T^2$; simple-eigenvalue perturbations and nested neighbourhoods give one fixed limit metric.

## Background

- Earlier bounds: Brüning and Yau (lower bound on surfaces, 1978); Donnelly–Fefferman and Dong ($C\lambda^{3/4}$ on surfaces, 1990, 1992); Hardt–Simon ($C\lambda^{C\sqrt\lambda}$, 1989); Nazarov–Polterovich–Sodin (sign asymmetry on surfaces, 2005).
- Standard tools are the doubling index, frequency monotonicity and Carleman estimates; the review explains their main ideas.
- Products of the $S^3$ metric with any closed manifold give failures in every higher dimension.

## Where to start

- [Review of Yau's conjecture on zero sets of Laplace eigenfunctions](https://arxiv.org/abs/1908.01639), A. Logunov, E. Malinnikova, 2019: history, doubling index, 2D methods (§3).
- [The Landis conjecture on exponential decay](https://arxiv.org/abs/2007.07034), A. Logunov, E. Malinnikova, N. Nadirashvili, F. Nazarov, 2020: the planar real case and its 2D tools.
- [Sharp nodal length on smooth surfaces](https://github.com/openai/math/blob/main/preprints/Sharp-nodal-length-on-smooth-surfaces-September-23-2026/paper.pdf), OpenAI, 2026: §1 is a two-page outline.
Prerequisites: elliptic PDE, unique continuation and Carleman estimates, Hausdorff measure; WKB analysis for the counterexamples.

## References

- A. Logunov and E. Malinnikova, “Review of Yau’s conjecture on zero sets of Laplace eigenfunctions”, Current Developments in Mathematics 2018, International Press. arXiv:1908.01639. <https://arxiv.org/abs/1908.01639>
- “Sharp nodal length on smooth surfaces”, preprint, September 23, 2026. <https://github.com/openai/math/blob/main/preprints/Sharp-nodal-length-on-smooth-surfaces-September-23-2026/paper.pdf>
- “Smooth counterexamples to Yau’s nodal upper bound in dimensions three and four”, preprint, September 23, 2026. <https://github.com/openai/math/blob/main/preprints/Smooth-counterexamples-to-Yaus-nodal-upper-bound-in-dimensions-three-and-four-September-23-2026/paper.pdf>

Further references:

- OpenAI, “Power-law violations of Yau's nodal upper bound,” preprint (2026). <https://github.com/openai/math/blob/main/preprints/Power-law-violations-of-Yaus-nodal-upper-bound-September-23-2026/paper.pdf>
- A. Logunov, “Nodal sets of Laplace eigenfunctions: proof of Nadirashvili's conjecture and of the lower bound in Yau's conjecture,” Ann. of Math. 187 (2018), 241–262. <https://arxiv.org/abs/1605.02589>
- A. Logunov, “Nodal sets of Laplace eigenfunctions: polynomial upper estimates of the Hausdorff measure,” Ann. of Math. 187 (2018), 221–239. <https://arxiv.org/abs/1605.02587>
- H. Donnelly and C. Fefferman, “Nodal sets of eigenfunctions on Riemannian manifolds,” Invent. Math. 93 (1988), 161–183. <https://doi.org/10.1007/BF01393691>
- A. Logunov, E. Malinnikova, N. Nadirashvili, F. Nazarov, “The Landis conjecture on exponential decay,” arXiv:2007.07034. <https://arxiv.org/abs/2007.07034>

## Lean

### Official statement

`OAI.SharpNodal.Main` in [`lean/MathathonProblems/P44_SharpNodalLength.lean`](lean/MathathonProblems/P44_SharpNodalLength.lean).

```lean
theorem Main [CompactSpace M] [ConnectedSpace M]
    [IsContMDiffRiemannianBundle 𝓘(ℝ,Plane) ∞ Plane
      (fun x:M=>TangentSpace 𝓘(ℝ,Plane) x)]
    [IsRiemannianManifold 𝓘(ℝ,Plane) M] : MainStatement M
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/NodalLength.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Analysis/NodalLength/Main.lean>. A Lean-verified claim must not use or copy it.

`OAI.YauCounterexamples.sphere_three`, `OAI.YauCounterexamples.sphere_two_torus_two` in [`lean/MathathonProblems/P44_SmoothYau.lean`](lean/MathathonProblems/P44_SmoothYau.lean).

```lean
theorem sphere_three (gRound : SmoothMetric (Euclidean 3) (Sphere 3))
    (hRound : IsRound gRound) :
    ∀ N : Set (SmoothMetric (Euclidean 3) (Sphere 3)),
      IsSmoothNeighborhood gRound N →
      ∃ g ∈ N, HasUnboundedNodalRatio g 3
```

```lean
theorem sphere_two_torus_two :
    ∃ g : SmoothMetric FourModel FourManifold,
      HasUnboundedNodalRatio g 4
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/SmoothYau.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Geometry/SmoothYau/Main.lean>. A Lean-verified claim must not use or copy it.

### Mathlib

Mathlib has Hausdorff measure (`MeasureTheory.Measure.hausdorffMeasure`), Riemannian metrics (`RiemannianMetric`, `ContMDiffRiemannianMetric`, `IsRiemannianManifold`) and the Euclidean Laplacian (`Laplacian.laplacian`, notation `Δ`). It has no Laplace–Beltrami operator on manifolds.

---

*Description and Desired outcome are the proposer's text. The other sections were written by the organizers from the literature.*
