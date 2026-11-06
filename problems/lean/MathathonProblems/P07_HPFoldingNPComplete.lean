/-
Mathathon Round 1, Problem 07: official Lean statement.

Written for Mathathon; not taken from an existing formalization.
It states that protein folding in the HP model is NP-complete on the square lattice ℤ²
(Crescenzi, Goldman, Papadimitriou, Piccolboni and Yannakakis, "On the complexity of protein
folding", J. Comput. Biol. 1998) and on the cubic lattice ℤ³ (Berger and Leighton, "Protein
folding in the hydrophobic-hydrophilic (HP) model is NP-complete", RECOMB 1998): given an H/P
sequence and a number `k`, decide whether some self-avoiding fold has at least `k` H-H contacts
(energy at most `-k`). An instance is the bit string `pairBits (Nat.bits k, s)` (`k` in binary,
`true` = H); other bit strings are "no" instances. NP, as verification in polynomial time by a
finite-alphabet `Turing.FinTM2`, is copied unchanged, into this namespace, from openai/math
(Apache License 2.0):
`natBits`, `pairBits`, `FiniteAlphabet`, `NPVerifier`, `NPVerifier.Accepts`, `InNP` in
  https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/DirectedFeedback.lean
Polynomial-time many-one reductions are defined in the same style.
-/

import Mathlib

namespace Mathathon.P07

open Finset

/-! ### NP (from openai/math `ComparatorChallenges/DirectedFeedback.lean`) -/

/-- Unary self-delimiting natural numbers. Outputs are explicit, not succinct. -/
def natBits (n : ℕ) : List Bool := List.replicate n true ++ [false]

/-- The explicit framing used for an input and its NP certificate. -/
def pairBits (p : List Bool × List Bool) : List Bool :=
  natBits p.1.length ++ p.1 ++ p.2

/-- Finitely many stacks and control states are already part of `FinTM2`.
This additionally excludes infinite stack alphabets. -/
def FiniteAlphabet (M : Turing.FinTM2) : Prop := ∀ k, Finite (M.Γ k)

/-- Polynomially bounded certificates checked by an actual deterministic
finite-alphabet machine, on the explicitly encoded input/certificate pair. -/
structure NPVerifier where
  witnessBound : Polynomial ℕ
  verify : (List Bool × List Bool) → Bool
  computation : Turing.TM2ComputableInPolyTime pairBits (fun b : Bool => [b]) verify
  finiteAlphabet : FiniteAlphabet computation.tm

def NPVerifier.Accepts (V : NPVerifier) (input : List Bool) : Prop :=
  ∃ witness : List Bool, witness.length ≤ V.witnessBound.eval input.length ∧
    V.verify (input, witness) = true

/-- NP is defined independently of SAT or any hardness assertion. -/
def InNP (language : List Bool → Prop) : Prop :=
  ∃ V : NPVerifier, ∀ input, language input ↔ V.Accepts input

/-! ### NP-completeness (written for Mathathon) -/

/-- A polynomial-time many-one (Karp) reduction from `L` to `L'`: a map on bit strings computed
in polynomial time by a finite-alphabet machine, with `L x ↔ L' (f x)`. -/
structure PolyTimeReduction (L L' : List Bool → Prop) where
  f : List Bool → List Bool
  computation : Turing.TM2ComputableInPolyTime (id : List Bool → List Bool) id f
  finiteAlphabet : FiniteAlphabet computation.tm
  correct : ∀ x, L x ↔ L' (f x)

/-- `L` is NP-complete: it is in NP and every language in NP reduces to it. -/
def NPComplete (L : List Bool → Prop) : Prop :=
  InNP L ∧ ∀ L' : List Bool → Prop, InNP L' → Nonempty (PolyTimeReduction L' L)

/-! ### The HP model (written for Mathathon) -/

/-- Two points of the lattice `ℤ^d` are neighbours: they differ by 1 in one coordinate. -/
def LatticeAdjacent {d : ℕ} (x y : Fin d → ℤ) : Prop := ∑ i, |x i - y i| = 1

/-- A fold of a chain of `n` residues in `ℤ^d`: distinct residues go to distinct lattice points
and consecutive residues go to neighbouring points. -/
def IsFold (d n : ℕ) (f : Fin n → Fin d → ℤ) : Prop :=
  Function.Injective f ∧ ∀ i j : Fin n, j.val = i.val + 1 → LatticeAdjacent (f i) (f j)

/-- The number of H-H contacts of the fold `f` of the sequence `s` (`true` = H, `false` = P):
pairs of H residues that are not consecutive in the chain but are neighbours in the lattice. -/
noncomputable def contacts {d : ℕ} (s : List Bool) (f : Fin s.length → Fin d → ℤ) : ℕ := by
  classical
  exact ((univ : Finset (Fin s.length × Fin s.length)).filter fun p =>
    p.1.val + 1 < p.2.val ∧ s[p.1] = true ∧ s[p.2] = true ∧ LatticeAdjacent (f p.1) (f p.2)).card

/-- The HP folding decision problem in `ℤ^d`: the bit string encodes a sequence `s` and a
number `k` (in binary), and some fold of `s` has at least `k` H-H contacts. -/
def HPFolding (d : ℕ) (x : List Bool) : Prop :=
  ∃ (s : List Bool) (k : ℕ), x = pairBits (Nat.bits k, s) ∧
    ∃ f : Fin s.length → Fin d → ℤ, IsFold d s.length f ∧ k ≤ contacts s f

/-- Crescenzi–Goldman–Papadimitriou–Piccolboni–Yannakakis: HP folding on the square lattice is
NP-complete. -/
theorem hp_folding_2d_np_complete : NPComplete (HPFolding 2) := by
  sorry

/-- Berger–Leighton: HP folding on the cubic lattice is NP-complete. -/
theorem hp_folding_3d_np_complete : NPComplete (HPFolding 3) := by
  sorry

end Mathathon.P07
