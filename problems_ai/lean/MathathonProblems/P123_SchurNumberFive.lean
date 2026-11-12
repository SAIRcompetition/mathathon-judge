/-
Mathathon Round 1, Problem 123: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states Heule's theorem S(5) = 160 (M. J. H. Heule, "Schur Number Five", AAAI 2018): 160 is the
largest `N` such that `{1, …, N}` can be coloured with 5 colours without a monochromatic solution
of `a + b = c`. As in Heule's paper and on the problem page, `a = b` is allowed (so `1 + 1 = 2`
counts). A colouring of `{1, …, N}` is given as a function `ℕ → Fin k` whose values outside
`{1, …, N}` are ignored. The statement uses `IsGreatest`, so it asserts both Exoo's lower bound
(a good colouring of `{1, …, 160}` exists) and Heule's upper bound (none of `{1, …, 161}` exists,
nor of any larger interval).
-/

import Mathlib

namespace Mathathon.P123

/-- The colouring `c` of `{1, …, N}` with `k` colours has no monochromatic solution of
`a + b = c` with `a, b, a + b ∈ {1, …, N}` (`a = b` allowed). -/
def IsSchurColouring (k N : ℕ) (c : ℕ → Fin k) : Prop :=
  ∀ a b : ℕ, 1 ≤ a → 1 ≤ b → a + b ≤ N → ¬ (c a = c b ∧ c b = c (a + b))

/-- `{1, …, N}` can be coloured with `k` colours without a monochromatic solution of
`a + b = c`. -/
def HasSchurColouring (k N : ℕ) : Prop :=
  ∃ c : ℕ → Fin k, IsSchurColouring k N c

/-- **Schur number five** (Heule): `S(5) = 160`, i.e. `160` is the largest `N` such that
`{1, …, N}` has a `5`-colouring with no monochromatic solution of `a + b = c`. -/
theorem schur_number_five : IsGreatest {N : ℕ | HasSchurColouring 5 N} 160 := by
  sorry

end Mathathon.P123
