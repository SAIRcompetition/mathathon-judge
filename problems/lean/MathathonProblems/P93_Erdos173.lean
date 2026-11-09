/-
Mathathon Round 1, Problem 93: official Lean statement.

Source (google-deepmind/formal-conjectures, Apache License 2.0):
  https://github.com/google-deepmind/formal-conjectures/blob/7db2ea3b91bfbd0ab620215163e6c488bbb916d5/FormalConjectures/ErdosProblems/173.lean
  https://github.com/google-deepmind/formal-conjectures/blob/7db2ea3b91bfbd0ab620215163e6c488bbb916d5/FormalConjecturesForMathlib/Geometry/2d.lean
Adapted: the definition `HasMonochromaticCopy` and the theorem `erdos_173` are copied unchanged
(with their docstrings, `open` lines and namespace) from `173.lean`; the notation `ℝ²` (scoped in
`2d.lean`) is declared as a `local notation`; the formal-conjectures imports, the module-system
header, the metadata attributes and the two variants are left out. The same two declarations
appear, with the same text, in plasma-ai/erdos-173 (`Challenge.lean`, commit
4a368a652753fab53272f7a747755876f04bc2cc).
-/

import Mathlib

open Affine
open scoped Congruent EuclideanGeometry

local notation "ℝ²" => EuclideanSpace ℝ (Fin 2)

namespace Erdos173

/--
The colouring `c` contains a monochromatic triangle congruent to `T`.

Since `T'` is arbitrary, relabellings and reflections of `T` are allowed. Rescaling is not.
-/
def HasMonochromaticCopy (c : ℝ² → Fin 2) (T : Triangle ℝ ℝ²) : Prop :=
  ∃ T' : Triangle ℝ ℝ², (T'.points ≅ T.points) ∧ ∃ i, ∀ j, c (T'.points j) = i

/--
In any $2$-colouring of $\mathbb{R}^2$, for all but at most one triangle $T$ (up to
congruence), there is a monochromatic congruent copy of $T$.

The colouring is arbitrary. No measurability is assumed. `≅` compares vertices with the same
label, so the conclusion allows a relabelling `σ`.
-/
theorem erdos_173 : ∀ (c : ℝ² → Fin 2) (T₁ T₂ : Triangle ℝ ℝ²),
    ¬ HasMonochromaticCopy c T₁ → ¬ HasMonochromaticCopy c T₂ →
      ∃ σ : Equiv.Perm (Fin 3), T₁.points ∘ σ ≅ T₂.points := by
  sorry

end Erdos173
