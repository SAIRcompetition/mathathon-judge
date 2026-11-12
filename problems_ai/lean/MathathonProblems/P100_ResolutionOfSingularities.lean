/-
Mathathon Round 1, Problem 100: official Lean statement, prepared by AI. It may contain errors.

Source (google-deepmind/formal-conjectures, Apache License 2.0):
  https://github.com/google-deepmind/formal-conjectures/blob/a425ca3eb797fe927cb88c950565fdcbbbbada70/FormalConjectures/Wikipedia/ResolutionOfSingularities.lean
Adapted: the definition `Scheme.HasResolution` and the theorem
`resolution_of_singularities_of_charZero` (Hironaka's theorem) are copied unchanged, with their
docstrings, `open` line, universe declaration and namespace. The module header, the
formal-conjectures import, `@[expose] public section`, the `category` and `AMS` attributes, the
module docstring (with its list of references), and the other declarations of the file (the
positive-characteristic, low-dimensional and imperfect-field statements and two auxiliary
lemmas) are left out.
`Scheme.BirationalOver`, `IsProper`, `Smooth` and `IsIntegral` are Mathlib's. In the
theorem's docstring, [Hir1964] is H. Hironaka, Ann. of Math. 79 (1964), 109–203 and 205–326,
and [Kol2007] is J. Kollár, "Resolution of singularities -- Seattle lecture", arXiv:math/0508332.

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

open CategoryTheory

universe u

namespace AlgebraicGeometry

/--
A scheme `X` over a base `S` with structure morphism `sX : X ⟶ S` admits a *resolution of
singularities* if there is an integral scheme `Y`, smooth over `S`, together with a proper
morphism `f : Y ⟶ X` that is birational over `X`, i.e. that restricts to an isomorphism between
dense open subschemes of `Y` and of `X`.
-/
def Scheme.HasResolution {S X : Scheme.{u}} (sX : X ⟶ S) : Prop :=
  ∃ (Y : Scheme.{u}) (f : Y ⟶ X),
    IsIntegral Y ∧ IsProper f ∧ Smooth (f ≫ sX) ∧ Scheme.BirationalOver f (𝟙 X)

/--
**Hironaka's theorem.** Every integral scheme that is separated and of finite type over a field
of characteristic zero admits a resolution of singularities. This is the main theorem of
[Hir1964]; see [Kol2007], Theorem 36, for a statement in the generality used here.
-/
theorem resolution_of_singularities_of_charZero (k : Type u) [Field k] [CharZero k]
    {X : Scheme.{u}} (sX : X ⟶ Spec (.of k)) [IsIntegral X] [LocallyOfFiniteType sX]
    [QuasiCompact sX] [IsSeparated sX] :
    Scheme.HasResolution sX := by
  sorry

end AlgebraicGeometry
