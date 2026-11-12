/-
Mathathon Round 1, Problem 95: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states the Lefthanded Local Lemma of W. Pegden ("Highly nonrepetitive sequences: winning
strategies from the local lemma", Random Structures Algorithms 38 (2011), Theorem 3.1), the
theorem whose quasi-order condition the problem asks to explain. The events are a finite family
of measurable sets `A i` (`i : ι`) in a probability space; the directed graph is given by the
out-neighbourhoods `Γ i` (loops are allowed; they do not affect the lemma or its proof); the
quasi-order is a `Preorder` on `ι`, and Pegden's "C > A" is `a < c`, that is
`a ≤ c ∧ ¬ c ≤ a`. Conditional probabilities are multiplied out: `P(A | E) ≤ b` with `b ≥ 0`
becomes `P(A ∩ E) ≤ b · P(E)`, which is equivalent when `P(E) > 0` and holds trivially when
`P(E) = 0`. The conclusion is Pegden's (7) in this form,
`P(⋂_{𝒜₁} Āᵢ ∩ ⋂_{𝒜₂} Āᵢ) ≥ ∏_{𝒜₁} (1 - xᵢ) · P(⋂_{𝒜₂} Āᵢ)`. Applied to the pair `(𝒜₂, ∅)`
it gives `P(⋂_{𝒜₂} Āᵢ) > 0`, so the conditional probability in (7) is defined; with
`𝒜₁ = univ` and `𝒜₂ = ∅` it gives `P(⋂ Āᵢ) ≥ ∏ (1 - xᵢ) > 0`, which is (8).
-/

import Mathlib

namespace Mathathon.P95

open MeasureTheory

variable {Ω ι : Type*} [MeasurableSpace Ω]

/-- Condition (5) of Pegden's Theorem 3.1, linking the directed graph (given by the
out-neighbourhoods `Γ`) and the quasi-order: for every `a`, every out-neighbour `b` of `a` and
every `c` that is neither `a` nor an out-neighbour of `a`, `c` is not strictly above `b`, or `c` is
strictly above `a`. -/
def Compatible [Preorder ι] (Γ : ι → Finset ι) : Prop :=
  ∀ a, ∀ b ∈ Γ a, ∀ c, c ∉ Γ a → c ≠ a → ¬ b < c ∨ a < c

/-- Condition (6) of Pegden's Theorem 3.1: for every `a` and every family `𝒞` of events that are
not out-neighbours of `a` and not strictly above `a`,
`P(A a | ⋂_{c ∈ 𝒞} (A c)ᶜ) ≤ x a * ∏_{b ∈ Γ a} (1 - x b)`, written with the conditional
probability multiplied out. -/
def LefthandedBound [Preorder ι] (P : Measure Ω) (A : ι → Set Ω) (Γ : ι → Finset ι)
    (x : ι → ℝ) : Prop :=
  ∀ a (𝒞 : Finset ι), Disjoint 𝒞 (Γ a) → (∀ c ∈ 𝒞, ¬ a < c) →
    P.real (A a ∩ ⋂ c ∈ 𝒞, (A c)ᶜ) ≤
      x a * (∏ b ∈ Γ a, (1 - x b)) * P.real (⋂ c ∈ 𝒞, (A c)ᶜ)

/-- **Pegden's Lefthanded Local Lemma** (Theorem 3.1). Let `A i` (`i : ι`) be finitely many
events, `Γ` the out-neighbourhoods of a directed graph on them and `≤` a quasi-order satisfying
condition (5). If there are `0 < x i < 1` satisfying condition (6), then for all disjoint
families `𝒜₁`, `𝒜₂` such that no element of `𝒜₂` is strictly above an element of `𝒜₁`,
`P(⋂_{𝒜₁} Āᵢ | ⋂_{𝒜₂} Āᵢ) ≥ ∏_{𝒜₁} (1 - xᵢ)`, stated with the conditional probability
multiplied out. -/
theorem lefthanded_local_lemma [Fintype ι] [Preorder ι] (P : Measure Ω)
    [IsProbabilityMeasure P] (A : ι → Set Ω) (hA : ∀ i, MeasurableSet (A i))
    (Γ : ι → Finset ι) (h5 : Compatible Γ) (x : ι → ℝ) (hx : ∀ i, 0 < x i ∧ x i < 1)
    (h6 : LefthandedBound P A Γ x) (𝒜₁ 𝒜₂ : Finset ι) (h12 : Disjoint 𝒜₁ 𝒜₂)
    (hord : ∀ a₁ ∈ 𝒜₁, ∀ a₂ ∈ 𝒜₂, ¬ a₁ < a₂) :
    (∏ a ∈ 𝒜₁, (1 - x a)) * P.real (⋂ a ∈ 𝒜₂, (A a)ᶜ) ≤
      P.real ((⋂ a ∈ 𝒜₁, (A a)ᶜ) ∩ ⋂ a ∈ 𝒜₂, (A a)ᶜ) := by
  sorry

end Mathathon.P95
