/-
Mathathon Round 1, Problem 06: official Lean statement, prepared by AI. It may contain errors.

Source (google-deepmind/formal-conjectures, Apache License 2.0):
  https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjectures/Wikipedia/ABC.lean
Adapted: the definition `radical` and the theorem `abc` are copied unchanged; the
formal-conjectures imports, the module-system header, the module docstring, the metadata
attributes, the test lemmas, the definition `quality` and the two variants of `abc`
(`abc.variants.lt_constant_mul` and `abc.variants.quality`) are left out.

The source file carries this notice:

    Copyright 2025 The Formal Conjectures Authors.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
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
