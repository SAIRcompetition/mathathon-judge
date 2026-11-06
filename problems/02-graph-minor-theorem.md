# 2 · Graph minor theorem

**Tracks:** Combinatorics · **Area:** Combinatorics/Graph Theory

## Description

This foundational result in modern graph theory proves that any family of graphs which is closed under taking minors can be characterized by a finite set of forbidden minors.

## Desired outcome

It would be good to shorten and simplify this long and complicated proof as much as possible.

## References

- Robertson–Seymour theorem, Wikipedia: <https://en.wikipedia.org/wiki/Robertson%E2%80%93Seymour_theorem>
- N. Robertson and P. Seymour, the series of papers “Graph Minors. N.” for N from 1 to 20 (1980s to 2000s), which together contain the proof.

## Official Lean statement

`Mathathon.P02.minor_wellQuasiOrdered`, `Mathathon.P02.exists_finite_forbidden_minors` in [`lean/MathathonProblems/P02_GraphMinorTheorem.lean`](lean/MathathonProblems/P02_GraphMinorTheorem.lean).

```lean
theorem minor_wellQuasiOrdered :
    WellQuasiOrdered (fun G H : FinGraph => IsMinor G.2 H.2)
```

```lean
theorem exists_finite_forbidden_minors (C : Set FinGraph) (hC : MinorClosed C) :
    ∃ S : Set FinGraph, S.Finite ∧ ∀ G : FinGraph, G ∈ C ↔ ∀ H ∈ S, ¬ IsMinor H.2 G.2
```

Source: written for Mathathon; not taken from an existing formalization.
