# 25 · Planar Halving Lines

**Tracks:** Geometry · **Area:** Combinatorial geometry

## Description

We are given n points in the plane. A pair of points is a halving pair if its line (a halving line) leaves (n-2)/2 points on either side. How many halving lines are possible?

## Desired outcome

As with many of the results in the recent OpenAI "drop", this improvement on the longstanding bound is difficult to decipher. Historically, arguments giving increasingly tight bounds for the problem have used a dual formulation and argued about arrangements of lines, and the recent proof also appears to do this. At minimum, the new results/techniques should be nicely visualizable. It would be quite a nice project to visualize the new techniques via this dual setup, and understand how precisely the new bound is obtained. Perhaps it might give us new ideas to improve bounds in combinatorial geometry more broadly.

## References

- Tamal Dey's longstanding bound appears in: "Improved Bounds for Planar k -Sets and Related Problems." <https://link.springer.com/content/pdf/10.1007/PL00009354.pdf>
- A recent improvement on the bound from OpenAI: <https://github.com/openai/math/blob/main/preprints/A-power-saving-for-planar-halving-lines-September-25-2026/main.pdf>
- An open problems page describing the problem: <https://jeffe.cs.illinois.edu/open/ksets.html>

## Official Lean statement

`OAI.PlanarHalving.power_bounds` in [`lean/MathathonProblems/P25_HalvingLines.lean`](lean/MathathonProblems/P25_HalvingLines.lean).

```lean
theorem power_bounds :
    (∃ ε : ℝ, 0 < ε ∧ ∃ C : ℝ, ∃ n₀ : ℕ,
      ∀ n : ℕ, Even n → n₀ ≤ n → ∀ P : Fin n → Point,
        GeneralPosition P → (halvingCount P : ℝ) ≤ C * (n : ℝ) ^ ((4 : ℝ) / 3 - ε)) ∧
    (∃ ε : ℝ, 0 < ε ∧ ∃ C : ℝ,
      ∀ n : ℕ, 1 ≤ n → ∀ P : Fin n → Point, Generic P →
        ∀ k : ℕ, k ≤ n → (switchCount P k : ℝ) ≤ C * (n : ℝ) ^ ((4 : ℝ) / 3 - ε))
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/HalvingLines.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Combinatorics/HalvingLines/Main.lean>. A Lean-verified claim must not use or copy it.
