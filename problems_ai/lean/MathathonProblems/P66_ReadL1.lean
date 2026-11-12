/-
Mathathon Round 1, Problem 66: official Lean statement, prepared by AI. It may contain errors.

Source (google-deepmind/formal-conjectures, Apache License 2.0):
  https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjectures/Wikipedia/InvariantSubspaceProblem.lean
Adapted: the structure `ClosedInvariantSubspace` and the theorem `Invariant_subspace_problem_l1`
are copied unchanged; the formal-conjectures imports, metadata attributes, linter option, the
other theorems of the file (the Hilbert-space and finite-dimensional cases) and an auxiliary lemma
are left out.

The source file carries this notice:

    Copyright 2025 The Formal Conjectures Authors.

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

namespace InvariantSubspaceProblem

variable {H : Type*} [NormedAddCommGroup H]

/-- `ClosedInvariantSubspace T` is the type of non-trivial (different from `H` and `{0}`) closed
subspaces of a complex vector space `H` that are invariant under the action of linear map `T`. -/
structure ClosedInvariantSubspace [Module ℂ H] (T : H →L[ℂ] H) where
  toSubspace : Submodule ℂ H
  ne_bot : toSubspace ≠ ⊥
  ne_top : toSubspace ≠ ⊤
  is_closed : IsClosed (toSubspace : Set H)
  is_fixed : toSubspace.map T.toLinearMap ≤ toSubspace

/--
There exists a bounded linear operator `T` on the l1 space `(lp (fun (_ : ℕ) => ℂ) 1))` without
non-trivial closed `T`-invariant subspace [Read 1985](https://doi.org/10.1112/blms/17.4.305), see
also the first counterexample by Enflo [Enflo 1987](https://doi.org/10.1007%2FBF02392260), submitted
in 1981. -/
theorem Invariant_subspace_problem_l1 :
    ∃ (T : (lp (fun (_ : ℕ) => ℂ) 1) →L[ℂ] (lp (fun (_ : ℕ) => ℂ) 1)),
    IsEmpty (ClosedInvariantSubspace T) := by
  sorry

end InvariantSubspaceProblem
