/-
Mathathon Round 1, Problem 70: official Lean statement, prepared by AI. It may contain errors.

Source (google-deepmind/formal-conjectures, Apache License 2.0):
  https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjectures/ErdosProblems/96.lean
  https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjecturesForMathlib/Geometry/Metric.lean
  https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjecturesForMathlib/Geometry/2d.lean
Adapted: the definitions `ConvexIndep` (from `2d.lean`), `unitDistNum` (from `Metric.lean`),
`convexUnitDistanceCounts` and `maxConvexUnitDistances` (from `96.lean`) are copied unchanged
into one file, inside `namespace Erdos96`; the notation `ℝ²` (scoped in the source) is declared
as a `local notation`; the formal-conjectures imports, metadata attributes, and test lemmas are
left out. The source states Erdős Problem 96 as an open conjecture (the maximum number of unit
distances among `n` points in convex position is `O(n)`). The problem page reports that the
answer is negative (no constant `C` bounds the count by `C n`), so the statement of `erdos_96`
is negated (`¬`), following the formal-conjectures convention for disproved problems, and its
docstring is reworded to match.

The source file `96.lean` carries this notice:

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

open Filter
open scoped Finset

local notation "ℝ²" => EuclideanSpace ℝ (Fin 2)

namespace Erdos96

variable {X : Type*} [MetricSpace X]

/-- The number of pairs of points of a finite set `s` in a metric space that are distance 1 apart.
-/
noncomputable def unitDistNum (s : Finset X) : ℕ := #{p ∈ s.sym2 | dist p.out.1 p.out.2 = 1}

/-- `ConvexIndep S` means that `S` consists of extremal points of its convex hull,
i.e., the point set encloses a convex shape.
Also known as a "convex-independent set". -/
def ConvexIndep (S : Set ℝ²) : Prop :=
  ∀ a ∈ S, a ∉ convexHull ℝ (S \ {a})

/--
The set of all possible numbers of unit distances determined by the vertices of a convex
$n$-gon.
-/
noncomputable def convexUnitDistanceCounts (n : ℕ) : Set ℕ :=
  {unitDistNum points | (points : Finset ℝ²) (_ : points.card = n) (_ : ConvexIndep points)}

/--
The **maximum number of unit distances** determined by the vertices of a convex $n$-gon.
This function is often denoted as $U_c(n)$ in combinatorics.
-/
noncomputable def maxConvexUnitDistances (n : ℕ) : ℕ :=
  sSup (convexUnitDistanceCounts n)

/--
It is not true that if $n$ points in $\mathbb{R}^2$ form a convex polygon then there are $O(n)$
many pairs which are distance $1$ apart: there is no constant $C$ such that $n$ points in convex
position always determine at most $C n$ unit distances.
-/
theorem erdos_96 :
    ¬ (fun n => (maxConvexUnitDistances n : ℝ)) =O[atTop] fun n => (n : ℝ) := by
  sorry

end Erdos96
