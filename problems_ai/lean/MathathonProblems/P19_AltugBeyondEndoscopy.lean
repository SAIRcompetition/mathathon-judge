/-
Mathathon Round 1, Problem 19: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states S. A. Altuğ, "Beyond Endoscopy via the trace formula - III: The standard
representation" (J. Inst. Math. Jussieu 19 (2020); arXiv:1512.09249), Theorem 1.1: for an integer
`k ≥ 3`, with `T_k(n)` the `n`-th Hecke operator on the space `S_k` of cusp forms of weight `k`
for `SL(2, ℤ)`, normalized so that its eigenvalues are `a_f(n) / n^((k-1)/2)`,
`∑_{n < X} tr T_k(n) = O_{k,ε}(X^(31/32 + ε))` for every `ε > 0`.

Modelling choices. Mathlib has no Hecke operators on modular forms. The unnormalized operator
`T(n) f = ∑_{ad = n, 0 ≤ b < d} f ∣[k] (a b; 0 d)` is defined on all functions `ℍ → ℂ` with
Mathlib's slash action, which for these matrices gives Serre's
`T(n) f(z) = n^(k-1) ∑ d^(-k) f((a z + b) / d)` (so `a_1(T(n) f) = a_n(f)`). Since `T(n)` maps
`S_k` into itself (a standard fact not proved here), its restriction to `S_k` is obtained by
composing with the inclusion `S_k → (ℍ → ℂ)` and any linear left inverse of that inclusion
(`LinearMap.leftInverse`); the trace does not depend on the left inverse chosen. The sum runs over
the integers `1 ≤ n < X`.
-/

import Mathlib

namespace Mathathon.P19

open ModularForm UpperHalfPlane Asymptotics Filter
open scoped MatrixGroups

/-- The matrix `(a b; 0 d)` as an element of `GL (Fin 2) ℝ` (the identity if `a d = 0`, a case
that does not occur below). -/
noncomputable def upperTriangular (a b d : ℕ) : GL (Fin 2) ℝ :=
  if h : (a : ℝ) * d ≠ 0 then
    Matrix.GeneralLinearGroup.mkOfDetNeZero !![(a : ℝ), b; 0, d]
      (by simpa [Matrix.det_fin_two] using h)
  else 1

lemma upperTriangular_det_pos (a b d : ℕ) : 0 < ((upperTriangular a b d).det : ℝ) := by
  rw [Matrix.GeneralLinearGroup.val_det_apply]
  unfold upperTriangular
  split_ifs with h
  · change 0 < Matrix.det !![(a : ℝ), b; 0, d]
    rw [Matrix.det_fin_two_of, mul_zero, sub_zero]
    exact lt_of_le_of_ne (by positivity) (Ne.symm h)
  · simp

/-- The Hecke operator `T(n)` of weight `k` on functions `ℍ → ℂ`:
`T(n) f = ∑_{a d = n, 0 ≤ b < d} f ∣[k] (a b; 0 d)`, that is,
`T(n) f(z) = n^(k-1) ∑_{a d = n, 0 ≤ b < d} d^(-k) f((a z + b) / d)`. -/
noncomputable def heckeOperator (k : ℤ) (n : ℕ) : (ℍ → ℂ) →ₗ[ℂ] (ℍ → ℂ) where
  toFun f := ∑ p ∈ n.divisorsAntidiagonal, ∑ b ∈ Finset.range p.2,
    f ∣[k] upperTriangular p.1 b p.2
  map_add' f g := by
    simp only [SlashAction.add_slash, Finset.sum_add_distrib]
  map_smul' c f := by
    simp only [ModularForm.smul_slash, RingHom.id_apply, Finset.smul_sum]
    refine Finset.sum_congr rfl fun p _ => Finset.sum_congr rfl fun b _ => ?_
    have h := upperTriangular_det_pos p.1 b p.2
    simp only [σ, h, ↓reduceIte]
    rfl

/-- The inclusion of the cusp forms of weight `k` for `SL(2, ℤ)` into the functions `ℍ → ℂ`. -/
noncomputable def cuspFormInclusion (k : ℤ) : CuspForm 𝒮ℒ k →ₗ[ℂ] (ℍ → ℂ) where
  toFun f := ⇑f
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

/-- The Hecke operator `T(n)` on the space `S_k` of cusp forms of weight `k` for `SL(2, ℤ)`:
`T(n)` applied to `f ∈ S_k`, followed by a linear left inverse of the inclusion
`S_k → (ℍ → ℂ)`. Since `T(n)` maps `S_k` into itself, this is the restriction of `T(n)` to `S_k`,
whichever left inverse is used. -/
noncomputable def heckeOnCuspForms (k : ℤ) (n : ℕ) : CuspForm 𝒮ℒ k →ₗ[ℂ] CuspForm 𝒮ℒ k :=
  (cuspFormInclusion k).leftInverse ∘ₗ heckeOperator k n ∘ₗ cuspFormInclusion k

/-- `tr T_k(n)`: the trace on `S_k` of the normalized Hecke operator `T_k(n) = n^(-(k-1)/2) T(n)`,
whose eigenvalues are `a_f(n) / n^((k-1)/2)` for the normalized eigenforms `f`. -/
noncomputable def normalizedHeckeTrace (k : ℤ) (n : ℕ) : ℂ :=
  (((n : ℝ) ^ (-((k : ℝ) - 1) / 2) : ℝ) : ℂ) *
    LinearMap.trace ℂ (CuspForm 𝒮ℒ k) (heckeOnCuspForms k n)

/-- **Altuğ, Beyond Endoscopy via the trace formula III, Theorem 1.1.** For every integer
`k ≥ 3` and every `ε > 0`, `∑_{n < X} tr T_k(n) = O(X^(31/32 + ε))` as `X → ∞`. -/
theorem altug_sum_trace_hecke (k : ℤ) (hk : 3 ≤ k) (ε : ℝ) (hε : 0 < ε) :
    (fun X : ℝ => ∑ n ∈ Finset.Ioo 0 ⌈X⌉₊, normalizedHeckeTrace k n)
      =O[atTop] (fun X : ℝ => X ^ ((31 : ℝ) / 32 + ε)) := by
  sorry

end Mathathon.P19
