/-
Mathathon Round 1, Problem 128: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states the trajectory limit of uniform random sorting networks (D. Dauvergne, "The Archimedean
limit of random sorting networks", J. Amer. Math. Soc. 35 (2022), Theorem 5): the rescaled
trajectory of a uniformly chosen particle in a uniformly chosen `n`-element sorting network
converges in distribution, in the uniform norm, to the Archimedean path, the random sine curve
`A(t) = √(1 - V²) sin(πt + 2πU)` with `U, V` independent and uniform on `[0, 1]` (Dauvergne's
equivalent form of `X cos(πt) + Z sin(πt)` with `(X, Z)` Archimedean). This is the "sine-curve
limit" that the problem's short-time displacement bound would reprove through the criterion of
Rahman, Virág and Vizer (their Corollary 2.1 gives convergence in probability of the empirical
law of the trajectories, which implies this statement).

Modelling choices: a sorting network is a sequence of `N = n(n-1)/2` adjacent transpositions of
positions whose composite is the reversal (so it is a reduced word of the reversal); positions are
numbered `0, …, n-1` and the trajectory is Dauvergne's `σ_G(x, t) = 2σ(x, ⌊Nt⌋)/n - 1` with
positions `σ` numbered from `1`. Trajectories are elements of `unitInterval →ᵤ ℝ`, the functions
`[0, 1] → ℝ` with the topology of uniform convergence, and convergence in distribution is tested
against all bounded continuous functions on this space; since the trajectories and the limit lie
in Dauvergne's closed space `D`, this is equivalent to convergence in distribution in `D`.
-/

import Mathlib

namespace Mathathon.P128

open Filter Topology
open scoped UniformConvergence BoundedContinuousFunction

/-- The number of swaps in an `n`-element sorting network, `N = n(n-1)/2`. -/
def numSwaps (n : ℕ) : ℕ := n.choose 2

/-- `τ` is an adjacent transposition: it exchanges two neighbouring positions `a` and `a + 1`
(positions are numbered `0, …, n-1`). -/
def IsAdjacentSwap {n : ℕ} (τ : Equiv.Perm (Fin n)) : Prop :=
  ∃ a b : Fin n, (a : ℕ) + 1 = b ∧ τ = Equiv.swap a b

/-- For a sequence `ω` of `N` swaps of positions, `position ω k` sends each particle to its
position after the first `k` swaps: `position ω k = ω (k-1) * ⋯ * ω 1 * ω 0` (all `N` swaps when
`k ≥ N`). Particle `x` starts at position `x`. -/
def position {n : ℕ} (ω : Fin (numSwaps n) → Equiv.Perm (Fin n)) (k : ℕ) :
    Equiv.Perm (Fin n) :=
  ((List.ofFn ω).take k).reverse.prod

/-- The `n`-element sorting networks: the sequences of `N = n(n-1)/2` adjacent transpositions
that move every particle `x` to position `n - 1 - x`. -/
noncomputable def sortingNetworks (n : ℕ) : Finset (Fin (numSwaps n) → Equiv.Perm (Fin n)) := by
  classical
  exact Finset.univ.filter fun ω =>
    (∀ i, IsAdjacentSwap (ω i)) ∧ position ω (numSwaps n) = Fin.revPerm

/-- The rescaled trajectory `t ↦ σ_G(x, t) = 2σ(x, ⌊Nt⌋)/n - 1` of particle `x`, where
`σ(x, k) ∈ {1, …, n}` is its position after `k` swaps, numbered from `1`. -/
noncomputable def trajectory {n : ℕ} (ω : Fin (numSwaps n) → Equiv.Perm (Fin n)) (x : Fin n) :
    unitInterval →ᵤ ℝ :=
  UniformFun.ofFun fun t =>
    2 * (((position ω ⌊(numSwaps n : ℝ) * t⌋₊ x : ℕ) : ℝ) + 1) / n - 1

/-- The sine curve `t ↦ a sin(πt + θ)` on `[0, 1]`. -/
noncomputable def sineCurve (a θ : ℝ) : unitInterval →ᵤ ℝ :=
  UniformFun.ofFun fun t => a * Real.sin (Real.pi * t + θ)

/-- **Dauvergne's trajectory limit** (Theorem 5 of "The Archimedean limit of random sorting
networks"): for every bounded continuous function `F` on the space of paths `[0, 1] → ℝ` with the
uniform topology, the mean of `F` over the trajectories of all particles of all `n`-element
sorting networks converges to `𝔼 F(A)`, where `A(t) = √(1 - V²) sin(πt + 2πU)` with `U, V`
independent and uniform on `[0, 1]`. -/
theorem archimedean_trajectory_limit (F : (unitInterval →ᵤ ℝ) →ᵇ ℝ) :
    Tendsto
      (fun n : ℕ => (∑ ω ∈ sortingNetworks n, ∑ x : Fin n, F (trajectory ω x)) /
        ((n : ℝ) * (sortingNetworks n).card))
      atTop
      (𝓝 (∫ u in (0 : ℝ)..1, ∫ v in (0 : ℝ)..1,
        F (sineCurve (Real.sqrt (1 - v ^ 2)) (2 * Real.pi * u)))) := by
  sorry

end Mathathon.P128
