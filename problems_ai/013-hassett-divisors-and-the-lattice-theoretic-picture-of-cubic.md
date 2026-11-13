# 13 · Hassett divisors and the lattice-theoretic picture of cubic fourfold rationality

## From the proposer

- **Area:** Algebraic geometry (Hodge theory and lattice theory; cubic fourfolds and K3 surfaces)
- **Tracks:** Geometry

### Description

A smooth cubic fourfold is special if it contains an algebraic surface not homologous to a complete intersection. Hassett showed these form a countable family of divisors C_d in the moduli space, nonempty iff d > 6 and d ≡ 0, 2 (mod 6), and that C_d has an associated K3 surface iff d is not divisible by 4, 9, or any odd prime ≡ 2 (mod 3). Intersections of these divisors are governed by lattice embeddings. The problem is to understand this lattice picture and its link to rationality.

### Desired outcome

An open-source implementation of the algorithm for the irreducible components of intersections of two Hassett divisors, validated against published cases (for example, five components for C8 ∩ C14 and eight for C8 ∩ C26). Also an interactive visualization of the divisors and their intersections, and a written explainer connecting the lattice picture to K3 associations and rationality questions.

### References

1. B. Hassett, “Special cubic fourfolds,” Compositio Mathematica 120 (2000), 1–23. See Theorem 1.0.1 (the divisors C_d; nonempty iff d > 6 and d ≡ 0, 2 mod 6) and Section 5 (associated K3 surfaces).

2. S. Yang and X. Yu, “On lattice polarizable cubic fourfolds,” arXiv:2103.09132. See Section 7, Algorithm 7.6 (irreducible components of C_{d₁} ∩ C_{d₂}) and Theorems 7.9 and 7.11 (worked examples C₂₀ ∩ C₃₈ and C₂₀ ∩ C₁₂).

3. S. Zucker, “The Hodge conjecture for cubic fourfolds,” Compositio Mathematica 34 (1977), 199–209. See Theorem 3.2.

## AI-generated notes

<!-- status: Not a single theorem -->

- **Status:** Hassett's description of the divisors $\mathcal C_d$ is proved (2000); rationality of very general cubic fourfolds is open.
- **Task:** Open-source code for components of $\mathcal C_{d_1}\cap\mathcal C_{d_2}$, plus visualization and explainer.
- **Key reference:** [S. Yang and X. Yu, “On lattice polarizable cubic fourfolds”, arXiv:2103.09132 (2021)](https://arxiv.org/abs/2103.09132)
- **Lean:** No official statement.

### Notes

- The two validation cases on the page come from papers it does not list: five components of $\mathcal C_8\cap\mathcal C_{14}$ (Auel–Bernardara–Bolognesi–Várilly-Alvarado 2014) and eight of $\mathcal C_8\cap\mathcal C_{26}$ (Awada, arXiv:1910.10182).
- An OpenAI preprint (September 2026, not refereed) claims that for every sufficiently large admissible $d$ a very general cubic in $\mathcal C_d$ is irrational, which would disprove Kuznetsov's rationality conjecture.

### The result

For a smooth cubic fourfold $X$, the algebraic lattice $A(X)=H^4(X,\mathbb Z)\cap H^{2,2}(X)$ is positive definite and contains $h^2$. $X$ is special of discriminant $d$ if $A(X)$ has a rank-2 primitive sublattice $K_d\ni h^2$ with $\mathop{\mathrm{disc}}K_d=d$. Hassett (Compositio 2000) proved that these cubics form an irreducible divisor $\mathcal C_d$ of the 20-dimensional moduli space, nonempty if and only if

$$d\gt6,\qquad d\equiv 0,2 \pmod 6,$$

and that $X$ has an associated K3 surface if and only if $d$ is also not divisible by 4, 9 or an odd prime $p\equiv 2\pmod 3$. Yang and Yu show that the components of $\mathcal C_{d_1}\cap\mathcal C_{d_2}$ are the loci $\mathcal C_M$ of rank-3 lattices $M$ that contain both rank-2 lattices, and give an algorithm listing them.

### Background

- Algorithm 7.6 of Yang–Yu: (1) write the Gram matrix $M_\tau$ of the rank-3 lattice spanned by $h^2$ and generators of the two rank-2 lattices, with one free entry $\tau$; (2) keep the finitely many $\tau$ with $\det M_\tau\gt0$; (3) discard lattices with roots (vectors of square 2); (4) add the overlattices in which both rank-2 lattices stay primitive and no roots appear; (5) output isometry classes. Worked examples: $\mathcal C_{20}\cap\mathcal C_{38}$ (17 components) and $\mathcal C_{20}\cap\mathcal C_{12}$ (6 components, one from an overlattice).
- The lattice facts rest on Voisin's Torelli theorem and Nikulin's theory of lattice embeddings; Zucker (1977) proved the Hodge conjecture for cubic fourfolds.
- Kuznetsov conjectured that a cubic fourfold is rational if and only if it has an associated K3 surface; the Hodge-theoretic and derived-category notions of association give the same set of cubics. Known rational cubics (as of 2021) lie in $\mathcal C_{14}$, $\mathcal C_{26}$, $\mathcal C_{38}$, $\mathcal C_{42}$ and in subloci of $\mathcal C_8$, $\mathcal C_{18}$, $\mathcal C_{20}$.
- Yang–Yu show that the Fermat cubic lies in every $\mathcal C_d$, a new proof that $\mathcal C_d\neq\emptyset$ for all $d\gt6$, $d\equiv0,2\pmod 6$.

### Where to start

- [Cubic fourfolds, K3 surfaces, and rationality questions](https://arxiv.org/abs/1601.05501), B. Hassett, 2016: survey of special cubics, associated K3 surfaces (Theorem 23) and rationality.
- [On lattice polarizable cubic fourfolds](https://arxiv.org/abs/2103.09132), S. Yang, X. Yu, 2021: Section 2 (lattices and glue) and Section 7 (the algorithm and two worked examples).
- [Rational fibered cubic fourfolds](https://arxiv.org/abs/1910.10182), H. Awada, 2019: components of $\mathcal C_8\cap\mathcal C_{26}$, $\mathcal C_8\cap\mathcal C_{38}$ and $\mathcal C_{18}\cap\mathcal C_{d}$, test cases for an implementation.

Prerequisites: integral lattices and discriminant groups, Hodge structures of weight 4, basic moduli of hypersurfaces.

### References, with links

- B. Hassett, “Special cubic fourfolds,” Compositio Mathematica 120 (2000), 1–23. See Theorem 1.0.1 (the divisors C_d; nonempty iff d > 6 and d ≡ 0, 2 mod 6) and Section 5 (associated K3 surfaces). <https://doi.org/10.1023/A:1001706324425>
- S. Yang and X. Yu, “On lattice polarizable cubic fourfolds,” arXiv:2103.09132. See Section 7, Algorithm 7.6 (irreducible components of C_{d₁} ∩ C_{d₂}) and Theorems 7.9 and 7.11 (worked examples C₂₀ ∩ C₃₈ and C₂₀ ∩ C₁₂). <https://arxiv.org/abs/2103.09132>
- S. Zucker, “The Hodge conjecture for cubic fourfolds,” Compositio Mathematica 34 (1977), 199–209. See Theorem 3.2.

### Further references

- B. Hassett, “Cubic fourfolds, K3 surfaces, and rationality questions,” in Rationality Problems in Algebraic Geometry, Lecture Notes in Math. 2172, Springer (2016), 29–66. <https://arxiv.org/abs/1601.05501>
- A. Auel, M. Bernardara, M. Bolognesi, A. Várilly-Alvarado, “Cubic fourfolds containing a plane and a quintic del Pezzo surface,” Algebraic Geometry 1 (2014), 181–193. <https://doi.org/10.14231/ag-2014-010>
- H. Awada, “Rational fibered cubic fourfolds,” arXiv:1910.10182. <https://arxiv.org/abs/1910.10182>
- OpenAI, “Irrational cubic fourfolds with geometric K3 categories,” preprint (2026). <https://github.com/openai/math/blob/main/preprints/Irrational-cubic-fourfolds-with-geometric-K3-categories-September-24-2026/Irrational-cubic-fourfolds-with-geometric-K3-categories-September-24-2026.pdf>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for an implementation of Yang and Yu's algorithm, a visualization and an explainer, and the theorems behind them (Hassett's description of the divisors $\mathcal C_d$ and of their intersections) are about cubic fourfolds, their Hodge structures and their moduli space, which Mathlib does not have; a statement about lattices alone would not express them.

#### Mathlib

Mathlib has quadratic forms with discriminants and isometries (`QuadraticForm`, `QuadraticForm.discr`, `QuadraticMap.IsometryEquiv`) and lattices in real vector spaces (`IsZLattice`). It has no cubic hypersurfaces, Hodge structures, moduli spaces or discriminant-group (Nikulin) theory.
