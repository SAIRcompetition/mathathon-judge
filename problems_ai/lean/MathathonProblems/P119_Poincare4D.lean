/-
Mathathon Round 1, Problem 119: official Lean statement, prepared by AI. It may contain errors.

Source (leanprover/lean-eval, Apache License 2.0):
  https://github.com/leanprover/lean-eval/blob/85a88c37f80170d9f08651dc63ce6b81a8a48cb9/LeanEval/Topology/Poincare4DTopological.lean
Adapted: the file is copied unchanged (namespace, docstrings, `open` lines and the theorem
`poincare_4d_topological`), except that the import of `EvalTools.Markers` and the attribute
`@[eval_problem]` are left out. The statement is the case `n = 4` of Mathlib's
`proof_wanted ContinuousMap.HomotopyEquiv.nonempty_homeomorph_sphere`
(`Wanted/Geometry/Manifold/PoincareConjecture.lean`, Mathlib v4.35.0). Only the topological
4-dimensional Poincaré theorem is stated; the disc embedding theorem, which the problem also asks
for, is not, since Mathlib has no topological immersions, equivariant intersection numbers in
`ℤ[π₁]` or good groups.
-/

import Mathlib

namespace LeanEval
namespace Topology

/-!
# 4D topological Poincaré conjecture (Freedman)

A specialization of mathlib's generalized `proof_wanted
ContinuousMap.HomotopyEquiv.nonempty_homeomorph_sphere` in
`Mathlib/Geometry/Manifold/PoincareConjecture.lean`, restricted to
dimension 4: every Hausdorff 4-manifold homotopy-equivalent to the standard
4-sphere `𝕊⁴` is homeomorphic to `𝕊⁴`.

This is Michael Freedman's 1982 theorem (Freedman, *The topology of
four-dimensional manifolds*, J. Differential Geom. 17), for which he was
awarded the Fields Medal in 1986. The proof uses Casson handles and the
"Bing topology" infinite-process construction; the corresponding **smooth**
4D Poincaré conjecture (every smooth homotopy 4-sphere is diffeomorphic
to `𝕊⁴`) remains famously **open** and is not included as an eval problem.

mathlib has homotopy equivalences (`≃ₕ`), homeomorphisms (`≃ₜ`),
`ChartedSpace`, and the unit sphere as a topological space — but no Casson
handles, no Freedman's theorem, and no 4D Poincaré conjecture.
-/

open Metric (sphere)
open ContinuousMap

/-- **4D topological Poincaré conjecture** (Freedman, 1982). Every Hausdorff
4-manifold that is homotopy-equivalent to the standard 4-sphere `𝕊⁴` is
homeomorphic to `𝕊⁴`. -/
theorem poincare_4d_topological
    {M : Type*} [TopologicalSpace M] [T2Space M]
    [ChartedSpace (EuclideanSpace ℝ (Fin 4)) M]
    (_h : M ≃ₕ sphere (0 : EuclideanSpace ℝ (Fin 5)) 1) :
    Nonempty (M ≃ₜ sphere (0 : EuclideanSpace ℝ (Fin 5)) 1) := by
  sorry

end Topology
end LeanEval
