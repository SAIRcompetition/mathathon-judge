/-
Mathathon Round 1, Problem 121: official Lean statement, prepared by AI. It may contain errors.

Source (roos-j/lean-lt-carleson, Apache License 2.0):
  https://github.com/roos-j/lean-lt-carleson/blob/8dc5aac6926c9a8692e8790d1ef6008ed4d6b2a0/CarlesonLT/Defs.lean
  https://github.com/roos-j/lean-lt-carleson/blob/8dc5aac6926c9a8692e8790d1ef6008ed4d6b2a0/CarlesonLT/Theorems.lean
Adapted: the definition `CarlesonLT.fourierPartialSum` (from `Defs.lean`, with its namespace,
`noncomputable section` and `open` lines) and the theorem `classical_carleson` (from
`Theorems.lean`, in the root namespace as there, with its `open` lines) are copied unchanged with
their docstrings; the proof term `Auto.classical_carleson f hper hf` is replaced by `sorry`. The
module-system header, the imports, the unused `variable {n : ℕ}` lines and the other declarations
of the two files (the notation `ℝ^n`, the anisotropic Carleson operator and its theorem) are left
out. The source repository contains a complete Lean proof (`Auto.classical_carleson`
in `CarlesonLT/Auto/ClassicalCarleson.lean`); it was not checked here.
-/

import Mathlib

namespace CarlesonLT

noncomputable section

open Real Complex Finset ENNReal MeasureTheory Set EuclideanSpace
open scoped InnerProductSpace FourierTransform

/-- The partial sums `S_N f(x) = ∑_{k = -N}^{N} f̂(k) e^{ikx}` of the Fourier series. -/
def fourierPartialSum (f : ℝ → ℂ) (N : ℕ) (x : ℝ) : ℂ :=
  ∑ n ∈ Finset.Icc (-(N : ℤ)) N,
    fourierCoeffOn two_pi_pos f n * fourier n (x : AddCircle (2 * π))

end

end CarlesonLT

section

open CarlesonLT
open MeasureTheory Filter Topology Function Real Set SchwartzMap

/-- **Carleson's theorem.** The Fourier series of a `2π`-periodic `L²` function
on `ℝ` converges pointwise almost everywhere. -/
theorem classical_carleson (f : ℝ → ℂ) (hper : Periodic f (2 * π))
    (hf : MemLp f 2 (volume.restrict (Ico 0 (2 * π)))) :
    ∀ᵐ x, Tendsto (fun N ↦ fourierPartialSum f N x) atTop (𝓝 (f x)) := by
  sorry

end
