/-
Mathathon Round 1, Problem 136: official Lean statement, prepared by AI. It may contain errors.

Source (physical-superintelligence/aaronson-ambainis, Apache License 2.0):
  https://github.com/physical-superintelligence/aaronson-ambainis/blob/2a6ceaef872ae993708950f951989134084b851a/AaronsonAmbainis/Conjecture.lean
  https://github.com/physical-superintelligence/aaronson-ambainis/blob/2a6ceaef872ae993708950f951989134084b851a/AaronsonAmbainis/Main.lean
Adapted: the definition `PrintedConjecture` (with its docstring) is copied unchanged from
`Conjecture.lean`, and the statement and docstring of the theorem `aaronson_ambainis` from
`Main.lean`, inside `namespace AaronsonAmbainis`; the proof is replaced by `sorry`. The other
statements of `Conjecture.lean` (`ExplicitBound`, `FbsDegreeBound`, `ExplicitBoundImproved`,
`ExplicitBoundPM`) and its module docstring are left out. The words "quoted above" in the
docstring of `PrintedConjecture` refer to that module docstring, which quotes Conjecture 6 of
arXiv:0911.0996v3: "Let p : R^N → R be a polynomial of degree d. Suppose that 0 ≤ p(X) ≤ 1 for
all X ∈ {0,1}^N, and E_{X∈{0,1}^N}[(p(X) − E[p])²] ≥ ε. Then there exists an i such that
Inf_i[p] ≥ (ε/d)^{O(1)}", where "Inf_i[p] := E_{X∈{0,1}^N}[(p(X) − p(X^i))²]". A point of the
cube is `X : Fin N → Bool`, with `true` read as 1 and `false` as 0, and `X^i` is
`Function.update X i (!X i)`. The source was written for Lean 4.33.0 and Mathlib v4.33.0; the
copied text compiles here unchanged. The repository's README states that `aaronson_ambainis` is
proved there with no `sorry` and no added axiom; that proof was not checked here.

The source files have no notice of their own. The NOTICE file of the source repository is
reproduced in `../NOTICE`.
-/

import Mathlib

namespace AaronsonAmbainis

/-- The conjecture of Aaronson and Ambainis as printed (Conjecture 6 of arXiv:0911.0996v3, quoted
above), in the normalisation of Aaronson and Ambainis, with the absolute constant `7` for `O(1)`:
`Inf_i[p] ≥ (ε/d)^7`. "A polynomial of degree `d`" is read as a polynomial of total degree at
most `d`; the statement for total degree at most `d` is equivalent to the statement for degree
exactly `d`, because `(ε/d)^7` decreases in `d` and a polynomial of degree `0` has variance `0`.
The condition `ε > 0` is written out. -/
def PrintedConjecture : Prop :=
  ∀ (N d : ℕ) (p : MvPolynomial (Fin N) ℝ), p.totalDegree ≤ d →
    (∀ X : Fin N → Bool,
      0 ≤ MvPolynomial.eval (fun i => if X i then (1 : ℝ) else 0) p ∧
        MvPolynomial.eval (fun i => if X i then (1 : ℝ) else 0) p ≤ 1) →
    ∀ ε : ℝ, 0 < ε →
      (∑ X : Fin N → Bool,
          (MvPolynomial.eval (fun i => if X i then (1 : ℝ) else 0) p
            - (∑ Y : Fin N → Bool, MvPolynomial.eval (fun i => if Y i then (1 : ℝ) else 0) p)
                / 2 ^ N) ^ 2) / 2 ^ N ≥ ε →
      ∃ i : Fin N,
        (∑ X : Fin N → Bool,
          (MvPolynomial.eval (fun k => if X k then (1 : ℝ) else 0) p
            - MvPolynomial.eval
                (fun k => if Function.update X i (!X i) k then (1 : ℝ) else 0) p) ^ 2) / 2 ^ N
          ≥ (ε / (d : ℝ)) ^ 7

/-- **The Aaronson–Ambainis conjecture**, as printed, with the exponent `7` for `O(1)`. -/
theorem aaronson_ambainis : PrintedConjecture := by
  sorry

end AaronsonAmbainis
