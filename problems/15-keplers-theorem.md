# 15 · Kepler's theorem

- **Status:** Proved by T. C. Hales with S. P. Ferguson (announced 1998, published 2005–2006) using large computations; formal proof completed by the Flyspeck project (2014, published 2017).
- **Task:** A proof with less computation or a Viazovska-style proof; or an exposition of part of the proof, or an extension to related packings.
- **Tracks:** Algebra/Number Theory, Geometry · **Area:** Discrete geometry; sphere packing; computational geometry
- **Key reference:** [T. Hales et al., A formal proof of the Kepler conjecture, Forum Math. Pi 5 (2017), e2](https://arxiv.org/abs/1501.02155)
- **Lean:** Official statement.

## Notes

- The Cohn–Elkies linear programming bound, which settled dimensions 8 and 24, cannot prove the Kepler conjecture: its numerically optimized value in dimension 3 is about 0.7797, and R. Li (Adv. Math., 2024) proved that it stays away from $\pi/\sqrt{18}$.

## Description

Kepler’s theorem states that the maximum density of a packing of identical spheres in three-dimensional Euclidean space is π/√18. Although proved and formally verified, its proof remains difficult to understand. The original proof relies on reducing the problem to a nonlinear optimization problem in ~150 variables. The final solution involved numerically solving around 100,000 auxiliary linear optimization problems. Using modular forms, Maryna Viazovska provided a relatively short proof of the analogous problem in dimension 8 and, with several collaborators, in dimension 24. Can participants develop a clearer exposition of a significant part of the argument, or investigate how its geometric ideas extend to related packing problems? Possible directions include visualizing local density bounds and geometric decompositions, simplifying selected arguments, or exploring analogous questions in higher dimensions or constrained regions.

## Desired outcome

A modified proof of the Kepler conjecture with less reliance on numerical verification (e.g. reduction to a simpler optimization problem) or a structurally simpler proof of the conjecture using different techniques altogether in the spirit of Maryna Viazovska's work in 8 dimensions.

## The result

The Kepler conjecture: no packing of congruent balls in $\mathbb R^3$ has density greater than that of the face-centred cubic packing,
$$\delta_3=\frac{\pi}{\sqrt{18}}\approx 0.7405 .$$
The hexagonal close packing and other layered packings reach the same density. Hales's proof, completed with Ferguson (Ann. of Math. 162, 2005; in full in Discrete Comput. Geom. 36, 2006), reduces the problem to a global optimization in nearly 150 variables settled by large computations; it was published without complete certification by the referees. The Flyspeck project then verified a revised proof in HOL Light and Isabelle.

Dimensions 8 and 24 were solved (Viazovska; Cohn, Kumar, Miller, Radchenko and Viazovska; Ann. of Math. 185, 2017) with the Cohn–Elkies bound: if a Schwartz function $f$ on $\mathbb R^n$ has $f(0)=\hat f(0)>0$, $\hat f\ge 0$ and $f(x)\le 0$ for $|x|\ge r$, then every packing has density
$$\Delta\le \operatorname{vol}B^n_{r/2}.$$

## How the known proof works

- A partition of space (Marchal cells in the revised proof, decomposition stars in the original) and a cell cluster inequality reduce the problem to a local annulus inequality: for packings $V$ in $\{2\le\|x\|\le 2.52\}$, $\sum_{v\in V}(2.52-\|v\|)/0.52\le 12$, with at most 15 points.
- By compactness a counterexample can be taken in a special ("contravening") form, which gives a tame plane graph; a computer lists them all (18 762 in the revised proof).
- For each graph, linear relaxations are shown infeasible (some $10^5$ linear programs in the original proof, 43 078 in the formal proof); several hundred nonlinear inequalities, split into more than 23 000 cases, are proved by interval arithmetic.
- The many cases come from local maxima close to the global one; Boerdijk's pentagonal prism arrangement needed a separate paper.

## Background

- Kepler stated the conjecture in 1611; it is part of Hilbert's 18th problem. L. Fejes Tóth (1953) proposed the first programme aimed at reducing the problem to finitely many variables.
- Cohn notes that linear programming bounds do not seem sharp in any dimension $n>2$ other than 8 and 24; the three-point bound of Cohn, de Laat and Salmon (2022) gives 0.770271 in dimension 3.

## Where to start

- [An overview of the Kepler conjecture](https://arxiv.org/abs/math/9811071), T. C. Hales, 1998: history, strategy and why the problem is hard.
- [A formal proof of the Kepler conjecture](https://arxiv.org/abs/1501.02155), T. Hales et al., 2015: Section 4.2 outlines the revised proof; Sections 5, 7 and 9 the three computations.
- [A conceptual breakthrough in sphere packing](https://arxiv.org/abs/1611.01685), H. Cohn, 2016: the linear programming bound and Viazovska's construction.

Prerequisites: Voronoi and Delaunay decompositions, planar graphs, linear programming, interval arithmetic; for the Viazovska route, Fourier analysis and modular forms.

## References

- Thomas C. Hales, “A proof of the Kepler conjecture,” Annals of Mathematics 162 (2005), 1065–1185. <https://doi.org/10.4007/annals.2005.162.1065>
- Thomas Hales et al., “A formal proof of the Kepler conjecture,” Forum of Mathematics, Pi 5 (2017), e2. <https://arxiv.org/abs/1501.02155>

Further references:

- T. C. Hales, “An overview of the Kepler conjecture,” arXiv:math/9811071 (1998). <https://arxiv.org/abs/math/9811071>
- T. C. Hales, Dense Sphere Packings: A Blueprint for Formal Proofs, London Math. Soc. Lecture Note Series 400, Cambridge University Press (2012): the revised proof. <https://doi.org/10.1017/CBO9781139193894>
- H. Cohn, “A conceptual breakthrough in sphere packing,” Notices Amer. Math. Soc. 64 (2017), 102–115. <https://arxiv.org/abs/1611.01685>
- M. Viazovska, “The sphere packing problem in dimension 8,” Annals of Mathematics 185 (2017), 991–1015. <https://arxiv.org/abs/1603.04246>
- H. Cohn and N. Elkies, “New upper bounds on sphere packings I,” Annals of Mathematics 157 (2003), 689–714. <https://arxiv.org/abs/math/0110009>
- H. Cohn, A. Kumar, S. D. Miller, D. Radchenko and M. Viazovska, “The sphere packing problem in dimension 24,” Annals of Mathematics 185 (2017), 1017–1033. <https://arxiv.org/abs/1603.06518>
- R. Li, “Dual linear programming bounds for sphere packing via discrete reductions,” Advances in Mathematics 460 (2024), 110043. <https://arxiv.org/abs/2206.09876>
- H. Cohn, D. de Laat and A. Salmon, “Three-point bounds for sphere packing,” arXiv:2206.15373 (2022). <https://arxiv.org/abs/2206.15373>

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

Mathlib has Euclidean balls and their volumes (`EuclideanSpace.volume_ball`), the Fourier transform with one-dimensional Poisson summation (`Real.tsum_eq_tsum_fourier_of_rpow_decay`), and modular forms with Eisenstein series (`ModularForm`, `EisensteinSeries`). It has `Filter.limsup`, which the official statement uses to define density, but no sphere packings (the statement defines them), no Voronoi or Delaunay decompositions, no Cohn–Elkies bound and no Kepler theorem.

---

*Description and Desired outcome are the proposer's text. The other sections were written by the organizers from the literature.*
