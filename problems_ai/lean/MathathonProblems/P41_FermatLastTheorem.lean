/-
Mathathon Round 1, Problem 41: official Lean statement, prepared by AI. It may contain errors.

Source (Mathlib v4.35.0, Apache License 2.0): the definition `FermatLastTheorem` in
  https://github.com/leanprover-community/mathlib4/blob/v4.35.0/Mathlib/NumberTheory/FLT/Basic.lean
Adapted: no text is copied from the source. The theorem `fermat_last_theorem` asserts Mathlib's
proposition `FermatLastTheorem`, which unfolds to
`∀ n ≥ 3, ∀ a b c : ℕ, a ≠ 0 → b ≠ 0 → c ≠ 0 → a ^ n + b ^ n ≠ c ^ n`.
-/

import Mathlib

namespace Mathathon.P41

/-- Fermat's Last Theorem, as defined in Mathlib. -/
theorem fermat_last_theorem : FermatLastTheorem := by
  sorry

end Mathathon.P41
