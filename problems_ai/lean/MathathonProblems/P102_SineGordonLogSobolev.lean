/-
Mathathon Round 1, Problem 102: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states Theorem 1.1 of A. F. Radu, "Log-Sobolev inequality for the sine-Gordon model in the
subcritical regime", arXiv:2611.01403v1 (a claim of an unrefereed preprint), with the
definitions of its §1. For `0 < β < 8π`, `m, L > 0`, `z ∈ ℝ` and lattice spacing `ε = L / N`,
the lattice sine-Gordon measure on `ℝ^Λ`, `Λ = (ℤ/Nℤ)²`, is
`dν(φ) = Z⁻¹ exp(-½ (φ, Aφ) - V₀(φ)) ∏ₓ dφₓ` with `A = -Δ_Λ + ε² m² id`,
`V₀(φ) = 2 z ε^α ∑ₓ cos(√β φₓ)` and `α = 2 - β / (4π)`. The log-Sobolev inequality with constant
`γ` is `Ent_ν F ≤ (2 / γ) ε⁻² ∑ₓ E_ν[(∂ₓ √F)²]`. The theorem says (1.5) that for fixed `m`, `L`,
`z` the inequality holds with a constant `γ > 0` independent of `ε`, and (1.6) that there are
`c_β, C_β > 0` such that, if `|z| m^(-α) ≤ c_β`, it holds with `γ = m² exp(-C_β |z| m^(-α))` for
all `L` and `ε`. (Radu's further lower bound `m² - C_β |z| m^(β / 4π)` follows from
`exp(-t) ≥ 1 - t`.)

Modelling choices. The paper's best constant `γ_{ε,L}` is not defined; instead the statement says
that the inequality holds with the given constants, which is equivalent. The inequality is
required for smooth `F` that are bounded above, bounded below by a positive constant and have
bounded first derivatives; the paper notes that it suffices to prove it for smooth `F` bounded
above and away from zero, and functions of this kind with bounded derivatives are dense enough
for the same approximation (a cutoff of `√F` at large fields). Expectations are integrals against
the probability measure `ν` built from Lebesgue measure on `Λ → ℝ`; for such `F` all integrands
are bounded, so the integrals are finite.
-/

import Mathlib

namespace Mathathon.P102

open MeasureTheory Real
open scoped ContDiff

/-- The sites of the discrete torus `Λ = (ℤ/Nℤ)²` with `N = L / ε` sites per side. -/
abbrev Site (N : ℕ) : Type := ZMod N × ZMod N

variable {N : ℕ} [NeZero N]

/-- The nearest-neighbour Laplacian `(Δ_Λ φ)ₓ = ∑_{i = 1, 2} (φ_{x+eᵢ} + φ_{x-eᵢ} - 2 φₓ)`. -/
def laplacian (φ : Site N → ℝ) (x : Site N) : ℝ :=
  (φ (x.1 + 1, x.2) + φ (x.1 - 1, x.2) - 2 * φ x) +
    (φ (x.1, x.2 + 1) + φ (x.1, x.2 - 1) - 2 * φ x)

/-- The sine-Gordon Hamiltonian `½ (φ, Aφ) + V₀(φ)`, with `A = -Δ_Λ + ε² m² id`,
`V₀(φ) = 2 z ε^α ∑ₓ cos(√β φₓ)` and `α = 2 - β / (4π)`. -/
noncomputable def hamiltonian (β m z ε : ℝ) (φ : Site N → ℝ) : ℝ :=
  (1 / 2) * ∑ x, φ x * (-laplacian φ x + ε ^ 2 * m ^ 2 * φ x) +
    2 * z * ε ^ (2 - β / (4 * π)) * ∑ x, cos (√β * φ x)

/-- The lattice sine-Gordon measure `ν_{ε,L}`: the probability measure on `Λ → ℝ` with density
`Z⁻¹ exp(-H)` with respect to Lebesgue measure. -/
noncomputable def sineGordon (β m z ε : ℝ) : Measure (Site N → ℝ) :=
  (ENNReal.ofReal (∫ φ : Site N → ℝ, exp (-hamiltonian β m z ε φ)))⁻¹ •
    volume.withDensity fun φ : Site N → ℝ => ENNReal.ofReal (exp (-hamiltonian β m z ε φ))

/-- The entropy `Ent_ν F = E_ν (F log F) - E_ν F · log E_ν F`. -/
noncomputable def entropy (ν : Measure (Site N → ℝ)) (F : (Site N → ℝ) → ℝ) : ℝ :=
  ∫ φ, F φ * log (F φ) ∂ν - (∫ φ, F φ ∂ν) * log (∫ φ, F φ ∂ν)

/-- The physically normalised Dirichlet form `D(G) = ε⁻² ∑ₓ E_ν[(∂ₓ G)²]`. -/
noncomputable def dirichletForm (ε : ℝ) (ν : Measure (Site N → ℝ)) (G : (Site N → ℝ) → ℝ) : ℝ :=
  ε⁻¹ ^ 2 * ∑ x, ∫ φ, (fderiv ℝ G φ (Pi.single x 1)) ^ 2 ∂ν

/-- `ν` satisfies the log-Sobolev inequality `Ent_ν F ≤ (2 / γ) D(√F)` with constant `γ`, for all
smooth `F` that are bounded above, bounded below by a positive constant and have bounded first
derivatives. -/
def LogSobolev (ε : ℝ) (ν : Measure (Site N → ℝ)) (γ : ℝ) : Prop :=
  ∀ F : (Site N → ℝ) → ℝ, ContDiff ℝ ∞ F →
    (∃ a > 0, ∀ φ, a ≤ F φ) → (∃ b, ∀ φ, F φ ≤ b) → (∃ C, ∀ φ, ‖fderiv ℝ F φ‖ ≤ C) →
      entropy ν F ≤ 2 / γ * dirichletForm ε ν (fun φ => √(F φ))

/-- **Radu, Theorem 1.1** (claimed): for `0 < β < 8π`, (1.5) the log-Sobolev constant of the
lattice sine-Gordon measure is bounded below uniformly in the lattice spacing `ε = L / N`, and
(1.6) for small dimensionless coupling `|z| m^(-α)` it is at least `m² exp(-C_β |z| m^(-α))`,
uniformly in `L`, `m`, `z` and `ε`. -/
theorem sineGordon_logSobolev (β : ℝ) (hβ₀ : 0 < β) (hβ : β < 8 * π) :
    (∀ m L z : ℝ, 0 < m → 0 < L →
      ∃ γ > 0, ∀ (N : ℕ) [NeZero N],
        LogSobolev (L / N) (sineGordon (N := N) β m z (L / N)) γ) ∧
    (∃ c C : ℝ, 0 < c ∧ 0 < C ∧ ∀ m L z : ℝ, 0 < m → 0 < L → |z| * m ^ (-(2 - β / (4 * π))) ≤ c →
      ∀ (N : ℕ) [NeZero N],
        LogSobolev (L / N) (sineGordon (N := N) β m z (L / N))
          (m ^ 2 * exp (-(C * |z| * m ^ (-(2 - β / (4 * π))))))) := by
  sorry

end Mathathon.P102
