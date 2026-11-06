# 57 · Simplifying the Proof of Barnette's Conjecture

**Tracks:** Combinatorics · **Area:** Graph theory, combinatorics

## Description

Barnette's conjecture states that every 3-connected cubic bipartite planar graph has a Hamiltonian cycle. OpenAI released a proof in its October 6, 2026 proof dump. The problem is to simplify this proof.

## Desired outcome

A simpler proof of Barnette's conjecture, ideally with a shorter and more elementary argument.

## References

- <https://github.com/openai/math/blob/main/preprints/Paired-states-and-Hamiltonian-cycles-in-cubic-bipartite-planar-graphs-September-24-2026/paper.pdf>

## Official Lean statement

`OAI.Barnette.main` in [`lean/MathathonProblems/P57_Barnette.lean`](lean/MathathonProblems/P57_Barnette.lean).

```lean
theorem main : MainStatement.{u}
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/BarnetteHamiltonian.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Combinatorics/Hamiltonian/Main.lean>. A Lean-verified claim must not use or copy it.
