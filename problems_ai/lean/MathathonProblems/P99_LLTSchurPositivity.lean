/-
Mathathon Round 1, Problem 99: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states the Schur positivity of unicellular LLT polynomials of unit interval graphs
(Grojnowski–Haiman 2007 for all LLT polynomials; Guay-Paquet 2016 for this case): the LLT
polynomial of every unit interval graph is a combination of Schur functions with coefficients in
`ℕ[q]`. The problem asks for a combinatorial rule for these coefficients; this is the theorem such
a rule would explain.

Modelling choices. A unit interval graph is a simple graph on `{0, …, n-1}` such that `i ~ j` and
`i ≤ k < l ≤ j` imply `k ~ l`. The LLT polynomial is
`LLT_G = ∑_κ q^{asc(κ)} ∏ᵢ x_{κ(i)}`, summed over all colourings `κ` of the vertices, where
`asc(κ)` counts the edges `{i, j}` with `i < j` and `κ i < κ j`. Symmetric functions are handled
through their restrictions to finitely many variables `x₀, …, x_{N-1}`: the statement asks for one
finite family of coefficients `c μ ∈ ℕ[q]` that gives the expansion in every number `N` of
variables, which is the same as an expansion of the symmetric function `LLT_G` in Schur functions.
The Schur polynomial `s_μ(x₀, …, x_{N-1})` is defined as the sum over semistandard fillings of the
Young diagram `μ` (Mathlib's `YoungDiagram`; cells `(i, j)` with `i` the row) with entries in
`Fin N`, weakly increasing along rows and strictly increasing down columns.
-/

import Mathlib

namespace Mathathon.P99

open MvPolynomial Finset

/-- A graph on `{0, …, n-1}` is a unit interval graph (in its natural labelling) if `i ~ j` and
`i ≤ k < l ≤ j` imply `k ~ l`. -/
def IsUnitInterval {n : ℕ} (G : SimpleGraph (Fin n)) : Prop :=
  ∀ i j k l : Fin n, G.Adj i j → i ≤ k → k < l → l ≤ j → G.Adj k l

open Classical in
/-- The number of ascents of a colouring `κ`: the edges `{i, j}` of `G` with `i < j` and
`κ i < κ j`. -/
noncomputable def ascents {n N : ℕ} (G : SimpleGraph (Fin n)) (κ : Fin n → Fin N) : ℕ :=
  #{p : Fin n × Fin n | p.1 < p.2 ∧ G.Adj p.1 p.2 ∧ κ p.1 < κ p.2}

/-- The unicellular LLT polynomial of `G` in the variables `x₀, …, x_{N-1}`, with coefficients
in `ℕ[q]`: `∑_{κ : Fin n → Fin N} q ^ asc(κ) ∏ᵢ x_{κ i}`. -/
noncomputable def lltPoly {n : ℕ} (G : SimpleGraph (Fin n)) (N : ℕ) :
    MvPolynomial (Fin N) (Polynomial ℕ) :=
  ∑ κ : Fin n → Fin N, C (Polynomial.X ^ ascents G κ) * ∏ i, X (κ i)

/-- A filling `T` of the cells of the Young diagram `μ` with entries in `Fin N` is semistandard if
it weakly increases along each row and strictly increases down each column. -/
def IsSemistandard {N : ℕ} (μ : YoungDiagram) (T : μ.cells → Fin N) : Prop :=
  ∀ a b : μ.cells,
    (a.1.1 = b.1.1 → a.1.2 < b.1.2 → T a ≤ T b) ∧ (a.1.2 = b.1.2 → a.1.1 < b.1.1 → T a < T b)

open Classical in
/-- The Schur polynomial `s_μ(x₀, …, x_{N-1})`: the sum, over the semistandard fillings `T` of `μ`
with entries in `Fin N`, of the monomial `∏_{c ∈ μ} x_{T c}`. -/
noncomputable def schurPoly (N : ℕ) (μ : YoungDiagram) : MvPolynomial (Fin N) (Polynomial ℕ) :=
  ∑ T ∈ univ.filter (fun T : μ.cells → Fin N => IsSemistandard μ T), ∏ c, X (T c)

/-- **Schur positivity of unicellular LLT polynomials** (Grojnowski–Haiman; Guay-Paquet): for a
unit interval graph `G` there are finitely many Young diagrams `μ` and coefficients `c μ ∈ ℕ[q]`
with `LLT_G = ∑_μ c μ · s_μ` in every number of variables. -/
theorem llt_schur_positive {n : ℕ} (G : SimpleGraph (Fin n)) (hG : IsUnitInterval G) :
    ∃ (S : Finset YoungDiagram) (c : YoungDiagram → Polynomial ℕ),
      ∀ N : ℕ, lltPoly G N = ∑ μ ∈ S, C (c μ) * schurPoly N μ := by
  sorry

end Mathathon.P99
