/-
Mathathon Round 1, Problem 50: official Lean statement.

Written for Mathathon; not taken from an existing formalization.
It states the negative answer to Hilbert's tenth problem over ℚ (OpenAI, "Hilbert's tenth
problem over the rational numbers", 2026, Theorem 1.1): no algorithm decides whether a
polynomial with integer coefficients, in any number of variables, has a rational zero.
An input polynomial is a finite list of terms `(c, [i₁, …, iᵣ])`, each standing for the monomial
`c * X i₁ * ⋯ * X iᵣ` in the variables `X 0, X 1, …`; "no algorithm" is `¬ ComputablePred`
for the standard `Primcodable` encoding of such lists.
-/

import Mathlib

namespace Mathathon.P50

/-- An integer polynomial in the variables `X 0, X 1, X 2, …`, written as a finite list of terms.
A term `(c, vs)` stands for the monomial `c * ∏ i ∈ vs, X i` (an index may occur several times in
`vs`, giving a power of that variable). The number of variables is not fixed in advance. -/
abbrev IntPoly := List (ℤ × List ℕ)

/-- The polynomial in `MvPolynomial ℕ ℤ` that a list of terms stands for. -/
noncomputable def IntPoly.toMvPolynomial (p : IntPoly) : MvPolynomial ℕ ℤ :=
  (p.map fun t => MvPolynomial.C t.1 * (t.2.map MvPolynomial.X).prod).sum

/-- The polynomial has a zero with all coordinates rational. -/
def IntPoly.HasRationalZero (p : IntPoly) : Prop :=
  ∃ x : ℕ → ℚ, MvPolynomial.aeval x p.toMvPolynomial = 0

/-- Hilbert's tenth problem over `ℚ` has a negative answer: it is undecidable whether an
integer polynomial has a rational zero. -/
theorem hilbert_tenth_rationals_undecidable : ¬ ComputablePred IntPoly.HasRationalZero := by
  sorry

end Mathathon.P50
