/-
Mathathon Round 1, Problem 08: official Lean statement.

Written for Mathathon; not taken from an existing formalization.
It states weak factorization for H¹ of the bidisc, Corollary 1.3 of S. H. Ferguson and
M. T. Lacey, "A characterization of product BMO by commutators", Acta Math. 189 (2002), with the
remark after it: there is a constant C such that every h in H¹(T²) is a sum Σ fⱼ gⱼ, converging
in L¹, with fⱼ, gⱼ ∈ H²(T²) and Σ ‖fⱼ‖₂ ‖gⱼ‖₂ ≤ C ‖h‖₁. The torus T² = (ℝ/ℤ)² carries its normalized Haar measure,
as in Mathlib's `Mathlib/Analysis/Fourier/AddCircleMulti.lean`; Hᵖ(T²) is the set of elements of
Lᵖ(T²) whose Fourier coefficient at (n₁, n₂) is zero whenever n₁ < 0 or n₂ < 0.
-/

import Mathlib

open MeasureTheory UnitAddTorus
open scoped ENNReal

namespace Mathathon.P08

/-- The measure on `ℝ / ℤ` is normalised to have total mass 1, as in Mathlib's file
`Mathlib/Analysis/Fourier/AddCircleMulti.lean`, where `mFourierCoeff` is defined. -/
noncomputable local instance : MeasureSpace UnitAddCircle := ⟨AddCircle.haarAddCircle⟩

/-- The Hardy space `Hᵖ(T²)`: the functions in `Lᵖ(T²)` whose Fourier coefficient at
`n = (n₁, n₂)` vanishes whenever `n₁ < 0` or `n₂ < 0`. -/
def hardySpace (p : ℝ≥0∞) : Set (Lp ℂ p (volume : Measure (UnitAddTorus (Fin 2)))) :=
  {f | ∀ n : Fin 2 → ℤ, (∃ i, n i < 0) → mFourierCoeff (⇑f) n = 0}

/-- **Weak factorization for `H¹` of the bidisc.** There is a constant `C` such that every
`h ∈ H¹(T²)` can be written as `h = ∑ⱼ fⱼ gⱼ`, the series converging in `L¹(T²)`, with
`fⱼ, gⱼ ∈ H²(T²)` and `∑ⱼ ‖fⱼ‖₂ ‖gⱼ‖₂ ≤ C ‖h‖₁`. Here `f j • g j` is the pointwise product of
two `L²` functions, as an element of `L¹`. -/
def WeakFactorization : Prop :=
  ∃ C : ℝ, ∀ h ∈ hardySpace 1, ∃ f g : ℕ → Lp ℂ 2 (volume : Measure (UnitAddTorus (Fin 2))),
    (∀ j, f j ∈ hardySpace 2 ∧ g j ∈ hardySpace 2) ∧
    HasSum (fun j => (f j • g j : Lp ℂ 1 (volume : Measure (UnitAddTorus (Fin 2))))) h ∧
    Summable (fun j => ‖f j‖ * ‖g j‖) ∧
    ∑' j, ‖f j‖ * ‖g j‖ ≤ C * ‖h‖

/-- **Weak factorization for `H¹` of the bidisc** (Ferguson–Lacey, 2002). -/
theorem weak_factorization : WeakFactorization := by
  sorry

end Mathathon.P08
