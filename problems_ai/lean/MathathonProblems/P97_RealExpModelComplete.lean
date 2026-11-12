/-
Mathathon Round 1, Problem 97: official Lean statement, prepared by AI. It may contain errors.

Source (google-deepmind/formal-conjectures, Apache License 2.0):
  https://github.com/google-deepmind/formal-conjectures/blob/a425ca3eb797fe927cb88c950565fdcbbbbada70/FormalConjecturesForMathlib/ModelTheory/Real.lean
Adapted: the definitions `expFunc`, `Language.exp` and `Language.orderedExpField`, the instance
`Language.orderedExpField.instIsOrdered`, the instances `compatibleRingReal`,
`orderStructureReal` and `expStructureReal` that make `ℝ` the real exponential field, and the
three examples that check the interpretation of `exp`, `+` and `≤` are copied unchanged, with
their docstrings, into `namespace Mathathon.P97`, with `open FirstOrder FirstOrder.Language`
added so that the names resolve there and `deriving IsAlgebraic` written
`deriving FirstOrder.Language.IsAlgebraic`, because `IsAlgebraic` is ambiguous outside the
namespace `FirstOrder.Language`. The module-system header, the `Encodable` instance, the
`OrderedStructure` instances, the `simp` lemma `funMap_exp` and the `Encodable` example are left
out, and the imports are replaced by `import Mathlib`. formal-conjectures uses the same language
in its statement of Tarski's exponential function problem
(`FormalConjectures/Wikipedia/TarskiExponentialFunctionProblem.lean`).

The theorem `real_exp_model_complete` is written by AI for Mathathon. It states Wilkie's theorem
(A. J. Wilkie, J. Amer. Math. Soc. 9 (1996), Second Main Theorem): the theory of the real
exponential field ℝ_exp = (ℝ, +, ·, -, 0, 1, ≤, exp) is model complete. This theory is the
complete theory of ℝ_exp, so model completeness says exactly that every first-order formula is
equivalent in ℝ_exp to an existential formula (existential quantifiers in front of a
quantifier-free formula) with the same free variables; this is the form stated. The language has
`≤` and unary `-` where the problem has `<` and binary `-`; each is quantifier-free definable from
the other, so the change does not affect which formulas are equivalent to existential ones.

The source file carries this notice:

    Copyright 2026 The Formal Conjectures Authors.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
-/

import Mathlib

namespace Mathathon.P97

open FirstOrder FirstOrder.Language

/-- The type of function symbols of `Language.exp`: a single unary symbol `exp`. -/
inductive expFunc : ℕ → Type
  | exp : expFunc 1
  deriving DecidableEq

namespace Language

/-- The language with a single unary function symbol `exp` and no relation symbols. -/
protected def exp : Language := ⟨expFunc, fun _ => Empty⟩
  deriving FirstOrder.Language.IsAlgebraic

/-- The language of ordered exponential fields: the language of rings, together with a unary
function symbol `exp` and the order relation `≤`. -/
protected abbrev orderedExpField : Language :=
  Language.ring.sum (Language.exp.sum Language.order)

/-- The language of ordered exponential fields contains the order symbol `≤`. -/
instance orderedExpField.instIsOrdered : Language.orderedExpField.IsOrdered :=
  ⟨Sum.inr leSymb⟩

noncomputable section Real

/-- `ℝ` as a structure for the language of rings, with the usual ring operations. -/
instance compatibleRingReal : Ring.CompatibleRing ℝ := Ring.compatibleRingOfRing ℝ

/-- `ℝ` as a structure for the language of orders, with `≤` interpreted as `≤`. -/
instance orderStructureReal : Language.order.Structure ℝ := orderStructure ℝ

/-- `ℝ` as a structure for `Language.exp`, with `exp` interpreted as the exponential function. -/
instance expStructureReal : Language.exp.Structure ℝ where
  funMap {n} f := match n, f with
    | _, .exp => fun x => Real.exp (x 0)

-- In the real exponential field, the symbol `exp` is interpreted as the exponential function.
example (x : ℝ) :
    Structure.funMap (L := Language.orderedExpField) (Sum.inr (Sum.inl expFunc.exp)) ![x] =
      Real.exp x :=
  rfl

-- In the real exponential field, the symbol `+` is interpreted as addition.
example (x y : ℝ) :
    Structure.funMap (L := Language.orderedExpField) (Sum.inl Ring.addFunc) ![x, y] = x + y :=
  rfl

-- In the real exponential field, the symbol `≤` is interpreted as the order of `ℝ`.
example (x y : ℝ) :
    Structure.RelMap (L := Language.orderedExpField) leSymb ![x, y] ↔ x ≤ y :=
  Iff.rfl

end Real

end Language

/-- **Wilkie's theorem.** The theory of the real exponential field
`(ℝ, +, ·, -, 0, 1, ≤, exp)` is model complete: every first-order formula `φ` in the language of
ordered exponential fields, with free variables indexed by `Fin n`, is equivalent in `ℝ` to an
existential formula `ψ` with the same free variables. -/
theorem real_exp_model_complete {n : ℕ} (φ : Language.orderedExpField.Formula (Fin n)) :
    ∃ ψ : Language.orderedExpField.Formula (Fin n), ψ.IsExistential ∧
      ∀ x : Fin n → ℝ, φ.Realize x ↔ ψ.Realize x := by
  sorry

end Mathathon.P97
