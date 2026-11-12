/-
Mathathon Round 1, Problem 131: official Lean statement, prepared by AI. It may contain errors.

Source (ahhwuhu/zeta_3_irrational, Apache License 2.0):
  https://github.com/ahhwuhu/zeta_3_irrational/blob/e8785315a01c8fbcddaa0fc03b3c8b29a61bc1f1/Zeta3Irrational/Basic.lean
Adapted: the statement of the theorem `zeta_3_irratoinal` (the misspelling is the source's) is
copied unchanged, inside `namespace Mathathon.P131`; its proof is replaced by `sorry`, and the
source's imports (Mathlib modules, the PrimeNumberTheoremAnd project and the project's own files)
are replaced by `import Mathlib`. The statement says that `riemannZeta 3` is not the image of a
rational number in `ℂ`, i.e. that ζ(3) is irrational (Apéry's theorem). The repository contains a
proof (Beukers' method), which uses the PrimeNumberTheoremAnd project for the prime number
theorem; it was not checked here. The same claim is `RiemannZetaValues.irrational_three` in
google-deepmind/formal-conjectures (commit a425ca3eb797fe927cb88c950565fdcbbbbada70,
`FormalConjectures/Wikipedia/RiemannZetaValues.lean`), stated as
`∃ x, Irrational x ∧ riemannZeta 3 = x`.
-/

import Mathlib

namespace Mathathon.P131

theorem zeta_3_irratoinal : ¬ ∃ r : ℚ , r = riemannZeta 3 := by
  sorry

end Mathathon.P131
