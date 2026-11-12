/-
Mathathon Round 1, Problem 98: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states Sullivan's theorem (D. Sullivan, "Hyperbolic geometry and homeomorphisms", 1979, from
the Deligne–Sullivan theorem): every compact hyperbolic manifold has a finite cover that is
stably parallelizable.

Modelling choices. A compact hyperbolic `n`-manifold is a quotient `Γ\ℍⁿ` of the hyperboloid
model `ℍⁿ = {x ∈ ℝⁿ⁺¹ : -x₀² + x₁² + ⋯ + xₙ² = -1, x₀ > 0}` by a discrete, torsion-free group `Γ`
of Lorentz transformations preserving `ℍⁿ` (these are all the isometries of `ℍⁿ`) that acts
cocompactly; by the Killing–Hopf theorem every compact hyperbolic manifold is of this form. Its
connected finite covers are the quotients `Γ'\ℍⁿ` by subgroups `Γ'` of finite index in `Γ`. The
tangent space of `ℍⁿ` at `x` is `{v : ⟨x, v⟩ = 0}` for the Lorentzian form `⟨·, ·⟩`, and `γ ∈ Γ`
acts on tangent vectors by `v ↦ γ v`, so `T(Γ'\ℍⁿ) ⊕ εᵏ` is the quotient of
`{(x, v, w) : x ∈ ℍⁿ, ⟨x, v⟩ = 0, w ∈ ℝᵏ}` by `γ · (x, v, w) = (γ x, γ v, w)`. This bundle is
trivial exactly when it has a global frame, that is, `n + k` continuous sections that are
linearly independent at every point; such sections are the same as `Γ'`-equivariant continuous
maps `s j : ℍⁿ → ℝⁿ⁺¹ × ℝᵏ` with `s j x ∈ Tₓℍⁿ × ℝᵏ`. Matrices act on `ℝⁿ⁺¹ = Fin (n + 1) → ℝ`
by `Matrix.mulVec`; `Γ` is a subgroup of `GL (Fin (n + 1)) ℝ` with its usual topology.
-/

import Mathlib

namespace Mathathon.P98

open Matrix

/-- The Lorentzian form `⟨x, y⟩ = -x₀ y₀ + x₁ y₁ + ⋯ + xₙ yₙ` on `ℝⁿ⁺¹`. -/
def minkowski (n : ℕ) (x y : Fin (n + 1) → ℝ) : ℝ :=
  -(x 0 * y 0) + ∑ i : Fin n, x i.succ * y i.succ

/-- The hyperboloid model of hyperbolic `n`-space, `{x : ⟨x, x⟩ = -1, x₀ > 0}`. -/
def hyperboloid (n : ℕ) : Set (Fin (n + 1) → ℝ) :=
  {x | minkowski n x x = -1 ∧ 0 < x 0}

/-- `Γ` is the fundamental group of a compact hyperbolic `n`-manifold `Γ\ℍⁿ`, acting on `ℍⁿ`:
its elements preserve the Lorentzian form and map `ℍⁿ` into itself, `Γ` is discrete and
torsion-free, and the translates of some compact subset of `ℍⁿ` cover `ℍⁿ`. -/
structure IsCompactHyperbolicManifoldGroup (n : ℕ) (Γ : Subgroup (GL (Fin (n + 1)) ℝ)) :
    Prop where
  preserves_form : ∀ γ ∈ Γ, ∀ x y : Fin (n + 1) → ℝ,
    minkowski n ((γ : Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ) *ᵥ x)
      ((γ : Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ) *ᵥ y) = minkowski n x y
  mapsTo_hyperboloid : ∀ γ ∈ Γ, ∀ x ∈ hyperboloid n,
    (γ : Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ) *ᵥ x ∈ hyperboloid n
  discrete : DiscreteTopology Γ
  torsion_free : ∀ γ ∈ Γ, IsOfFinOrder γ → γ = 1
  cocompact : ∃ K ⊆ hyperboloid n, IsCompact K ∧
    ∀ x ∈ hyperboloid n, ∃ γ ∈ Γ, ∃ y ∈ K, x = (γ : Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ) *ᵥ y

/-- `Γ\ℍⁿ` is stably parallelizable: for some `k` there are `n + k` continuous maps
`s j : ℍⁿ → ℝⁿ⁺¹ × ℝᵏ`, with `s j x` in `Tₓℍⁿ × ℝᵏ`, linearly independent at every point and
equivariant under `Γ`, i.e. a global frame of `T(Γ\ℍⁿ) ⊕ εᵏ`. -/
def IsStablyParallelizable (n : ℕ) (Γ : Subgroup (GL (Fin (n + 1)) ℝ)) : Prop :=
  ∃ (k : ℕ) (s : Fin (n + k) → (Fin (n + 1) → ℝ) → (Fin (n + 1) → ℝ) × (Fin k → ℝ)),
    (∀ j, ContinuousOn (s j) (hyperboloid n)) ∧
    (∀ j, ∀ x ∈ hyperboloid n, minkowski n x (s j x).1 = 0) ∧
    (∀ x ∈ hyperboloid n, LinearIndependent ℝ fun j => s j x) ∧
    (∀ γ ∈ Γ, ∀ j, ∀ x ∈ hyperboloid n,
      s j ((γ : Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ) *ᵥ x) =
        ((γ : Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ) *ᵥ (s j x).1, (s j x).2))

/-- **Sullivan's theorem**: every compact hyperbolic manifold `Γ\ℍⁿ` has a finite cover
`Γ'\ℍⁿ`, with `Γ'` of finite index in `Γ`, that is stably parallelizable. -/
theorem virtually_stably_parallelizable (n : ℕ) (Γ : Subgroup (GL (Fin (n + 1)) ℝ))
    (hΓ : IsCompactHyperbolicManifoldGroup n Γ) :
    ∃ Γ' : Subgroup (GL (Fin (n + 1)) ℝ), Γ' ≤ Γ ∧ Γ'.relIndex Γ ≠ 0 ∧
      IsStablyParallelizable n Γ' := by
  sorry

end Mathathon.P98
