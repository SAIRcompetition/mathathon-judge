# 107 · Why regular polygons have the fewest distances: an illustrated guide to Altman's theorem

## From the proposer

- **Area:** Discrete geometry (Euclidean plane geometry and extremal combinatorics)
- **Tracks:** Geometry, Combinatorics

### Description

Erdős conjectured, and Altman proved in 1963, that the vertices of a convex n-gon determine at least ⌊n/2⌋ distinct distances; for odd n, only the regular n-gon has exactly that many. For even n ≥ 8, Fishburn showed in 1995 that the extremal polygons are the regular n-gon and the regular (n+1)-gon minus a vertex. The proofs use only elementary geometry but are dense with indices and cases, so few people know why the answers are what they are. The barrier to entry is low: everything needs only high-school geometry.

### Desired outcome

An explainer that a strong high-school student can follow, built around three pieces: (1) an interactive page where readers drag the vertices of a convex polygon and watch distances merge and split; (2) an illustrated walk-through of Altman's proof, following the chain of ever shorter chords that forces ⌊n/2⌋ distances; (3) a visual account of why only the regular n-gon is extremal for odd n, and where the regular (n+1)-gon minus a vertex comes from for even n. In the 40-hour round a team could present the illustrated proof and a prototype; the two-month round would deliver the polished explainer and its code.

Low barrier to entry: the statements are elementary, the two Altman papers are 10 and 12 pages, and small cases can be explored with a ruler or a few lines of code. Teams without research experience can make real progress in 40 hours, and stronger teams can go on to Fishburn's even case. The topic is visual by nature, which suits interactive explainers and animations.

### References

1. E. Altman, "On a problem of P. Erdős", Amer. Math. Monthly 70 (1963) 148–157, doi:10.2307/2312883. The Theorem (p. 149), proved with Lemmas 1 and 2 (pp. 149–153); the theorem on regular (2N+1)-gons and Lemma 3 (pp. 153–157).
2. E. Altman, "Some theorems on convex polygons", Canad. Math. Bull. 15 (1972) 329–340, doi:10.4153/CMB-1972-060-0. A second proof of the bound: §III, Lemma 1 and Theorem 2; §IV, Theorem 3.
3. P. Fishburn, "Convex polygons with few intervertex distances", Comput. Geom. 5 (1995) 65–93, doi:10.1016/0925-7721(94)00020-V. Theorem 2, the even case, proved in §2 (hexagons) and §3 (n ≥ 8).

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved: E. Altman (1963) showed that a convex $n$-gon has at least $\lfloor n/2\rfloor$ distinct distances between vertices, with equality for odd $n$ only for the regular $n$-gon; P. Fishburn (1995) characterized the extremal polygons for even $n$.
- **Task:** An illustrated, interactive explainer of Altman's proof and of the extremal polygons that a strong high-school student can follow.
- **Key reference:** [E. Altman, “On a problem of P. Erdős”, Amer. Math. Monthly 70 (1963), 148–157](https://doi.org/10.2307/2312883)
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- For even $n$ the characterization needs $n\ge8$: Fishburn lists four quadrilaterals with two distances and three hexagons with three.
- Erdős's stronger conjecture (1946), that some single vertex has at least $\lfloor n/2\rfloor$ distinct distances to the others, is still open; it is not Altman's theorem.

### The result

For a finite $P\subset\mathbb R^2$ let $D(P)=\lbrace|pq|:p,q\in P,\ p\ne q\rbrace$, and let $P$ be the vertex set of a convex $n$-gon, $n\ge3$.

- Altman (1963): $|D(P)|\ge\lfloor n/2\rfloor$, attained by the regular $n$-gon. For odd $n$, $|D(P)|=\frac{n-1}2$ if and only if $P$ is a regular $n$-gon.
- Fishburn (1995): for even $n\ge8$, $|D(P)|=\frac n2$ if and only if $P$ is a regular $n$-gon or a regular $(n+1)$-gon with one vertex removed. Three hexagons have exactly three distances and four quadrilaterals exactly two. He also finds 15 pentagons with three distances and five heptagons with four: the regular octagon minus a vertex and the four ways of removing two vertices from a regular nonagon.

### How the known proof works

The outline follows the Lean proof in plby/lean-proofs (see Lean below), whose lemmas are named after Altman's Lemmas 1 and 2; we did not compare it line by line with the 1963 paper.

- Crossing chords: if $A,B,C,D$ are vertices in cyclic order, the diagonals $AC$ and $BD$ cross, so $|AC|+|BD|\gt|AB|+|CD|$ (triangle inequality through the crossing point). In particular a chord nested strictly inside a longest chord is shorter than it.
- Lemma 1: label the vertices $A_0,\dots,A_{n-1}$ so that the side $A_0A_{n-1}$ is a longest distance. For $p\lt y\le x\lt q\lt n-1$, at least one of $|A_pA_x|$, $|A_qA_y|$ is strictly shorter than $|A_pA_q|$.
- Lemma 2: the chords $A_0A_{n-1}$, $A_1A_{n-2}$, followed by chords obtained by moving one endpoint inward at a time, choosing by Lemma 1 a move that shortens the chord, form a chain of $n-2$ chords of strictly decreasing length. So a convex $n$-gon whose longest distance is a side has at least $n-2$ distances ($n-1$ if that side is the unique longest).
- If no side is a longest distance, cut along a longest diagonal $A_pA_q$. The two pieces, with $x+1$ and $n-x+1$ vertices, have $A_pA_q$ as a longest side, so they give at least $x$ and $n-x-1$ distances, all in $D(P)$; and $\max(x,n-x-1)\ge\lfloor n/2\rfloor$.

### Background

- Erdős (1946) asked for the minimum number of distinct distances among $n$ points in the plane; for convex position he conjectured the single-vertex version above. The best lower bound we found for that version is $(\frac{13}{36}+\varepsilon)n-O(1)$ (Nivasch, Pach, Pinchasi, Zerbib 2013).
- Altman (1972) gives a second proof of the bound through inequalities between diagonal lengths of convex polygons.
- Erdős and Fishburn (1996) continue the classification with convex nonagons having five distances.

### Where to start

- [On a problem of P. Erdős](https://doi.org/10.2307/2312883), E. Altman, 1963: the original ten pages.
- [Erdos93.lean in plby/lean-proofs](https://github.com/plby/lean-proofs/blob/1d7b3f00780b85ed0462e79a1cd5650ee9055655/src/v4.29.1/ErdosProblems/Erdos93.lean): a complete, lemma-by-lemma machine-readable version of the argument.
- [Convex polygons with few intervertex distances](https://doi.org/10.1016/0925-7721(94)00020-V), P. Fishburn, 1995: the even case, §2 for hexagons and §3 for $n\ge8$.
- [The number of distinct distances from a vertex of a convex polygon](https://arxiv.org/abs/1207.1266), G. Nivasch, J. Pach, R. Pinchasi, S. Zerbib, 2013: context and the open single-vertex problem.

Prerequisites: high-school geometry (triangle inequality, angles in convex polygons, regular polygons), induction.

### References, with links

- E. Altman, "On a problem of P. Erdős", Amer. Math. Monthly 70 (1963) 148–157, doi:10.2307/2312883. The Theorem (p. 149), proved with Lemmas 1 and 2 (pp. 149–153); the theorem on regular (2N+1)-gons and Lemma 3 (pp. 153–157). <https://doi.org/10.2307/2312883>
- E. Altman, "Some theorems on convex polygons", Canad. Math. Bull. 15 (1972) 329–340, doi:10.4153/CMB-1972-060-0. A second proof of the bound: §III, Lemma 1 and Theorem 2; §IV, Theorem 3. <https://doi.org/10.4153/CMB-1972-060-0>
- P. Fishburn, "Convex polygons with few intervertex distances", Comput. Geom. 5 (1995) 65–93, doi:10.1016/0925-7721(94)00020-V. Theorem 2, the even case, proved in §2 (hexagons) and §3 (n ≥ 8). <https://doi.org/10.1016/0925-7721(94)00020-V>

### Further references

- P. Erdős, “On sets of distances of $n$ points”, Amer. Math. Monthly 53 (1946), 248–250. <https://doi.org/10.2307/2305092>
- P. Erdős, P. Fishburn, “Convex nonagons with five intervertex distances”, Geom. Dedicata 60 (1996), 317–332. <https://doi.org/10.1007/BF00147368>
- G. Nivasch, J. Pach, R. Pinchasi, S. Zerbib, “The number of distinct distances from a vertex of a convex polygon”, J. Comput. Geom. 4 (2013), 1–12. <https://arxiv.org/abs/1207.1266>

### Lean

#### Official statement

`Erdos93.erdos_93` in [`lean/MathathonProblems/P107_AltmanDistinctDistances.lean`](lean/MathathonProblems/P107_AltmanDistinctDistances.lean).

```lean
theorem erdos_93 (A : Finset ℝ²) (hA : ConvexIndep (A : Set ℝ²)) :
    A.card / 2 ≤ distinctDistances A
```

This is Altman's bound: $n$ points in convex position in the plane determine at least $\lfloor n/2\rfloor$ distinct distances. The characterizations of the extremal polygons (Altman for odd $n$, Fishburn for even $n\ge8$) are not included.

Source: <https://github.com/google-deepmind/formal-conjectures/blob/a425ca3eb797fe927cb88c950565fdcbbbbada70/FormalConjectures/ErdosProblems/93.lean>, <https://github.com/google-deepmind/formal-conjectures/blob/a425ca3eb797fe927cb88c950565fdcbbbbada70/FormalConjecturesForMathlib/Geometry/Metric.lean>, <https://github.com/google-deepmind/formal-conjectures/blob/a425ca3eb797fe927cb88c950565fdcbbbbada70/FormalConjecturesForMathlib/Geometry/2d.lean> (Apache License 2.0). Adapted: the theorem and the definitions it uses are copied unchanged, the definitions moved into `namespace Erdos93`, with `ℝ²` as a local notation.

#### Existing Lean proofs

- `Erdos93.altman_erdos` in [plby/lean-proofs](https://github.com/plby/lean-proofs/blob/1d7b3f00780b85ed0462e79a1cd5650ee9055655/src/v4.29.1/ErdosProblems/Erdos93.lean) (Lean and Mathlib v4.29.1) proves, with its own definition of the distance set, that $n\ge3$ convex-independent points in a real two-dimensional inner product space determine at least $\lfloor n/2\rfloor$ distinct distances; formal-conjectures links it as the formal proof of `erdos_93`, and the official statement follows from it. The file credits Altman as informal author, lists several AI systems and the user JoshuaB as formal authors, and records that the theorem depends only on the standard axioms. It was not compiled here. A Lean-verified claim must not use or copy it.

#### Related Lean formalizations

- `Erdos93.erdos_93` in [formal-conjectures](https://github.com/google-deepmind/formal-conjectures/blob/a425ca3eb797fe927cb88c950565fdcbbbbada70/FormalConjectures/ErdosProblems/93.lean): a Lean statement of Altman's bound for convex-independent finite subsets of $\mathbb R^2$, marked solved, with a link to the proof above.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `ConvexIndependent`, `convexHull`, `EuclideanSpace ℝ (Fin 2)`, similarity and congruence of indexed families of points (`Similar`, `Congruent`) and `Complex.isPrimitiveRoot_exp` (vertices of regular polygons as roots of unity). It has no convex polygons with a cyclic order of vertices, no regular polygons and no count of distinct distances.
