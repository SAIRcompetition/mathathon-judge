/-
Mathathon Round 1, Problem 10: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states the main theorem of the problem's first reference, N. Guillen and L. Silvestre,
"The Landau equation does not blow up" (Acta Math. 234 (2025); arXiv:2311.09420), Theorem 1.1:
if the interaction potential `α` satisfies `r |α'(r)| ≤ √19 α(r)` for all `r > 0`, then the
Fisher information `i(f) = ∫ |∇f|² / f` of a classical solution `f : [0, T] × ℝ³ → [0, ∞)` of the
space-homogeneous Landau equation `∂ₜ f = q(f)`,
`q(f)(v) = ∂_{v_i} ∫ α(|v - w|) a_{ij}(v - w) (∂_{v_j} - ∂_{w_j})[f(v) f(w)] dw`,
`a_{ij}(z) = |z|² δ_{ij} - z_i z_j`, is non-increasing in time. The power laws `α(r) = r^γ`,
`γ ∈ [-3, 1]`, including the Coulomb case `γ = -3`, satisfy the hypothesis.

Modelling choices. The paper calls a classical solution a smooth function that decays
sufficiently fast as `|v| → ∞`; here it is a smooth function of `(t, v)`, nonnegative for
`t ∈ [0, T]`, all of whose derivatives (in `t` and `v`) decay faster than any power of `|v|`
uniformly for `t ∈ [0, T]`, and which satisfies the equation pointwise for `t ∈ [0, T]`
(at `t = 0` and `t = T` the time derivative is that of the smooth function on `ℝ × ℝ³`). As in
the paper, `|∇f|² / f` is taken to be `0` where `f = 0` (Lean's convention `x / 0 = 0`).
Theorem 1.2 of the paper (global well-posedness), the Boltzmann analogue of Imbert, Silvestre and
Villani, and the Vlasov–Landau system named in the problem are not stated.
-/

import Mathlib

namespace Mathathon.P10

open MeasureTheory
open scoped ContDiff

local notation "ℝ³" => EuclideanSpace ℝ (Fin 3)

/-- The partial derivative `∂g/∂v_j (v)`. -/
noncomputable def partialDeriv (g : ℝ³ → ℝ) (j : Fin 3) (v : ℝ³) : ℝ :=
  fderiv ℝ g v (EuclideanSpace.single j 1)

/-- The matrix `a(z) = |z|² I - z ⊗ z`. -/
noncomputable def landauMatrix (z : ℝ³) (i j : Fin 3) : ℝ :=
  ‖z‖ ^ 2 * (if i = j then 1 else 0) - z i * z j

/-- The `i`-th component of the flux
`∫ α(|v - w|) a(v - w) (∇_v - ∇_w)[g(v) g(w)] dw`. -/
noncomputable def landauFlux (α : ℝ → ℝ) (g : ℝ³ → ℝ) (i : Fin 3) (v : ℝ³) : ℝ :=
  ∫ w, α ‖v - w‖ * ∑ j, landauMatrix (v - w) i j *
    (partialDeriv g j v * g w - g v * partialDeriv g j w)

/-- The Landau collision operator
`q(g)(v) = ∑ᵢ ∂_{v_i} ∫ α(|v - w|) ∑ⱼ a_{ij}(v - w) (∂_{v_j} - ∂_{w_j})[g(v) g(w)] dw`. -/
noncomputable def landauOperator (α : ℝ → ℝ) (g : ℝ³ → ℝ) (v : ℝ³) : ℝ :=
  ∑ i, partialDeriv (landauFlux α g i) i v

/-- The Fisher information `i(g) = ∫ |∇g|² / g`, with the integrand `0` where `g = 0`. -/
noncomputable def fisherInformation (g : ℝ³ → ℝ) : ℝ :=
  ∫ v, ‖fderiv ℝ g v‖ ^ 2 / g v

/-- `f` (with `f t v = f(t, v)`) is a classical solution of the space-homogeneous Landau equation
`∂ₜ f = q(f)` on `[0, T]`: a smooth function of `(t, v)`, nonnegative for `t ∈ [0, T]`, whose
derivatives of every order decay faster than every power of `|v|`, uniformly for `t ∈ [0, T]`,
and which satisfies the equation for `t ∈ [0, T]`. -/
structure IsClassicalSolution (α : ℝ → ℝ) (T : ℝ) (f : ℝ → ℝ³ → ℝ) : Prop where
  smooth : ContDiff ℝ ∞ (fun p : ℝ × ℝ³ => f p.1 p.2)
  nonneg : ∀ t ∈ Set.Icc 0 T, ∀ v, 0 ≤ f t v
  rapid_decay : ∀ m n : ℕ, ∃ C, ∀ t ∈ Set.Icc 0 T, ∀ v,
    ‖v‖ ^ m * ‖iteratedFDeriv ℝ n (fun p : ℝ × ℝ³ => f p.1 p.2) (t, v)‖ ≤ C
  solves : ∀ t ∈ Set.Icc 0 T, ∀ v, deriv (fun s => f s v) t = landauOperator α (f t) v

/-- **Guillen–Silvestre, Theorem 1.1.** If the interaction potential `α ≥ 0` satisfies
`r |α'(r)| ≤ √19 α(r)` for all `r > 0`, then the Fisher information of every classical solution
of the space-homogeneous Landau equation on `[0, T]` is non-increasing on `[0, T]`. -/
theorem guillen_silvestre_fisher_information_antitone (α : ℝ → ℝ)
    (hα_nonneg : ∀ r > 0, 0 ≤ α r) (hα_diff : DifferentiableOn ℝ α (Set.Ioi 0))
    (hα : ∀ r > 0, r * |deriv α r| ≤ √19 * α r)
    (T : ℝ) (f : ℝ → ℝ³ → ℝ) (hf : IsClassicalSolution α T f) :
    AntitoneOn (fun t => fisherInformation (f t)) (Set.Icc 0 T) := by
  sorry

end Mathathon.P10
