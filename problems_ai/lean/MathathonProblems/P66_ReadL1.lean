/-
Mathathon Round 1, Problem 66: official Lean statement, prepared by AI. It may contain errors.

Source (google-deepmind/formal-conjectures, Apache License 2.0):
  https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjectures/Wikipedia/InvariantSubspaceProblem.lean
Adapted: the structure `ClosedInvariantSubspace` and the theorem `Invariant_subspace_problem_l1`
are copied unchanged; the formal-conjectures imports, metadata attributes, linter option, and the
other theorems of the file (the Hilbert-space cases) are left out.
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
