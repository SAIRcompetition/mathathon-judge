# 70 · Monochromatic triangles in the plane

> Everything on this page except the section **From the proposer** is AI-generated and may contain errors.

## From the proposer

- **Title:** Monochromatic Triangles in the Plane
- **Area:** Discrete Geometry
- **Tracks:** Geometry

### Description

The problem was to determine whether there is a universal constant C such that, for any n points in convex position, at most C*n pairs of points can be exactly distance 1 apart.

This problem has now been solved: no such constant exists.

### Desired outcome

Something that interested me from the Mathathon homepage was the suggestion to explain a proof via "an interactive game", as that seemed like a good challenge. It is also something that seems very possible now with coding help from AI. The construction in the cited paper my best candidate for an incredible recent result that could possibly be turned into a game.

Therefore, the creation I would like to see participants create is a playable proof. The basic goal of the game would be to guide a player towards inventing/discovering the ideas for the construction, so that they understand the full proof well afterwards.

The successful use of the medium of games may still be difficult, and it may be that the end result is more of an interactive read-through of the steps in the proof, with visuals. But for this project, I want us to explore how to use gameplay to make the understanding of this proof more accessible or efficient. Ideally, game mechanics will add to the experience.

I would prefer/recommend using Godot game engine for building the application.

### References

- The proof exposition is found in the following paper:
- Unit distances in convex polygons - Liam Kruer, Jensen Kohlmeyer, and Liam Price - <https://liamkruer.com/assets/work/erdos-96-97/96-97.pdf>

## AI-generated notes

- **Status:** Disproved in a manuscript by L. Kruer, J. Kohlmeyer and L. Price (September 2026; the authors state that the argument originated with GPT 6 Astra), not yet refereed; conjectured by Erdős and Moser (Erdős Problem #96).
- **Task:** A playable game that leads players to discover the construction.
- **Key reference:** [L. Kruer, J. Kohlmeyer, L. Price, "Unit distances in convex polygons" (2026)](https://liamkruer.com/assets/work/erdos-96-97/96-97.pdf)
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- The title "Monochromatic triangles in the plane" does not match the content, which is Erdős Problem #96 on unit distances among points in convex position.
- The result is a manuscript and has not been refereed.

### The result

Let $U_c(n)$ be the largest number of pairs at distance 1 among $n$ points in strictly convex position. Erdős and Moser conjectured $U_c(n)=O(n)$. Theorem 1.1 (Kruer, Kohlmeyer, Price): for all large $n$ there is a strictly convex $n$-point set $P$ with
$$\min\Big\{\delta_1(P),\ \frac{u(P)}{n}\Big\}\ \ge\ \tfrac14\log_2\log_2 n - C\log_2\log_2\log_2 n,$$
where $\delta_1(P)$ is the minimum number of unit-distance neighbours. The points lie in two small disks centred at $(0,\pm\tfrac12)$, and the unit-distance graph is bipartite. Hence $U_c(n)=\Omega(n\log\log n)$, and Erdős Problem #97 also fails. The best upper bound is $n\log_2 n+4n$ (Aggarwal). The official Lean statement `erdos_96` is the negation of $U_c(n)=O(n)$.

### How the known proof works

- Lemma 2.1: if a bipartite graph is realized by seed points $b_i$ of distinct moduli and unit complex numbers $w_e$ with $|b_{\ell(e)}-b_{r(e)}w_e|=1$, then all points $b_i\prod_e w_e^{a_e}$, $0\le a_e<q$, are in strictly convex position (given a support inequality and distinct products) and give at least $m(q-1)q^{m-1}$ unit pairs for $m$ edges.
- Section 3 realizes the middle levels graph of $\{1,\dots,2d-1\}$, which is $d$-regular, with seed points near $(0,\pm\tfrac12)$ given by explicit expansions in a small parameter $\varepsilon$.
- Lemma 3.4 perturbs the radii so that all bounded products of the rotations are distinct, by a mixed-derivative argument adapted from Swanepoel and Valtr.
- Section 4 deletes low-degree vertices and unites slightly rotated copies to reach every large $n$, with minimum degree $k\approx\tfrac14\log_2\log_2 n$ (taking $d=2k+1$); the paper has 7 pages.

### Background

- Earlier bounds: Füredi proved $O(n\log n)$ (1990), Brass and Pach gave a short proof, and Aggarwal (2015) proved $n\log_2 n+4n$; Edelsbrunner and Hajnal (1991) constructed $2n-7$ unit pairs.
- Erdős Problem #97 asks for a vertex with no four other vertices equidistant; Danzer and Fishburn–Reeds gave examples with three. Kruer et al. give a counterexample to #97 with at most $3432\cdot 2^{36036}$ vertices.
- The commuting-rotation method comes from Swanepoel and Valtr's work on unit distances on spheres (2004).

### Where to start

- [Unit distances in convex polygons](https://liamkruer.com/assets/work/erdos-96-97/96-97.pdf), L. Kruer, J. Kohlmeyer, L. Price, 2026: the whole proof in 7 pages; Lemma 2.1 and Theorem 1.3 are the core.
- [Erdős Problem #96](https://www.erdosproblems.com/96), T. F. Bloom: statement, history of bounds and references.
- [On unit distances in a convex polygon](https://arxiv.org/abs/1009.2216), A. Aggarwal, 2010: the upper-bound side.

Prerequisites: complex numbers as rotations, convex position and supporting lines, the middle levels of the hypercube.

### References, with links

- L. Kruer, J. Kohlmeyer, and L. Price, “Unit distances in convex polygons” (the proof exposition): <https://liamkruer.com/assets/work/erdos-96-97/96-97.pdf>

### Further references

- A. Aggarwal, “On unit distances in a convex polygon”, Discrete Math. 338 (2015), 88–92. <https://arxiv.org/abs/1009.2216>
- H. Edelsbrunner and P. Hajnal, “A lower bound on the number of unit distances between the vertices of a convex polygon”, J. Combin. Theory Ser. A 56 (1991), 312–316. <https://doi.org/10.1016/0097-3165(91)90042-F>
- K. J. Swanepoel and P. Valtr, “The unit distance problem on spheres”, in *Towards a Theory of Geometric Graphs*, Contemp. Math. 342 (2004), 273–279. <https://doi.org/10.1090/conm/342/06148>
- T. F. Bloom, Erdős Problem #96. <https://www.erdosproblems.com/96>
- T. F. Bloom, Erdős Problem #97. <https://www.erdosproblems.com/97>

### Lean

#### Official statement

`Erdos96.erdos_96` in [`lean/MathathonProblems/P70_ConvexUnitDistances.lean`](lean/MathathonProblems/P70_ConvexUnitDistances.lean).

```lean
theorem erdos_96 :
    ¬ (fun n => (maxConvexUnitDistances n : ℝ)) =O[atTop] fun n => (n : ℝ)
```

Source: <https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjectures/ErdosProblems/96.lean>, <https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjecturesForMathlib/Geometry/Metric.lean>, <https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjecturesForMathlib/Geometry/2d.lean> (adapted as described in the file header).

#### Existing Lean proofs

- [erdos-96-97-proof](https://github.com/lkruer/erdos-96-97-proof/tree/90fd28e53183f44ae8271b8e71590ed18eb1c28b) proves in Lean (`erdos_96_false`, with its own definitions) that the maximum number of unit distances among n points in convex position is not O(n). A Lean-verified claim must not use or copy it.

#### Related Lean formalizations

- [Erdős Problem 96: linearly many unit distances in convex position](https://prove2.me/theorems/8ade9b04-8ed3-4b0a-a948-9a5df9f1c637), Prove2Me: listed as disproved, with a Lean proof checked by the platform; the source repository it links to could not be opened.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `ConvexIndependent` (`Mathlib/Analysis/Convex/Independent.lean`), `convexHull`, `EuclideanSpace ℝ (Fin 2)`, `Sym2` and `SimpleGraph.UnitDistEmbedding`. It has no count of unit distances and no middle levels graph; the Lean statement defines `unitDistNum`, `ConvexIndep` and `maxConvexUnitDistances`.
