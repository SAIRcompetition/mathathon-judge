# 67 · Monsky's theorem and Stein's conjecture

- **Status:** Monsky's theorem was proved by P. Monsky (1970); Stein's conjecture (2000) for all special polygons is open, with partial cases proved.
- **Task:** A valuation-light or visual proof; a map of the special polygons covered.
- **Tracks:** Combinatorics, Geometry · **Area:** Combinatorial geometry; p-adic valuations
- **Key reference:** [P. Monsky, On dividing a square into triangles, Amer. Math. Monthly 77 (1970), 161–164](https://doi.org/10.1080/00029890.1970.11992441)
- **Lean:** Official statement; a Lean proof already exists.

## Notes

- The Description's "known methods cover only rational coordinates" refers to D. Rudenko's theorem (arXiv:1411.0285, 2014, revised 2025; no journal version found): Stein's conjecture holds for dissections in which every triangle vertex has rational coordinates. Some classes of special polygons are settled for all dissections (see Result).

## Description

Monsky (1970) proved that a square cannot be cut into an odd number of equal-area triangles, via a 2-adic valuation and a Sperner-type coloring. Stein conjectured the same for centrally symmetric polygons (proved by Monsky, 1990) and for all "special" polygons, where known methods cover only rational coordinates. The proofs are short but non-constructive and unintuitive.

## Desired outcome

A valuation-light or visual proof and clarity on which special polygons known methods cover.

## The result

Monsky's theorem: a square cannot be dissected into an odd number of triangles of equal area. The official Lean statement also contains the easy converse: the unit square is a union of $n$ triangles with pairwise disjoint interiors and equal areas if and only if $n$ is even and nonzero. Monsky (Math. Z. 205, 1990) proved the same for centrally symmetric polygons. Stein (Discrete Comput. Geom. 24, 2000) conjectured it for every special polygon: with oriented boundary, for each direction the side vectors parallel to it sum to zero. Proved cases include polyominoes (Stein 1999, Praton 2002), odd-area lattice polygons whose sides pair into parallel, equal, opposite segments (Rudenko, J. Math. Sci. 2013), and dissections with rational vertices (Rudenko, preprint).

## How the known proof works

- Extend the 2-adic valuation $\nu_2$ from $\mathbb Q$ to $\mathbb R$; this is possible by the extension theorem for valuations, which uses the axiom of choice.
- Colour $(x,y)$ with A if $\nu_2(x),\nu_2(y)>0$; with B if $\nu_2(y)\le 0$ and $\nu_2(x)>\nu_2(y)$; with C otherwise.
- A triangle with vertices of all three colours has area with $\nu_2<0$; in particular no line meets all three colours.
- A Sperner-type parity count of edges shows that every dissection of the square contains such a triangle.
- For $n$ odd every triangle has area $1/n$ and $\nu_2(1/n)=0$, a contradiction.

## Background

- Monsky's 1990 proof for centrally symmetric polygons uses the same colouring but needs a homological argument (Rudenko 2013).
- Rudenko (2013) recasts the Sperner step as the degree of the boundary's colouring map and links the colourings to tropical geometry.
- Rudenko's rational proof works with trivalent graphs carrying $\mathbb Q^2$-valued flows and uses $\nu_2$ only on $\mathbb Q$; the first arXiv version of that work points out that the colouring proof is not invariant under affine maps, although the theorem is.
- Stein surveyed the problem in "Cutting a polygon into triangles of equal areas", Math. Intelligencer 26 (2004).

## Where to start

- [On equidissection of balanced polygons](https://arxiv.org/abs/1206.4591), D. Rudenko, 2012: Section 2 gives Monsky's colouring and its key lemma in about two pages; Section 3 the degree version of the Sperner step.
- [A property of trivalent graphs related to equidissections](https://arxiv.org/abs/1411.0285), D. Rudenko, 2014, revised 2025: a four-page proof of the rational case.
- [One square and an odd number of triangles](https://doi.org/10.1007/978-3-662-57265-8_22), M. Aigner and G. M. Ziegler, Proofs from THE BOOK, 2018: an exposition of Monsky's proof.

Prerequisites: $p$-adic valuations, Sperner's lemma, basic plane geometry; simplicial homology for the 1990 proof.

## References

- P. Monsky, "On dividing a square into triangles", Amer. Math. Monthly 77(2) (1970), 161-164. <https://doi.org/10.1080/00029890.1970.11992441>
- P. Monsky, "A conjecture of Stein on plane dissections", Math. Z. 205 (1990), 583-592. <https://doi.org/10.1007/BF02571264>
- M. Aigner, G. M. Ziegler, Proofs from THE BOOK, chapter "One square and an odd number of triangles". <https://doi.org/10.1007/978-3-662-57265-8_22>

Further references:

- S. Stein, "A generalized conjecture about cutting a polygon into triangles of equal areas", Discrete Comput. Geom. 24 (2000), 141–145. <https://doi.org/10.1007/s004540010021>
- D. Rudenko, "On equidissection of balanced polygons", J. Math. Sci. 190 (2013), 486–495. <https://arxiv.org/abs/1206.4591>
- D. Rudenko, "A property of trivalent graphs related to equidissections", arXiv:1411.0285. <https://arxiv.org/abs/1411.0285>
- I. Praton, "Cutting polyominos into equal-area triangles", Amer. Math. Monthly 109 (2002), 818–826. <https://doi.org/10.1080/00029890.2002.11919917>
- S. Stein, "Cutting a polygon into triangles of equal areas", Math. Intelligencer 26 (2004), 17–21. <https://doi.org/10.1007/BF02985395>

## Lean

### Official statement

`Mathathon.P67.Monsky` in [`lean/MathathonProblems/P67_Monsky.lean`](lean/MathathonProblems/P67_Monsky.lean).

```lean
theorem Monsky (n : ℕ):
    (∃ (S : Finset Triangle),
      closed_hull unit_square = ⋃ (Δ ∈ S), closed_hull Δ ∧
      Set.PairwiseDisjoint (S : Set Triangle) open_hull ∧
      (∀ Δ₁ ∈ S, ∀ Δ₂ ∈ S, MeasureTheory.volume (open_hull Δ₁) = MeasureTheory.volume (open_hull Δ₂)) ∧
      S.card = n)
    ↔ (n ≠ 0 ∧ Even n)
```

Source: <https://github.com/dhyan-aranha/Monsky/blob/355f153f9007dbbbd0c2eed127dc194a5c1ef10f/Monsky/main_statement.lean>, <https://github.com/dhyan-aranha/Monsky/blob/355f153f9007dbbbd0c2eed127dc194a5c1ef10f/Monsky/simplex_basic.lean>, <https://github.com/dhyan-aranha/Monsky/blob/355f153f9007dbbbd0c2eed127dc194a5c1ef10f/Monsky/square.lean> (adapted as described in the file header).

A Lean proof of this statement already exists: <https://github.com/dhyan-aranha/Monsky/tree/355f153f9007dbbbd0c2eed127dc194a5c1ef10f>. A Lean-verified claim must not use or copy it.

### Related Lean formalizations

- [lean4-monsky](https://github.com/apurvanakade/lean4-monsky/tree/168a0b50b720466a33b45c64e696a17ca1aa5ce1): another Lean proof of Monsky's theorem, with a result on equidissections of regular polygons.

Projects outside the Palomar registry are described as their authors describe them; the organizers have not checked their proofs.

### Mathlib

Mathlib has the 2-adic valuation on $\mathbb Q$ (`padicValRat`), valuations and valuation subrings, with `LocalSubring.exists_le_valuationSubring` (every local subring is dominated by a valuation subring, the usual route to extending a valuation), plus `convexHull` and `MeasureTheory.volume`. It has no Sperner's lemma for triangulations and no Monsky's theorem.

---

*Description and Desired outcome are the proposer's text. The other sections were written by the organizers from the literature.*
