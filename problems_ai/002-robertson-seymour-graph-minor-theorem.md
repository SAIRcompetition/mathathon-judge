# 2 · Robertson-Seymour Graph Minor Theorem

## From the proposer

- **Area:** Combinatorics/Graph Theory
- **Tracks:** Combinatorics

### Description

This foundational result in modern graph theory proves that any family of graphs which is closed under taking minors can be characterized by a finite set of forbidden minors.

### Desired outcome

It would be good to shorten and simplify this long and complicated proof as much as possible.

A Lean proof of the graph minor theorem, including the structural results it depends on. A reusable library for graph minors, tree decompositions, and the finite forbidden-minor characterization would also be valuable.

### References

https://en.wikipedia.org/wiki/Robertson%E2%80%93Seymour_theorem
This article summarizes the state of affairs; that the proof is distributed over a sequence of papers, titled "Graph Minors. N." for N ranging from 1 up 20, published in the 80s, 90s, and 2000s from Robertson and Seymour.

e.g., "Neil Robertson and Paul Seymour, Graph Minors. XX. Wagner's conjecture, Journal of Combinatorial Theory, Series B 92 (2004), 325-357, and the earlier Graph Minors papers it relies on.
https://web.math.princeton.edu/~pds/papers/GM20/GM20.pdf"

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved by N. Robertson and P. D. Seymour in the Graph Minors series, completed in Graph Minors XX (2004); the statement is known as Wagner's conjecture, although Wagner said he never conjectured it.
- **Task:** A shorter, simpler proof of the graph minor theorem, and a Lean proof of it with a reusable library for minors, tree decompositions and finite forbidden-minor characterizations.
- **Key reference:** [N. Robertson, P. D. Seymour, "Graph Minors. XX. Wagner's conjecture", J. Combin. Theory Ser. B 92 (2004), 325–357](https://doi.org/10.1016/j.jctb.2004.08.001) (author copy: <https://web.math.princeton.edu/~pds/papers/GM20/GM20.pdf>)
- **Lean:** Official statement.

### Notes

- A Lean proof "including the structural results it depends on" means formalizing most of the Graph Minors series, which the Wikipedia article on the page describes as twenty papers spanning over 500 pages, including the theory of graphs drawn on surfaces. The Lean work found so far covers small parts: branch-set minors, Wagner's planarity theorem, a polynomial grid minor theorem with tree decompositions, and Kruskal's tree theorem in a 2017 version of Lean (see Lean below).

### The result

Wagner's conjecture, now the graph minor theorem: in every infinite set of finite graphs, some member is isomorphic to a minor of another. So finite graphs are well-quasi-ordered by the minor relation, and every minor-closed class is the class of graphs with no minor in some finite set. Robertson and Seymour completed the proof in Graph Minors XX (J. Combin. Theory Ser. B 92, 2004), using earlier papers of the series. The official Lean statement contains both forms (`minor_wellQuasiOrdered`, `exists_finite_forbidden_minors`).

### How the known proof works

- Reduction: in a counterexample $G_1, G_2, \dots$ no later graph contains $G_1$ as a minor, so it suffices to show that the graphs with no minor isomorphic to a fixed $H$ are well-quasi-ordered.
- Graph Minors XVII: every highly connected part (tangle) of such a graph can almost be drawn in a surface in which $H$ cannot be drawn, and only finitely many surfaces occur.
- Graph Minors XIX proves well-quasi-ordering for labelled hypergraphs drawn in a fixed surface; Graph Minors XVIII lifts well-quasi-ordering from the tangles to whole graphs through tree-decompositions.
- Graph Minors XX combines these results; papers XVII–XX alone take about 175 journal pages and build on the earlier papers.

### Background

- The bounded tree-width case is Graph Minors IV (1990).
- Lovász's survey (2006) called simpler proofs with more explicit bounds "quite important"; Gorsky, Seweryn and Wiederrecht (2025) ask explicitly for a simpler proof of the well-quasi-ordering theorem.
- Kawarabayashi, Thomas and Wollan reproved the structure theorem from their flat wall paper and textbook results, with explicit constants (arXiv 2020); Gorsky, Seweryn and Wiederrecht made the bounds polynomial (arXiv 2025).
- The well-quasi-ordering proof builds on a globalisation of the local structure theorem (structure relative to a tangle), not on the Graph Minor Structure Theorem itself (Gorsky–Seweryn–Wiederrecht).

### Where to start

- [Graph Minors. XX. Wagner's conjecture](https://web.math.princeton.edu/~pds/papers/GM20/GM20.pdf), N. Robertson and P. D. Seymour, 2004: its introduction shows how the proof is assembled from Graph Minors XVII–XIX.
- [Polynomial bounds for the graph minor structure theorem](https://arxiv.org/abs/2504.02532), M. Gorsky, M. T. Seweryn, S. Wiederrecht, 2025: Section 1 reviews simplification efforts; the closing section lists open problems, including a simpler well-quasi-ordering proof.
- [Quickly excluding a non-planar graph](https://arxiv.org/abs/2010.12397), K. Kawarabayashi, R. Thomas, P. Wollan, 2020: with their flat wall paper, a self-contained proof of the structure theorem.

Prerequisites: tree-decompositions and tree-width, tangles, graphs on surfaces, well-quasi-orders.

### References, with links

- Robertson–Seymour theorem, Wikipedia: <https://en.wikipedia.org/wiki/Robertson%E2%80%93Seymour_theorem>
- N. Robertson and P. Seymour, the series of papers “Graph Minors. N.” for N from 1 to 20 (1980s to 2000s), which together contain the proof; the papers are listed in the Wikipedia article above.
- N. Robertson and P. Seymour, “Graph Minors. XX. Wagner's conjecture”, Journal of Combinatorial Theory, Series B 92 (2004), 325–357, and the earlier Graph Minors papers it relies on. <https://doi.org/10.1016/j.jctb.2004.08.001> (author copy, the page's link: <https://web.math.princeton.edu/~pds/papers/GM20/GM20.pdf>)

### Further references

- N. Robertson and P. D. Seymour, “Graph minors. IV. Tree-width and well-quasi-ordering”, J. Combin. Theory Ser. B 48 (1990), 227–254. <https://doi.org/10.1016/0095-8956(90)90120-O>
- L. Lovász, “Graph minor theory”, Bull. Amer. Math. Soc. 43 (2006), 75–86. <https://doi.org/10.1090/S0273-0979-05-01088-8>
- K. Kawarabayashi, R. Thomas, and P. Wollan, “A new proof of the flat wall theorem”, J. Combin. Theory Ser. B 129 (2018), 204–238. <https://arxiv.org/abs/1207.6927>
- K. Kawarabayashi, R. Thomas, and P. Wollan, “Quickly excluding a non-planar graph” (2020). <https://arxiv.org/abs/2010.12397>
- M. Gorsky, M. T. Seweryn, and S. Wiederrecht, “Polynomial bounds for the graph minor structure theorem” (2025). <https://arxiv.org/abs/2504.02532>

### Lean

#### Official statement

`Mathathon.P02.minor_wellQuasiOrdered`, `Mathathon.P02.exists_finite_forbidden_minors` in [`lean/MathathonProblems/P02_GraphMinorTheorem.lean`](lean/MathathonProblems/P02_GraphMinorTheorem.lean).

```lean
theorem minor_wellQuasiOrdered :
    WellQuasiOrdered (fun G H : FinGraph => IsMinor G.2 H.2)
```

```lean
theorem exists_finite_forbidden_minors (C : Set FinGraph) (hC : MinorClosed C) :
    ∃ S : Set FinGraph, S.Finite ∧ ∀ G : FinGraph, G ∈ C ↔ ∀ H ∈ S, ¬ IsMinor H.2 G.2
```

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Related Lean formalizations

- [Finite graphs are well-quasi-ordered by the minor relation](https://prove2.me/theorems/7e6ffd2b-ec17-4427-a2b3-dc52b018f5ed), Prove2Me: another Lean statement of the graph minor theorem (open, not proved there).
- [Wagner's planarity criterion and list colouring of planar and K5-minor-free graphs](https://palomar-registry.org/entry?id=PALOMAR-2026-10-15-000005&version=2), Palomar registry (Lean-checked, trust level high): planar graphs are exactly the graphs with no K5 or K3,3 minor.
- [Mader's theorem and Hadwiger's conjecture for t ≤ 4](https://palomar-registry.org/entry?id=PALOMAR-2026-10-16-000001&version=2), Palomar registry (Lean-checked, trust level high): branch-set minors with Mader's theorem, Dirac's lemma and Hadwiger's conjecture for t ≤ 4; a later registered entry uses it as its minor library.
- [polynomial-grid-minor-theorem](https://github.com/EdouardBonnet/polynomial-grid-minor-theorem/tree/69d1714f3daa5ac49924b99950b4f4e283107cbe): a Lean proof of a polynomial grid minor theorem (graphs of large treewidth contain a large grid minor), with treewidth defined through tree decompositions and minors through branch sets.
- [A formally verified proof of Kruskal's tree theorem in Lean](https://www.andrew.cmu.edu/user/avigad/Students/wu_thesis.pdf), M. Wu (CMU thesis, 2017): Kruskal's tree theorem, with Dickson's and Higman's lemmas, in a 2017 version of Lean, not Lean 4.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `WellQuasiOrdered` (`Mathlib/Order/WellQuasiOrder.lean`), `SimpleGraph` with trees (`SimpleGraph.IsTree`), Higman's lemma (`Set.PartiallyWellOrderedOn.partiallyWellOrderedOn_sublistForall₂`) and matroid minors (`Matroid.IsMinor`, in `Mathlib/Combinatorics/Matroid/Minor`). It has no graph minors (the Lean statement defines its own `IsMinor`), no tree-width, tangles or graphs on surfaces, and no Kruskal tree theorem.
