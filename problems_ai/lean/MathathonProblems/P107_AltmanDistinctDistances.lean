/-
Mathathon Round 1, Problem 107: official Lean statement, prepared by AI. It may contain errors.

Source (google-deepmind/formal-conjectures, Apache License 2.0):
  https://github.com/google-deepmind/formal-conjectures/blob/a425ca3eb797fe927cb88c950565fdcbbbbada70/FormalConjectures/ErdosProblems/93.lean
  https://github.com/google-deepmind/formal-conjectures/blob/a425ca3eb797fe927cb88c950565fdcbbbbada70/FormalConjecturesForMathlib/Geometry/Metric.lean
  https://github.com/google-deepmind/formal-conjectures/blob/a425ca3eb797fe927cb88c950565fdcbbbbada70/FormalConjecturesForMathlib/Geometry/2d.lean
Adapted: the theorem `erdos_93` (Altman's bound) is copied unchanged, with its docstring, its
`open` line and its namespace `Erdos93`, from `93.lean`. The definitions it uses are copied
unchanged with their docstrings, `distanceSet` and `distinctDistances` from `Metric.lean`
(with the `variable` line and `open scoped Finset` they need) and `ConvexIndep` from `2d.lean`,
but they are placed inside `namespace Erdos93` (in the source they are in the root namespace
and in `EuclideanGeometry`) to avoid clashes with other files. The notation `ℝ²` (scoped in
`2d.lean`) is declared as a `local notation`. The module headers, imports,
`@[expose] public section`, the attributes of `erdos_93` (`category`, `AMS`, `formal_proof`),
its `set_option` line and all other declarations are left out. In the docstring, [Al63] is
E. Altman, "On a problem of P. Erdős", Amer. Math. Monthly 70 (1963), 148-157.

The source file `93.lean` carries this notice:

    Copyright 2026 The Formal Conjectures Authors.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

`Metric.lean` and `2d.lean` carry the same notice with the line
"Copyright 2025 The Formal Conjectures Authors."
-/

import Mathlib

local notation "ℝ²" => EuclideanSpace ℝ (Fin 2)

open EuclideanGeometry

namespace Erdos93

open scoped Finset

variable {X : Type*} [MetricSpace X]

/-- The set of distances determined by a finite set of points in a metric space. -/
noncomputable def distanceSet (points : Finset X) : Finset ℝ :=
  points.offDiag.image fun (pair : X × X) => dist pair.1 pair.2

/--
Given a finite set of points in a metric space, we define the number of distinct distances
between pairs of points.
-/
noncomputable def distinctDistances (points : Finset X) : ℕ :=
  #(distanceSet points)

/-- `ConvexIndep S` means that `S` consists of extremal points of its convex hull,
i.e., the point set encloses a convex shape.
Also known as a "convex-independent set". -/
def ConvexIndep (S : Set ℝ²) : Prop :=
  ∀ a ∈ S, a ∉ convexHull ℝ (S \ {a})

/--
If $n$ distinct points in $\mathbb{R}^2$ form a convex polygon then they determine at least
$\lfloor \frac{n}{2}\rfloor$ distinct distances.

Solved by Altman [Al63].
-/
theorem erdos_93 (A : Finset ℝ²) (hA : ConvexIndep (A : Set ℝ²)) :
    A.card / 2 ≤ distinctDistances A := by
  sorry

end Erdos93
