# 44 · Yau's conjecture

**Tracks:** Analysis, Geometry · **Area:** Analysis of PDE, spectral geometry, differential geometry, harmonic analysis — specifically: nodal sets of Laplace eigenfunctions and unique continuation

## Description

Yau’s conjecture predicts that the nodal set of a Laplace eigenfunction with eigenvalue λ on a closed smooth manifold has measure comparable to √λ. In September 2026, AI-generated preprints claimed the upper bound on smooth surfaces and counterexamples in dimensions 3–5. These ~120 pages are hard to read and not yet confirmed by experts. The project explains them around one question: why does dimension 2 differ from dimension ≥3? The same dichotomy appears for Landis’ conjecture. It relates the AI arguments to prior human work, identifying what the AI added, and isolate the new idea in the 2D proof.

## Desired outcome

A readable account of what the AI-generated arguments actually do, aimed at mathematicians outside the immediate specialty. Concretely:

- A clear outline of the counterexample in dimensions ≥3: its main steps, which ones are standard and which are new, and why the construction does not work on surfaces.
- An identification of the key new ingredient in the 2D proof, compared with earlier approaches (doubling index, Carleman estimates) that reached weaker bounds.
- A map of prior human work: which ideas were already available in the literature, including the analogous dimension-2 vs ≥3 dichotomy for Landis’ conjecture, and what exactly the AI contributed beyond them.
- Visualizations that make the mechanism tangible: nodal sets of the constructed eigenfunctions compared with typical (random-wave) eigenfunctions, and the growth of nodal measure relative to √λ.

## References

- A. Logunov and E. Malinnikova, “Review of Yau’s conjecture on zero sets of Laplace eigenfunctions”, Current Developments in Mathematics 2018, International Press. arXiv:1908.01639.
- “Sharp nodal length on smooth surfaces”, preprint, September 23, 2026. <https://github.com/openai/math/blob/main/preprints/Sharp-nodal-length-on-smooth-surfaces-September-23-2026/paper.pdf>
- “Smooth counterexamples to Yau’s nodal upper bound in dimensions three and four”, preprint, September 23, 2026. <https://github.com/openai/math/blob/main/preprints/Smooth-counterexamples-to-Yaus-nodal-upper-bound-in-dimensions-three-and-four-September-23-2026/paper.pdf>

## Official Lean statement

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
