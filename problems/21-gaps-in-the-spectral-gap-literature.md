# 21 · Gaps in the spectral gap literature

**Tracks:** Combinatorics, Analysis · **Area:** Random graphs, random matrices, spectral gap

## Description

The first result in this area was an unreadable paper by Joel Friedman. Charles Bordenave wrote a more readable paper but it was still quite hard. Brito-Ioana-Harris wrote a yet more readable paper, but relied on a key lemma by Bordenave that they were unable to reprove in an intuitive way (Prop 28 in Bordenave's paper; Lemma 7 in B-I-H). Newer papers may make this clearer.

## Desired outcome

An intuitive proof of Proposition 28 in Bordenave's paper; a deeper exploration of these papers, intricacies and gaps between them, explanation and commentary/visualizations to help those learning the theory.

## References

- Brito-Ioana-Harris, 2021: <https://arxiv.org/pdf/1804.07808>
- Bordenave, 2019: <https://arxiv.org/pdf/1502.04482>
- Friedman, 2004: <https://arxiv.org/pdf/cs/0405020>
- Friedman & Kohler, 2014: <https://arxiv.org/pdf/1403.3462>

## Official Lean statement

`Mathathon.P21.friedman_second_eigenvalue` in [`lean/MathathonProblems/P21_FriedmanSecondEigenvalue.lean`](lean/MathathonProblems/P21_FriedmanSecondEigenvalue.lean).

```lean
theorem friedman_second_eigenvalue (d : ℕ) (hd : 3 ≤ d) (ε : ℝ) (hε : 0 < ε) :
    ∀ δ : ℝ, 0 < δ → ∃ N : ℕ, ∀ n : ℕ, N ≤ n → Even (n * d) →
      (({G ∈ regularGraphs d n |
          HasLargeNontrivialEigenvalue G (2 * Real.sqrt ((d : ℝ) - 1) + ε)}.ncard : ℝ) /
        ((regularGraphs d n).ncard : ℝ)) < δ
```

Source: written for Mathathon; not taken from an existing formalization.
