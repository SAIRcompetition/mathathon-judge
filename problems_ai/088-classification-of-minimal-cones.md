# 88 · Classification of minimal cones.

## From the proposer

- **Area:** GMT and PDE
- **Tracks:** Analysis

### Description

A possible project is to extend Taylor’s classification of singularities for minimizing surfaces from R3 to Rn, beginning with R4. A second direction is to study anisotropic energies, where the angles between the planes need not be the same.

### Desired outcome

Hopefully, we could classify the minimizing cones in Rn. I suspect that there will be n+1 many cones. Additionally, I am interested to know the other minimal candidates.

### References

(https://www.jstor.org/stable/1970950 ) The Structure of Singularities in Solutions to Ellipsoidal Variational Problems With Constraints in R3 by Jean Taylor, Vol. 103, No. 3 (May, 1976).

## AI-generated notes

<!-- status: Open -->

- **Status:** Taylor (1976) classified the two-dimensional minimal cones in $\mathbb R^3$; in $\mathbb R^4$ the two-dimensional ones include continuous families (Liang 2013), and the piecewise linear three-dimensional cones are classified up to two undecided candidates (Valfells, Math. Scand. 2024, corrected 2025).
- **Task:** New minimal cones, or a classification of minimal cones, in $\mathbb R^4$ and beyond, possibly for anisotropic energies.
- **Key reference:** [G. David, “Hölder regularity of two-dimensional almost-minimal sets in $\mathbb R^n$”, Ann. Fac. Sci. Toulouse Math. 18 (2009), 65–246](https://arxiv.org/abs/0806.1645)
- **Lean:** No official statement.

### Notes

- The proposer's reference is Taylor's companion paper on ellipsoidal integrands (Ann. of Math. 103, 541–546); the classification for area is in the main paper, pp. 489–539.
- There is no finite list of two-dimensional minimal cones in $\mathbb R^4$; a count of $n+1$ fits the five known three-dimensional piecewise linear cones in $\mathbb R^4$, but $\mathbb R^3$ has three two-dimensional cones.

### The result

A closed $E\subset\mathbb R^n$ with locally finite $\mathcal H^d$ measure is $d$-dimensional Almgren minimal if $\mathcal H^d(E\setminus\varphi(E))\le\mathcal H^d(\varphi(E)\setminus E)$ for every Lipschitz $\varphi$ equal to the identity outside a compact ball $B$ with $\varphi(B)\subset B$. Blow-up limits of minimal sets are minimal cones.

Taylor (1976): up to isometry, the reduced two-dimensional minimal cones in $\mathbb R^3$ are a plane, $Y$ (three half-planes meeting at $120^\circ$) and $T$ (the cone over the edges of a regular tetrahedron centred at $0$), and every two-dimensional minimal set in $\mathbb R^3$ is locally $C^{1,\alpha}$-diffeomorphic to one of them.

In $\mathbb R^n$ (David 2009, Proposition 14.1), such a cone meets $S^{n-1}$ in finitely many great circles and arcs, meeting in threes at $120^\circ$, each of length at least $l_0(n)>0$; which nets give minimal cones is unknown for $n\ge4$. New examples in $\mathbb R^4$: unions of two almost orthogonal planes, a one-parameter family (Liang 2013), and $Y\times Y$ (Liang 2014).

In codimension one, the cone $S_k$ over the $(k-2)$-skeleton of a regular $k$-simplex is minimal in $\mathbb R^k$ (Lawlor–Morgan 1994), as is the cone over the $(n-2)$-skeleton of the cube in $\mathbb R^n$, $n\ge4$ (Brakke 1991). Among three-dimensional piecewise linear cones in $\mathbb R^4$, $\mathbb R^3$, $Y\times\mathbb R^2$, $T\times\mathbb R$, $S_4$ and the cube cone are minimal and all other candidates but two are excluded (Valfells 2024, corrected 2025). Products $S_m\times S_n$ are minimal (Huang–Liang–Zhang, preprint 2026).

### How the known proof works

- David §§6–14: $K=E\cap\partial B(0,1)$ is locally close to a line or a $Y$ (Proposition 8.3, Theorem 10.1), hence a union of $C^1$ arcs (Proposition 12.27), and comparison with harmonic graphs forces great-circle arcs (§13).
- In $\mathbb R^3$ the admissible nets are the great circle, the $Y$-net and the edge nets of eight polyhedra (Lamarle, Heppes); seven of these polyhedral cones can be deformed to films of less area, so Taylor obtained $T$ by elimination; Lawlor–Morgan later proved it minimal by paired calibrations.

### Background

- Two planes in $\mathbb R^4$ whose characteristic angles sum to less than $2\pi/3$ are not minimal (Lawlor 1994); Liang (2013, Remark 1.4) lists the remaining range as open.
- Anisotropic energies: for immiscible fluids with interface costs $a_{ij}$, Lawlor–Morgan (Chapter 2) prove polyhedral cones minimizing by finding points with $|p_i-p_j|=a_{ij}$; the cone over the edges of the cube in $\mathbb R^3$ minimizes when opposite interfaces cost $\sqrt2$ times adjacent ones. Chapter 3 treats general norms.
- Entire two-dimensional minimal sets in $\mathbb R^3$ are a plane, $Y$ or $T$ (Caselli–Lihn, preprint 2026).

### Where to start

- [Hölder regularity of two-dimensional almost-minimal sets in $\mathbb R^n$](https://arxiv.org/abs/0806.1645), G. David, 2008: Part C (§§8–14), structure of two-dimensional minimal cones.
- [Almgren-minimality of unions of two almost orthogonal planes in $\mathbb R^4$](https://arxiv.org/abs/1103.1468), X. Liang, 2011: §1 surveys $\mathbb R^4$ and explains why calibrations do not apply.
- [Minimal piecewise linear cones in $\mathbb R^4$](https://arxiv.org/abs/2208.13718), Á. Valfells, 2022: seven pages; read with the 2025 correction.
- [Soap film cones](https://kenbrakke.com/cones/cones.htm), K. Brakke: Surface Evolver models of the $\mathbb R^3$ candidates and of the films that beat seven of them.

Prerequisites: Hausdorff measure, rectifiability, the monotonicity formula, calibrations.

### References, with links

- J. E. Taylor, “The structure of singularities in solutions to ellipsoidal variational problems with constraints in $\mathbb R^3$,” Annals of Mathematics 103(3) (1976), 541–546. <https://www.jstor.org/stable/1970950>

### Further references

- J. E. Taylor, “The structure of singularities in soap-bubble-like and soap-film-like minimal surfaces,” Ann. of Math. 103(3) (1976), 489–539. <https://doi.org/10.2307/1970949>
- X. Liang, “Almgren-minimality of unions of two almost orthogonal planes in $\mathbb R^4$,” Proc. Lond. Math. Soc. 106(5) (2013), 1005–1059. <https://arxiv.org/abs/1103.1468>
- X. Liang, “Almgren and topological minimality for the set $Y\times Y$,” J. Funct. Anal. 266(10) (2014), 6007–6054. <https://arxiv.org/abs/1203.0564>
- G. Lawlor, F. Morgan, “Paired calibrations applied to soap films, immiscible fluids, and surfaces or networks minimizing other norms,” Pacific J. Math. 166(1) (1994), 55–83. <https://doi.org/10.2140/pjm.1994.166.55>
- K. A. Brakke, “Minimal cones on hypercubes,” J. Geom. Anal. 1(4) (1991), 329–338. <https://doi.org/10.1007/BF02921309>
- Á. Valfells, “Minimal piecewise linear cones in $\mathbb R^4$,” Math. Scand. 130(1) (2024), 149–160 <https://arxiv.org/abs/2208.13718>; Corrections, Math. Scand. 131(2) (2025) <https://doi.org/10.7146/math.scand.a-156628>
- S. Huang, X. Liang, Z. Zhang, “Almgren minimality of products of simplex-skeleton cones,” arXiv:2610.27845 (2026). <https://arxiv.org/abs/2610.27845>
- M. Caselli, Z. Lihn, “Tetrahedral points and classification of Almgren-minimizing sets in $\mathbb R^3$,” arXiv:2610.24362 (2026). <https://arxiv.org/abs/2610.24362>

### Lean

#### Official statement

This problem has no official Lean statement: the open part has no conjectured list of cones to state, and a proof of Taylor's theorem in ℝ³ would need rectifiable sets and the monotonicity formula, which Mathlib does not have yet.

#### Mathlib

Mathlib has Hausdorff measure (`MeasureTheory.Measure.hausdorffMeasure`, notation `μH[d]`), with the Lipschitz image bound `LipschitzWith.hausdorffMeasure_image_le`, Hausdorff dimension (`dimH`), `LipschitzWith`, `Metric.closedBall` and `EuclideanSpace ℝ (Fin n)`; Almgren minimality and the cones $Y$ and $T$ can be written down directly with these. It has no rectifiable sets, densities or monotonicity formula, varifolds, currents or calibrations.
