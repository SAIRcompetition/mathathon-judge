/-
Mathathon Round 1, Problem 24: official Lean statement.

Written for Mathathon; not taken from an existing formalization.
It states the Gaussian correlation inequality (T. Royen, "A simple proof of the Gaussian
correlation conjecture extended to some multivariate gamma distributions", Far East J. Theor.
Stat. 48 (2014)), in the form of Theorem 1 of R. Latała and D. Matlak, "Royen's proof of the
Gaussian correlation inequality" (arXiv:1512.08776, 2015): for every centered Gaussian measure
`μ` on `ℝ^d` and all closed, convex, origin-symmetric sets `K` and `L`, `μ (K ∩ L) ≥ μ K * μ L`.
A centered Gaussian measure is a measure with Mathlib's `ProbabilityTheory.IsGaussian` (every
continuous linear functional has a real Gaussian law; degenerate covariances are allowed) whose
mean `∫ x, x ∂μ` is `0`.
-/

import Mathlib

namespace Mathathon.P24

open MeasureTheory ProbabilityTheory

/-- **Gaussian correlation inequality** (Royen 2014). For a centered Gaussian measure `μ` on
`ℝ^d` and closed convex sets `K`, `L` that are symmetric about the origin,
`μ K * μ L ≤ μ (K ∩ L)`. -/
theorem gaussian_correlation_inequality {d : ℕ} (μ : Measure (EuclideanSpace ℝ (Fin d)))
    [IsGaussian μ] (hμ : ∫ x, x ∂μ = 0) {K L : Set (EuclideanSpace ℝ (Fin d))}
    (hK_convex : Convex ℝ K) (hK_closed : IsClosed K) (hK_symm : ∀ x ∈ K, -x ∈ K)
    (hL_convex : Convex ℝ L) (hL_closed : IsClosed L) (hL_symm : ∀ x ∈ L, -x ∈ L) :
    μ K * μ L ≤ μ (K ∩ L) := by
  sorry

end Mathathon.P24
