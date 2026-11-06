# 15 · Kepler's theorem

- **Status:** Proved by T. C. Hales with S. P. Ferguson (announced 1998, published 2005–2006); formal proof completed by the Flyspeck project (2014, published 2017).
- **Task:** An exposition of part of the proof, or extension to related packings.
- **Tracks:** Geometry · **Area:** Discrete geometry; sphere packing; computational geometry
- **Key reference:** [T. Hales et al., A formal proof of the Kepler conjecture, Forum Math. Pi 5 (2017), e2](https://arxiv.org/abs/1501.02155)
- **Lean:** Official statement.
- **See also:** [Problem 68](68-simpler-proof-of-the-kepler-conjecture.md)

## Notes

- Problems 15 and 68 share this theorem and its official Lean statement; 15 asks for an exposition or an extension, 68 for a proof with less computation.

## Description

Kepler’s theorem states that the maximum density of a packing of identical spheres in three-dimensional Euclidean space is π/√18. Although proved and formally verified, its proof remains difficult to understand. Can participants develop a clearer exposition of a significant part of the argument, or investigate how its geometric ideas extend to related packing problems? Possible directions include visualizing local density bounds and geometric decompositions, simplifying selected arguments, or exploring analogous questions in higher dimensions or constrained regions.

## Desired outcome

A novel exposition or an extension to a related packing problem.

## The result

The Kepler conjecture: no packing of congruent balls in $\mathbb R^3$ has density greater than that of the face-centred cubic packing,
$$\delta_3=\frac{\pi}{\sqrt{18}}\approx 0.7405 .$$
The hexagonal close packing and other layered packings reach the same density. Hales's proof, completed with Ferguson, appeared in Ann. of Math. 162 (2005) and in full in Discrete Comput. Geom. 36 (2006), without complete certification by the referees. The Flyspeck project then verified a revised proof in HOL Light and Isabelle. The official Lean statement defines the density of a packing as the limit superior of the covered fraction of balls about the origin, and states that its supremum over all packings is $\pi/\sqrt{18}$.

## How the known proof works

- A partition of space (Marchal cells; decomposition stars in the original proof) and a cell cluster inequality reduce the problem to a local annulus inequality: for packings $V$ in $\{2\le\|x\|\le 2.52\}$, $\sum_{v\in V}(2.52-\|v\|)/0.52\le 12$, with at most 15 points to consider.
- By compactness a counterexample can be assumed to have a special ("contravening") form, which gives a tame plane graph (planar hypermap).
- A computer lists all tame plane graphs up to isomorphism (18 762 in the revised proof's archive).
- For each graph, linear relaxations of the nonlinear conditions are shown infeasible (43 078 linear programs in the formal proof).
- Several hundred nonlinear inequalities, split into more than 23 000 cases, are proved by interval arithmetic; their formal verification took about 5000 processor-hours.

## Background

- Kepler stated the conjecture in 1611; it is part of Hilbert's 18th problem. Thue proved the planar analogue (1892, second proof 1910); L. Fejes Tóth (1953) proposed the first programme aimed at reducing the problem to finitely many variables.
- Expositions by Hales: "An overview of the Kepler conjecture" (1998) and the book "Dense Sphere Packings: a blueprint for formal proofs" (2012), the revised proof that Flyspeck formalized.
- The local annulus inequality has also been used to prove Bezdek's strong dodecahedral conjecture and Fejes Tóth's contact conjecture.
- The sphere packing problem is also solved in dimensions 8 (Viazovska, 2017) and 24 (Cohn, Kumar, Miller, Radchenko and Viazovska, 2017), by a different method (Problem 68).

## Where to start

- [An overview of the Kepler conjecture](https://arxiv.org/abs/math/9811071), T. C. Hales, 1998: history, strategy and why the problem is hard.
- [A formal proof of the Kepler conjecture](https://arxiv.org/abs/1501.02155), T. Hales et al., 2015: Section 4.2 outlines the revised proof; Sections 5, 7 and 9 describe the three computations.
- [A revision of the proof of the Kepler conjecture](https://arxiv.org/abs/0902.0350), T. C. Hales et al., 2009: the structure of the original proof and its code, with errata.

Prerequisites: Euclidean and spherical geometry, Voronoi and Delaunay decompositions, planar graphs, linear programming, interval arithmetic.

## References

- Thomas C. Hales, “A proof of the Kepler conjecture,” Annals of Mathematics 162 (2005), 1065–1185. <https://doi.org/10.4007/annals.2005.162.1065>
- Thomas Hales et al., “A formal proof of the Kepler conjecture,” Forum of Mathematics, Pi 5 (2017), e2. <https://arxiv.org/abs/1501.02155>

Further references:

- T. C. Hales, “An overview of the Kepler conjecture,” arXiv:math/9811071 (1998). <https://arxiv.org/abs/math/9811071>
- T. C. Hales, J. Harrison, S. McLaughlin, T. Nipkow, S. Obua and R. Zumkeller, “A revision of the proof of the Kepler conjecture,” Discrete Comput. Geom. 44 (2010), 1–34. <https://arxiv.org/abs/0902.0350>
- T. C. Hales, Dense Sphere Packings: A Blueprint for Formal Proofs, London Math. Soc. Lecture Note Series 400, Cambridge University Press (2012). <https://doi.org/10.1017/CBO9781139193894>
- C. Marchal, “Study of the Kepler's conjecture: the problem of the closest packing,” Math. Z. 267 (2011), 737–765. <https://doi.org/10.1007/s00209-009-0644-2>
- H. Cohn, “A conceptual breakthrough in sphere packing,” Notices Amer. Math. Soc. 64 (2017), 102–115. <https://arxiv.org/abs/1611.01685>

## Lean

### Official statement

`Mathathon.P15.kepler` in [`lean/MathathonProblems/P15_Kepler.lean`](lean/MathathonProblems/P15_Kepler.lean).

```lean
theorem kepler : SpherePackingConstant 3 = ENNReal.ofReal (Real.pi / Real.sqrt 18)
```

Source: <https://github.com/thefundamentaltheor3m/Sphere-Packing-Lean/blob/803f1623539ece84a19b2b6805764b8dea9ea6e6/SpherePacking/Basic/SpherePacking.lean> (adapted as described in the file header).

### Related Lean formalizations

- [Kepler conjecture: source finite-container theorem](https://prove2.me/theorems/f37b19a4-8ba7-4692-86e6-2e31b939a22b), Prove2Me: a Lean statement of the Kepler conjecture in the counting form used by Hales (open, not proved there).
- [`kepler_conjecture` in lean-eval](https://github.com/leanprover/lean-eval/blob/85a88c37f80170d9f08651dc63ce6b81a8a48cb9/generated/kepler_conjecture/Challenge.lean): another Lean statement of the Kepler conjecture (statement only).

Projects outside the Palomar registry are described as their authors describe them; the organizers have not checked their proofs.

### Mathlib

Mathlib has Euclidean space, balls and their volumes (`EuclideanSpace.volume_ball`), Lebesgue measure and `Filter.limsup`, which the official statement uses to define packings and density itself. It has no sphere packings, Voronoi or Delaunay decompositions, face-centred cubic lattice or Kepler theorem.

---

*Description and Desired outcome are the proposer's text. The other sections were written by the organizers from the literature.*
