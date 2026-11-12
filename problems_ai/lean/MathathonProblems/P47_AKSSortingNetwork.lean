/-
Mathathon Round 1, Problem 47: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states the Ajtai–Komlós–Szemerédi theorem (M. Ajtai, J. Komlós, E. Szemerédi, "An
O(n log n) sorting network", STOC 1983; "Sorting in c log n parallel steps", Combinatorica 3
(1983)): there is a constant `C` such that for every `n` some comparator network on `n` wires of
depth at most `C · log₂ n` sorts every input. A network is a list of layers, and a layer is a
set of comparators no two of which share a wire, encoded as an involution of the wires. Each
comparator puts the smaller value on its lower-numbered wire (standard networks). `Nat.log 2 n`
is `⌊log₂ n⌋`, which is at least `1` for `n ≥ 2`, so the bound is the usual `O(log n)`.
-/

import Mathlib

namespace Mathathon.P47

/-- One layer of a comparator network on `n` wires, given by an involution `partner` of the
wires. If `partner i = j` with `i ≠ j`, a comparator joins wires `i` and `j` in this layer; if
`partner i = i`, wire `i` is not used in this layer. Since `partner` is an involution, the
comparators of a layer are pairwise disjoint. -/
structure Layer (n : ℕ) where
  /-- The wire that is compared with wire `i` in this layer (`i` itself if none). -/
  partner : Fin n → Fin n
  /-- `partner` is an involution. -/
  involutive : Function.Involutive partner

/-- The effect of a layer on the values `x` carried by the wires. For each comparator on wires
`i < j`, wire `i` receives the minimum and wire `j` the maximum of the two values; wires that
are not used keep their value. -/
def Layer.apply {n : ℕ} {α : Type} [LinearOrder α] (L : Layer n) (x : Fin n → α) :
    Fin n → α :=
  fun i => if i < L.partner i then min (x i) (x (L.partner i)) else max (x i) (x (L.partner i))

/-- A comparator network on `n` wires: its layers, in the order in which they are applied.
Its depth is the number of layers. -/
abbrev ComparatorNetwork (n : ℕ) : Type := List (Layer n)

/-- The output of the network `N` on the input `x`: the layers applied one after another. -/
def ComparatorNetwork.eval {n : ℕ} {α : Type} [LinearOrder α] (N : ComparatorNetwork n)
    (x : Fin n → α) : Fin n → α :=
  N.foldl (fun y L => L.apply y) x

/-- The network `N` is a sorting network: on every input from any linear order, its output is
sorted in nondecreasing order of the wire index. -/
def ComparatorNetwork.Sorts {n : ℕ} (N : ComparatorNetwork n) : Prop :=
  ∀ (α : Type) [LinearOrder α] (x : Fin n → α), Monotone (N.eval x)

/-- **Ajtai–Komlós–Szemerédi theorem**: there are sorting networks of depth `O(log n)`.
There is a constant `C` such that for every `n` some sorting network on `n` wires has depth
at most `C * ⌊log₂ n⌋`. -/
theorem aks_sorting_network :
    ∃ C : ℕ, ∀ n : ℕ, ∃ N : ComparatorNetwork n, N.length ≤ C * Nat.log 2 n ∧ N.Sorts := by
  sorry

end Mathathon.P47
