# 11 · Mazur's Collatz paper

**Tracks:** Algebra/Number Theory, Analysis · **Area:** Number theory, Probability theory

## Description

Recently, Mazur (using ChatGPT) proved that a positive proportion of positive integers iterate to 1 under the Collatz map, massively improving upon Tao's result. However, the paper is AI-generated and hard to read, so it would be valuable to understand this paper and perhaps rewrite it to be more conceptual.

## Desired outcome

A human-readable paper which explains the ideas behind this new breakthrough. Preferably, a new way to phrase this argument which is more conceptually nice.

## References

- Mazur's paper: <https://www.proofatlas.ai/papers/positive-density-log-time-collatz/Mazur_Explicit_Positive_Density_Collatz_Convergence_in_Logarithmic_Time_v2.pdf>
- Tao's Collatz paper, which Mazur builds on: <https://www.cambridge.org/core/journals/forum-of-mathematics-pi/article/almost-all-orbits-of-the-collatz-map-attain-almost-bounded-values/1008CC2DF91AF87F66D190C5E01C907F>

## Official Lean statement

`CollatzPositiveDensity.exists_positive_density` in [`lean/MathathonProblems/P11_CollatzPositiveDensity.lean`](lean/MathathonProblems/P11_CollatzPositiveDensity.lean).

```lean
theorem exists_positive_density :
    ∃ c : ℝ, 0 < c ∧ ∃ X₀ : ℕ, ∀ X : ℕ, X₀ ≤ X →
      c * X ≤ (countBelow (523 / 50) X : ℝ)
```

Source: <https://www.proofatlas.ai/sources/positive-density-log-time-collatz/commits/830b9d3f38f2a8da8cd921bf6a9310dd69336fd0/CollatzPositiveDensity.lean> (adapted as described in the file header).

A Lean proof of this statement already exists: <https://www.proofatlas.ai/sources/positive-density-log-time-collatz/commits/830b9d3f38f2a8da8cd921bf6a9310dd69336fd0/>. A Lean-verified claim must not use or copy it.
