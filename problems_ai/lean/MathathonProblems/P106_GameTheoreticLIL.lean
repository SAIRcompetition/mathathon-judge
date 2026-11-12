/-
Mathathon Round 1, Problem 106: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states the game-theoretic law of the iterated logarithm of G. Shafer and V. Vovk
("Probability and Finance: It's Only a Game!", 2001, Theorem 5.1), as quoted by K. Miyabe and
A. Takemura (Stochastic Process. Appl. 2013, Theorem 1.1): in the predictably unbounded
forecasting protocol, Skeptic can force
`(Aₙ → ∞ and cₙ = o(√(Aₙ / ln ln Aₙ))) ⟹ limsup ∑_{i ≤ n} (xᵢ - mᵢ) / √(2 Aₙ ln ln Aₙ) = 1`,
where `Aₙ = v₁ + ⋯ + vₙ`.

Protocol. `𝒦₀ = 1`. In each round Forecaster announces `mₙ ∈ ℝ`, `cₙ ≥ 0`, `vₙ ≥ 0`; Skeptic
announces `Mₙ, Vₙ ∈ ℝ`; Reality announces `xₙ` with `|xₙ - mₙ| ≤ cₙ`; and
`𝒦ₙ = 𝒦ₙ₋₁ + Mₙ (xₙ - mₙ) + Vₙ ((xₙ - mₙ)² - vₙ)`. Skeptic forces an event `E` if he has a
strategy whose capital is nonnegative in every situation and tends to infinity on every path
outside `E`.

Modelling choices. Rounds are numbered from `0`, so round `n` here is round `n + 1` of the book,
and `A ω n`, `S ω n` include round `n`. A strategy is any function of the moves of Forecaster
and Reality in the earlier rounds and of Forecaster's current announcement (Skeptic's own earlier
moves are determined by these). Quantifying over all infinite paths that obey the protocol
covers all behaviour of Forecaster and Reality, adaptive or not, and every finite situation
extends to such a path. The `limsup` is taken in `EReal`.
-/

import Mathlib

namespace Mathathon.P106

open Filter Asymptotics

/-- The moves of World in one round: Forecaster's `m`, `c`, `v` and Reality's `x`. -/
structure Round where
  /-- Forecaster's mean forecast `mₙ`. -/
  m : ℝ
  /-- Forecaster's bound `cₙ` on Reality's deviation `|xₙ - mₙ|`. -/
  c : ℝ
  /-- Forecaster's variance forecast `vₙ`. -/
  v : ℝ
  /-- Reality's move `xₙ`. -/
  x : ℝ

/-- An infinite sequence of World's moves obeys the predictably unbounded forecasting protocol:
`cₙ ≥ 0`, `vₙ ≥ 0` and `|xₙ - mₙ| ≤ cₙ` in every round. -/
def IsPath (ω : ℕ → Round) : Prop :=
  ∀ n, 0 ≤ (ω n).c ∧ 0 ≤ (ω n).v ∧ |(ω n).x - (ω n).m| ≤ (ω n).c

/-- A strategy for Skeptic. -/
structure Strategy where
  /-- `bet n h f` is Skeptic's move `(Mₙ, Vₙ)` in round `n`, given World's moves `h` in rounds
  `0, …, n - 1` and Forecaster's announcement `f = (mₙ, cₙ, vₙ)` in round `n`. -/
  bet : (n : ℕ) → (Fin n → Round) → ℝ × ℝ × ℝ → ℝ × ℝ

/-- Skeptic's move `(Mₙ, Vₙ)` in round `n` on the path `ω` when he follows `P`. -/
def Strategy.move (P : Strategy) (ω : ℕ → Round) (n : ℕ) : ℝ × ℝ :=
  P.bet n (fun i => ω i) ((ω n).m, (ω n).c, (ω n).v)

/-- Skeptic's capital after the first `n` rounds of the path `ω` when he follows `P`, starting
from `𝒦₀ = 1`. -/
def capital (P : Strategy) (ω : ℕ → Round) (n : ℕ) : ℝ :=
  1 + ∑ i ∈ Finset.range n,
    ((P.move ω i).1 * ((ω i).x - (ω i).m) +
      (P.move ω i).2 * (((ω i).x - (ω i).m) ^ 2 - (ω i).v))

/-- Skeptic can force the event `E`: some strategy keeps his capital nonnegative on every path
and makes it tend to infinity on every path outside `E`. -/
def CanForce (E : (ℕ → Round) → Prop) : Prop :=
  ∃ P : Strategy, ∀ ω, IsPath ω →
    (∀ n, 0 ≤ capital P ω n) ∧ (¬ E ω → Tendsto (capital P ω) atTop atTop)

/-- `A ω n = v₀ + ⋯ + vₙ`, the book's `Aₙ₊₁`. -/
def A (ω : ℕ → Round) (n : ℕ) : ℝ := ∑ i ∈ Finset.range (n + 1), (ω i).v

/-- `S ω n = (x₀ - m₀) + ⋯ + (xₙ - mₙ)`. -/
def S (ω : ℕ → Round) (n : ℕ) : ℝ := ∑ i ∈ Finset.range (n + 1), ((ω i).x - (ω i).m)

/-- The event of the law of the iterated logarithm: if `Aₙ → ∞` and
`cₙ = o(√(Aₙ / ln ln Aₙ))`, then `limsup Sₙ / √(2 Aₙ ln ln Aₙ) = 1`. -/
def LILEvent (ω : ℕ → Round) : Prop :=
  (Tendsto (A ω) atTop atTop ∧
      (fun n => (ω n).c) =o[atTop] fun n => Real.sqrt (A ω n / Real.log (Real.log (A ω n)))) →
    limsup (fun n => ((S ω n / Real.sqrt (2 * A ω n * Real.log (Real.log (A ω n))) : ℝ) : EReal))
      atTop = 1

/-- **The game-theoretic law of the iterated logarithm** (Shafer–Vovk, Theorem 5.1): in the
predictably unbounded forecasting protocol, Skeptic can force the law of the iterated
logarithm. -/
theorem skeptic_can_force_lil : CanForce LILEvent := by
  sorry

end Mathathon.P106
