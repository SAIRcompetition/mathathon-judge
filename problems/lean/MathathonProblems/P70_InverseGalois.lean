/-
Mathathon Round 1, Problem 70: official Lean statement.

Source (google-deepmind/formal-conjectures, Apache License 2.0):
  https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjectures/Wikipedia/InverseGalois.lean
Adapted: the structure `GaloisRealization`, the class `IsRealizable` and the theorem
`inverse_galois_problem` are copied unchanged. The five solved variants in the source
(cyclic, abelian, symmetric groups, and two function-field versions) are left out, as are the
formal-conjectures imports and metadata attributes. The inverse Galois problem over ℚ is
open; the theorem states it as a conjecture.
-/

import Mathlib

namespace InverseGalois

structure GaloisRealization.{u, v} (K : Type u) (G : Type v) [Field K] [Group G] where
  -- Every Galois extension of `K : Type u` injects into `AlgebraicClosure K : Type u`.
  -- We therefore lose no generality assuming `L : Type u`.
  L : Type u
  to_field : Field L
  to_algebra : Algebra K L
  to_isGalois : IsGalois K L
  iso : G ≃* (L ≃ₐ[K] L)

/--
Say a group `G` is realizable over a field `K` if it
is isomorphic to the Galois group of a Galois extension
of `K`
-/
class IsRealizable (K G : Type*) [Field K] [Group G] where
  exists_realization : Nonempty (GaloisRealization K G)

/--
The **Inverse Galois Problem**: every finite group is
isomorphic to the Galois group of a Galois extension of the
rationals.
-/
theorem inverse_galois_problem {G : Type*} [Fintype G] [Group G] :
    IsRealizable ℚ G := by
  sorry

end InverseGalois
