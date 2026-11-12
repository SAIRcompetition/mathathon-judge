/-
Mathathon Round 1, Problem 108: official Lean statement, prepared by AI. It may contain errors.

Source (google-deepmind/formal-conjectures, Apache License 2.0):
  https://github.com/google-deepmind/formal-conjectures/blob/a425ca3eb797fe927cb88c950565fdcbbbbada70/FormalConjectures/Wikipedia/RiemannZetaValues.lean
Adapted: only the theorem `irrational_seven` is kept, copied unchanged with its docstring inside
the source's namespace `RiemannZetaValues`; the module header, the formal-conjectures import,
`@[expose] public section`, its `category` and `AMS` attributes and the other declarations of the
file (the statements for ζ(3), ζ(5), ζ(9), ζ(11), for all odd values, for infinitely many odd
values, and Zudilin's theorem) are left out.
The problem asks how far Fauzan's ζ(5) argument extends, starting with ζ(7); the statement is
that first target. `riemannZeta` is Mathlib's, and `x` is a real number.
-/

import Mathlib

namespace RiemannZetaValues

/--
$\zeta(7)$ is irrational.
-/
theorem irrational_seven : ∃ x, Irrational x ∧ riemannZeta 7 = x := by
  sorry

end RiemannZetaValues
