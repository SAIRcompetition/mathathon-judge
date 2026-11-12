/-
Mathathon Round 1, Problem 35: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states the leading-order asymptotic formula for `P_{k,r}(n)`, the number of partitions of `n`
into `k`-th powers of positive integers in which each part is used at most `r` times (generating
function `∏_{j ≥ 1} (1 - q^((r+1) j^k)) / (1 - q^(j^k))`). For integers `k ≥ 1` and `r ≥ 1`,
  `P_{k,r}(n) ~ (β/n)^((2k+1)/(2k+2)) / √(2π (r+1) (1 + 1/k) β) · exp((k+1) β^(k/(k+1)) n^(1/(k+1)))`
with `β = (1 - (r+1)^(-1/k)) · (1/k) Γ(1 + 1/k) ζ(1 + 1/k)`. This is the case `κ = k`, `m = r` of
Theorem 1.2 of Y.-L. Li and N. H. Zhou (arXiv:2104.01886; Ramanujan J. 65 (2024), 241–261), there
written as `λ (β/n)^δ exp(λ(0) (n/β)^(1/(k+1)))` with `δ = (2k+1)/(2k+2)`, `λ(0) = (1+k) β` and
`λ = (r+1)^(-1/2) / √(2π β (1 + 1/k))`.
Only the leading term is stated: the higher-order correction terms and effective error bounds that
the problem also asks for are not part of the statement. The unrestricted case `r = ∞` (Wright,
1934) is not included.
-/

import Mathlib

namespace Mathathon.P35

open Asymptotics Filter Real

/-- `P k r n` is the number of partitions of `n` into `k`-th powers of positive integers in which
each part appears at most `r` times. (Parts of a `Nat.Partition` are positive.) -/
noncomputable def P (k r n : ℕ) : ℕ :=
  Nat.card {p : n.Partition //
    (∀ i ∈ p.parts, ∃ j : ℕ, j ^ k = i) ∧ ∀ i ∈ p.parts, p.parts.count i ≤ r}

/-- The constant `β = (1 - (r + 1)^(-1/k)) · (1/k) Γ(1 + 1/k) ζ(1 + 1/k)`; `ζ(1 + 1/k)` is real. -/
noncomputable def beta (k r : ℕ) : ℝ :=
  (1 - ((r : ℝ) + 1) ^ (-(1 / (k : ℝ)))) *
    (1 / (k : ℝ) * Real.Gamma (1 + 1 / (k : ℝ)) * (riemannZeta (1 + 1 / (k : ℂ))).re)

/-- The main term
`(β/n)^((2k+1)/(2k+2)) / √(2π (r+1) (1 + 1/k) β) · exp((k+1) β^(k/(k+1)) n^(1/(k+1)))`. -/
noncomputable def mainTerm (k r : ℕ) (n : ℝ) : ℝ :=
  (beta k r / n) ^ ((2 * (k : ℝ) + 1) / (2 * (k : ℝ) + 2)) /
      Real.sqrt (2 * π * ((r : ℝ) + 1) * (1 + 1 / (k : ℝ)) * beta k r) *
    Real.exp (((k : ℝ) + 1) * beta k r ^ ((k : ℝ) / ((k : ℝ) + 1)) * n ^ (1 / ((k : ℝ) + 1)))

/-- Li–Zhou: for integers `k ≥ 1` and `r ≥ 1`, the number of partitions of `n` into `k`-th powers
with each part used at most `r` times is asymptotic to `mainTerm k r n` as `n → ∞`. -/
theorem partitions_into_powers_asymptotic (k r : ℕ) (hk : 1 ≤ k) (hr : 1 ≤ r) :
    (fun n : ℕ => (P k r n : ℝ)) ~[atTop] fun n : ℕ => mainTerm k r n := by
  sorry

end Mathathon.P35
