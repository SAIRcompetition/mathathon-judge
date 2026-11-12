/-
Mathathon Round 1, Problem 71: official Lean statement, prepared by AI. It may contain errors.

Source (DominikPeters/ABCVotingLean, MIT License):
  https://github.com/DominikPeters/ABCVotingLean/blob/1cdea847e12f50c9905b045649ada808263fc8ea/ABCVoting/Basic.lean
  https://github.com/DominikPeters/ABCVotingLean/blob/1cdea847e12f50c9905b045649ada808263fc8ea/ABCVoting/Axioms/Core.lean
  https://github.com/DominikPeters/ABCVotingLean/blob/1cdea847e12f50c9905b045649ada808263fc8ea/ABCVoting/Existence/HarmonicEntropy/CoreExistence.lean
Adapted: the structure `ABCInstance`, the definitions `ABCInstance.voters`,
`ABCInstance.is_l_large`, `ABCInstance.is_in_core` and the theorem `ABCInstance.exists_core`
are copied unchanged (with their docstrings and namespaces) into one file; the other
declarations of these files are left out, and the proof is replaced by `sorry`.
-/

import Mathlib

open Finset BigOperators

/-- An ABC instance on finite voter/candidate types. -/
structure ABCInstance (V C : Type*) [Fintype V] [Fintype C]
    [DecidableEq V] [DecidableEq C] (k : ℕ) where
  approves : V → Finset C
  k_pos : 0 < k
  k_le_m : k ≤ Fintype.card C

namespace ABCInstance

variable {V C : Type*} [Fintype V] [Fintype C] [DecidableEq V] [DecidableEq C] {k : ℕ}

@[simp] def voters (_inst : ABCInstance V C k) : Finset V := Finset.univ

/--
A group S is ℓ-large if it contains at least ℓn/k voters.
Formally: ℓ * |voters| ≤ |S| * k
-/
def is_l_large (inst : ABCInstance V C k) (S : Finset V) (l : ℕ) : Prop :=
  l * inst.voters.card ≤ S.card * k

/--
The Core: A committee W is in the core if no coalition can block it by proposing
an alternative. Specifically, for every ℓ-large group S and every set of candidates
T with |T| ≤ ℓ, there must be some voter in S who weakly prefers W to T.

This means no coalition S can unanimously agree that some alternative T
(that they could "afford" given their size) is strictly better for all of them.

Formally: For all S, T with |S| ≥ ℓn/k and |T| ≤ ℓ, there exists i ∈ S such that
u_i(W) ≥ u_i(T).

Note: We do not require W.card = k.
-/
def is_in_core (inst : ABCInstance V C k) (W : Finset C) : Prop :=
  ∀ (S : Finset V) (T : Finset C) (l : ℕ),
    l ≥ 1 →
    inst.is_l_large S l ∧ T.card ≤ l →
    ∃ i ∈ S, (W ∩ inst.approves i).card ≥ (T ∩ inst.approves i).card

/-- Every approval-based committee election with a nonempty finite electorate
admits a committee of the prescribed size in the ordinary core. -/
theorem exists_core [Nonempty V] (inst : ABCInstance V C k) :
    ∃ W : Finset C, W.card = k ∧ inst.is_in_core W := by
  sorry

end ABCInstance
