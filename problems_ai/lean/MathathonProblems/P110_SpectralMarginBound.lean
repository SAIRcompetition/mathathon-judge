/-
Mathathon Round 1, Problem 110: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states the spectrally-normalized margin bound of P. L. Bartlett, D. J. Foster and M. Telgarsky
("Spectrally-normalized margin bounds for neural networks", NeurIPS 2017; arXiv:1706.08498v2) in
the form with explicit constants, Lemma A.9 (eq. (A.5)) of the appendix, from which the paper
derives Theorem 1.1. Modelling choices: the nonlinearities `σᵢ : ℝ^{dᵢ} → ℝ^{dᵢ}` keep the
dimension (as coordinatewise activations do), there are `L ≥ 1` layers and `k = d_L ≥ 2` classes,
`W` is the largest of `d₀, …, d_L`, and the test error is the probability that the margin is
`≤ 0`; this event contains the misclassification event of the arg-max classifier for every
tie-breaking rule (Lemma A.4 of the paper). "With probability at least `1 - δ`" is stated as an
upper bound `δ` on the (outer) measure of the set of samples for which the bound fails for some
margin `γ` and some weights `A`. The margin is restricted to `0 < γ ≤ n`: the proof of Lemma A.9
bounds `2^{j₁}` by `2n/γ`, which needs `γ ≤ n`, and for large `γ` the expression under the last
square root becomes negative (`Real.sqrt` is then `0`).
-/

import Mathlib

namespace Mathathon.P110

open MeasureTheory Finset

/-- The spectral norm `‖A‖_σ`: the operator norm of `A` from `ℓ²` to `ℓ²`. -/
noncomputable def specNorm {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℝ) : ℝ :=
  ‖LinearMap.toContinuousLinearMap (Matrix.toEuclideanLin A)‖

/-- `‖Bᵀ‖_{2,1}`: the sum of the Euclidean norms of the rows of `B` (the columns of `Bᵀ`). -/
noncomputable def norm21T {m n : ℕ} (B : Matrix (Fin m) (Fin n) ℝ) : ℝ :=
  ∑ r, Real.sqrt (∑ c, B r c ^ 2)

/-- The outputs of the layers of the network with nonlinearities `σ` and weights `A`:
`layerOutput σ A x 0 = x` and `layerOutput σ A x (i + 1) = σᵢ (Aᵢ (layerOutput σ A x i))`. -/
noncomputable def layerOutput {L : ℕ} {d : Fin (L + 1) → ℕ}
    (σ : (i : Fin L) → EuclideanSpace ℝ (Fin (d i.succ)) → EuclideanSpace ℝ (Fin (d i.succ)))
    (A : (i : Fin L) → Matrix (Fin (d i.succ)) (Fin (d i.castSucc)) ℝ)
    (x : EuclideanSpace ℝ (Fin (d 0))) : (j : Fin (L + 1)) → EuclideanSpace ℝ (Fin (d j)) :=
  Fin.induction x (fun i v => σ i (Matrix.toEuclideanLin (A i) v))

/-- The network `F_A(x) = σ_L(A_L σ_{L-1}(A_{L-1} ⋯ σ_1(A_1 x) ⋯))`. -/
noncomputable def network {L : ℕ} {d : Fin (L + 1) → ℕ}
    (σ : (i : Fin L) → EuclideanSpace ℝ (Fin (d i.succ)) → EuclideanSpace ℝ (Fin (d i.succ)))
    (A : (i : Fin L) → Matrix (Fin (d i.succ)) (Fin (d i.castSucc)) ℝ)
    (x : EuclideanSpace ℝ (Fin (d 0))) : EuclideanSpace ℝ (Fin (d (Fin.last L))) :=
  layerOutput σ A x (Fin.last L)

/-- The margin `M(v, y) = v_y - max_{j ≠ y} v_j` (used with at least two classes). -/
noncomputable def margin {k : ℕ} (v : EuclideanSpace ℝ (Fin k)) (y : Fin k) : ℝ :=
  v y - ⨆ j : {j : Fin k // j ≠ y}, v j

/-- The ramp loss: `ℓ_γ(r) = 0` for `r < -γ`, `1 + r / γ` for `-γ ≤ r ≤ 0`, `1` for `r > 0`. -/
noncomputable def rampLoss (γ r : ℝ) : ℝ :=
  if r < -γ then 0 else if r ≤ 0 then 1 + r / γ else 1

/-- The norm `‖X‖₂ = (∑ᵢ ‖xᵢ‖²)^{1/2}` of the data matrix of a sample `((xᵢ, yᵢ))ᵢ`. -/
noncomputable def dataNorm {n m : ℕ} {Y : Type*} (S : Fin n → EuclideanSpace ℝ (Fin m) × Y) : ℝ :=
  Real.sqrt (∑ i, ‖(S i).1‖ ^ 2)

/-- The empirical ramp risk `R̂_γ(f) = n⁻¹ ∑ᵢ ℓ_γ(-M(f(xᵢ), yᵢ))` on a sample of size `n`. -/
noncomputable def empiricalRampRisk {n m k : ℕ} (γ : ℝ)
    (f : EuclideanSpace ℝ (Fin m) → EuclideanSpace ℝ (Fin k))
    (S : Fin n → EuclideanSpace ℝ (Fin m) × Fin k) : ℝ :=
  (∑ i, rampLoss γ (-margin (f (S i).1) (S i).2)) / n

variable {L : ℕ} {d : Fin (L + 1) → ℕ}

/-- The right-hand side of (A.5) minus the empirical ramp risk, for `n` samples, confidence `δ`,
margin `γ`, width `W`, Lipschitz constants `ρ`, reference matrices `M`, weights `A` and data norm
`X = ‖X‖₂`:
`8/n + 144 ln(n) ln(2W)/(γn) (∏ᵢ ρᵢ) (1 + ‖X‖₂)
  (∑ᵢ ((1/L + ‖Aᵢᵀ - Mᵢᵀ‖_{2,1}) ∏_{j ≠ i} (1/L + ‖Aⱼ‖_σ))^{2/3})^{3/2}
  + √(9/(2n)) √(ln(1/δ) + ln(2n/γ) + 2 ln(2 + ‖X‖₂)
      + 2 ∑ᵢ ln(2 + L ‖Aᵢᵀ - Mᵢᵀ‖_{2,1}) + 2 ∑ᵢ ln(2 + L ‖Aᵢ‖_σ))`. -/
noncomputable def excessBound (n : ℕ) (δ γ : ℝ) (W : ℕ) (ρ : Fin L → NNReal)
    (M A : (i : Fin L) → Matrix (Fin (d i.succ)) (Fin (d i.castSucc)) ℝ) (X : ℝ) : ℝ :=
  8 / (n : ℝ)
    + 144 * Real.log n * Real.log (2 * W) / (γ * n) * (∏ i, (ρ i : ℝ)) * (1 + X)
      * (∑ i, ((1 / (L : ℝ) + norm21T (A i - M i))
          * ∏ j ∈ univ.erase i, (1 / (L : ℝ) + specNorm (A j))) ^ ((2 : ℝ) / 3)) ^ ((3 : ℝ) / 2)
    + Real.sqrt (9 / (2 * n)) * Real.sqrt (Real.log (1 / δ) + Real.log (2 * n / γ)
        + 2 * Real.log (2 + X) + 2 * ∑ i, Real.log (2 + L * norm21T (A i - M i))
        + 2 * ∑ i, Real.log (2 + L * specNorm (A i)))

/-- Bartlett–Foster–Telgarsky, Lemma A.9: for an i.i.d. sample of size `n` from any distribution
`P` on `ℝ^{d₀} × {classes}`, with probability at least `1 - δ`, every margin `0 < γ ≤ n` and every
network `F_A` satisfy `Pr[M(F_A(x), y) ≤ 0] ≤ R̂_γ(F_A) + excessBound`. -/
theorem spectral_margin_bound (hL : 1 ≤ L) (hk : 2 ≤ d (Fin.last L))
    (σ : (i : Fin L) → EuclideanSpace ℝ (Fin (d i.succ)) → EuclideanSpace ℝ (Fin (d i.succ)))
    (ρ : Fin L → NNReal) (hσ : ∀ i, LipschitzWith (ρ i) (σ i)) (hσ₀ : ∀ i, σ i 0 = 0)
    (M : (i : Fin L) → Matrix (Fin (d i.succ)) (Fin (d i.castSucc)) ℝ)
    (P : Measure (EuclideanSpace ℝ (Fin (d 0)) × Fin (d (Fin.last L))))
    [IsProbabilityMeasure P] (n : ℕ) (hn : 1 ≤ n) (δ : ℝ) (hδ : 0 < δ) (hδ₁ : δ < 1) :
    (Measure.pi fun _ : Fin n => P)
      {S | ∃ γ : ℝ, 0 < γ ∧ γ ≤ n ∧
        ∃ A : (i : Fin L) → Matrix (Fin (d i.succ)) (Fin (d i.castSucc)) ℝ,
          empiricalRampRisk γ (network σ A) S
              + excessBound n δ γ (univ.sup d) ρ M A (dataNorm S) <
            (P {z | margin (network σ A z.1) z.2 ≤ 0}).toReal}
      ≤ ENNReal.ofReal δ := by
  sorry

end Mathathon.P110
