# 72 · Cayley's formula

- **Status:** First proved by C. W. Borchardt (1860) with determinants; Cayley's paper is from 1889, and many proofs exist.
- **Task:** Visualized bijections, a formalized Prüfer correspondence, and why the proofs agree.
- **Tracks:** Combinatorics · **Area:** Enumerative combinatorics
- **Key reference:** [P. J. Cameron, Enumerative Combinatorics 10: Cayley's Theorem, LTCC lecture notes (2013)](https://www.ltcc.ac.uk/media/london-taught-course-centre/documents/Notes-for-lecture-on-2-December---10.pdf)
- **Lean:** Official statement; a Lean proof already exists.

## Description

Cayley’s formula says there are n^(n-2) labeled trees on n vertices. Aigner and Ziegler’s Proofs from THE BOOK gives four proofs. Participants could build a unified framework relating them (Prüfer codes, Joyal’s doubly-rooted trees, double counting, linear algebra via the Matrix-Tree Theorem).

## Desired outcome

Interactive visualization of bijections, formal verification of the Prüfer correspondence, and an explanation of why all proofs agree.

## The result

The number of trees on the labelled vertex set $\{1,\dots,n\}$ is
$$T(n)=n^{n-2}\qquad(n\ge 1),$$
equivalently there are $n^{n-1}$ rooted labelled trees. Borchardt first proved it in 1860 with a determinant method; Cayley's "A theorem on trees" (Quart. J. Pure Appl. Math. 23, 1889, 376–378) gave a proof in the language of polynomials, and Prüfer (Arch. Math. Phys. 27, 1918) gave the bijection now called the Prüfer code. The official Lean statement counts the trees `SimpleGraph.IsTree` on `Fin n` for every $n\ge 1$.

## How the known proof works

- Prüfer: delete the leaf with the smallest label and record its neighbour, until two vertices remain; this is a bijection from trees to $\{1,\dots,n\}^{n-2}$, and vertex $i$ appears $\deg(i)-1$ times in the code.
- Joyal: a tree with an ordered pair of marked vertices (a vertebrate) is a linear order of rooted trees along the path between them; reading that linear order as a permutation gives the functional digraph of a map $[n]\to[n]$, so $n^2T(n)=n^n$.
- Matrix-tree theorem: the number of spanning trees of a graph equals any cofactor of its Laplacian (proof by Cauchy–Binet); for $K_n$ the reduced Laplacian $nI_{n-1}-J_{n-1}$ has determinant $n^{n-2}$.
- Lagrange inversion: the exponential generating function of rooted trees satisfies $R(x)=x\,e^{R(x)}$, and inversion gives $n^{n-1}$ rooted trees.
- Pitman's double counting: building a rooted tree by adding $n-1$ edges, each from any vertex to the root of another component, has $n^{n-1}(n-1)!$ executions, and each rooted tree arises from exactly $(n-1)!$ of them.

## Background

- Aigner and Ziegler's Proofs from THE BOOK collects several proofs in the chapter "Cayley's formula for the number of trees" (2018 edition, pp. 235–240).
- Pitman's proof comes from his study of coalescent random forests (J. Combin. Theory Ser. A, 1999); stopping the process early counts rooted forests.
- Joyal's argument is part of his theory of species (Adv. Math. 42, 1981); it identifies vertebrates with nonempty linear orders of rooted trees and maps with permutations of rooted trees.
- Other short proofs have appeared in the American Mathematical Monthly (Moon 1963, Avron–Dershowitz 2016, Shukla 2018, Zucker 2024, Feldman 2026).
- Problem 73 (Lagrange inversion) also covers tree enumeration.

## Where to start

- [Enumerative Combinatorics 10: Cayley's Theorem](https://www.ltcc.ac.uk/media/london-taught-course-centre/documents/Notes-for-lecture-on-2-December---10.pdf), P. J. Cameron, 2013: six pages with the Prüfer, Joyal, matrix-tree and Lagrange inversion proofs side by side.
- [Partition functions of discrete coalescents: from Cayley's formula to Frieze's ζ(3) limit theorem](https://arxiv.org/abs/1407.8538), L. Addario-Berry, 2014: Section 2.1 explains Pitman's double-counting proof in detail.
- [Counting fixed-point-free Cayley permutations](https://arxiv.org/abs/2507.09304), G. Cerbai and A. Claesson, 2025: Section 2 states Joyal's bijection explicitly for a totally ordered vertex set.

Prerequisites: trees and their basic properties, bijections, determinants; exponential generating functions for the species and Lagrange inversion proofs.

## References

- Cayley, “A theorem on trees,” Quarterly Journal of Mathematics 23 (1889)
- Aigner, Ziegler, Proofs from THE BOOK, chapter “Cayley’s formula for the number of trees” <https://doi.org/10.1007/978-3-662-57265-8_33>
- Joyal, “Une théorie combinatoire des séries formelles,” Advances in Mathematics 42 (1981) <https://doi.org/10.1016/0001-8708(81)90052-9>

Further references:

- J. Pitman, “Coalescent random forests,” Journal of Combinatorial Theory, Series A 85 (1999), 165–193. <https://doi.org/10.1006/jcta.1998.2919>
- L. Addario-Berry, “Partition functions of discrete coalescents: from Cayley's formula to Frieze's ζ(3) limit theorem,” arXiv:1407.8538 (2014). <https://arxiv.org/abs/1407.8538>
- G. Cerbai and A. Claesson, “Counting fixed-point-free Cayley permutations,” Proceedings of the Edinburgh Mathematical Society 69 (2026), 1205–1238. <https://arxiv.org/abs/2507.09304>
- V. Feldman, “Cayley's formula from middle school math,” Amer. Math. Monthly 133 (2026), 185–188. <https://arxiv.org/abs/2408.04676>

## Lean

### Official statement

`AtlasKnownTheorems.CayleyTreeFormula.CayleyTreeFormulaStatement`, `AtlasKnownTheorems.CayleyTreeFormula.cayleyTreeFormula` in [`lean/MathathonProblems/P72_CayleyFormula.lean`](lean/MathathonProblems/P72_CayleyFormula.lean).

```lean
def CayleyTreeFormulaStatement : Prop :=
  ∀ n : Nat, 1 ≤ n → Nat.card (LabeledTree n) = n ^ (n - 2)
```

```lean
theorem cayleyTreeFormula : CayleyTreeFormulaStatement
```

Source: <https://www.proofatlas.ai/sources/cayley-tree-formula/commits/f31d011b2b8860bfc9990007697b773f9bc96831/AtlasKnownTheorems/CayleyTreeFormula/Basic.lean> (adapted as described in the file header).

A Lean proof of this statement already exists: <https://www.proofatlas.ai/sources/cayley-tree-formula/commits/f31d011b2b8860bfc9990007697b773f9bc96831/AtlasKnownTheorems/CayleyTreeFormula/Basic.lean>. A Lean-verified claim must not use or copy it.

### Related Lean formalizations

- [The Cauchy–Binet formula, Kirchhoff's matrix-tree theorem and Cayley's formula](https://palomar-registry.org/entry?id=PALOMAR-2026-10-16-000019&version=1), Palomar registry (Lean-checked, trust level high): a proof of Cayley's formula through the matrix-tree theorem.
- Prove2Me lists three more Lean proofs: [from *Proofs from THE BOOK*](https://prove2.me/theorems/e98f7159-97e9-4cdb-84dc-66ce9af61c17), [Theorem 5.39](https://prove2.me/theorems/ab510481-8872-4008-beb2-2ac62e71a9f9), [Theorem 3.7.5 of Gross–Yellen](https://prove2.me/theorems/39b5d9c8-654c-4a35-acbd-121dec07d776).

Projects outside the Palomar registry are described as their authors describe them; the organizers have not checked their proofs.

### Mathlib

Mathlib has trees (`SimpleGraph.IsTree`), the Laplacian matrix (`SimpleGraph.lapMatrix`) and the existence of spanning trees (`SimpleGraph.Connected.exists_isTree_le`). It has no Prüfer code, no matrix-tree theorem and no Cayley formula.

---

*Description and Desired outcome are the proposer's text. The other sections were written by the organizers from the literature.*
