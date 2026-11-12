/-
Mathathon Round 1, Problem 120: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
The problem lets participants choose among several results and names two as the ideal targets,
Marcinkiewicz's theorem and Dufresne's identity; this file states the first (the second is in
`P120_Dufresne.lean`). Marcinkiewicz's theorem (J. Marcinkiewicz, Math. Z. 44 (1939)): if the
characteristic function of a probability measure on `ℝ` is `t ↦ exp (P t)` for a polynomial `P`
(with complex coefficients), then the measure is Gaussian. Mathlib's `IsGaussian` includes the
point masses (Gaussians of variance `0`), so the conclusion is "a Gaussian or a point mass", as on
the problem page; given the hypothesis, it is equivalent to `P` having degree at most `2`.
-/

import Mathlib

namespace Mathathon.P120

open MeasureTheory ProbabilityTheory

/-- **Marcinkiewicz's theorem.** If the characteristic function of a probability measure `μ` on
`ℝ` is `t ↦ exp (P t)` for a polynomial `P` with complex coefficients, then `μ` is Gaussian
(possibly a point mass, i.e. a Gaussian of variance `0`). -/
theorem marcinkiewicz (μ : Measure ℝ) [IsProbabilityMeasure μ] (P : Polynomial ℂ)
    (hP : ∀ t : ℝ, charFun μ t = Complex.exp (P.eval (t : ℂ))) :
    IsGaussian μ := by
  sorry

end Mathathon.P120
