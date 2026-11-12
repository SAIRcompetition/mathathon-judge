/-
Mathathon Round 1, Problem 101: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states the theorem of Marstrand (1964) and Preiss (1987) in the form of C. De Lellis,
"Rectifiable Sets, Densities and Tangent Measures", Theorem 1.1: if a locally finite measure `μ`
on `ℝⁿ` has, at `μ`-almost every point, an `α`-dimensional density that exists and is positive
and finite, then `μ = 0`, or `α` is an integer `k ≤ n` and `μ` is `k`-rectifiable. Preiss's
stronger form with comparable upper and lower densities, and the classical converse, are not
included.

Modelling choices. The density is the limit of `μ(B̄(x, r)) / r ^ α` as `r ↓ 0` (closed balls;
the normalising constant `ω_α` and the choice of open or closed balls do not affect whether the
limit exists in `(0, ∞)`). A measure `μ` is called `k`-rectifiable here when it is absolutely
continuous with respect to the `k`-dimensional Hausdorff measure and gives no mass to the
complement of countably many Lipschitz images of `ℝᵏ`. This is the usual definition of a
`k`-rectifiable measure; by the Radon–Nikodym theorem it amounts to `μ = θ 𝓗ᵏ ⌞ E` with `E`
countably `k`-rectifiable and `θ` Borel, which is the representation
`μ(A) = ∑ᵢ ∫_{Γᵢ ∩ A} f dVol_k` of De Lellis's theorem.
-/

import Mathlib

namespace Mathathon.P101

open MeasureTheory Metric Filter Topology

/-- At `x`, the `α`-dimensional density of `μ`, `lim_{r ↓ 0} μ(B̄(x, r)) / r ^ α`, exists and is
positive and finite. -/
def HasPosFiniteDensity {n : ℕ} (μ : Measure (EuclideanSpace ℝ (Fin n))) (α : ℝ)
    (x : EuclideanSpace ℝ (Fin n)) : Prop :=
  ∃ θ : ℝ, 0 < θ ∧
    Tendsto (fun r : ℝ => (μ (closedBall x r)).toReal / r ^ α) (𝓝[>] 0) (𝓝 θ)

/-- `μ` is `k`-rectifiable: `μ ≪ 𝓗ᵏ`, and `μ` is concentrated on the union of the images of
countably many Lipschitz maps `ℝᵏ → ℝⁿ`. -/
def IsRectifiable {n : ℕ} (μ : Measure (EuclideanSpace ℝ (Fin n))) (k : ℕ) : Prop :=
  μ ≪ μH[(k : ℝ)] ∧
    ∃ f : ℕ → EuclideanSpace ℝ (Fin k) → EuclideanSpace ℝ (Fin n),
      (∀ i, ∃ L, LipschitzWith L (f i)) ∧ μ (⋃ i, Set.range (f i))ᶜ = 0

/-- **Preiss's theorem** (with Marstrand's theorem that `α` is an integer): if the
`α`-dimensional density of a locally finite measure `μ` on `ℝⁿ` exists and is positive and finite
at `μ`-almost every point, then either `μ = 0` or `α` is an integer `k ≤ n` and `μ` is
`k`-rectifiable. -/
theorem preiss {n : ℕ} (μ : Measure (EuclideanSpace ℝ (Fin n))) [IsLocallyFiniteMeasure μ]
    (α : ℝ) (hα : 0 ≤ α) (hμ : ∀ᵐ x ∂μ, HasPosFiniteDensity μ α x) :
    μ = 0 ∨ ∃ k : ℕ, k ≤ n ∧ α = k ∧ IsRectifiable μ k := by
  sorry

end Mathathon.P101
