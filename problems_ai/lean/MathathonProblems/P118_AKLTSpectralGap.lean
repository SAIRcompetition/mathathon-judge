/-
Mathathon Round 1, Problem 118: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states that the spin-3/2 AKLT model on the hexagonal lattice has a spectral gap (M. Lemm,
A. W. Sandvik and L. Wang, Phys. Rev. Lett. 124 (2020), 177204, and N. Pomata and T.-C. Wei,
Phys. Rev. Lett. 124 (2020), 177203, both relying on numerical computations): there are `γ > 0`
and `N` such that, for all `m₁, m₂ ≥ N`, every eigenvalue of the AKLT Hamiltonian
`H = ∑_{edges jk} P⁽³⁾_{jk}` on the hexagonal lattice wrapped on the `m₁ × m₂` torus is `0` or at
least `γ`. The Hilbert space `⨂ ℂ⁴` is modelled by matrices indexed by spin configurations, and
`P⁽³⁾` is the projection onto total spin `3` of two spins 3/2, written as a polynomial in the square
of their total spin. The torus is the quotient of the honeycomb lattice by `m₁` and `m₂` times its
two primitive translations: unit cells `(x, y)` modulo `(m₁, m₂)`, two vertices per cell.
Lemm–Sandvik–Wang obtain `γ = 0.00646` for `m₁, m₂ ≥ 12` on their tori (their Fig. 1); the
statement fixes neither the constant nor the size threshold. Their tori are rectangular, these
are rhombic; since the statement only asks for some `N`, it is the same claim, though not literally
their theorem. M. J. Kastoryano (arXiv:2609.27993, 2026, not refereed) claims an analytic proof.
-/

import Mathlib

namespace Mathathon.P118

open Matrix
open scoped Kronecker

/-- The spin-3/2 operator `S^z` in the basis `|3/2⟩, |1/2⟩, |-1/2⟩, |-3/2⟩`. -/
noncomputable def spinZ : Matrix (Fin 4) (Fin 4) ℂ :=
  !![3 / 2, 0, 0, 0; 0, 1 / 2, 0, 0; 0, 0, -1 / 2, 0; 0, 0, 0, -3 / 2]

/-- The raising operator `S⁺ = S^x + i S^y`. -/
noncomputable def spinPlus : Matrix (Fin 4) (Fin 4) ℂ :=
  !![0, (Real.sqrt 3 : ℂ), 0, 0; 0, 0, 2, 0; 0, 0, 0, (Real.sqrt 3 : ℂ); 0, 0, 0, 0]

/-- `S^x = (S⁺ + S⁻) / 2`, where the lowering operator `S⁻` is the transpose of `S⁺`. -/
noncomputable def spinX : Matrix (Fin 4) (Fin 4) ℂ := (1 / 2 : ℂ) • (spinPlus + spinPlusᵀ)

/-- `S^y = (S⁺ - S⁻) / (2i)`. -/
noncomputable def spinY : Matrix (Fin 4) (Fin 4) ℂ :=
  (1 / (2 * Complex.I)) • (spinPlus - spinPlusᵀ)

/-- A component `S ⊗ 1 + 1 ⊗ S` of the total spin of two spins 3/2, on `ℂ⁴ ⊗ ℂ⁴`. -/
noncomputable def totalSpin (S : Matrix (Fin 4) (Fin 4) ℂ) :
    Matrix (Fin 4 × Fin 4) (Fin 4 × Fin 4) ℂ :=
  S ⊗ₖ (1 : Matrix (Fin 4) (Fin 4) ℂ) + (1 : Matrix (Fin 4) (Fin 4) ℂ) ⊗ₖ S

/-- The square of the total spin of two spins 3/2. Its eigenvalues are `J (J + 1)` for the total
spin `J ∈ {0, 1, 2, 3}`, that is `0, 2, 6, 12`. -/
noncomputable def totalSpinSq : Matrix (Fin 4 × Fin 4) (Fin 4 × Fin 4) ℂ :=
  totalSpin spinX ^ 2 + totalSpin spinY ^ 2 + totalSpin spinZ ^ 2

/-- The orthogonal projection onto total spin `3`: the polynomial `T (T - 2) (T - 6) / 720` in
`T = totalSpinSq`, which is `1` at `12` and `0` at `0, 2, 6`. -/
noncomputable def projSpinThree : Matrix (Fin 4 × Fin 4) (Fin 4 × Fin 4) ℂ :=
  (1 / 720 : ℂ) • (totalSpinSq * (totalSpinSq - 2) * (totalSpinSq - 6))

/-- The operator `P` on `ℂ⁴ ⊗ ℂ⁴`, acting on the sites `j` and `k` (in this order) of a system of
spins 3/2 indexed by `ι`, and as the identity on the other sites. Basis states of `⨂_{l ∈ ι} ℂ⁴`
are the configurations `ι → Fin 4`. -/
def twoSite {ι : Type*} [Fintype ι] [DecidableEq ι] (j k : ι)
    (P : Matrix (Fin 4 × Fin 4) (Fin 4 × Fin 4) ℂ) : Matrix (ι → Fin 4) (ι → Fin 4) ℂ :=
  fun σ τ => if ∀ l, l ≠ j → l ≠ k → σ l = τ l then P (σ j, σ k) (τ j, τ k) else 0

/-- The sites of the hexagonal lattice wrapped on the `m₁ × m₂` torus: the vertices `(x, y, false)`
and `(x, y, true)` of the two sublattices in the unit cell `(x, y)`. -/
abbrev Site (m₁ m₂ : ℕ) := Fin m₁ × Fin m₂ × Bool

/-- The AKLT Hamiltonian `∑_{edges jk} P⁽³⁾_{jk}` on the `m₁ × m₂` torus. The vertex
`(x, y, false)` is joined to `(x, y, true)`, `(x + 1, y, true)` and `(x, y + 1, true)`, with
coordinates modulo `m₁` and `m₂` (`finRotate m` is `x ↦ x + 1` on `Fin m`). -/
noncomputable def akltHamiltonian (m₁ m₂ : ℕ) :
    Matrix (Site m₁ m₂ → Fin 4) (Site m₁ m₂ → Fin 4) ℂ :=
  ∑ c : Fin m₁ × Fin m₂,
    (twoSite (c.1, c.2, false) (c.1, c.2, true) projSpinThree
      + twoSite (c.1, c.2, false) (finRotate m₁ c.1, c.2, true) projSpinThree
      + twoSite (c.1, c.2, false) (c.1, finRotate m₂ c.2, true) projSpinThree)

/-- The AKLT model on the hexagonal lattice has a spectral gap: there are `γ > 0` and `N` such that,
on every `m₁ × m₂` torus with `m₁, m₂ ≥ N`, every eigenvalue of the AKLT Hamiltonian is `0` or at
least `γ`. -/
theorem aklt_hexagonal_spectral_gap :
    ∃ γ : ℝ, 0 < γ ∧ ∃ N : ℕ, ∀ m₁ m₂ : ℕ, N ≤ m₁ → N ≤ m₂ →
      ∀ r ∈ spectrum ℝ (akltHamiltonian m₁ m₂), r = 0 ∨ γ ≤ r := by
  sorry

end Mathathon.P118
