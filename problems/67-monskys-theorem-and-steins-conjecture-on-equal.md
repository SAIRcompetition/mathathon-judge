# 67 · Monsky's theorem and Stein's conjecture on equal-area dissections

**Tracks:** Combinatorics, Geometry · **Area:** Combinatorial geometry; p-adic valuations

## Description

Monsky (1970) proved that a square cannot be cut into an odd number of equal-area triangles, via a 2-adic valuation and a Sperner-type coloring. Stein conjectured the same for centrally symmetric polygons (proved by Monsky, 1990) and for all "special" polygons, where known methods cover only rational coordinates. The proofs are short but non-constructive and unintuitive.

## Desired outcome

A valuation-light or visual proof and clarity on which special polygons known methods cover.

## References

- P. Monsky, "On dividing a square into triangles", Amer. Math. Monthly 77(2) (1970), 161-164.
- P. Monsky, "A conjecture of Stein on plane dissections", Math. Z. 205 (1990), 583-592.
- M. Aigner, G. M. Ziegler, Proofs from THE BOOK, chapter "One square and an odd number of triangles".

## Official Lean statement

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
