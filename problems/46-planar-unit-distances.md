# 46 · Planar unit distances

**Tracks:** Combinatorics, Geometry · **Area:** Combinatorial geometry; arithmetic geometry; discrete geometry

## Description

OpenAI's 2026 preprint proves $u(n)=O(n^{4/3-\delta})$, the first exponent improvement since Spencer-Szemerédi-Trotter (1984). The proof combines cuttings, an entropy-based prediction lemma, heights at every place of a number field, and sign changes of square roots. It is also a proof by contradiction, and doesn't provide an explicit $\delta$. None of this resembles points and unit circles. Valtr's metric attains $n^{4/3}$, so the proof must use something specifically Euclidean.

## Desired outcome

A human-readable account of the proof's architecture, a clear explanation of exactly where it uses Euclidean structure and fails for Valtr's metric, and an explicit delta in the power saving.

## References

- OpenAI, “A power saving for planar unit distances” (23 September 2026): <https://github.com/openai/math/tree/main/preprints/A-power-saving-for-planar-unit-distances-September-23-2026>
- J. Spencer, E. Szemerédi, and W. Trotter, “Unit distances in the Euclidean plane,” in *Graph Theory and Combinatorics* (Academic Press, 1984), 293–303.
- L. Székely, “Crossing numbers and hard Erdős problems in discrete geometry,” Combin. Probab. Comput. 6 (1997), 353–358.

## Official Lean statement

`OAI.PlanarUnitDistances.main` in [`lean/MathathonProblems/P46_PlanarUnitDistances.lean`](lean/MathathonProblems/P46_PlanarUnitDistances.lean).

```lean
theorem main : ∃ C β : ℝ, 0 < C ∧ 1 ≤ β ∧ β < (4 : ℝ) / 3 ∧
    ∀ n : ℕ, (u n : ℝ) ≤ C * (n : ℝ) ^ β
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/PlanarUnitDistances.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Geometry/UnitDistances/Main.lean>. A Lean-verified claim must not use or copy it.
