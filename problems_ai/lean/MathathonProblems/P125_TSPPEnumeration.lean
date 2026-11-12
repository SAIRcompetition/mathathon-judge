/-
Mathathon Round 1, Problem 125: official Lean statement, prepared by AI. It may contain errors.

Source (leanprover/lean-eval, Apache License 2.0):
  https://github.com/leanprover/lean-eval/blob/85a88c37f80170d9f08651dc63ce6b81a8a48cb9/LeanEval/Combinatorics/QTSPP.lean
Adapted: the definitions `Cell`, `box`, `IsTotallySymmetric`, `IsTSPP`, `tspps`, `sortedTriples`
and `coordinateSum` are copied unchanged (with their comments, the namespace `QTSPP`, the
`noncomputable section` and the `open` line). The theorem of the source, `q_tspp`, is the
q-analogue (the q-TSPP theorem of Koutschan, Kauers and Zeilberger); it is not copied, nor are
`cell_le_iff`, `orbitCount`, `generatingPolynomial` and the notation `q`. The theorem stated here,
`Mathathon.P125.stembridge_tspp_count`, is written by AI: it is Stembridge's count, the value of
the q-TSPP formula at q = 1 after cancelling the factors 1 - q. Cells are numbered from 0, so the
factor (i+j+k-1)/(i+j+k-2) of the usual formula, with 1 ≤ i ≤ j ≤ k ≤ n, becomes
(coordinateSum c + 2)/(coordinateSum c + 1) for the cells c of `sortedTriples n`.

The source file has no notice of its own; the LICENSE file of the source repository carries the
notice "Copyright 2026 Lean FRO, LLC".
-/

import Mathlib

open scoped BigOperators

namespace QTSPP

noncomputable section

/- A Cell is a 3-tuple of nonnegative integers -/
abbrev Cell := ℕ × ℕ × ℕ

/- A box of size n is the set {0,1,...,n-1}^3-/
def box (n : ℕ) : Finset Cell :=
  (Finset.range n).product
    ((Finset.range n).product (Finset.range n))

/- A finite set of Cells is totally symmetric if
   it is invariant under the natural action of S_3 -/
def IsTotallySymmetric (π : Finset Cell) : Prop :=
  ∀ i j k : ℕ, (i, j, k) ∈ π →
    (i, k, j) ∈ π ∧
    (j, i, k) ∈ π ∧
    (j, k, i) ∈ π ∧
    (k, i, j) ∈ π ∧
    (k, j, i) ∈ π

/- A totally symmetric plane partition (TSPP) is
   a finite set of Cells that is an order ideal
   (in the natural partial order on Cells) and is
   also totally symmetric. Mathlib's "IsLowerSet"
   already captures the notion of an order ideal.-/
def IsTSPP (π : Finset Cell) : Prop :=
  IsLowerSet (π : Set Cell) ∧ IsTotallySymmetric π

/- tspps is the set of all TSPPs inside a box of size n,
   including the empty TSPP -/
def tspps (n : ℕ) : Finset (Finset Cell) := by
  classical
  exact (box n).powerset.filter IsTSPP

/- sortedTriples n is the set of all Cells (i, j, k)
   in the box of size n such that i ≤ j ≤ k -/
def sortedTriples (n : ℕ) : Finset Cell :=
  (box n).filter (fun c => c.1 ≤ c.2.1 ∧ c.2.1 ≤ c.2.2)

/- The coordinateSum of a Cell (i,j,k) is i+j+k -/
def coordinateSum (c : Cell) : ℕ :=
  c.1 + c.2.1 + c.2.2

end

end QTSPP

namespace Mathathon.P125

open QTSPP

/-- **Stembridge's theorem** (1995): the number of totally symmetric plane partitions in the
`n × n × n` box is `∏_{1 ≤ i ≤ j ≤ k ≤ n} (i + j + k - 1) / (i + j + k - 2)`. Here the cells are
numbered from `0`, so the factor of a cell `c` of `sortedTriples n` is
`(coordinateSum c + 2) / (coordinateSum c + 1)`. -/
theorem stembridge_tspp_count (n : ℕ) :
    ((tspps n).card : ℚ) =
      ∏ c ∈ sortedTriples n, ((coordinateSum c + 2 : ℚ) / (coordinateSum c + 1)) := by
  sorry

end Mathathon.P125
