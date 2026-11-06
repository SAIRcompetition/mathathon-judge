# 68 · A simpler proof of the Kepler conjecture

- **Status:** Proved by T. C. Hales with S. P. Ferguson (announced 1998, published 2005–2006) using large computations; formally verified by the Flyspeck project (published 2017).
- **Task:** A proof with less computation, or a Viazovska-style proof in dimension 3.
- **Tracks:** Algebra/Number Theory, Geometry · **Area:** Discrete Geometry, Number Theory, Optimization
- **Key reference:** [T. C. Hales et al., A revision of the proof of the Kepler conjecture, Discrete Comput. Geom. 44 (2010), 1–34](https://arxiv.org/abs/0902.0350)
- **Lean:** Official statement.
- **See also:** [Problem 15](15-keplers-theorem.md)

## Notes

- Problems 15 and 68 share this theorem and its official Lean statement; 15 asks for an exposition or an extension, 68 for a proof with less computation.
- The method of the dimension 8 and 24 proofs, the Cohn–Elkies linear programming bound, cannot prove the Kepler conjecture: its numerically optimized value in dimension 3 is about 0.7797, and R. Li (Adv. Math., 2024) proved that it stays away from $\pi/\sqrt{18}$.

## Description

The problem is to prove the optimal sphere packing arrangement in three dimensions. The original proof relies on reducing the problem to a nonlinear optimization problem in ~150 variables.  The final solution involved numerically solving around 100,000 auxiliary linear optimization problems. Using modular forms, Maryna Viazovska provided a relatively short proof of the analogous problem in dimension 8 and, with several collaborators, in dimension 24.

## Desired outcome

A modified proof of the Kepler conjecture with less reliance on numerical verification (e.g. reduction to a simpler optimization problem) or a structurally simpler proof of the conjecture using different techniques altogether in the spirit of Maryna Viazovska's work in 8 dimensions.

## The result

No packing of congruent balls in $\mathbb R^3$ has density above $\pi/\sqrt{18}\approx 0.74048$; the official Lean statement says the supremum of packing densities equals $\pi/\sqrt{18}$. Hales's proof (Ann. of Math. 162, 2005; with Ferguson, Discrete Comput. Geom. 36, 2006) leads to a global optimization problem in nearly 150 variables, settled by large computations. Dimensions 8 and 24 were solved (Viazovska; Cohn, Kumar, Miller, Radchenko and Viazovska; Ann. of Math. 185, 2017) with the Cohn–Elkies bound: if a Schwartz function $f$ on $\mathbb R^n$ has $f(0)=\hat f(0)>0$, $\hat f\ge 0$ and $f(x)\le 0$ for $|x|\ge r$, then every packing has density
$$\Delta\le \operatorname{vol}B^n_{r/2}.$$

## How the known proof works

- Reduction: a partition of space (decomposition stars, later Marchal cells) turns the density bound into a local inequality on finitely many balls near a central ball.
- Combinatorics: each potential counterexample gives a tame plane graph; a computer lists them all (about 5000 in the original proof, 18 762 in the revised archive).
- Linear programming: for each graph, linear relaxations of the nonlinear conditions are shown infeasible (some $10^5$ programs in the original, 43 078 in the formal proof).
- Several hundred nonlinear inequalities in at most six variables are proved by interval arithmetic (more than 23 000 cases after splitting domains).
- The many cases come from local maxima close to the global one; Boerdijk's pentagonal prism arrangement needed a separate paper.

## Background

- Fejes Tóth (1953) proposed the first programme aimed at reducing the problem to finitely many variables, with weighted averages of up to 13 Voronoi cells.
- The revised proof (Hales, "Dense Sphere Packings", 2012) uses Marchal's partition (Math. Z., 2011), which is better adapted to formalization; the computations remain.
- Cohn notes that linear programming bounds do not seem sharp in any dimension $n>2$ other than 8 and 24. The three-point bound of Cohn, de Laat and Salmon (2022) gives 0.770271 in dimension 3, still above 0.74048.
- Viazovska's magic function for $E_8$ comes from the Eisenstein series $E_2,E_4,E_6$ and the theta series of $\mathbb Z$ (Cohn's survey, Section 7).

## Where to start

- [A conceptual breakthrough in sphere packing](https://arxiv.org/abs/1611.01685), H. Cohn, 2016: the linear programming bound and Viazovska's construction, with the table of bounds in dimensions 1–36.
- [Dual linear programming bounds for sphere packing via discrete reductions](https://arxiv.org/abs/2206.09876), R. Li, 2022: the proof that the Cohn–Elkies bound cannot reach the Kepler density.
- [Three-point bounds for sphere packing](https://arxiv.org/abs/2206.15373), H. Cohn, D. de Laat and A. Salmon, 2022: the next level of the bound hierarchy and its numbers in dimension 3.

Prerequisites: Fourier analysis and Poisson summation, modular forms (for the Viazovska route), linear and semidefinite programming, Voronoi decompositions.

## References

- T. Hales, “A proof of the Kepler conjecture,” Annals of Mathematics. <https://doi.org/10.4007/annals.2005.162.1065>
- M. Viazovska, “The sphere packing problem in dimension 8,” Annals of Mathematics. <https://arxiv.org/abs/1603.04246>

Further references:

- H. Cohn and N. Elkies, “New upper bounds on sphere packings I,” Annals of Mathematics 157 (2003), 689–714. <https://arxiv.org/abs/math/0110009>
- H. Cohn, A. Kumar, S. D. Miller, D. Radchenko and M. Viazovska, “The sphere packing problem in dimension 24,” Annals of Mathematics 185 (2017), 1017–1033. <https://arxiv.org/abs/1603.06518>
- R. Li, “Dual linear programming bounds for sphere packing via discrete reductions,” Advances in Mathematics 460 (2024), 110043. <https://arxiv.org/abs/2206.09876>
- H. Cohn, D. de Laat and A. Salmon, “Three-point bounds for sphere packing,” arXiv:2206.15373 (2022). <https://arxiv.org/abs/2206.15373>
- T. Hales et al., “A formal proof of the Kepler conjecture,” Forum of Mathematics, Pi 5 (2017), e2. <https://arxiv.org/abs/1501.02155>

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

Mathlib has Euclidean balls and their volumes (`EuclideanSpace.volume_ball`), the Fourier transform with one-dimensional Poisson summation (`Real.tsum_eq_tsum_fourier_of_rpow_decay`), and modular forms with Eisenstein series (`ModularForm`, `EisensteinSeries`). It has no sphere packings (the official statement defines them), no Cohn–Elkies bound and no Kepler theorem.

---

*Description and Desired outcome are the proposer's text. The other sections were written by the organizers from the literature.*
