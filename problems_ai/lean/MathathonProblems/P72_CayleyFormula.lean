/-
Mathathon Round 1, Problem 72: official Lean statement, prepared by AI. It may contain errors.

Source (ProofAtlas, Advameg, Inc., Apache License 2.0):
  https://www.proofatlas.ai/sources/cayley-tree-formula/commits/f31d011b2b8860bfc9990007697b773f9bc96831/AtlasKnownTheorems/CayleyTreeFormula/Basic.lean
Adapted: the imports, the definitions `LabeledTree` and `CayleyTreeFormulaStatement`, and the
statement of `cayleyTreeFormula` are copied unchanged; the proof is replaced by `sorry`. The
`Fintype`/`Finite` instances, the Prüfer-code development, and all other lemmas of the source
file are left out, as the statement does not use them, and so is the module docstring, which
describes the proof.
-/

import Mathlib.Combinatorics.SimpleGraph.Acyclic
import Mathlib.Data.Fin.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Tactic

namespace AtlasKnownTheorems.CayleyTreeFormula

/-- Labeled trees on the vertex type `Fin n`, using mathlib's `SimpleGraph.IsTree`. -/
def LabeledTree (n : Nat) : Type :=
  {G : SimpleGraph (Fin n) // G.IsTree}

/-- Cayley's formula for labeled trees. -/
def CayleyTreeFormulaStatement : Prop :=
  ∀ n : Nat, 1 ≤ n → Nat.card (LabeledTree n) = n ^ (n - 2)

theorem cayleyTreeFormula : CayleyTreeFormulaStatement := by
  sorry

end AtlasKnownTheorems.CayleyTreeFormula
