/-
Mathathon Round 1, Problem 46: official Lean statement.

Source (openai/math, Apache License 2.0):
  https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/PlanarUnitDistances.lean
Copied verbatim from the source.
-/

import Mathlib

namespace OAI

namespace PlanarUnitDistances

abbrev Plane := EuclideanSpace ℝ (Fin 2)

def IsUnitPair : Sym2 Plane → Prop :=
  Sym2.lift ⟨fun x y => dist x y = 1, fun x y => by dsimp; rw [dist_comm]⟩

noncomputable def unitPairCount (X : Finset Plane) : ℕ := by
  classical
  exact (X.sym2.filter IsUnitPair).card

noncomputable def u (n : ℕ) : ℕ :=
  sSup {m : ℕ | ∃ X : Finset Plane, X.card = n ∧ unitPairCount X = m}

theorem main : ∃ C β : ℝ, 0 < C ∧ 1 ≤ β ∧ β < (4 : ℝ) / 3 ∧
    ∀ n : ℕ, (u n : ℝ) ≤ C * (n : ℝ) ^ β := by
  sorry

end PlanarUnitDistances

end OAI
