/-
Mathathon Round 1, Problem 02: official Lean statement.

Written for Mathathon; not taken from an existing formalization.
It states the graph minor theorem (Wagner's conjecture; N. Robertson and P. D. Seymour,
"Graph Minors. XX. Wagner's conjecture", J. Combin. Theory Ser. B 92 (2004)) for finite simple
graphs, in two equivalent forms: `minor_wellQuasiOrdered`, the form proved in Graph Minors XX
(finite graphs are well-quasi-ordered by the minor relation), and
`exists_finite_forbidden_minors`, the form the problem page describes (every minor-closed class
of finite graphs is the class of graphs with no minor in some finite set). A finite graph is a
`SimpleGraph (Fin n)`; `IsMinor` uses branch sets, the same way as `HasCliqueMinor` in the
Problem 55 statement, so it does not depend on vertex labels.
-/

import Mathlib

namespace Mathathon.P02

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

/-- A finite graph: a simple graph on the vertex set `Fin n`, for some `n`. Every finite simple
graph is isomorphic to one of these. -/
abbrev FinGraph : Type := Σ n : ℕ, SimpleGraph (Fin n)

/-- **Graph minor theorem** (Robertson–Seymour, Graph Minors XX): finite graphs are
well-quasi-ordered by the minor relation. In every infinite sequence `G 0, G 1, ...` of finite
graphs there are indices `i < j` such that `G i` is a minor of `G j`. -/
theorem minor_wellQuasiOrdered :
    WellQuasiOrdered (fun G H : FinGraph => IsMinor G.2 H.2) := by
  sorry

/-- A class of finite graphs is minor-closed if it contains every minor of each of its
members. -/
def MinorClosed (C : Set FinGraph) : Prop :=
  ∀ G ∈ C, ∀ H : FinGraph, IsMinor H.2 G.2 → H ∈ C

/-- **Graph minor theorem**, forbidden-minor form: every minor-closed class of finite graphs
is characterized by a finite set `S` of forbidden minors. A finite graph is in the class if and
only if no graph in `S` is a minor of it. -/
theorem exists_finite_forbidden_minors (C : Set FinGraph) (hC : MinorClosed C) :
    ∃ S : Set FinGraph, S.Finite ∧ ∀ G : FinGraph, G ∈ C ↔ ∀ H ∈ S, ¬ IsMinor H.2 G.2 := by
  sorry

end Mathathon.P02
