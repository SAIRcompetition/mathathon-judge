/-
Mathathon Round 1, Problem 117: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states Drury's external vertices conjecture (EVC) for `n = 5`, as formulated in S. W. Drury,
"The external vertices conjecture in case n = 4", Electron. J. Linear Algebra 11 (2004), §1: for
complex numbers `α₁, …, α₅` and `β₁, …, β₅` whose vertices `v(σ) = ∏ⱼ (αⱼ - β_{σ(j)})` satisfy
`Re v(σ) ≥ 1` for all `σ ∈ S₅`, there are numbers `t_{IJ} ≥ 0`, one for each pair of subsets
`I, J ⊆ {1, …, 5}` with `|I| = |J|`, such that `Re v(σ) = 1 + ∑ t_{IJ} P_{IJ}(σ)` for all `σ`, where
`P_{IJ}(σ) = 1` if `σ(I) = J` and `0` otherwise. The case `n = 4` is Drury's Theorem 1.1; the case
`n = 5` is open, and a counterexample would prove the negation of the statement.
-/

import Mathlib

namespace Mathathon.P117

open Finset

/-- The OM vertex `v(σ) = ∏ⱼ (αⱼ - β_{σ(j)})` for eigenvalues `α`, `β` and a permutation `σ`. -/
def vertex {n : ℕ} (α β : Fin n → ℂ) (σ : Equiv.Perm (Fin n)) : ℂ :=
  ∏ j, (α j - β (σ j))

/-- `P_{IJ}(σ)`: equal to `1` if `σ(I) = J` and to `0` otherwise. -/
def indicatorP {n : ℕ} (I J : Finset (Fin n)) (σ : Equiv.Perm (Fin n)) : ℝ :=
  if I.map σ.toEmbedding = J then 1 else 0

/-- Drury's external vertices conjecture in size `n`: if `Re v(σ) ≥ 1` for all `σ ∈ Sₙ`, then
`Re v - 1` is a nonnegative combination of the functions `P_{IJ}`, `|I| = |J|`. -/
def ExternalVerticesConjecture (n : ℕ) : Prop :=
  ∀ α β : Fin n → ℂ, (∀ σ : Equiv.Perm (Fin n), 1 ≤ (vertex α β σ).re) →
    ∃ t : Finset (Fin n) → Finset (Fin n) → ℝ, (∀ I J, 0 ≤ t I J) ∧
      ∀ σ : Equiv.Perm (Fin n),
        (vertex α β σ).re =
          1 + ∑ I : Finset (Fin n), ∑ J ∈ univ.filter (fun J => J.card = I.card),
            t I J * indicatorP I J σ

/-- The external vertices conjecture holds for `n = 5`. -/
theorem external_vertices_conjecture_five : ExternalVerticesConjecture 5 := by
  sorry

end Mathathon.P117
