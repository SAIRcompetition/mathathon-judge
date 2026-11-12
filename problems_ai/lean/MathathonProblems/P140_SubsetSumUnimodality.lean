/-
Mathathon Round 1, Problem 140: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states the theorem whose combinatorial proof the problem asks for (Hughes 1977, Stanley 1980,
Proctor 1982): for every `n`, the coefficients of `(1 + q)(1 + q²)⋯(1 + qⁿ)`, i.e. the numbers of
subsets of `{1, …, n}` with a given sum, weakly increase up to the middle degree `n(n + 1)/4`
and weakly decrease after it. With `N = n(n + 1)/2`, the degree of the product, the coefficient of
`q^k` is at most that of `q^(k+1)` when `2k < N`, and at least that of `q^(k+1)` when `N ≤ 2k`.
A Lean statement cannot require the proof to be combinatorial. Stanley's question whether the
poset `M(n)` has a symmetric chain decomposition, the strongest goal on the problem page, is not
stated here.
-/

import Mathlib

namespace Mathathon.P140

open Polynomial

/-- The coefficient of `q^k` in `(1 + q)(1 + q²)⋯(1 + qⁿ)`, which is the number of subsets of
`{1, …, n}` whose elements add up to `k`. -/
noncomputable def coeffProd (n k : ℕ) : ℕ :=
  (∏ i ∈ Finset.Icc 1 n, (1 + X ^ i : ℕ[X])).coeff k

/-- Unimodality: the coefficients increase up to the middle degree and decrease after it. -/
theorem coeffProd_unimodal (n k : ℕ) :
    (2 * k < n * (n + 1) / 2 → coeffProd n k ≤ coeffProd n (k + 1)) ∧
      (n * (n + 1) / 2 ≤ 2 * k → coeffProd n (k + 1) ≤ coeffProd n k) := by
  sorry

end Mathathon.P140
