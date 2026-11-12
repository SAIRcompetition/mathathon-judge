/-
Mathathon Round 1, Problem 86: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states rigidity in the planar Ulam floating body problem at the perimetral densities 1/3, 1/4
and 1/5 named in the problem's title: a strictly convex planar body with `C¹` boundary that
floats in equilibrium in every position with perimetral density `1/n`, `n = 3, 4, 5`, is a disk
(J. Bracho, L. Montejano, D. Oliveros, "Carousels, Zindler curves and the floating body problem",
Period. Math. Hungar. 49 (2004): Theorem 5 for 1/3 and 1/4, and for 1/5 an outline in Section 6,
with details in their 2001 paper and D. Oliveros's thesis). The hypotheses are those of
Theorem 1 of O. Asipchuk, M. Kosmakov and P. Zatitskii, "Rigidity in the planar Ulam floating
body problem with perimetral density σ = 1/6" (IMRN 2026), which proves the same statement for
1/6.

Modelling choices. The body `K` is a compact, strictly convex subset of ℝ² with nonempty
interior; "`C¹` boundary" is stated as "a unique supporting line at every boundary point", which
for convex bodies is equivalent. The body has relative density `ρ ∈ (0, 1)`. A position is a unit
vector `u`, the upward vertical in the body's frame; the waterline is a line `⟪x, u⟫ = c` such
that the part of `K` below it has area `ρ · area K` (for a convex body such a `c` exists and is
unique). As in Archimedes' law (Bracho–Montejano–Oliveros, Section 3), `K` floats in equilibrium
in that position when the centroids of `K` and of the submerged part lie on a line parallel to
`u`, that is, orthogonal to the waterline; the perimetral density is `σ` when the part of the
boundary below the waterline has length `σ` times the perimeter. Lengths are one-dimensional
Hausdorff measures, and centroids are averages of the position over the region.
-/

import Mathlib

namespace Mathathon.P86

open MeasureTheory

local notation "ℝ²" => EuclideanSpace ℝ (Fin 2)

/-- The part of `K` on or below the line `{x | ⟪x, u⟫ = c}`. -/
def below (K : Set ℝ²) (u : ℝ²) (c : ℝ) : Set ℝ² := K ∩ {x | inner ℝ x u ≤ c}

/-- The centre of mass of a region of uniform density: the average of the position over it. -/
noncomputable def centroid (S : Set ℝ²) : ℝ² := ⨍ x in S, x

/-- `K` has a unique supporting line at every boundary point: at each boundary point `p`, any two
nonzero outer normals of `K` at `p` are positive multiples of each other. For a convex body this
says that its boundary is a `C¹` curve. -/
def HasUniqueSupportLines (K : Set ℝ²) : Prop :=
  ∀ p ∈ frontier K, ∀ v w : ℝ², v ≠ 0 → w ≠ 0 →
    (∀ y ∈ K, inner ℝ (y - p) v ≤ 0) → (∀ y ∈ K, inner ℝ (y - p) w ≤ 0) →
      ∃ t : ℝ, 0 < t ∧ w = t • v

/-- A body `K` of relative density `ρ` floats in equilibrium in every position with perimetral
density `σ`: for every unit vector `u` (the upward vertical) and every height `c` of the
waterline `{x | ⟪x, u⟫ = c}` at which the submerged part `below K u c` has area `ρ · area K`, the
centroids of `K` and of the submerged part lie on a line parallel to `u`, and the submerged part
of the boundary of `K` has length `σ` times the perimeter of `K`. -/
def FloatsInEveryPosition (K : Set ℝ²) (ρ σ : ℝ) : Prop :=
  ∀ u : ℝ², ‖u‖ = 1 → ∀ c : ℝ, volume (below K u c) = ENNReal.ofReal ρ * volume K →
    (∃ t : ℝ, centroid K - centroid (below K u c) = t • u) ∧
      μH[1] (below (frontier K) u c) = ENNReal.ofReal σ * μH[1] (frontier K)

/-- **Rigidity at perimetral densities 1/3, 1/4 and 1/5.** A compact, strictly convex planar set
with nonempty interior and `C¹` boundary that floats in equilibrium in every position with
perimetral density `1/n`, `n ∈ {3, 4, 5}`, is a disk. -/
theorem eq_closedBall_of_floatsInEveryPosition (n : ℕ) (hn : n = 3 ∨ n = 4 ∨ n = 5)
    (K : Set ℝ²) (hcompact : IsCompact K) (hint : (interior K).Nonempty)
    (hconvex : StrictConvex ℝ K) (hsmooth : HasUniqueSupportLines K) (ρ : ℝ)
    (hρ : 0 < ρ ∧ ρ < 1) (hfloat : FloatsInEveryPosition K ρ (1 / (n : ℝ))) :
    ∃ (z : ℝ²) (r : ℝ), K = Metric.closedBall z r := by
  sorry

end Mathathon.P86
