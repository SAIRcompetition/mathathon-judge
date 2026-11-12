/-
Mathathon Round 1, Problem 43: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states Gromov's simplicial volume vanishing conjecture: a closed smooth manifold that admits a
Riemannian metric of positive scalar curvature has simplicial volume zero. Q. Ma, J. Wang, Z. Xie,
G. Yu and B. Zhu (arXiv:2606.29135) prove it when the universal cover is spin; an OpenAI preprint
(September 2026) claims it in general as a consequence of rational inessentiality, which is not
stated here (it needs classifying spaces).

Modelling choices:
* A closed manifold is a compact Hausdorff smooth manifold without boundary modelled on `ℝ^(d+1)`;
  the metric is a smooth Riemannian metric on its tangent bundle (`ContMDiffRiemannianMetric`).
* The scalar curvature at `x` is computed in the chart at `x` by the coordinate formulas
  `Γᵏᵢⱼ = ½ gᵏˡ (∂ᵢ gⱼₗ + ∂ⱼ gᵢₗ - ∂ₗ gᵢⱼ)`, `Rᵢⱼ = ∂ₖ Γᵏᵢⱼ - ∂ⱼ Γᵏᵢₖ + Γᵏₖₗ Γˡᵢⱼ - Γᵏⱼₗ Γˡᵢₖ`,
  `scal = gⁱʲ Rᵢⱼ`, with the convention that round spheres have positive scalar curvature.
* Real singular chains are finitely supported real combinations of singular simplices of Mathlib's
  singular simplicial set `TopCat.toSSet`, with boundary `∑ᵢ (-1)ⁱ dᵢ` and the `ℓ¹`-norm
  `∑ |aᵢ|`.
* "Simplicial volume zero" is stated as: every real singular `(d+1)`-cycle is homologous to cycles
  of arbitrarily small `ℓ¹`-norm, i.e. the `ℓ¹`-seminorm vanishes on `H_{d+1}(M; ℝ)`. For closed
  oriented `M` this space is spanned by the fundamental classes of the components, so the condition
  is equivalent to `‖M‖ = 0`; on non-orientable components it holds trivially (their simplicial
  volume is defined through the orientation double cover, which also has positive scalar
  curvature). No orientation or connectedness is assumed.
-/

import Mathlib

namespace Mathathon.P43

open Manifold Bundle CategoryTheory Simplicial
open scoped ContDiff

/-- A smooth Riemannian metric on a smooth manifold modelled on `ℝ^m`. -/
abbrev SmoothRiemannianMetric (m : ℕ) (M : Type) [TopologicalSpace M]
    [ChartedSpace (EuclideanSpace ℝ (Fin m)) M]
    [IsManifold 𝓘(ℝ, EuclideanSpace ℝ (Fin m)) ∞ M] :=
  ContMDiffRiemannianMetric 𝓘(ℝ, EuclideanSpace ℝ (Fin m)) ∞ (EuclideanSpace ℝ (Fin m))
    (fun x : M => TangentSpace 𝓘(ℝ, EuclideanSpace ℝ (Fin m)) x)

section Curvature

variable {m : ℕ} {M : Type} [TopologicalSpace M] [ChartedSpace (EuclideanSpace ℝ (Fin m)) M]
  [IsManifold 𝓘(ℝ, EuclideanSpace ℝ (Fin m)) ∞ M]

/-- The coordinate vector `∂/∂yᵢ` of the chart at `p`, at the point with coordinates `y`. -/
noncomputable def coordinateVector (p : M) (y : EuclideanSpace ℝ (Fin m)) (i : Fin m) :
    TangentSpace 𝓘(ℝ, EuclideanSpace ℝ (Fin m)) ((chartAt (EuclideanSpace ℝ (Fin m)) p).symm y) :=
  mfderiv 𝓘(ℝ, EuclideanSpace ℝ (Fin m)) 𝓘(ℝ, EuclideanSpace ℝ (Fin m))
    (chartAt (EuclideanSpace ℝ (Fin m)) p).symm y (EuclideanSpace.single i 1)

/-- The metric coefficients `gᵢⱼ(y)` in the chart at `p` (meaningful on the chart's target). -/
noncomputable def metricCoeff (g : SmoothRiemannianMetric m M) (p : M)
    (y : EuclideanSpace ℝ (Fin m)) : Matrix (Fin m) (Fin m) ℝ :=
  fun i j => g.inner ((chartAt (EuclideanSpace ℝ (Fin m)) p).symm y)
    (coordinateVector p y i) (coordinateVector p y j)

/-- The partial derivative `∂ᵢ f (y)` of a function on `ℝ^m`. -/
noncomputable def partialDeriv (f : EuclideanSpace ℝ (Fin m) → ℝ) (i : Fin m)
    (y : EuclideanSpace ℝ (Fin m)) : ℝ :=
  fderiv ℝ f y (EuclideanSpace.single i 1)

/-- The Christoffel symbols `Γᵏᵢⱼ = ½ gᵏˡ (∂ᵢ gⱼₗ + ∂ⱼ gᵢₗ - ∂ₗ gᵢⱼ)` in the chart at `p`. -/
noncomputable def christoffel (g : SmoothRiemannianMetric m M) (p : M)
    (y : EuclideanSpace ℝ (Fin m)) (k i j : Fin m) : ℝ :=
  (1 / 2) * ∑ l, (metricCoeff g p y)⁻¹ k l *
    (partialDeriv (fun z => metricCoeff g p z j l) i y +
      partialDeriv (fun z => metricCoeff g p z i l) j y -
      partialDeriv (fun z => metricCoeff g p z i j) l y)

/-- The Ricci tensor `Rᵢⱼ = ∂ₖ Γᵏᵢⱼ - ∂ⱼ Γᵏᵢₖ + Γᵏₖₗ Γˡᵢⱼ - Γᵏⱼₗ Γˡᵢₖ` in the chart at `p`. -/
noncomputable def ricci (g : SmoothRiemannianMetric m M) (p : M)
    (y : EuclideanSpace ℝ (Fin m)) (i j : Fin m) : ℝ :=
  (∑ k, (partialDeriv (fun z => christoffel g p z k i j) k y -
      partialDeriv (fun z => christoffel g p z k i k) j y)) +
    ∑ k, ∑ l, (christoffel g p y k k l * christoffel g p y l i j -
      christoffel g p y k j l * christoffel g p y l i k)

/-- The scalar curvature `gⁱʲ Rᵢⱼ` at `x`, computed in the chart at `x`. -/
noncomputable def scalarCurvature (g : SmoothRiemannianMetric m M) (x : M) : ℝ :=
  let y := chartAt (EuclideanSpace ℝ (Fin m)) x x
  ∑ i, ∑ j, (metricCoeff g x y)⁻¹ i j * ricci g x y i j

end Curvature

section SingularChains

variable {M : Type} [TopologicalSpace M]

/-- Singular `k`-simplices of `M`: continuous maps from the standard `k`-simplex to `M`. -/
abbrev SingularSimplex (M : Type) [TopologicalSpace M] (k : ℕ) : Type :=
  (TopCat.toSSet.obj (TopCat.of M)) _⦋k⦌

/-- Real singular `k`-chains of `M`. -/
abbrev SingularChain (M : Type) [TopologicalSpace M] (k : ℕ) : Type :=
  SingularSimplex M k →₀ ℝ

/-- The singular boundary `∂ = ∑ᵢ (-1)ⁱ dᵢ` from `(k+1)`-chains to `k`-chains. -/
noncomputable def boundary {k : ℕ} (c : SingularChain M (k + 1)) : SingularChain M k :=
  ∑ i : Fin (k + 2), ((-1 : ℝ) ^ (i : ℕ)) •
    Finsupp.mapDomain ((TopCat.toSSet.obj (TopCat.of M)).δ i) c

/-- The `ℓ¹`-norm `∑ |aᵢ|` of a real singular chain `∑ aᵢ σᵢ`. -/
noncomputable def l1Norm {k : ℕ} (c : SingularChain M k) : ℝ :=
  c.sum fun _ a => |a|

/-- The `ℓ¹`-seminorm vanishes on `H_{k+1}(M; ℝ)`: every real singular `(k+1)`-cycle is
homologous to cycles of arbitrarily small `ℓ¹`-norm. For a closed manifold of dimension `k + 1`
this says that its simplicial volume is zero. -/
def L1SeminormVanishes (M : Type) [TopologicalSpace M] (k : ℕ) : Prop :=
  ∀ z : SingularChain M (k + 1), boundary z = 0 →
    ∀ ε : ℝ, 0 < ε → ∃ b : SingularChain M (k + 2), l1Norm (z + boundary b) < ε

end SingularChains

/-- Gromov's conjecture: a closed smooth `(d+1)`-manifold carrying a Riemannian metric of positive
scalar curvature has simplicial volume zero. -/
theorem gromov_simplicial_volume_vanishing (d : ℕ) (M : Type) [TopologicalSpace M] [T2Space M]
    [CompactSpace M] [ChartedSpace (EuclideanSpace ℝ (Fin (d + 1))) M]
    [IsManifold 𝓘(ℝ, EuclideanSpace ℝ (Fin (d + 1))) ∞ M]
    (g : SmoothRiemannianMetric (d + 1) M) (hg : ∀ x, 0 < scalarCurvature g x) :
    L1SeminormVanishes M d := by
  sorry

end Mathathon.P43
