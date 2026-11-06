# 77 · The circulant Hadamard conjecture

**Tracks:** Combinatorics, Algebra/Number Theory · **Area:** Combinatorics; algebraic number theory

## Description

A real circulant Hadamard matrix has order 1 or 4, which also classifies Barker sequences. This problem about $\pm1$ sequences resisted decades of work. The new 15-page proof reduces to $n=4u^2$, then shows an alternating product of character values is an algebraic integer whose conjugates all have absolute value 1. Kronecker's theorem and analysis finish.

## Desired outcome

An explanation of where the "black magic" alternating product comes from and how it relates to earlier field-descent methods.

## References

- OpenAI, “The circulant Hadamard conjecture” (23 September 2026): <https://github.com/openai/math/tree/main/preprints/The-circulant-Hadamard-conjecture-September-23-2026>
- R. Turyn, “Character sums and difference sets,” Pacific J. Math. 15 (1965), 319–346.
- B. Schmidt, “Cyclotomic integers and finite geometry,” J. AMS 12 (1999), 929–952.

## Official Lean statement

`OAI.CirculantHadamard.exists_iff_order_one_or_four` in [`lean/MathathonProblems/P77_CirculantHadamard.lean`](lean/MathathonProblems/P77_CirculantHadamard.lean).

```lean
theorem exists_iff_order_one_or_four (n : ℕ) (hn : 0 < n) :
    ExistsRealCirculantHadamard n ↔ n = 1 ∨ n = 4
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/CirculantHadamard.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/LinearAlgebra/CirculantHadamard/Main.lean>. A Lean-verified claim must not use or copy it.
