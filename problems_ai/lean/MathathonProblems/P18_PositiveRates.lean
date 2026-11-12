/-
Mathathon Round 1, Problem 18: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states the refutation of the positive rates conjecture (P. Gács, "Reliable cellular automata
with self-organization", J. Stat. Phys. 103 (2001), cited below by the numbering of its revised
arXiv version, arXiv:math/0003117v2 (2024); see also L. Gray, "A reader's guide to P. Gács's
'positive rates' paper", J. Stat. Phys. 103 (2001)): there is a one-dimensional probabilistic
cellular automaton with finitely many states and all transition probabilities positive that has
two different invariant probability measures, hence is not ergodic (Gács's Theorem 3.1 gives one
that remembers a bit forever). As in Gács's Section 2.3 and Definition 6.3, sites are `ℤ`, the
neighbourhood is `{-1, 0, 1}`, and all sites update synchronously and independently in discrete
time, so the one-step kernel is a product measure (`Measure.infinitePi`); a larger finite
neighbourhood reduces to this one by grouping cells into blocks.
-/

import Mathlib

namespace Mathathon.P18

open MeasureTheory ProbabilityTheory

/-- A local rule of a one-dimensional nearest-neighbour probabilistic cellular automaton with
state set `Fin k`: `T a b c` is the law of the next state of a site whose left neighbour, the site
itself and its right neighbour are currently in states `a`, `b`, `c`. -/
abbrev LocalRule (k : ℕ) : Type := Fin k → Fin k → Fin k → PMF (Fin k)

/-- The rule has positive rates: from every neighbourhood, every state is reached with positive
probability. -/
def PositiveRates {k : ℕ} (T : LocalRule k) : Prop :=
  ∀ a b c s : Fin k, 0 < T a b c s

/-- The one-step transition kernel of the automaton on configurations `ℤ → Fin k`: given the
configuration `η`, all sites update simultaneously and independently, site `x` taking its next
state with law `T (η (x - 1)) (η x) (η (x + 1))`. -/
noncomputable def transitionKernel {k : ℕ} (T : LocalRule k) :
    Kernel (ℤ → Fin k) (ℤ → Fin k) where
  toFun η := Measure.infinitePi fun x : ℤ => (T (η (x - 1)) (η x) (η (x + 1))).toMeasure
  measurable' := by
    refine Measurable.measure_of_isPiSystem_of_isProbabilityMeasure
      generateFrom_squareCylinders.symm
      (isPiSystem_squareCylinders (fun _ => MeasurableSpace.isPiSystem_measurableSet)
        (fun _ => by simp)) ?_
    rintro _ ⟨s, t, ht, rfl⟩
    have ht' : ∀ i, MeasurableSet (t i) := fun i => ht i (Set.mem_univ i)
    have h : (fun η : ℤ → Fin k =>
        (Measure.infinitePi fun x : ℤ => (T (η (x - 1)) (η x) (η (x + 1))).toMeasure)
          ((s : Set ℤ).pi t)) =
        fun η => ∏ x ∈ s, (T (η (x - 1)) (η x) (η (x + 1))).toMeasure (t x) := by
      funext η
      exact Measure.infinitePi_pi _ (fun i _ => ht' i)
    rw [h]
    refine Finset.measurable_prod s fun x _ => ?_
    have hg : Measurable
        (fun p : Fin k × Fin k × Fin k => (T p.1 p.2.1 p.2.2).toMeasure (t x)) :=
      measurable_of_countable _
    have hf : Measurable (fun η : ℤ → Fin k => (η (x - 1), η x, η (x + 1))) := by
      fun_prop
    exact (hg.comp hf :)

/-- **The positive rates conjecture is false** (Gács 2001). There is a one-dimensional
nearest-neighbour probabilistic cellular automaton with a finite state set and positive rates
that has two different invariant probability measures. -/
theorem exists_positiveRates_two_invariant_measures :
    ∃ (k : ℕ) (T : LocalRule k), PositiveRates T ∧
      ∃ μ ν : Measure (ℤ → Fin k), IsProbabilityMeasure μ ∧ IsProbabilityMeasure ν ∧
        (transitionKernel T).Invariant μ ∧ (transitionKernel T).Invariant ν ∧ μ ≠ ν := by
  sorry

end Mathathon.P18
