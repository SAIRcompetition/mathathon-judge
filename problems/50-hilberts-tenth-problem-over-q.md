# 50 · Hilbert's tenth problem over ℚ

**Tracks:** Algebra/Number Theory · **Area:** Number theory

## Description

Does an algorithm which determines whether an integer-coefficient polynomial in an arbitrary number of variables has a rational zero exist? This problem was recently resolved by OpenAI.

## Desired outcome

Verify the proof and write an exposition which is accessible to an undergraduate mathematics student.

## References

- <https://github.com/openai/math/blob/main/preprints/Hilberts-tenth-problem-over-the-rational-numbers-September-24-2026/main.pdf>

## Official Lean statement

`Mathathon.P50.hilbert_tenth_rationals_undecidable` in [`lean/MathathonProblems/P50_HilbertTenthRationals.lean`](lean/MathathonProblems/P50_HilbertTenthRationals.lean).

```lean
theorem hilbert_tenth_rationals_undecidable : ¬ ComputablePred IntPoly.HasRationalZero
```

Source: written for Mathathon; not taken from an existing formalization.
