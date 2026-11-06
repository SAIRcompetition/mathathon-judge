# 17 · Hodge modules

- **Status:** Theory and direct image theorem by M. Saito (Publ. RIMS 1988); mixed Hodge modules in a second paper (1990).
- **Task:** Visualizations that make Saito's theory and its main theorem understandable.
- **Tracks:** Geometry · **Area:** Algebraic geometry
- **Key reference:** [M. Saito, “Modules de Hodge polarisables”, Publ. RIMS 24 (1988), 849–995](https://doi.org/10.2977/prims/1195173930)
- **Lean:** No official statement.

## Notes

- The page cites only the first of Saito's two papers; mixed Hodge modules and the structure theorem are in “Mixed Hodge modules”, Publ. RIMS 26 (1990), 221–333.

## Description

Hodge modules were introduced by Saito, in connection with the most general form of decomposition theorem for projective direct image. But the original papers are hard to read, and very few people understand and use them. It would be good to have a better understanding or simplified proof.

## Desired outcome

Visualizations to better understand an existing result.

## The result

A polarizable Hodge module of weight $w$ on a complex manifold $X$ is a filtered regular holonomic $\mathcal D_X$-module with a $\mathbb Q$-structure (a perverse sheaf $K$), defined by induction on the dimension of the support: its nearby cycles along every local function, graded by the monodromy filtration, must again be Hodge modules. Saito's direct image theorem: for a projective morphism $f\colon X\to Y$ and $M$ polarizable of weight $w$, each $H^if_*M$ is polarizable of weight $w+i$, and relative hard Lefschetz holds. Hence the decomposition theorem for every perverse sheaf $K$ underlying such an $M$:
$$Rf_*K\;\simeq\;\bigoplus_i {}^p\!R^if_*K\,[-i].$$
This contains as a special case the decomposition theorem of Beilinson–Bernstein–Deligne–Gabber (1982), which was proved by reduction to positive characteristic.

## How the known proof works

- Proof by induction on the dimension of the support $Z$ of $M$; the classical inputs are Zucker's $L^2$ Hodge theory on punctured curves and Schmid's asymptotics of variations of Hodge structure.
- Part 1: a curve mapping to a point (only $\mathbb P^1$ is needed), from Zucker's results.
- Part 2: $\dim f(Z)\ge 1$. For a local function $g$ on $Y$, nearby and vanishing cycles commute with $f_*$; a weight spectral sequence, controlled by the joint action of $\ell$ and the monodromy logarithm $N$, gives strictness and the recursive conditions.
- Part 3: $\dim f(Z)=0$. Blow up a generic codimension-2 linear subspace to get a pencil $\tilde X\to\mathbb P^1$, apply Parts 1–2, and use weak Lefschetz for the polarization.
- The structure theorem (Hodge modules with strict support $Z$ = polarized variations on a dense open subset of $Z$) uses the Cattani–Kaplan–Schmid and Kashiwara–Kawai degeneration results; extending a generic variation to a Hodge module is the difficult half.

## Background

- De Cataldo and Migliorini (2005) gave a more elementary Hodge-theoretic proof of the decomposition theorem for $K=\mathbb Q_X[\dim X]$.
- Expositions: Schnell (2014); Saito's own surveys; Peters–Steenbrink, *Mixed Hodge Structures*, Ch. 14; the Sabbah–Schnell “MHM Project”; de Cataldo–Migliorini's survey (2009).
- The theory extends to all semisimple representations of the fundamental group (T. Mochizuki; Sabbah, Bourbaki exposé 1050). Applications include Saito's vanishing theorem and Kollár's conjecture on higher direct images.

## Where to start

- [An overview of Morihiko Saito's theory of mixed Hodge modules](https://arxiv.org/abs/1405.3096), C. Schnell, 2014: definitions, examples, and the structure of the two main proofs (§§12–18).
- [The decomposition theorem, perverse sheaves and the topology of algebraic maps](https://arxiv.org/abs/0712.0349), M. A. de Cataldo, L. Migliorini, 2007: what the decomposition theorem says and how it is used.
- [The MHM Project](https://perso.pages.math.cnrs.fr/users/claude.sabbah/MHMProject/mhm.html), C. Sabbah, C. Schnell: detailed book draft.
Prerequisites: perverse sheaves, $\mathcal D$-modules and Riemann–Hilbert, variations of Hodge structure.

## References

- Morihiko Saito. Modules de Hodge Polarisables. <https://doi.org/10.2977/prims/1195173930>

Further references:

- M. Saito, “Mixed Hodge modules,” Publ. RIMS 26 (1990), 221–333. <https://doi.org/10.2977/prims/1195171082>
- C. Schnell, “An overview of Morihiko Saito's theory of mixed Hodge modules,” arXiv:1405.3096 (2014). <https://arxiv.org/abs/1405.3096>
- M. A. de Cataldo, L. Migliorini, “The decomposition theorem, perverse sheaves and the topology of algebraic maps,” Bull. Amer. Math. Soc. 46 (2009), no. 4, 535–633. <https://doi.org/10.1090/S0273-0979-09-01260-9>
- M. A. de Cataldo, L. Migliorini, “The Hodge theory of algebraic maps,” Ann. Sci. École Norm. Sup. 38 (2005), 693–750. <https://arxiv.org/abs/math/0306030>

## Lean

### Official statement

This problem has no official Lean statement: a faithful statement needs mixed Hodge modules, which Mathlib does not have yet.

### Mathlib

Mathlib has derived categories (`DerivedCategory`), t-structures (`CategoryTheory.Triangulated.TStructure`) and sheaf cohomology on sites (`CategoryTheory.Sheaf.H`). It has no perverse sheaves, $\mathcal D$-modules, nearby cycles or variations of Hodge structure, so Hodge modules are out of reach.

---

*Description and Desired outcome are the proposer's text. The other sections were written by the organizers from the literature.*
