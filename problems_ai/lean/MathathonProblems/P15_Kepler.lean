/-
Mathathon Round 1, Problem 15: official Lean statement, prepared by AI. It may contain errors.

Source (thefundamentaltheor3m/Sphere-Packing-Lean, Apache License 2.0):
  https://github.com/thefundamentaltheor3m/Sphere-Packing-Lean/blob/803f1623539ece84a19b2b6805764b8dea9ea6e6/SpherePacking/Basic/SpherePacking.lean
Adapted: the definitions `SpherePacking`, `SpherePacking.balls`, `SpherePacking.finiteDensity`,
`SpherePacking.density` and `SpherePackingConstant` are copied unchanged into
`namespace Mathathon.P15`, except that the sentence "See also `<TODO>` ..." is left out of the
docstring of `SpherePackingConstant`. The source's imports are replaced by `import Mathlib`.
The theorem `kepler` is written by AI for Mathathon, in the same form as the source project's
dimension-8 theorem `SpherePacking.MainTheorem`. It states the Kepler conjecture (T. Hales,
"A proof of the Kepler conjecture", Ann. of Math. 162 (2005)): the largest density of a packing
of equal balls in ℝ³ is π/√18. The density of a packing is the limit superior, as R → ∞, of the
fraction of the ball of radius R about the origin covered by the packing.

The source file carries this notice:

    Copyright (c) 2024 Sidharth Hariharan. All rights reserved.
    Released under Apache 2.0 license as described in the file LICENSE.
    Authors: Sidharth Hariharan, Gareth Ma
-/

import Mathlib

open BigOperators MeasureTheory Metric
open scoped ENNReal
open Filter

namespace Mathathon.P15

structure SpherePacking (d : ℕ) where
  centers : Set (EuclideanSpace ℝ (Fin d))
  separation : ℝ
  separation_pos : 0 < separation := by positivity
  centers_dist : Pairwise (separation ≤ dist · · : centers → centers → Prop)

variable {d : ℕ}

abbrev SpherePacking.balls (S : SpherePacking d) : Set (EuclideanSpace ℝ (Fin d)) :=
  ⋃ x : S.centers, ball (x : EuclideanSpace ℝ (Fin d)) (S.separation / 2)

noncomputable def SpherePacking.finiteDensity (S : SpherePacking d) (R : ℝ) : ℝ≥0∞ :=
  volume (S.balls ∩ ball 0 R) / (volume (ball (0 : EuclideanSpace ℝ (Fin d)) R))

noncomputable def SpherePacking.density (S : SpherePacking d) : ℝ≥0∞ :=
  limsup S.finiteDensity atTop

noncomputable section Density

/-- The `SpherePackingConstant` in dimension d is the supremum of the density of all packings. -/
def SpherePackingConstant (d : ℕ) : ℝ≥0∞ :=
  ⨆ S : SpherePacking d, S.density

end Density

/-- **The Kepler conjecture** (Hales, 2005). The largest density of a packing of equal balls in
three-dimensional Euclidean space is `π / √18`, the density of the face-centred cubic packing. -/
theorem kepler : SpherePackingConstant 3 = ENNReal.ofReal (Real.pi / Real.sqrt 18) := by
  sorry

end Mathathon.P15
