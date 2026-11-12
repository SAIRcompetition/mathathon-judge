/-
Mathathon Round 1, Problem 130: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states the conjecture of L. Camacho, F. M. Dionísio and R. Picken ("Colourings and the
Alexander polynomial", Kyungpook Math. J. 56 (2016), §11), the "Alexander Polynomial Conjecture"
of the problem page: if two knots have Alexander polynomials that differ by more than a factor
`±tʲ`, then for some `n ≥ 2` and some `m` prime to `n` they have different numbers of colourings
by the linear Alexander quandle `ℤ/n` with `a ∗ b = m a + (1 - m) b`.

Mathlib has no knots, so the statement is about knot diagrams. Both invariants are computed from
any diagram of the knot, and every knot has a diagram with at least one crossing, so this is
equivalent to the statement about knots. Modelling choices:
* A diagram with `N ≥ 1` crossings is given by a planar diagram (PD) code. Its `2N` edges (the
  pieces of the knot between consecutive crossings) are numbered by `ZMod (2 * N)` along the
  orientation, so that edge `e + 1` follows edge `e`. The edge `underIn c` enters crossing `c` on
  the under-strand, which leaves by `underIn c + 1`; the edge `overIn c` enters it on the
  over-strand, which leaves by `overIn c + 1`; every edge enters exactly one crossing.
  `positive c` is the sign of crossing `c`. Counterclockwise around `c`, starting with
  `underIn c`, the edges are `underIn c, overIn c + 1, underIn c + 1, overIn c` at a positive
  crossing and `underIn c, overIn c, underIn c + 1, overIn c + 1` at a negative one (the
  convention of the PD codes `X[i, j, k, l]` of KnotTheory, where at a positive crossing the
  over-strand enters by `l` and leaves by `j`).
* Such a code is realized by a diagram in the plane exactly when the ribbon graph it defines
  (vertices the crossings, with these cyclic orders) has genus 0, i.e., by Euler's formula, has
  `N + 2` faces (`IsPlanar`). The other codes are diagrams of virtual knots.
* Colours are put on edges, with equal colours on the two edges of the over-strand at each
  crossing; such colourings correspond to the usual colourings of arcs. If `y` is the colour of
  the over-strand, then at a positive crossing the outgoing under-edge has colour `x ∗ y`, where
  `x` is the colour of the incoming under-edge, and at a negative crossing the incoming
  under-edge has colour `x' ∗ y`, where `x'` is the colour of the outgoing under-edge.
* The colouring matrix has entries in `ℤ[t]` (the colouring relations with `t` in place of `m`).
  The Alexander polynomial of the diagram is one of its first minors, which agrees with the
  Alexander polynomial of the knot up to a factor `±tʲ`; "different Alexander polynomials"
  means that the two polynomials are not associated in `ℤ[t, t⁻¹]`, whose units are the `±tʲ`.
-/

import Mathlib

namespace Mathathon.P130

open Polynomial

/-- A knot diagram with `N` crossings, given by a planar diagram code (see the header). -/
structure KnotDiagram (N : ℕ) where
  /-- The edge that enters crossing `c` on the under-strand; the edge `underIn c + 1` leaves it. -/
  underIn : Fin N → ZMod (2 * N)
  /-- The edge that enters crossing `c` on the over-strand; the edge `overIn c + 1` leaves it. -/
  overIn : Fin N → ZMod (2 * N)
  /-- The sign of crossing `c`. -/
  positive : Fin N → Bool
  /-- Every edge enters exactly one crossing, on exactly one strand. -/
  bijective : Function.Bijective (Sum.elim underIn overIn)

namespace KnotDiagram

variable {N : ℕ} (D : KnotDiagram N)

/-- The four edges at crossing `c`, in counterclockwise order, starting with the incoming
under-edge. -/
def edgeAt (c : Fin N) : Fin 4 → ZMod (2 * N) :=
  if D.positive c then ![D.underIn c, D.overIn c + 1, D.underIn c + 1, D.overIn c]
  else ![D.underIn c, D.overIn c, D.underIn c + 1, D.overIn c + 1]

/-- Face tracing on the darts `(c, i)`, the position `i` at crossing `c`: from a dart, go along its
edge to the other dart of the same edge, then turn to the next position counterclockwise. -/
def faceStep (d d' : Fin N × Fin 4) : Prop :=
  ∃ d'' : Fin N × Fin 4, d'' ≠ d ∧ D.edgeAt d''.1 d''.2 = D.edgeAt d.1 d.2 ∧
    d' = (d''.1, d''.2 + 1)

/-- The code is a diagram in the plane: its ribbon graph has `N + 2` faces, i.e. genus 0. -/
def IsPlanar : Prop := Nat.card (Quot D.faceStep) = N + 2

/-- `x` is a colouring of the edges by the linear Alexander quandle `ZMod n`, with
`a ∗ b = m a + (1 - m) b`. -/
def IsColouring {n : ℕ} (m : ZMod n) (x : ZMod (2 * N) → ZMod n) : Prop :=
  ∀ c, x (D.overIn c + 1) = x (D.overIn c) ∧
    if D.positive c then x (D.underIn c + 1) = m * x (D.underIn c) + (1 - m) * x (D.overIn c)
    else x (D.underIn c) = m * x (D.underIn c + 1) + (1 - m) * x (D.overIn c)

/-- The number of colourings by the linear Alexander quandle `ZMod n`, `a ∗ b = m a + (1 - m) b`. -/
noncomputable def numColourings (n : ℕ) (m : ℤ) : ℕ :=
  Nat.card {x : ZMod (2 * N) → ZMod n // D.IsColouring (m : ZMod n) x}

/-- The colouring matrix over `ℤ[t]`: row `e` is the relation at the crossing that edge `e`
enters (the relations of `IsColouring`, with `t` in place of `m`). -/
noncomputable def colouringMatrix : Matrix (ZMod (2 * N)) (ZMod (2 * N)) ℤ[X] :=
  Matrix.of fun e => ∑ c,
    ((if e = D.overIn c then Pi.single (D.overIn c + 1) 1 - Pi.single (D.overIn c) 1 else 0) +
      (if e = D.underIn c then
        (if D.positive c then Pi.single (D.underIn c + 1) 1 - Pi.single (D.underIn c) X
          else Pi.single (D.underIn c) 1 - Pi.single (D.underIn c + 1) X) -
            Pi.single (D.overIn c) (1 - X)
      else 0))

/-- The Alexander polynomial of the diagram, up to a factor `±tʲ`: the first minor of the
colouring matrix without the row of edge `underIn 0` and the column of edge `underIn 0 + 1`,
computed as the determinant after that row is replaced by the unit row at that column. -/
noncomputable def alexander [NeZero N] : ℤ[X] :=
  (D.colouringMatrix.updateRow (D.underIn 0) (Pi.single (D.underIn 0 + 1) 1)).det

end KnotDiagram

/-- The conjecture of Camacho, Dionísio and Picken: knot diagrams whose Alexander polynomials are
not equal up to a factor `±tʲ` are distinguished by the number of colourings by some linear
Alexander quandle. -/
theorem alexander_polynomial_conjecture {N N' : ℕ} [NeZero N] [NeZero N']
    (D : KnotDiagram N) (D' : KnotDiagram N') (hD : D.IsPlanar) (hD' : D'.IsPlanar)
    (hΔ : ¬ Associated (toLaurent D.alexander) (toLaurent D'.alexander)) :
    ∃ (n : ℕ) (m : ℤ), 2 ≤ n ∧ Int.gcd m n = 1 ∧ D.numColourings n m ≠ D'.numColourings n m := by
  sorry

end Mathathon.P130
