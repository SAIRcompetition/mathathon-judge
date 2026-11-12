# 1 · Iskovskikh classification of 3-folds

## From the proposer

- **Area:** algebraic geometry
- **Tracks:** Geometry

### Description

This is a famous old result, but a very complicated one and it may be a good idea to revisit it. Riemann surfaces fall into 3 classes - 1)  complex projective line also called Riemann sphere, 2) elliptic curves 3) curves of genus 2 and more, with spherical, flat and hyperbolic geometry respectively. In complex dimension two, the analogue of this is Kodaira's classification of surfaces, and the analogue of Riemann sphere are Del Pezzo surfaces. In dimension 3 and more they are called Fano 3,4,5..folds. Iskovskikh classified Fano 3-folds in the seventies. 

### Desired outcome

The problem is to learn what Fano means, understand classification in Dimensions 1,2. Check classification in dimension 3, and finally see what prevents these methods from extending to higher dimensions.

### References

https://doi.org/10.1070/IM1977v011n03ABEH001733

### Reference links

- <https://doi.org/10.1070/IM1977v011n03ABEH001733>

## AI-generated notes

<!-- status: Proved -->

- **Status:** Classified: Picard rank 1 by Iskovskikh (1977–78), Picard rank ≥ 2 by Mori and Mukai (1981, erratum 2003); 105 deformation families.
- **Task:** Understand dimensions 1–2, check dimension 3, explain higher-dimensional obstacles.
- **Key reference:** [V. A. Iskovskikh, “Fano 3-folds. I”, Math. USSR-Izv. 11 (1977), 485–527](https://doi.org/10.1070/IM1977v011n03ABEH001733)
- **Lean:** No official statement.

### Notes

- Iskovskikh classified Picard rank 1 only; Picard rank ≥ 2 is due to Mori and Mukai (1981).
- The page cites only Part I (index ≥ 2 and the hyperelliptic case); the main index-1 series is in Part II (1978).

### The result

A Fano manifold is a smooth projective variety $X$ with $-K_X$ ample. In dimension 1 the only one is $\mathbb P^1$. In dimension 2 (del Pezzo surfaces) there are 10 deformation families: $\mathbb P^2$, $\mathbb P^1\times\mathbb P^1$, the blow-up $F_1$ of $\mathbb P^2$ in a point, and one family $S_d$ of each degree $1\le d\le 7$. In dimension 3 there are exactly 105 families. Of these, 17 have Picard rank $\rho=1$: $\mathbb P^3$, the quadric, 5 del Pezzo threefolds of index 2, and 10 families of index 1 with genus
$$g=-\tfrac12K_X^3+1\in\{2,\dots,10,12\}.$$
The other 88 have $\rho\ge 2$ (Mori–Mukai). Every Fano 3-fold with $\rho\ge 6$ is $S\times\mathbb P^1$ for a del Pezzo surface $S$, so $\rho\le 10$.

### How the known proof works

- Shokurov's theorem: if $-K_X=\iota H$, then $|H|$ contains a smooth divisor; the classification rests on this.
- Iskovskikh's Part I treats index $\iota\ge 2$ and the hyperelliptic case; Part II the main series $X_{2g-2}\subset\mathbb P^{g+1}$, the trigonal case ($g\le 10$) and threefolds containing a line.
- For $g\ge 7$, double projection from a line (lines exist by Shokurov) gives a del Pezzo fibration ($g=7$), a conic bundle ($g=8$) or a birational map to a simpler Fano 3-fold ($g=9,10,12$).
- For $\rho\ge 2$, Mori and Mukai analyse extremal contractions; every $X$ with $\rho\ge 4$ is the blow-up of a curve on another Fano 3-fold.
- Gaps were found later: a $\rho=4$ family missed by Mori–Mukai (erratum 2003), and a trigonal genus-8 threefold with $\rho>1$ omitted by Iskovskikh (1980).

### Background

- Fano studied these varieties through canonical curve sections; 16 of the 17 rank-one families were known to him.
- Other proofs and expositions: Mukai's vector-bundle method (rank one); Prokhorov's lecture notes (2025), a proof for $\rho=1$ via Sarkisov links; Coates–Corti–Galkin–Kasprzyk (2016), new models of all 105 families; the Fanography tables.
- Higher dimensions: smooth Fano $n$-folds form a bounded family (Kollár–Miyaoka–Mori 1992). In dimension 4 only index ≥ 2 is classified (35 families); there are 124 smooth toric Fano 4-folds, and Øbro's algorithm classifies smooth toric Fano varieties up to dimension 7.

### Where to start

- [Fano threefolds](https://arxiv.org/abs/2511.22197), Yu. Prokhorov, 2025: complete modern proof for $\rho=1$, with exercises.
- [Quantum periods for 3-dimensional Fano manifolds](https://arxiv.org/abs/1303.3288), T. Coates, A. Corti, S. Galkin, A. Kasprzyk, 2013: one short section per family.
- [Fanography](https://www.fanography.info/), P. Belmans: table of invariants of the 105 families.

Prerequisites: divisors and linear systems, Riemann–Roch, del Pezzo and K3 surfaces, basic Mori theory.

### Further references

- V. A. Iskovskikh, “Fano 3-folds. II,” Math. USSR-Izv. 12 (1978), 469–506. <https://doi.org/10.1070/IM1978v012n03ABEH001994>
- S. Mori and S. Mukai, “Classification of Fano 3-folds with B₂ ≥ 2,” Manuscripta Math. 36 (1981), 147–162; erratum 110 (2003), 407. <https://doi.org/10.1007/BF01170131>
- Yu. Prokhorov, “Fano threefolds,” Proc. Steklov Inst. Math. 328, Suppl. 1 (2025). <https://arxiv.org/abs/2511.22197>
- T. Coates, A. Corti, S. Galkin, A. Kasprzyk, “Quantum periods for 3-dimensional Fano manifolds,” Geom. Topol. 20 (2016), 103–256. <https://arxiv.org/abs/1303.3288>
- J. Kollár, Y. Miyaoka, S. Mori, “Rational connectedness and boundedness of Fano manifolds,” J. Differential Geom. 36 (1992), 765–779. <https://doi.org/10.4310/jdg/1214453188>

### Lean

#### Official statement

This problem has no official Lean statement: the classification describes the deformation families of Fano threefolds (smooth projective threefolds with ample anticanonical bundle) through invariants such as the Picard rank and the anticanonical degree, and Mathlib has no canonical sheaf, ample line bundles, Picard group or intersection numbers of a variety, which cannot be defined faithfully within a statement file.

#### Mathlib

Mathlib has schemes, `AlgebraicGeometry.Proj`, proper and smooth morphisms (`AlgebraicGeometry.IsProper`, `AlgebraicGeometry.Smooth`) and Kähler differentials (`KaehlerDifferential`). It has no canonical sheaf of a scheme, no ample line bundles and no intersection numbers or Picard rank of a variety, so Fano varieties cannot yet be defined.
