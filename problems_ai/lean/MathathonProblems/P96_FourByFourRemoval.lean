/-
Mathathon Round 1, Problem 96: official Lean statement, prepared by AI. It may contain errors.

Source (openai/math, Apache License 2.0):
  https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/MatrixRemoval.lean
Adapted: the source states that OpenAI's 66×66 pattern has no polynomial removal bound. The
definitions `BinaryMatrix`, `IncreasingMap`, `orderedCopies`, `copyCount`, `HFree`,
`hammingDistance`, `fixedMinEdits` and `fixedDistance` and the theorem
`no_polynomial_removal_bound` are copied unchanged, in `namespace Mathathon.P96` instead of
`OAI.Problem348`, with two changes: the pattern `fixedH` (with its helpers `etaBit` and
`anchor64`, which are left out) is replaced by the 4×4 pattern H₄ of Z. Wang, "A Four-by-Four
Obstruction to Polynomial Removal for Ordered Binary Matrices" (arXiv:2610.15370, display (2)),
with a docstring added, and the exponent `132 = 2 · 66` of `n` becomes `8 = 2 · 4`.

The statement is the failure of polynomial removal for H₄ (Wang, Corollary 1.2): for all
`c, C > 0` there are `n ≥ 1`, `ε ∈ (0, 1)` and an `n × n` binary matrix `A` with
`dist_{H₄}(A) ≥ ε` and fewer than `c ε^C n^8` ordered copies of H₄. An ordered copy is a pair of
strictly increasing maps `Fin 4 → Fin n` (rows and columns) on which `A` agrees with H₄ in all
sixteen entries, zeros included; `dist_{H₄}(A)` is the least number of entries whose change (in
either direction) makes `A` free of H₄, divided by `n²`.
-/

import Mathlib

namespace Mathathon.P96

noncomputable section

abbrev BinaryMatrix (n : ℕ) := Fin n → Fin n → Bool

abbrev IncreasingMap (k n : ℕ) := {f : Fin k → Fin n // StrictMono f}

def orderedCopies {k n : ℕ} (H : BinaryMatrix k) (A : BinaryMatrix n) :
    Finset (IncreasingMap k n × IncreasingMap k n) := by
  classical
  exact Finset.univ.filter (fun rc =>
    ∀ i j, A ((rc.1).val i) ((rc.2).val j) = H i j)

def copyCount {k n : ℕ} (H : BinaryMatrix k) (A : BinaryMatrix n) : ℕ :=
  (orderedCopies H A).card

def HFree {k n : ℕ} (H : BinaryMatrix k) (A : BinaryMatrix n) : Prop :=
  copyCount H A = 0

def hammingDistance {n : ℕ} (A B : BinaryMatrix n) : ℕ := by
  classical
  exact (Finset.univ.filter (fun rc : Fin n × Fin n =>
    A rc.1 rc.2 ≠ B rc.1 rc.2)).card

/-- Wang's pattern
`H₄ = [[0, 1, 1, 0], [1, 0, 0, 1], [1, 0, 1, 0], [0, 1, 1, 1]]`, with `true` for 1;
`fixedH i j` is the entry in row `i` and column `j`. -/
def fixedH : BinaryMatrix 4 :=
  ![![false, true, true, false],
    ![true, false, false, true],
    ![true, false, true, false],
    ![false, true, true, true]]

def fixedMinEdits {n : ℕ} (A : BinaryMatrix n) : ℕ := by
  classical
  exact
    (Finset.univ.image (fun B : BinaryMatrix n =>
      if HFree fixedH B then hammingDistance A B else n * n + 1)).min'
      (by simp)

def fixedDistance {n : ℕ} (A : BinaryMatrix n) : ℝ :=
  (fixedMinEdits A : ℝ) / ((n : ℝ) ^ 2)

theorem no_polynomial_removal_bound :
    ∀ c C : ℝ, 0 < c → 0 < C →
  ∃ n : ℕ, 1 ≤ n ∧
    ∃ ε : ℝ, 0 < ε ∧ ε < 1 ∧
      ∃ A : BinaryMatrix n,
        fixedDistance A ≥ ε ∧
        (copyCount fixedH A : ℝ) <
          c * Real.rpow ε C * ((n : ℝ) ^ 8) := by
  sorry

end

end Mathathon.P96
