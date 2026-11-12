# Problem 135

> Verbatim copy of one row of the Mathathon problem sheet. The text under each heading is the cell text, unchanged. See [README.md](README.md).

## Problem ID

135

## Title/name of problem

The Theorem That Secretly Needed Choice

## Short description of problem (100 words or less)

Every first course in category theory proves: a fully faithful, essentially surjective functor is an equivalence. Surprise: over ZF this theorem is equivalent to the Axiom of Choice. Inverting one innocent functor, from the "Vitali groupoid" (reals, with x ≅ y iff x − y is rational) to the set R/Q, is the same as building a non-measurable Vitali set. Yet in homotopy type theory, in Rezk's complete Segal spaces, and in the Rzk proof assistant the same theorem holds with no choice at all. Find exactly where the choice hides, explain why changing what "equal" means makes it disappear, and check both sides by computer.

The classical proof (Mac Lane, Categories for the Working Mathematician, IV.4) uses global choice without comment. Makkai (1996) changed the notion of functor to avoid it. Univalent foundations and Rezk's completeness condition (2001) change the notion of equality instead, which makes the choice unique and therefore free.

## Submitted Area

Category Theory

## Proposed Tracks

Number Theory/Algebra

## Reference/source material

Mac Lane (CWM IV.4); Makkai, JPAA 108 (1996); HoTT Book, Ch. 9; Ahrens–Kapulkin–Shulman, MSCS 25 (2015); Rezk, Trans. AMS 353 (2001); Rasekh, arXiv:1805.03131 and ICERM School Notes "Complete Segal Spaces" (2026); Riehl–Shulman, Higher Structures 1 (2017); Freyd (1976); Blanc (1978).

## Desired outcome

Lean 4: a choice-free reduction "theorem ⇒ AC", plus a #print axioms audit
of mathlib's Functor.inv. A "Two Nerves" visualizer. The univalent
choice-free proof, explained.
