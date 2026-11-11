/-
Mathathon Round 1, Problem 06: official Lean statement, prepared by AI. It may contain errors.

Source (google-deepmind/formal-conjectures, Apache License 2.0):
  https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjectures/Wikipedia/ABC.lean
Adapted: the definition `radical` and the theorem `abc` are copied unchanged; the
formal-conjectures imports, metadata attributes, and test lemmas are left out.
-/

import Mathlib

namespace ABC

/--
The radical of `n` denoted is the product of the distinct prime factors of `n`.
-/
def radical (n : ℕ) : ℕ := n.primeFactors.prod id

/--
For every positive real number `ε`, there exist only finitely many triples `(a, b, c)` of coprime positive integers, with `a + b = c`, such that `c > rad(abc)^(1+ε)`
-/
theorem abc (ε : ℝ) (hε : 0 < ε) :
    {(a, b, c) : ℕ × ℕ × ℕ | 0 < a ∧ 0 < b ∧ 0 < c ∧ ({a, b, c} : Set ℕ).Pairwise Nat.Coprime ∧
    a + b = c ∧ (radical <| a * b * c : ℝ)^(1 + ε) < c}.Finite := by
  sorry

end ABC
