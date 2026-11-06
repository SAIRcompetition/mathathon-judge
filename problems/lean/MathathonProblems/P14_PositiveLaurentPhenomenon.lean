/-
Mathathon Round 1, Problem 14: official Lean statement.

Written for Mathathon; not taken from an existing formalization.
It states positivity of the Laurent phenomenon for skew-symmetrizable cluster algebras of
geometric type (M. Gross, P. Hacking, S. Keel, M. Kontsevich, "Canonical bases for cluster
algebras", J. Amer. Math. Soc. 31 (2018), Corollary 0.4; the skew-symmetric case is due to
K. Lee and R. Schiffler, Ann. of Math. 182 (2015)). Seeds, mutations and cluster variables of
geometric type follow Fomin–Zelevinsky ("Cluster algebras IV", Compos. Math. 143 (2007),
(2.2) and (2.15)), inside the field of rational functions over `ℚ` in the initial variables, with
`n` mutable and `f` frozen indices. As in GHKK (and FZ, where the frozen variables are inverted),
"Laurent polynomial" means a Laurent polynomial in all initial variables, mutable and frozen. The
statement is for the initial seed, which is no loss since any seed can be taken as initial.
-/

import Mathlib

namespace Mathathon.P14

/-- The indices of an extended cluster with `n` mutable and `f` frozen variables:
`Sum.inl j` for the mutable index `j` and `Sum.inr i` for the frozen index `i`. -/
abbrev Idx (n f : ℕ) := Fin n ⊕ Fin f

/-- The ambient field: rational functions over `ℚ` in one variable for each index. -/
abbrev AmbientField (n f : ℕ) := FractionRing (MvPolynomial (Idx n f) ℚ)

/-- The initial variable `x_i`, as an element of the ambient field. -/
noncomputable def initVar {n f : ℕ} (i : Idx n f) : AmbientField n f :=
  algebraMap (MvPolynomial (Idx n f) ℚ) (AmbientField n f) (MvPolynomial.X i)

/-- A seed: an extended cluster (one element of the ambient field for each index) and an
extended exchange matrix `B̃`, with a row for every index and a column for every mutable index. -/
structure Seed (n f : ℕ) where
  /-- The extended cluster. -/
  cluster : Idx n f → AmbientField n f
  /-- The extended exchange matrix. -/
  matrix : Matrix (Idx n f) (Fin n) ℤ

/-- Matrix mutation in direction `k` (Fomin–Zelevinsky): `b'ᵢⱼ = -bᵢⱼ` if `i = k` or `j = k`,
and otherwise `b'ᵢⱼ = bᵢⱼ + [bᵢₖ]₊ [bₖⱼ]₊ - [-bᵢₖ]₊ [-bₖⱼ]₊`, where `[b]₊ = max b 0`. -/
def matrixMutation {n f : ℕ} (k : Fin n) (B : Matrix (Idx n f) (Fin n) ℤ) :
    Matrix (Idx n f) (Fin n) ℤ :=
  fun i j =>
    if i = Sum.inl k ∨ j = k then -B i j
    else B i j + max (B i k) 0 * max (B (Sum.inl k) j) 0
      - max (-B i k) 0 * max (-B (Sum.inl k) j) 0

/-- Seed mutation in direction `k`: the matrix is mutated, and the cluster variable `x_k` is
replaced by `x'_k = (∏ᵢ xᵢ ^ [bᵢₖ]₊ + ∏ᵢ xᵢ ^ [-bᵢₖ]₊) / x_k`, the products running over all
indices (mutable and frozen); all other variables are unchanged. -/
noncomputable def Seed.mutate {n f : ℕ} (k : Fin n) (s : Seed n f) : Seed n f where
  cluster := Function.update s.cluster (Sum.inl k)
    ((∏ i, s.cluster i ^ (s.matrix i k).toNat + ∏ i, s.cluster i ^ (-s.matrix i k).toNat) /
      s.cluster (Sum.inl k))
  matrix := matrixMutation k s.matrix

/-- The initial seed: the initial variables together with the extended exchange matrix `B`. -/
noncomputable def initialSeed {n f : ℕ} (B : Matrix (Idx n f) (Fin n) ℤ) : Seed n f :=
  ⟨initVar, B⟩

/-- The seed obtained from `s` by mutating in the directions `k₁, k₂, …` of the list, in order. -/
noncomputable def Seed.mutateSeq {n f : ℕ} (s : Seed n f) (ks : List (Fin n)) : Seed n f :=
  ks.foldl (fun t k => t.mutate k) s

/-- `z` is a cluster variable of the cluster algebra with initial seed `initialSeed B`: it is the
`j`-th mutable variable of some seed reached from the initial seed by a sequence of mutations. -/
def IsClusterVariable {n f : ℕ} (B : Matrix (Idx n f) (Fin n) ℤ) (z : AmbientField n f) : Prop :=
  ∃ (ks : List (Fin n)) (j : Fin n), ((initialSeed B).mutateSeq ks).cluster (Sum.inl j) = z

/-- A square integer matrix `B` is skew-symmetrizable: there are positive integers `dᵢ` with
`dᵢ bᵢⱼ = -dⱼ bⱼᵢ` for all `i, j`. -/
def IsSkewSymmetrizable {n : ℕ} (B : Matrix (Fin n) (Fin n) ℤ) : Prop :=
  ∃ d : Fin n → ℤ, (∀ i, 0 < d i) ∧ ∀ i j, d i * B i j = -(d j * B j i)

/-- `z` is a Laurent polynomial in the initial variables with nonnegative integer coefficients:
a finite sum of terms `c · ∏ᵢ xᵢ ^ aᵢ` with `c ∈ ℕ` and integer exponents `aᵢ`. -/
def IsPositiveLaurentPolynomial {n f : ℕ} (z : AmbientField n f) : Prop :=
  ∃ (S : Finset (Idx n f → ℤ)) (c : (Idx n f → ℤ) → ℕ),
    z = ∑ a ∈ S, (c a : AmbientField n f) * ∏ i, initVar i ^ a i

/-- **Positivity of the Laurent phenomenon** (Gross–Hacking–Keel–Kontsevich). For a
skew-symmetrizable cluster algebra of geometric type, that is, an extended exchange matrix whose
principal (mutable × mutable) part is skew-symmetrizable, every cluster variable is a Laurent
polynomial in the initial variables with nonnegative integer coefficients. -/
theorem positive_laurent_phenomenon {n f : ℕ} (B : Matrix (Idx n f) (Fin n) ℤ)
    (hB : IsSkewSymmetrizable (B.submatrix Sum.inl id)) (z : AmbientField n f)
    (hz : IsClusterVariable B z) : IsPositiveLaurentPolynomial z := by
  sorry

end Mathathon.P14
