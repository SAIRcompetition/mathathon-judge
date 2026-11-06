/-
Mathathon Round 1, Problem 04: official Lean statement.

Source (openai/math, Apache License 2.0):
  https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Algebra/Universal/Congruence.lean
Adapted: the definitions `Algebra`, `Compatible`, `Congruence` (with its `PartialOrder`
instance) and `Representable` are copied unchanged, with their docstrings, into
`namespace Mathathon.P04`. The same definitions appear in the source's statement file
`lean/ComparatorChallenges/FiniteCongruenceGraph.lean`, whose theorem is only the
colored-graph criterion. The theorem `exists_not_representable` is written for Mathathon.
It states the main result of OpenAI, "A negative solution to the finite lattice
representation problem" (2026): there is a finite nonempty lattice that is not isomorphic to
the congruence lattice of any finite nonempty algebra of finite signature. The hypothesis
`Nonempty L` is needed, because the empty type is a lattice and is trivially not
representable. A finite signature loses nothing: on a finite set, any family of operations
has the same congruences as a finite subfamily.
-/

import Mathlib

namespace Mathathon.P04

/-- A finite list of total finite-arity operations. Arity zero is allowed. -/
structure Algebra (Carrier : Type) where
  numOps : ℕ
  arity : Fin numOps → ℕ
  op : (index : Fin numOps) → (Fin (arity index) → Carrier) → Carrier

/-- Compatibility with all operations of an algebra. -/
def Compatible {Carrier : Type} (alg : Algebra Carrier) (rel : Setoid Carrier) : Prop :=
  ∀ (index : Fin alg.numOps) (left right : Fin (alg.arity index) → Carrier),
    (∀ coord, rel (left coord) (right coord)) → rel (alg.op index left) (alg.op index right)

/-- The full ordered set of congruences, ordered by inclusion of relations. -/
def Congruence {Carrier : Type} (alg : Algebra Carrier) :=
  {rel : Setoid Carrier // Compatible alg rel}

instance {Carrier : Type} (alg : Algebra Carrier) : PartialOrder (Congruence alg) :=
  inferInstanceAs (PartialOrder {rel : Setoid Carrier // Compatible alg rel})

/-- Order-isomorphism with the entire congruence lattice of a nonempty finite algebra. -/
def Representable (Lat : Type) [PartialOrder Lat] : Prop :=
  ∃ size : ℕ, 0 < size ∧ ∃ alg : Algebra (Fin size), Nonempty (Lat ≃o Congruence alg)

/-- **Negative solution to the finite lattice representation problem.** There is a finite
nonempty lattice that is not isomorphic to the congruence lattice of any finite nonempty
algebra. -/
theorem exists_not_representable :
    ∃ (L : Type) (_ : Lattice L), Finite L ∧ Nonempty L ∧ ¬ Representable L := by
  sorry

end Mathathon.P04
