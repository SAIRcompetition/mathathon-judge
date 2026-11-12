/-
Mathathon Round 1, Problem 124: official Lean statement, prepared by AI. It may contain errors.

Source (google-deepmind/formal-conjectures, Apache License 2.0):
  https://github.com/google-deepmind/formal-conjectures/blob/a425ca3eb797fe927cb88c950565fdcbbbbada70/FormalConjectures/OpenQuantumProblems/13.lean
Adapted: the definitions `UMat`, `relativeUnitary`, `IsUnbiased`, `IsMUBFamily`, `HasMUBs` and
`IsMaxMUBCount` and the theorem `mutuallyUnbiasedBases_dim6` are copied unchanged (with their
docstrings, the namespace and the `noncomputable section`), except that the open answer
`mutuallyUnbiasedBases_dim6.answer` (a definition by `sorry` in the source, which lists the
problem as open) is replaced by `3`, the value claimed by the OpenAI preprint "The maximum number
of mutually unbiased bases in dimension six" (24 September 2026). The formal-conjectures imports,
the module-system header, the module docstring, the metadata attributes, the definition
`HasCompleteMUBs`, the API lemmas, the qubit section and the other theorems are left out.

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

noncomputable section
namespace OpenQuantumProblem13

/- ## Preliminaries -/

/-- A unitary matrix representing an orthonormal basis of $\mathbb{C}^d$ via its columns. -/
abbrev UMat (d : ℕ) := ↥(Matrix.unitaryGroup (Fin d) ℂ)

/-- The relative unitary between two bases. -/
def relativeUnitary {d : ℕ} (U V : UMat d) : Matrix (Fin d) (Fin d) ℂ :=
  star (U : Matrix (Fin d) (Fin d) ℂ) * (V : Matrix (Fin d) (Fin d) ℂ)

/-- Two unitary matrices represent mutually unbiased bases if every entry of the relative
unitary has squared norm $1 / d$. -/
def IsUnbiased {d : ℕ} (U V : UMat d) : Prop :=
  ∀ i j : Fin d, ‖relativeUnitary U V i j‖ ^ (2 : ℕ) = (d : ℝ)⁻¹

/-- A family of unitary matrices is a family of mutually unbiased bases if every two distinct
members are unbiased. -/
def IsMUBFamily {d k : ℕ} (B : Fin k → UMat d) : Prop :=
  Pairwise fun m n => IsUnbiased (B m) (B n)

/-- There exist $k$ mutually unbiased bases in $\mathbb{C}^d$. -/
def HasMUBs (d k : ℕ) : Prop :=
  ∃ B : Fin k → UMat d, IsMUBFamily B

/-- $k$ is the maximal size of a family of mutually unbiased bases in dimension $d$. -/
def IsMaxMUBCount (d k : ℕ) : Prop :=
  HasMUBs d k ∧ ∀ m : ℕ, HasMUBs d m → m ≤ k

/-- Special case in dimension $6$: determine the maximal number of mutually unbiased
orthonormal bases in $\mathbb{C}^6$. -/
theorem mutuallyUnbiasedBases_dim6 :
    IsMaxMUBCount 6 3 := by
  sorry

end OpenQuantumProblem13
