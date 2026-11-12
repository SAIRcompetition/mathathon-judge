/-
Mathathon Round 1, Problem 58: official Lean statement, prepared by AI. It may contain errors.

Source (openai/math, Apache License 2.0):
  https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/SeymourSecondNeighborhood.lean
Copied verbatim from the source.
-/

import Mathlib.Data.Fintype.Card
import Mathlib.Data.Finset.Union

namespace OAI

namespace SeymourSecondNeighborhood

variable {V : Type*}

structure IsOriented (r : V → V → Prop) : Prop where
  loopless : ∀ v, ¬ r v v
  asymmetric : ∀ {u v}, r u v → ¬ r v u

variable [Fintype V] [DecidableEq V]

noncomputable section

def firstNeighbors (r : V → V → Prop) (v : V) : Finset V := by
  classical
  exact Finset.univ.filter (r v)

def secondNeighbors (r : V → V → Prop) (v : V) : Finset V := by
  classical
  exact Finset.univ.filter (fun w =>
    w ≠ v ∧ ¬ r v w ∧ ∃ u, r v u ∧ r u w)

def GoodVertex (r : V → V → Prop) (v : V) : Prop :=
  (firstNeighbors r v).card ≤ (secondNeighbors r v).card

end

variable [Nonempty V]

theorem exists_goodVertex (r : V → V → Prop) (hr : IsOriented r) :
    ∃ v, GoodVertex r v := by
  sorry

end SeymourSecondNeighborhood

end OAI
