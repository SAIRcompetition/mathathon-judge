/-
Mathathon Round 1, Problem 03: official Lean statement, prepared by AI. It may contain errors.

Source (openai/math, Apache License 2.0):
  https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/DegreeRigidity.lean
  https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Computability/DegreeRigidity/Representation/CommonIdeal.lean
  https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Computability/DegreeRigidity/Effective/UniformOracle.lean
  https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Computability/DegreeRigidity/Effective/TableIndices.lean
  https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Computability/DegreeRigidity/OrdinalCodes/IndexMatrix.lean
  https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Computability/DegreeRigidity/Computability/OracleJump.lean
Adapted: the Turing degrees and the jump are copied unchanged, into this namespace: `Oracle`,
`oracleFunction`, `Reduces`, `Degree` and its order from the first file, and `bit`,
`oraclePrefix`, `trial`, `run`, `machine`, `Halts`, `jump` from the other five. `degreeJump`, the
`Language.order` structure on `Degree` and the theorem are written by AI for Mathathon; the
theorem is not taken from an existing formalization (the theorem of the first file is that every
order automorphism of the degrees is the identity).
The theorem states that the Turing jump is first-order definable in the partial order of the
Turing degrees (Shore and Slaman, "Defining the Turing jump", Math. Res. Lett. 6 (1999)): one
formula `φ(x, y)` in the language of partial orders, without parameters, holds of two degrees
`a, b` exactly when `b = a'`.
In openai/math (`OracleJump.lean` above and `JumpProperties.lean` in the same directory) it is
proved that `jump Y` is c.e. in `Y`, computes every set c.e. in `Y`, and is monotone under
`Reduces`, so it has the degree of the usual jump `Y'`. `degreeJump` applies `jump` to a
representative of a degree.
-/

import Mathlib

namespace Mathathon.P03

open Encodable

/-! ### Turing degrees (from `ComparatorChallenges/DegreeRigidity.lean`) -/

abbrev Oracle := ℕ → Bool

def oracleFunction (A : Oracle) : ℕ →. ℕ := fun n => Part.some (if A n then 1 else 0)

def Reduces (A B : Oracle) : Prop := TuringReducible (oracleFunction A) (oracleFunction B)

instance : IsPreorder Oracle Reduces where
  refl A := TuringReducible.refl (oracleFunction A)
  trans _ _ _ h k := TuringReducible.trans h k

def Degree := Antisymmetrization Oracle Reduces

instance : PartialOrder Degree :=
  @instPartialOrderAntisymmetrization Oracle
    { le := Reduces
      lt A B := Reduces A B ∧ ¬ Reduces B A
      lt_iff_le_not_ge _ _ := Iff.rfl
      le_refl A := TuringReducible.refl (oracleFunction A)
      le_trans _ _ _ h k := TuringReducible.trans h k }

/-! ### The jump (from the OpenAI solution modules) -/

def bit (b : Bool) : ℕ := if b then 1 else 0

def oraclePrefix (g : ℕ → ℕ) (m : ℕ) : List ℕ := (List.range m).map g

def trial (g : ℕ → ℕ) (c : Nat.Partrec.Code) (n z : ℕ) : Option ℕ :=
  c.evaln (Nat.unpair z).2 (Nat.pair (encode (oraclePrefix g (Nat.unpair z).1)) n)

def run (Y : Oracle) (d : Nat.Partrec.Code) (n z : ℕ) : Option ℕ :=
  trial (fun k => bit (Y k)) d n z

def machine (e : ℕ) : Nat.Partrec.Code := (decode e).getD .zero

def Halts (Y : Oracle) (e n : ℕ) : Prop := ∃ z a, a ∈ run Y (machine e) n z

noncomputable def jump (Y : Oracle) : Oracle := by
  classical
  exact fun v => decide (Halts Y (Nat.unpair v).1 (Nat.unpair v).2)

/-! ### Statement -/

/-- The Turing jump on degrees: the degree of `jump Y` for a representative `Y` of `a`. -/
noncomputable def degreeJump (a : Degree) : Degree :=
  toAntisymmetrization Reduces (jump (ofAntisymmetrization Reduces a))

/-- The Turing degrees as a structure for the first-order language of partial orders, with the
relation symbol `≤` read as `≤` on degrees. -/
instance : FirstOrder.Language.order.Structure Degree :=
  FirstOrder.Language.orderStructure Degree

/-- Shore–Slaman: the Turing jump is first-order definable, without parameters, in the partial
order of the Turing degrees. -/
theorem turing_jump_definable :
    ∃ φ : FirstOrder.Language.order.Formula (Fin 2),
      ∀ a b : Degree, φ.Realize ![a, b] ↔ b = degreeJump a := by
  sorry

end Mathathon.P03
