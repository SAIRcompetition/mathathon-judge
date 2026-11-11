/-
Mathathon Round 1, Problem 21: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states Friedman's second eigenvalue theorem (J. Friedman, "A proof of Alon's second eigenvalue
conjecture and related problems", Mem. Amer. Math. Soc. 195 (2008)) in the form of Theorem 1 of
C. Bordenave, "A new proof of Friedman's second eigenvalue Theorem and its extension to random
lifts", Ann. Sci. Éc. Norm. Supér. 53 (2020): for `d ≥ 3` and `ε > 0`, if `G` is uniform on the
set `G_d(n)` of simple `d`-regular graphs on `n` labelled vertices, then
`P(μ₂ ∨ |μₙ| ≥ 2√(d-1) + ε) → 0` as `n → ∞` with `nd` even. The probability is the fraction of
graphs in `G_d(n)`. The eigenvalues `μ₁ ≥ ⋯ ≥ μₙ` of the adjacency matrix are Mathlib's
`eigenvalues₀`, listed with multiplicity in non-increasing order; `μ₂ ∨ |μₙ|` equals
`max {|μᵢ| : i ≥ 2}`, so the event is that some `μᵢ` with `i ≥ 2` has `|μᵢ| ≥ 2√(d-1) + ε`.
-/

import Mathlib

namespace Mathathon.P21

/-- `G_d(n)`: the set of simple `d`-regular graphs with vertex set `Fin n`. -/
def regularGraphs (d n : ℕ) : Set (SimpleGraph (Fin n)) :=
  {G | ∀ v, (G.neighborSet v).ncard = d}

open Classical in
/-- The eigenvalues `μ₁ ≥ μ₂ ≥ ⋯ ≥ μₙ` of the (real, symmetric) adjacency matrix of `G`, with
multiplicity, in non-increasing order: `adjEigenvalues G i` is `μ_{i+1}`. -/
noncomputable def adjEigenvalues {n : ℕ} (G : SimpleGraph (Fin n)) :
    Fin (Fintype.card (Fin n)) → ℝ :=
  (Matrix.isHermitian_iff_isSymm.mpr (G.isSymm_adjMatrix (α := ℝ))).eigenvalues₀

/-- `G` has a non-trivial eigenvalue of absolute value at least `b`: some `μᵢ` with `i ≥ 2`
has `|μᵢ| ≥ b`. Equivalently, `μ₂ ∨ |μₙ| ≥ b`. -/
def HasLargeNontrivialEigenvalue {n : ℕ} (G : SimpleGraph (Fin n)) (b : ℝ) : Prop :=
  ∃ i : Fin (Fintype.card (Fin n)), 1 ≤ i.val ∧ b ≤ |adjEigenvalues G i|

/-- **Friedman's second eigenvalue theorem** (Bordenave's Theorem 1). Fix `d ≥ 3` and `ε > 0`.
The fraction of simple `d`-regular graphs on `Fin n` that have a non-trivial adjacency
eigenvalue of absolute value at least `2√(d-1) + ε` tends to `0` as `n → ∞` along the `n` with
`n * d` even. -/
theorem friedman_second_eigenvalue (d : ℕ) (hd : 3 ≤ d) (ε : ℝ) (hε : 0 < ε) :
    ∀ δ : ℝ, 0 < δ → ∃ N : ℕ, ∀ n : ℕ, N ≤ n → Even (n * d) →
      (({G ∈ regularGraphs d n |
          HasLargeNontrivialEigenvalue G (2 * Real.sqrt ((d : ℝ) - 1) + ε)}.ncard : ℝ) /
        ((regularGraphs d n).ncard : ℝ)) < δ := by
  sorry

end Mathathon.P21
