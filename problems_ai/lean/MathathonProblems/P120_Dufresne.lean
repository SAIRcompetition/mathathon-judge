/-
Mathathon Round 1, Problem 120: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
The problem lets participants choose among several results and names two as the ideal targets,
Marcinkiewicz's theorem and Dufresne's identity; this file states the second (the first is in
`P120_Marcinkiewicz.lean`). Dufresne's identity (D. Dufresne, Scand. Actuar. J. 1990), in the
form of Matsumoto and Yor (Probab. Surveys 2 (2005), Theorem 6.2): for a standard Brownian motion
`B` and `μ > 0`, the perpetuity `∫₀^∞ exp (2 (B_s - μ s)) ds` has the law of `1 / (2 γ_μ)`, where
`γ_μ` has the gamma law with shape `μ` and rate `1`. Brownian motion is Mathlib's
`IsBrownianReal` (the finite-dimensional laws of Brownian motion and almost surely continuous
paths, indexed by `ℝ≥0`); the gamma law is Mathlib's `gammaMeasure μ 1`. The integral is the
Bochner integral over `(0, ∞)`, which is the perpetuity whenever the integrand is integrable
(almost surely); `HasLaw` also asserts that the perpetuity is almost everywhere measurable.
-/

import Mathlib

namespace Mathathon.P120

open MeasureTheory ProbabilityTheory
open scoped NNReal

/-- **Dufresne's identity.** If `B` is a standard Brownian motion and `μ > 0`, then
`∫₀^∞ exp (2 (B_s - μ s)) ds` has the law of `1 / (2 γ_μ)`, where `γ_μ` has the gamma
distribution with shape `μ` and rate `1`, i.e. density `x ^ (μ - 1) e ^ (-x) / Γ(μ)` on
`(0, ∞)`. -/
theorem dufresne {Ω : Type*} [MeasurableSpace Ω] (P : Measure Ω) [IsProbabilityMeasure P]
    (B : ℝ≥0 → Ω → ℝ) (hB : IsBrownianReal B P) (μ : ℝ) (hμ : 0 < μ) :
    HasLaw (fun ω => ∫ s in Set.Ioi (0 : ℝ), Real.exp (2 * (B s.toNNReal ω - μ * s)))
      ((gammaMeasure μ 1).map fun x => (2 * x)⁻¹) P := by
  sorry

end Mathathon.P120
