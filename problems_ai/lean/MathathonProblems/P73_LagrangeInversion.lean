/-
Mathathon Round 1, Problem 73: official Lean statement, prepared by AI. It may contain errors.

Source (manman4/mathlib4, branch of Mathlib pull request #43871, open on 12 November 2026;
Apache License 2.0):
  https://github.com/manman4/mathlib4/blob/21d5273c20a3771ded85855b0f429fdc76c1b080/Mathlib/RingTheory/PowerSeries/LagrangeInversion.lean
Adapted: the statement of `lagrange_inversion_coeff_pow` is copied unchanged, except that the
section variables it uses are written as explicit binders of the theorem, in the same order, so
the statement can be read on its own; the proof is replaced by `sorry`. The `module` header, the other lemmas and
theorems of the file, and `@[expose] public section` are left out, and the theorem is placed in
`namespace Mathathon.P73` (with `open PowerSeries`) instead of `namespace PowerSeries`.

The source file carries this notice:

    Copyright (c) 2026 Seiichi Manyama. All rights reserved.
    Released under Apache 2.0 license as described in the file LICENSE.
    Authors: Seiichi Manyama
-/

import Mathlib

namespace Mathathon.P73

open PowerSeries

/-- **Lagrange inversion for powers.** If `Y = X * P(Y)`, then
`(n + k) * [X ^ (n + k)] Y ^ k = k * [X ^ n] P ^ (n + k)` for all natural numbers
`n` and `k`. -/
theorem lagrange_inversion_coeff_pow {R : Type*} [CommRing R] [HasUniqueDiv R]
    {P Y : R⟦X⟧} (hY : Y = X * P.subst Y) (n k : ℕ) :
    (n + k) • (Y ^ k).coeff (n + k) = k • (P ^ (n + k)).coeff n := by
  sorry

end Mathathon.P73
