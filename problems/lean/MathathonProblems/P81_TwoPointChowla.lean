/-
Mathathon Round 1, Problem 81: official Lean statement, prepared by AI. It may contain errors.

Source (openai/math, Apache License 2.0):
  https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/OrdinaryTwoPointCorrelations.lean
Adapted: only `liouville_log_saving` (Theorem 1.1 of the preprint) and the two definitions it
uses (`liouville`, `affineSum`) are kept, unchanged; `binary_corrected_elliott`,
`affine_corrected_elliott` and the definitions used only by them are left out.
-/

import Mathlib

namespace OAI

noncomputable section
open scoped BigOperators ComplexConjugate
open Filter

namespace TwoPointCorrelations

def liouville (n : ℕ) : ℂ := ArithmeticFunction.liouville n

def affineSum (f g : ℕ → ℂ) (a₁ a₂ b₁ b₂ N : ℕ) : ℂ :=
  ∑ n ∈ Finset.Icc 1 N, f (a₁ * n + b₁) * g (a₂ * n + b₂)

end TwoPointCorrelations

namespace OrdinaryTwoPointCorrelations
open TwoPointCorrelations

theorem liouville_log_saving :
    ∃ c : ℝ, 0 < c ∧ ∀ a₁ a₂ b₁ b₂ : ℕ,
      0 < a₁ → 0 < a₂ → a₁ * b₂ ≠ a₂ * b₁ →
      ∃ C : ℝ, 0 < C ∧ ∀ X : ℝ, 3 ≤ X →
        ‖affineSum liouville liouville a₁ a₂ b₁ b₂ ⌊X⌋₊‖ ≤
          C * X / Real.rpow (Real.log X) c := by
  sorry

end OrdinaryTwoPointCorrelations

end

end OAI
