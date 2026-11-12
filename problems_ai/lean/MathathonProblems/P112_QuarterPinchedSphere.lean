/-
Mathathon Round 1, Problem 112: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states the differentiable sphere theorem of S. Brendle and R. Schoen ("Manifolds with
1/4-pinched curvature are space forms", J. Amer. Math. Soc. 22 (2009), Theorem 1, simply connected
case): a compact, simply connected Riemannian manifold without boundary, of dimension `n ≥ 4`,
whose sectional curvatures are strictly pointwise 1/4-pinched (`0 < K(π₁) < 4 K(π₂)` for all
2-planes `π₁`, `π₂` at the same point) is diffeomorphic to the unit sphere `Sⁿ ⊆ ℝⁿ⁺¹`.
The manifold is modelled on a finite-dimensional real normed space `E` without inner product, so
that the only inner product on its tangent spaces is the Riemannian metric. The curvature is that of
Mathlib's Levi-Civita connection `CovariantDerivative.leviCivitaConnection`, with the conventions
`R(X, Y) Z = ∇_X ∇_Y Z - ∇_Y ∇_X Z - ∇_[X,Y] Z` and `K = ⟨R(X, Y) Y, X⟩` for orthonormal `X`, `Y`
(the round sphere has `K = 1`); the pinching condition is imposed on all smooth vector fields that
are orthonormal at the point considered. Dimensions 2 and 3, excluded in Brendle–Schoen's theorem,
are classical. The lean-eval benchmark's `LeanEval.Geometry.SphereTheorem.differentiable_sphere_theorem`
states the weaker, globally pinched version (all sectional curvatures in `(1, 4]`).
-/

import Mathlib

namespace Mathathon.P112

open scoped Manifold ContDiff Bundle
open Bundle VectorField Metric

variable
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
  {H : Type*} [TopologicalSpace H] {I : ModelWithCorners ℝ E H}
  {M : Type*} [TopologicalSpace M] [ChartedSpace H M] [IsManifold I ∞ M]
  [RiemannianBundle (fun x : M ↦ TangentSpace I x)]
  [IsContMDiffRiemannianBundle I ∞ E (fun x : M ↦ TangentSpace I x)]

variable (I M) in
/-- The Riemann curvature tensor of the Levi-Civita connection `∇` of `M`, on vector fields:
`R(X, Y) Z = ∇_X ∇_Y Z - ∇_Y ∇_X Z - ∇_[X, Y] Z`. -/
noncomputable def riemannCurvature (X Y Z : Π x : M, TangentSpace I x) :
    Π x : M, TangentSpace I x :=
  fun x =>
    CovariantDerivative.leviCivitaConnection I M
        (fun y => CovariantDerivative.leviCivitaConnection I M Z y (Y y)) x (X x)
      - CovariantDerivative.leviCivitaConnection I M
        (fun y => CovariantDerivative.leviCivitaConnection I M Z y (X y)) x (Y x)
      - CovariantDerivative.leviCivitaConnection I M Z x (mlieBracket I X Y x)

variable (I M) in
/-- The sectional curvatures of `M` are strictly pointwise 1/4-pinched: whenever `X x, Y x` and
`X' x, Y' x` are orthonormal pairs at the same point `x` (with `X, Y, X', Y'` smooth vector fields),
the sectional curvatures `K = ⟨R(X, Y) Y, X⟩` and `K' = ⟨R(X', Y') Y', X'⟩` at `x` satisfy
`0 < K < 4 K'`. -/
def PointwiseQuarterPinched : Prop :=
  ∀ X Y X' Y' : Π x : M, TangentSpace I x,
    CMDiff ∞ (T% X) → CMDiff ∞ (T% Y) → CMDiff ∞ (T% X') → CMDiff ∞ (T% Y') →
    ∀ x : M,
      inner ℝ (X x) (X x) = (1 : ℝ) → inner ℝ (Y x) (Y x) = (1 : ℝ) →
      inner ℝ (X x) (Y x) = (0 : ℝ) →
      inner ℝ (X' x) (X' x) = (1 : ℝ) → inner ℝ (Y' x) (Y' x) = (1 : ℝ) →
      inner ℝ (X' x) (Y' x) = (0 : ℝ) →
        0 < inner ℝ (riemannCurvature I M X Y Y x) (X x) ∧
          inner ℝ (riemannCurvature I M X Y Y x) (X x) <
            4 * inner ℝ (riemannCurvature I M X' Y' Y' x) (X' x)

/-- Brendle–Schoen: a compact, simply connected Riemannian manifold without boundary, of dimension
`n ≥ 4`, with strictly pointwise 1/4-pinched sectional curvatures is diffeomorphic to `Sⁿ`. -/
theorem differentiable_sphere_theorem [I.Boundaryless] [CompactSpace M] [T2Space M]
    [SimplyConnectedSpace M] (hdim : 4 ≤ Module.finrank ℝ E)
    (hpinch : PointwiseQuarterPinched I M) :
    Nonempty (M ≃ₘ⟮I, 𝓡 (Module.finrank ℝ E)⟯
      sphere (0 : EuclideanSpace ℝ (Fin (Module.finrank ℝ E + 1))) 1) := by
  sorry

end Mathathon.P112
