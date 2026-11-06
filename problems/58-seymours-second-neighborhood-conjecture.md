# 58 · Seymour's second neighborhood conjecture

**Tracks:** Combinatorics · **Area:** Graph theory, combinatorics

## Description

Seymour's second-neighborhood conjecture states that every oriented graph has a vertex with at least as many second out-neighbors as first out-neighbors. OpenAI released a proof in its October 6, 2026 proof dump. The problem is to simplify this proof.

## Desired outcome

A simpler proof of Seymour's second-neighborhood conjecture, ideally with a shorter and more elementary argument.

## References

- <https://github.com/openai/math/blob/main/preprints/A-proof-of-Seymours-second-neighborhood-conjecture-September-23-2026/paper.pdf>

## Official Lean statement

`OAI.SeymourSecondNeighborhood.exists_goodVertex` in [`lean/MathathonProblems/P58_SeymourSecondNeighborhood.lean`](lean/MathathonProblems/P58_SeymourSecondNeighborhood.lean).

```lean
theorem exists_goodVertex (r : V → V → Prop) (hr : IsOriented r) :
    ∃ v, GoodVertex r v
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/SeymourSecondNeighborhood.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Combinatorics/SecondNeighborhood/Main.lean>. A Lean-verified claim must not use or copy it.
