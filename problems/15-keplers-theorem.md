# 15 · Kepler's theorem

**Tracks:** Geometry · **Area:** Discrete geometry; sphere packing; computational geometry

**See also:** [Problem 68](68-simpler-proof-of-the-kepler-conjecture.md)

## Description

Kepler’s theorem states that the maximum density of a packing of identical spheres in three-dimensional Euclidean space is π/√18. Although proved and formally verified, its proof remains difficult to understand. Can participants develop a clearer exposition of a significant part of the argument, or investigate how its geometric ideas extend to related packing problems? Possible directions include visualizing local density bounds and geometric decompositions, simplifying selected arguments, or exploring analogous questions in higher dimensions or constrained regions.

## Desired outcome

A novel exposition or an extension to a related packing problem.

## References

- Thomas C. Hales, “A proof of the Kepler conjecture,” Annals of Mathematics 162 (2005), 1065–1185.
- Thomas Hales et al., “A formal proof of the Kepler conjecture,” Forum of Mathematics, Pi 5 (2017), e2.

## Official Lean statement

`Mathathon.P15.kepler` in [`lean/MathathonProblems/P15_Kepler.lean`](lean/MathathonProblems/P15_Kepler.lean).

```lean
theorem kepler : SpherePackingConstant 3 = ENNReal.ofReal (Real.pi / Real.sqrt 18)
```

Source: <https://github.com/thefundamentaltheor3m/Sphere-Packing-Lean/blob/803f1623539ece84a19b2b6805764b8dea9ea6e6/SpherePacking/Basic/SpherePacking.lean> (adapted as described in the file header).
