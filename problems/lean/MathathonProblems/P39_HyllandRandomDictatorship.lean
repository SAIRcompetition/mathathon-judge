/-
Mathathon Round 1, Problem 39: official Lean statement.

Written for Mathathon; not taken from an existing formalization.
It states Hylland's random dictatorship theorem (A. Hylland, 1980, Theorems 1 and 1*; see also
Dutta, Peters and Sen, Social Choice and Welfare 2007 and erratum 2008) in the form on the problem
page: with finitely many voters and at least three alternatives, a strategy-proof decision scheme
that gives probability 1 to a unanimous top and probability 0 to a unanimous bottom is a random
dictatorship. As in Hylland, a utility function is any function from alternatives to `ℝ` and the
scheme is defined on all profiles; "top" and "bottom" mean a unique best and a unique worst
alternative, and the random-dictatorship formula is asserted at the profiles where every voter
has a unique top (the profiles where a random dictatorship is defined).
-/

import Mathlib

namespace Mathathon.P39

open Finset

variable {N A : Type*} [Fintype N] [Fintype A] [DecidableEq N] [DecidableEq A]

/-- A lottery on the alternatives: a probability vector. -/
def IsLottery (p : A → ℝ) : Prop := (∀ a, 0 ≤ p a) ∧ ∑ a, p a = 1

/-- The expected utility of the lottery `p` for the utility function `w`. -/
def expectedUtility (w : A → ℝ) (p : A → ℝ) : ℝ := ∑ a, w a * p a

/-- `a` is the unique best alternative for the utility function `w`. -/
def IsUniqueTop (w : A → ℝ) (a : A) : Prop := ∀ b, b ≠ a → w b < w a

/-- `a` is the unique worst alternative for the utility function `w`. -/
def IsUniqueBottom (w : A → ℝ) (a : A) : Prop := ∀ b, b ≠ a → w a < w b

/-- Strategy-proofness: no voter `i` can raise their expected utility by reporting another
utility function `v` instead of their true one `u i`. -/
def StrategyProof (φ : (N → A → ℝ) → A → ℝ) : Prop :=
  ∀ (u : N → A → ℝ) (i : N) (v : A → ℝ),
    expectedUtility (u i) (φ (Function.update u i v)) ≤ expectedUtility (u i) (φ u)

/-- Unanimity at the top: if every voter has `a` as unique best alternative, `a` gets
probability 1. -/
def TopUnanimous (φ : (N → A → ℝ) → A → ℝ) : Prop :=
  ∀ (u : N → A → ℝ) (a : A), (∀ i, IsUniqueTop (u i) a) → φ u a = 1

/-- Unanimity at the bottom: if every voter has `a` as unique worst alternative, `a` gets
probability 0. -/
def BottomUnanimous (φ : (N → A → ℝ) → A → ℝ) : Prop :=
  ∀ (u : N → A → ℝ) (a : A), (∀ i, IsUniqueBottom (u i) a) → φ u a = 0

/-- Random dictatorship: there are weights `β i ≥ 0` summing to 1 such that, whenever each voter
`i` has a unique best alternative `top i`, the scheme gives each alternative `a` the total weight
of the voters whose top is `a`. -/
def IsRandomDictatorship (φ : (N → A → ℝ) → A → ℝ) : Prop :=
  ∃ β : N → ℝ, (∀ i, 0 ≤ β i) ∧ ∑ i, β i = 1 ∧
    ∀ (u : N → A → ℝ) (top : N → A), (∀ i, IsUniqueTop (u i) (top i)) →
      ∀ a, φ u a = ∑ i ∈ univ.filter (fun i => top i = a), β i

/-- Hylland's theorem: with finitely many voters and at least three alternatives, every
strategy-proof decision scheme satisfying top and bottom unanimity is a random dictatorship. -/
theorem hylland_random_dictatorship [Nonempty N] (hA : 3 ≤ Fintype.card A)
    (φ : (N → A → ℝ) → A → ℝ) (hφ : ∀ u, IsLottery (φ u))
    (hsp : StrategyProof φ) (htop : TopUnanimous φ) (hbot : BottomUnanimous φ) :
    IsRandomDictatorship φ := by
  sorry

end Mathathon.P39
