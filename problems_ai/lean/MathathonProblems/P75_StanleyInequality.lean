/-
Mathathon Round 1, Problem 75: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states Stanley's inequality (R. Stanley, "Two combinatorial applications of the
Aleksandrov–Fenchel inequalities", J. Combin. Theory Ser. A 31 (1981), Theorem 3.1). A linear
extension of a finite poset `α` with `n` elements is an order-preserving bijection
`α ≃ Fin n`, so positions are numbered `0, …, n - 1` (Stanley uses `1, …, n`). The inequality is
stated for every `k : ℕ` in the form `N (k + 1) ^ 2 ≥ N k * N (k + 2)`; the cases where `k + 2`
is not a position are trivial, since then `N (k + 2) = 0`.
-/

import Mathlib

namespace Mathathon.P75

/-- The number of linear extensions of the finite poset `α`, that is, order-preserving bijections
from `α` onto the positions `0, 1, …, n - 1` (where `n` is the number of elements of `α`),
that put the element `a` in position `k`. -/
noncomputable def numLinearExtensionsAt (α : Type*) [PartialOrder α] [Fintype α] (a : α)
    (k : ℕ) : ℕ :=
  Nat.card {f : α ≃ Fin (Fintype.card α) // StrictMono f ∧ (f a : ℕ) = k}

/-- **Stanley's inequality.** For a finite poset `α` and an element `a`, the numbers `N k` of
linear extensions placing `a` in position `k` form a log-concave sequence:
`N k * N (k + 2) ≤ N (k + 1) ^ 2` for all `k`. -/
theorem stanley_inequality (α : Type*) [PartialOrder α] [Fintype α] (a : α) (k : ℕ) :
    numLinearExtensionsAt α a k * numLinearExtensionsAt α a (k + 2) ≤
      numLinearExtensionsAt α a (k + 1) ^ 2 := by
  sorry

end Mathathon.P75
