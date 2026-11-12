# 86 · Ulam Floating Problem perimetral density 1/3,1/4,1/5

## From the proposer

- **Area:** Geometric Analysis/Convex Analysis/Dynamical Systems
- **Tracks:** Analysis, Geometry

### Description

The Ulam Floating Problem, first proposed by the Scottish book, has been solved in perimetral density (the waterline cuts the arclength into equal pieces) for 1/2,1/3,1/4,1/5,1/6,1/7,1/8, and, although the proofs haven't been released yet, the 1/10 case. For 1/2, it can be a shape other than a disk, but for 1/n where n>2, it has been proven to be rigid (a disk). There is a current bottleneck in how these are proven; the proofs rely on symmetries and don't generalize well to larger n based on the limitations of symmetries.

### Desired outcome

I would like to see a new framework for solving this problem that is less constrained by symmetries and can generalize to larger n values. If possible, I would like to see some useful math strategies come out of this, just as solving this problem helped develop the Zindler Carousel formulation which has been useful in the past, maybe this can happen again.

### References

https://arxiv.org/html/2607.08338v1#bib.bib8 1/8 & 3/8 cases
https://arxiv.org/pdf/2604.10330 1/6 case
https://matwbn.icm.edu.pl/ksiazki/sm/sm7/sm7112.pdf 1/2 case

## AI-generated notes

<!-- status: Partly solved -->

- **Status:** Only the disk floats in every orientation at perimetral density 1/3, 1/4 (Bracho–Montejano–Oliveros 2004), 1/5, 2/5 (same authors, 2001–2004) and 1/6 (Asipchuk–Kosmakov–Zatitskii, IMRN 2026); 1/8 and 3/8 only for centrally symmetric bodies (same authors, arXiv 2026, not refereed); 1/7 and general 1/n are open.
- **Task:** A method for rigidity at perimetral density 1/n that does not rely on symmetry reductions and extends to larger n.
- **Key reference:** [O. Asipchuk, M. Kosmakov, P. Zatitskii, “Rigidity in the planar Ulam floating body problem with perimetral density σ=1/6”, Int. Math. Res. Not. IMRN 2026(18), rnag203](https://arxiv.org/abs/2604.10330)
- **Lean:** No official statement.

### Notes

- The Description overstates what is known: no source was found for 1/7 or for the announced 1/10 case, and the 1/8 result assumes central symmetry and is not refereed.
- For 1/5 and 2/5 the 2004 paper gives only an outline, with details in the 2001 paper and Oliveros's thesis; the 1/6 paper describes these results as “providing numerical evidence”, the 1/8 paper as proved.

### The result

A planar body $K$ floats in equilibrium in an orientation if the centres of mass of $K$ and of its submerged part lie on a line orthogonal to the waterline. If this holds in every orientation, the waterline chords have constant length and cut $\partial K$ in a fixed ratio $\sigma:(1-\sigma)$, the perimetral density (Auerbach 1938). For $K$ strictly convex with $C^1$ boundary, perimeter $P$ and arc-length parametrization $\gamma$, floating at $\sigma=1/N$ is equivalent to
$$|\gamma(t+P/N)-\gamma(t)|=\ell\quad\text{for all }t,$$
so the points $\gamma(t+(i-1)P/N)$ form a moving equilateral $N$-gon, a Zindler carousel (Bracho–Montejano–Oliveros; Theorem 2 of the key reference). At $\sigma=1/2$ non-circular solutions exist (Zindler 1921, Auerbach 1938). Theorem 1 of the key reference: such a $K$ floating in every orientation at $\sigma=1/6$ is a disk.

### How the known proof works

- §§1–2.1: the angles of the carousel satisfy $\dot x_i=\sin\alpha_{i-1}-\sin\alpha_i$ (Theorem 4); for $N=6$, $x_1+x_3+x_5=x_2+x_4+x_6=2\pi$ forces each hexagon, hence $\partial K$, to be centrally symmetric (Lemmas 5–6, Corollary 7).
- §§2.2–3: two angles then obey a Hamiltonian system with $H=\sin x+\sin y-\sin(x+y)$, a quarter of the hexagon's area (Remark 10), and period $\pi\sqrt{3/2}<T(H)<6$ (Proposition 13). A non-disk $K$ with rotation group of order $2k$ has $P/(2k)=m\,T(H)$; $12\le P\le2\pi(1+\sqrt2)$ then forces $k=m=1$ and $T(H)\ge6$.
- §4: for larger $N$ the $\alpha_i$ are not determined by the $x_j$ and no two-variable reduction is expected.

### Background

- Ulam's question (Scottish Book, Problem 19) has a negative answer at density 1/2 in every dimension $d\ge3$ (Ryabogin, Annals 2022) and a positive one for origin-symmetric convex bodies at density 1/2 (Florentin–Schütt–Werner–Zhang 2022).
- Wegner (2003) found non-circular planar solutions at some physical densities other than 1/2 (a different parameter). Tabachnikov (2006) treats the same curves as bicycle curves; the circle deforms infinitesimally with rotation number $\rho$ iff $n\tan(\pi\rho)=\tan(n\pi\rho)$ for some $n\ge2$ (Theorem 7).

### Where to start

- [Rigidity in the planar Ulam floating body problem with perimetral density σ=1/6](https://arxiv.org/abs/2604.10330), O. Asipchuk, M. Kosmakov, P. Zatitskii, 2026: the full proof; §4 on what fails for larger N.
- [Carousels, Zindler curves and the floating body problem](https://www.matem.unam.mx/~luis/pdfs/volantin1.pdf), J. Bracho, L. Montejano, D. Oliveros, 2004: carousels, Auerbach's theorems, the 1/3 and 1/4 cases, the five-chair outline (§6).
- [Tire track geometry: variations on a theme](https://arxiv.org/abs/math/0405445), S. Tabachnikov, 2004: half-page proofs for 1/3 and 1/4 (§4) and the infinitesimal condition (§5).

Prerequisites: plane convex curves, planar Hamiltonian systems and period functions, Fourier series.

### References, with links

- O. Asipchuk, M. Kosmakov, and P. Zatitskii, “Rigidity in the planar Ulam floating body problem with perimetral densities σ=1/8, 3/8 under central symmetry,” arXiv:2607.08338 (2026). The 1/8 and 3/8 cases. <https://arxiv.org/abs/2607.08338>
- O. Asipchuk, M. Kosmakov, and P. Zatitskii, “Rigidity in the planar Ulam floating body problem with perimetral density σ=1/6,” Int. Math. Res. Not. IMRN 2026(18), rnag203; arXiv:2604.10330. The 1/6 case. <https://arxiv.org/abs/2604.10330>
- H. Auerbach, “Sur un problème de M. Ulam concernant l'équilibre des corps flottants,” Studia Math. 7 (1938), 121–142. The 1/2 case. <https://matwbn.icm.edu.pl/ksiazki/sm/sm7/sm7112.pdf>

### Further references

- J. Bracho, L. Montejano, D. Oliveros, “Carousels, Zindler curves and the floating body problem,” Period. Math. Hungar. 49(2) (2004), 9–23. <https://doi.org/10.1007/s10998-004-0519-6>
- J. Bracho, L. Montejano, D. Oliveros, “A classification theorem for Zindler carrousels,” J. Dyn. Control Syst. 7(3) (2001), 367–384. <https://doi.org/10.1023/A:1013099830164>
- S. Tabachnikov, “Tire track geometry: variations on a theme,” Israel J. Math. 151 (2006), 1–28. <https://arxiv.org/abs/math/0405445>
- F. Wegner, “Floating bodies of equilibrium,” Stud. Appl. Math. 111(2) (2003), 167–183. <https://arxiv.org/abs/physics/0203061>
- D. Ryabogin, “A negative answer to Ulam's Problem 19 from the Scottish Book,” Ann. of Math. 195(3) (2022), 1111–1150. <https://arxiv.org/abs/2102.01787>
- D. I. Florentin, C. Schütt, E. M. Werner, N. Zhang, “Convex floating bodies of equilibrium,” Proc. Amer. Math. Soc. 150(7) (2022), 3037–3048. <https://arxiv.org/abs/2010.09006>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for a method that works for larger n, and no source states the general case as a conjecture.

#### Related Lean formalizations

- `Ulam.theorem_1` in [lean-eval](https://github.com/leanprover/lean-eval/blob/85a88c37f80170d9f08651dc63ce6b81a8a48cb9/LeanEval/ConvexGeometry/Ulam.lean): a Lean statement of Ryabogin's counterexample to Ulam's problem in dimensions 3 and higher, at density 1/2 (statement only).

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `EuclideanSpace ℝ (Fin 2)`, `StrictConvex`, `ConvexBody`, `ContDiff`, `deriv`, `Function.Periodic`, `Metric.closedBall` and `eVariationOn` (length of a curve), which suffice to state the carousel form: a $C^1$ unit-speed periodic parametrization of the boundary of a strictly convex body with $|\gamma(t+P/n)-\gamma(t)|$ constant bounds a disk. Centres of mass can be written as set averages (`MeasureTheory.average`, notation `⨍ x in s, x`), but Mathlib has no perimeter of a convex body and no notion of floating in equilibrium.
