# 79 · Fast matrix multiplication

**Tracks:** Computation/Applied Math · **Area:** Algebraic Complexity Theory, Numerical Linear Algebra

## Description

Recent constructions achieve a matrix multiplication exponent approaching 9/4, yet their asymptotic operation counts conceal enormous finite costs. A starting point could be from the polynomial packing construction in Rafael Pass's paper, by investigating how its algebraic savings become a recursive algorithm. There are several things to consider, like polynomial packing, interpolation, approximate identities conversion, etc.

## Desired outcome

An exposition of an existing fast matrix multiplication construction.
- Small, exact worked examples that reveal the construction's key ideas.
- Reproducible symbolic computations and visualizations.
- An explicit analysis of how block dimensions, coefficient sizes, and operation counts depend on the chosen exponent, clarifying the gap between asymptotic efficiency and practical computation.

Possibly also a connection to numerical analysis that clarifies precision requirements, although the reference construction already includes an asymptotic bit-complexity analysis.

## References

- <https://arxiv.org/abs/2610.28627> by Rafael Pass. Primary reference for the construction and its conversion into an explicit recursive algorithm.
- <https://arxiv.org/abs/math/0603207v3> by James Demmel, Ioana Dumitriu, Olga Holtz, and Robert Kleinberg. Reference for the relationship between fast multiplication and numerical stability.

## Official Lean statement

`OAI.MatrixMultiplication.complex_omega_le_nine_quarters` in [`lean/MathathonProblems/P79_MatrixMultiplication.lean`](lean/MathathonProblems/P79_MatrixMultiplication.lean).

```lean
theorem complex_omega_le_nine_quarters :
    Arithmetic.omega ℂ ≤ (9 : ℝ) / 4
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/MatrixMultiplication.lean> (adapted as described in the file header).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/LinearAlgebra/MatrixMultiplication/Main.lean>. A Lean-verified claim must not use or copy it.
