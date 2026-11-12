/-
Mathathon Round 1, Problem 137: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states the formula whose combinatorial proof the problem asks for, Proposition 2 of
M. Konvalinka, "Divisibility of generalized Catalan numbers", J. Combin. Theory Ser. A 114
(2007): if `p` is prime, `q = p ^ k` with `k ≥ 1` and `n ≥ 0`, the exponent of `p` in the
Fuss–Catalan number `C^(q)_n = binom(qn, n) / ((q - 1) n + 1)` is
`(s_p((q - 1) n + 1) - 1) / (p - 1)`, where `s_p` is the sum of the base-`p` digits. The formula
is stated multiplied by `p - 1`, as Mathlib states Legendre's formula
(`sub_one_mul_padicValNat_factorial`); since `p - 1 ≥ 1`, this is equivalent and also records
that the division is exact. The division in `fussCatalan` is exact as well. A Lean statement
cannot require the proof to be combinatorial.
-/

import Mathlib

namespace Mathathon.P137

/-- The Fuss–Catalan number `C^(q)_n = binom(qn, n) / ((q - 1) n + 1)`, the number of `q`-ary
trees with `n` vertices. For `q ≥ 1` the division is exact. -/
def fussCatalan (q n : ℕ) : ℕ := (q * n).choose n / ((q - 1) * n + 1)

/-- Konvalinka's Proposition 2, multiplied by `p - 1`: for `q = p ^ k` with `p` prime and `k ≥ 1`,
`(p - 1) ν_p(C^(q)_n) = s_p((q - 1) n + 1) - 1`. -/
theorem sub_one_mul_padicValNat_fussCatalan (p k n : ℕ) [Fact p.Prime] (hk : 1 ≤ k) :
    (p - 1) * padicValNat p (fussCatalan (p ^ k) n) =
      (p.digits ((p ^ k - 1) * n + 1)).sum - 1 := by
  sorry

end Mathathon.P137
