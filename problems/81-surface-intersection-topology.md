# 81 · Surface intersection topology

- **Status:** Topology-guaranteed surface–surface intersection is an active CAD topic; the reference is a 2025 paper on curve tracing for it.
- **Task:** Explain the method's guarantee, illustrate a restricted case, and show its limits.
- **Tracks:** Geometry, Computation/Applied Math · **Area:** Computational geometry, algebraic geometry, numerical analysis
- **Key reference:** [B. Zhang, J.-S. Cheng, Y.-S. Liu and Z. Zhang, "Topology guaranteed and error controlled curve tracing for parametric surface-surface intersection", Comput. Aided Geom. Design 118 (2025), 102432](https://doi.org/10.1016/j.cagd.2025.102432)
- **Lean:** No official statement.

## Notes

- The key reference is not open access; the text here uses only its title and bibliographic data. Two of its authors (J.-S. Cheng, B. Zhang) also wrote an earlier paper on topology-driven approximation of rational SSI (Cheng, Zhang, Xiao and Li, ACM Trans. Graph. 2023).

## Description

Two curved CAD surfaces can intersect in several disconnected curves, including small closed loops. Explain a published method that preserves the topology of the intersection while controlling approximation error. Identify the assumptions needed for its guarantee. Use simple surface families to show how tangency and singular points complicate the problem, and why a small geometric error alone does not establish correct connectivity.

## Desired outcome

An accessible explanation of the guarantee, an illustrated restricted case, and examples that expose the method’s limits.

## The result

Surface–surface intersection (SSI): given parametric surfaces $S_1(u,v)$ and $S_2(s,t)$, such as rational or B-spline patches, compute $S_1\cap S_2$. The equation $S_1(u,v)=S_2(s,t)$ is three equations in four unknowns, so the solution is a curve in $(u,v,s,t)$-space; it may have several branches, small closed loops, tangential contacts and singular points. In this literature a topology guarantee means that the computed curve is homeomorphic to the true one (as in Shen, Cheng and Jia), and error control means a proven bound on the distance between them (as in Mukundan et al.). By its title, the reference gives a curve-tracing method with both properties. The proposer wants its assumptions explained, a worked restricted case, and examples showing that small error alone does not fix connectivity.

## Background

- Methods are broadly classed as lattice, marching and subdivision methods. Marching can "stray" or "loop" when branches come close; Mukundan et al. (2004) trace with a validated interval ODE solver that prevents this and gives a verified error bound in model space.
- Bartoň, Elber and Hanniel (2011), for $n$ equations in $n+1$ unknowns such as SSI, subdivide until a no-loop test and a single-component test certify one curve component per cell, trace each numerically, and merge.
- Cheng, Zhang, Xiao and Li (2023) classify SSI topology inside 4D interval boxes as mixtures of four fundamental cases, covering cusps, tangencies, tiny loops and self-intersections; Yang, Jia and Yan (2023) give a topology-guaranteed B-spline SSI algorithm compared with SISL, OCCT and ACIS.
- Li, Yang and Jia (Comput.-Aided Des. 2026) survey the field.

## Where to start

- [Tracing surface intersections with validated ODE system solver](https://diglib.eg.org/handle/10.2312/sm20041397), H. Mukundan et al., 2004: straying, looping and validated error bounds.
- [Homeomorphic approximation of the intersection curve of two rational surfaces](https://arxiv.org/abs/1203.0442), L. Shen, J.-S. Cheng and X. Jia, 2012: an open-access method with a topology guarantee when one surface can be implicitized.
- [Topology driven approximation to rational surface-surface intersection](https://doi.org/10.1145/3592452), J.-S. Cheng et al., 2023: a topological case analysis by two of the reference's authors.

Prerequisites: Bézier and B-spline surfaces, the implicit function theorem, singular points of real algebraic curves, interval arithmetic, numerical continuation.

## References

- <https://www.sciencedirect.com/science/article/pii/S0167839625000214>

Further references:

- H. Mukundan, K. H. Ko, T. Maekawa, T. Sakkalis and N. M. Patrikalakis, "Tracing surface intersections with validated ODE system solver", ACM Symposium on Solid Modeling and Applications (2004), 249–254. <https://doi.org/10.2312/sm.20041397>
- M. Bartoň, G. Elber and I. Hanniel, "Topologically guaranteed univariate solutions of underconstrained polynomial systems via no-loop and single-component tests", Comput.-Aided Des. 43 (2011), 1035–1044. <https://doi.org/10.1016/j.cad.2011.03.009>
- L. Shen, J.-S. Cheng and X. Jia, "Homeomorphic approximation of the intersection curve of two rational surfaces" (2012). <https://arxiv.org/abs/1203.0442>
- J.-S. Cheng, B. Zhang, Y. Xiao and M. Li, "Topology driven approximation to rational surface-surface intersection via interval algebraic topology analysis", ACM Trans. Graph. 42 (2023), no. 4. <https://doi.org/10.1145/3592452>
- J. Yang, X. Jia and D.-M. Yan, "Topology guaranteed B-spline surface/surface intersection", ACM Trans. Graph. 42 (2023), no. 6. <https://doi.org/10.1145/3618349>

## Lean

### Official statement

This problem has no official Lean statement: it asks for an explanation of a geometric algorithm and its guarantee, not for the proof of one theorem.

### Mathlib

Mathlib has `Polynomial`, `MvPolynomial`, `Homeomorph`, the implicit function theorem (`ImplicitFunctionData`) and exact interval arithmetic on `NonemptyInterval`. It has no parametric or B-spline surfaces and no validated floating-point interval methods.

---

*Description and Desired outcome are the proposer's text. The other sections were written by the organizers from the literature.*
