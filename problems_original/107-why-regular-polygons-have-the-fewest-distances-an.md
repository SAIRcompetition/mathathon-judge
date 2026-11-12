# Problem 107

> Verbatim copy of one row of the Mathathon problem sheet. The text under each heading is the cell text, unchanged. See [README.md](README.md).

## Problem ID

107

## Title/name of problem

Why regular polygons have the fewest distances: an illustrated guide to Altman's theorem

## Short description of problem (100 words or less)

Erdős conjectured, and Altman proved in 1963, that the vertices of a convex n-gon determine at least ⌊n/2⌋ distinct distances; for odd n, only the regular n-gon has exactly that many. For even n ≥ 8, Fishburn showed in 1995 that the extremal polygons are the regular n-gon and the regular (n+1)-gon minus a vertex. The proofs use only elementary geometry but are dense with indices and cases, so few people know why the answers are what they are. The barrier to entry is low: everything needs only high-school geometry.

## Submitted Area

Discrete geometry (Euclidean plane geometry and extremal combinatorics)

## Proposed Tracks

Geometry, Combinatorics

## Reference/source material

1. E. Altman, "On a problem of P. Erdős", Amer. Math. Monthly 70 (1963) 148–157, doi:10.2307/2312883. The Theorem (p. 149), proved with Lemmas 1 and 2 (pp. 149–153); the theorem on regular (2N+1)-gons and Lemma 3 (pp. 153–157).
2. E. Altman, "Some theorems on convex polygons", Canad. Math. Bull. 15 (1972) 329–340, doi:10.4153/CMB-1972-060-0. A second proof of the bound: §III, Lemma 1 and Theorem 2; §IV, Theorem 3.
3. P. Fishburn, "Convex polygons with few intervertex distances", Comput. Geom. 5 (1995) 65–93, doi:10.1016/0925-7721(94)00020-V. Theorem 2, the even case, proved in §2 (hexagons) and §3 (n ≥ 8).

## Desired outcome

An explainer that a strong high-school student can follow, built around three pieces: (1) an interactive page where readers drag the vertices of a convex polygon and watch distances merge and split; (2) an illustrated walk-through of Altman's proof, following the chain of ever shorter chords that forces ⌊n/2⌋ distances; (3) a visual account of why only the regular n-gon is extremal for odd n, and where the regular (n+1)-gon minus a vertex comes from for even n. In the 40-hour round a team could present the illustrated proof and a prototype; the two-month round would deliver the polished explainer and its code.

Low barrier to entry: the statements are elementary, the two Altman papers are 10 and 12 pages, and small cases can be explored with a ruler or a few lines of code. Teams without research experience can make real progress in 40 hours, and stronger teams can go on to Fishburn's even case. The topic is visual by nature, which suits interactive explainers and animations.
