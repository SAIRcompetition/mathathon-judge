# 55 · A Simpler Counterexample to Hadwiger's Conjecture

**Tracks:** Combinatorics · **Area:** Combinatorics and Graph Theory

## Description

Hadwiger's conjecture states that every graph with chromatic number at least k contains a K_k minor. OpenAI released a counterexample in its October 6, 2026 proof dump. The problem is to simplify the counterexample and its proof.

## Desired outcome

A simpler construction of a counterexample to Hadwiger's conjecture, ideally with a shorter and more elementary proof.

## References

- <https://github.com/openai/math/blob/main/preprints/A-counterexample-to-Hadwigers-conjecture-September-23-2026/paper.pdf>

## Official Lean statement

`OAI.HadwigerCounterexample.not_hadwiger_conjecture` in [`lean/MathathonProblems/P55_HadwigerCounterexample.lean`](lean/MathathonProblems/P55_HadwigerCounterexample.lean).

```lean
theorem not_hadwiger_conjecture :
    ¬ (∀ (m : ℕ) (G : SimpleGraph (Fin m)),
      G.chromaticNumber ≤ ↑(hadwigerNumber G))
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/HadwigerCounterexample.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Combinatorics/HadwigerCounterexample/Main.lean>. A Lean-verified claim must not use or copy it.
