# 40 · Quasi-GRH/ERH via Tate's Thesis

**Tracks:** Algebra/Number Theory · **Area:** Number theory

## Description

A surprising result in OpenAI's recent cache of theorems is that of quasi-GRH, though in the style of much of AI math, the resulting proof was very formula-heavy. Much of the proof is implicitly operating in the realm of Tate's Thesis, and subsequent extensions to Dedekind Zeta Functions by AxiomMath further solidify these connections. This project would seek to give a refined exposition of OpenAI's proof explicitly in this setting, trying to replace as many technical steps with more conceptually motivated/natural adelic arguments.

## Desired outcome

A shortened exposition of a proof of quasi-GRH, with extensions to Hecke L-functions or identified obstructions to these extensions. Explicit separation of purely analytic inputs and adelic machinery, trying to minimize these analytic inputs.

## References

- <https://link.springer.com/book/10.1007/978-1-4757-3085-2>
- <https://github.com/openai/math/blob/main/preprints/The-Quasi-Riemann-Hypothesis-September-30-2026/paper.pdf>

## Official Lean statement

`OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re` in [`lean/MathathonProblems/P40_QuasiRiemannHypothesis.lean`](lean/MathathonProblems/P40_QuasiRiemannHypothesis.lean).

```lean
theorem riemannZeta_ne_zero_of_seven_eighths_lt_re
    {s : ℂ} (hs : (7 / 8 : ℝ) < s.re) : riemannZeta s ≠ 0
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/QuasiRiemannHypothesis.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean>. A Lean-verified claim must not use or copy it.
