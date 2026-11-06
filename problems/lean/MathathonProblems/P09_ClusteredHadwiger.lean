/-
Mathathon Round 1, Problem 09: official Lean statement.

Written for Mathathon; not taken from an existing formalization.
It states the Clustered Hadwiger theorem (V. Dujmović, L. Esperet, P. Morin, D. R. Wood,
"Proof of the Clustered Hadwiger Conjecture", FOCS 2023, arXiv:2306.06224, Theorem 1): for
every `t` there is `c` such that every finite `K_t`-minor-free graph has a `(t - 1)`-colouring
(not necessarily proper) in which every monochromatic component has at most `c` vertices.
Graphs are finite simple graphs on `Fin n`; `IsMinor` is the same branch-set definition as in
the Problem 02 statement. For `t = 0` the statement is vacuous, since every graph has a `K_0`
minor.
-/

import Mathlib

namespace Mathathon.P09

/-- `IsMinor H G`: the graph `H` is a minor of the graph `G`. There are pairwise disjoint vertex
sets `B v` of `G` (the branch sets), one for each vertex `v` of `H`, such that each `B v`
induces a connected (in particular nonempty) subgraph of `G`, and for every edge `vw` of `H`
some edge of `G` joins `B v` to `B w`. This is equivalent to `H` being isomorphic to a graph
obtained from a subgraph of `G` by contracting edges. -/
def IsMinor {W V : Type} (H : SimpleGraph W) (G : SimpleGraph V) : Prop :=
  ∃ B : W → Set V,
    (∀ v, (G.induce (B v)).Connected) ∧
    (∀ v w, v ≠ w → Disjoint (B v) (B w)) ∧
    (∀ v w, H.Adj v w → ∃ x ∈ B v, ∃ y ∈ B w, G.Adj x y)

/-- The monochromatic subgraph of `G` for a colouring `f`: it keeps exactly the edges of `G`
whose two ends get the same colour. Its connected components are the monochromatic components
of `f` (the components of the subgraphs induced by the colour classes). -/
def monoSubgraph {V α : Type} (G : SimpleGraph V) (f : V → α) : SimpleGraph V where
  Adj x y := G.Adj x y ∧ f x = f y
  symm := ⟨fun _ _ h => ⟨h.1.symm, h.2.symm⟩⟩
  loopless := ⟨fun x h => G.loopless.irrefl x h.1⟩

/-- The colouring `f` of `G` has clustering at most `c`: every monochromatic component has at
most `c` vertices. -/
def HasClusteringAtMost {V α : Type} (G : SimpleGraph V) (f : V → α) (c : ℕ) : Prop :=
  ∀ v : V, {w : V | (monoSubgraph G f).Reachable v w}.ncard ≤ c

/-- **Clustered Hadwiger theorem** (Dujmović–Esperet–Morin–Wood): for every `t` there is a
constant `c` such that every finite graph with no `K_t` minor has a colouring with `t - 1`
colours in which every monochromatic component has at most `c` vertices. -/
theorem clustered_hadwiger (t : ℕ) :
    ∃ c : ℕ, ∀ (n : ℕ) (G : SimpleGraph (Fin n)),
      ¬ IsMinor (⊤ : SimpleGraph (Fin t)) G →
        ∃ f : Fin n → Fin (t - 1), HasClusteringAtMost G f c := by
  sorry

end Mathathon.P09
