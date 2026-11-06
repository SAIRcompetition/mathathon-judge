# 33 · Hadwiger-Nelson Problem - The Euclidean plane is not five-colorable

**Tracks:** Combinatorics · **Area:** Combinatorics, discrete geometry, measure theory

## Description

The Hadwiger–Nelson problem asks how many colors are needed to color the plane so that points at unit distance have different colors. OpenAI recently proved that five colors are insufficient, leaving six or seven as possibilities. An unexpected ingredient is a transfer theorem: a proper k-coloring exists if and only if a measurable k-coloring exists that avoids monochromatic unit-distance pairs almost everywhere. The proposal is to explore this surprising connection and to seek simpler proofs or explanations of the result.

## Desired outcome

A simpler, more conceptual proof or explanation of the transfer theorem connecting arbitrary and measurable colorings. Ideally, the proof that the plane is not five-colorable would also be simplified, making its key ideas more accessible.

## References

- <https://arxiv.org/pdf/2610.05291>
- <https://github.com/openai/math/blob/main/preprints/The-Euclidean-plane-is-not-five-colorable-September-23-2026/paper.pdf>

## Official Lean statement

`OAI.EuclideanFiveColor.no_proper_five_coloring` in [`lean/MathathonProblems/P33_EuclideanFiveColor.lean`](lean/MathathonProblems/P33_EuclideanFiveColor.lean).

```lean
theorem no_proper_five_coloring : ¬ ∃ coloring : ℂ → Fin 5, ProperColoring 5 coloring
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/EuclideanFiveColor.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Geometry/PlaneColoring/Five.lean>. A Lean-verified claim must not use or copy it.
