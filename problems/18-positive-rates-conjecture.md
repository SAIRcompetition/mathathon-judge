# 18 · The positive rates conjecture

**Tracks:** Analysis · **Area:** Probability

## Description

The positive rates conjecture is/was a famous problem in probability and ergodic theory about random cellular automata. A counterexample was constructed by Gács, but it is so complicated that perhaps no other person ever truly believed that it worked. The problem is philosophically interesting as it can be thought of in terms of whether perfect error correction is possible in distributed systems subject to noise— Gács says yes!

## Desired outcome

Since the correctness of Gács's argument is in doubt, a formal verification is genuinely desirable here. But more useful would be a simplification that can easily be understood and verified by hand.

## References

- P. Gács, “Reliable Cellular Automata with Self-Organization” (the main reference).
- L. Gray, “A Reader's Guide to Gács's ‘Positive Rates’ Paper.”

## Official Lean statement

`Mathathon.P18.exists_positiveRates_two_invariant_measures` in [`lean/MathathonProblems/P18_PositiveRates.lean`](lean/MathathonProblems/P18_PositiveRates.lean).

```lean
theorem exists_positiveRates_two_invariant_measures :
    ∃ (k : ℕ) (T : LocalRule k), PositiveRates T ∧
      ∃ μ ν : Measure (ℤ → Fin k), IsProbabilityMeasure μ ∧ IsProbabilityMeasure ν ∧
        (transitionKernel T).Invariant μ ∧ (transitionKernel T).Invariant ν ∧ μ ≠ ν
```

Source: written for Mathathon; not taken from an existing formalization.
