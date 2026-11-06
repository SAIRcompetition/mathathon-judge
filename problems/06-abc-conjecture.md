# 6 · The abc conjecture

**Tracks:** Algebra/Number Theory · **Area:** Number theory

## Description

Mochizuki claims a proof of the abc conjecture, but the proof is complicated and not widely accepted. The very ambitious task is to contribute to a resolution of the situation by obtaining a brand new (AI-generated) idea.

## Desired outcome

Any progress on this notorious problem would be of value.

## References

- <https://en.wikipedia.org/wiki/Abc_conjecture>

## Official Lean statement

`ABC.abc` in [`lean/MathathonProblems/P06_ABC.lean`](lean/MathathonProblems/P06_ABC.lean).

```lean
theorem abc (ε : ℝ) (hε : 0 < ε) :
    {(a, b, c) : ℕ × ℕ × ℕ | 0 < a ∧ 0 < b ∧ 0 < c ∧ ({a, b, c} : Set ℕ).Pairwise Nat.Coprime ∧
    a + b = c ∧ (radical <| a * b * c : ℝ)^(1 + ε) < c}.Finite
```

Source: <https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjectures/Wikipedia/ABC.lean> (adapted as described in the file header).
