# 57 · Simplifying the Proof of Barnette's Conjecture

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/057-simplifying-the-proof-of-barnettes-conjecture.md`](../problems_original/057-simplifying-the-proof-of-barnettes-conjecture.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Simplifying the Proof of Barnette's Conjecture

### Short description of problem (100 words or less)

Barnette's conjecture states that every 3-connected cubic bipartite planar graph has a Hamiltonian cycle. OpenAI released a proof in its October 6, 2026 proof dump. The problem is to simplify this proof.

### Submitted Area

Graph theory, combinatorics

### Proposed Tracks

Combinatorics

### Reference/source material

https://github.com/openai/math/blob/main/preprints/Paired-states-and-Hamiltonian-cycles-in-cubic-bipartite-planar-graphs-September-24-2026/paper.pdf

### Desired outcome

A simpler proof of Barnette's conjecture, ideally with a shorter and more elementary argument.

### Reference links

- <https://github.com/openai/math/blob/main/preprints/Paired-states-and-Hamiltonian-cycles-in-cubic-bipartite-planar-graphs-September-24-2026/paper.pdf>

## AI-generated notes

<!-- status: Proved (preprint) -->

> Written by AI for the earlier problem list, where this was problem 57 (commit `1f49cd4`), and carried over unchanged.

- **Status:** Proved in an OpenAI preprint dated 24 September 2026 (released 6 October 2026), not yet refereed; conjectured by D. W. Barnette (recorded 1969).
- **Task:** A simpler, shorter and more elementary proof of Barnette's conjecture.
- **Key reference:** [OpenAI, "Paired states and Hamiltonian cycles in cubic bipartite planar graphs", preprint, 24 September 2026](https://github.com/openai/math/blob/main/preprints/Paired-states-and-Hamiltonian-cycles-in-cubic-bipartite-planar-graphs-September-24-2026/paper.pdf)
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- The result is a preprint and has not been refereed. Z. Li has posted an exposition that already simplifies one step (see background).

### The result

Theorem 1.1: every finite simple graph that is cubic, bipartite, planar and 3-vertex-connected has a Hamiltonian cycle. The proof gives more: for every edge $e$ of such a graph there is a Hamiltonian cycle avoiding $e$ (Corollary 7.1), and, through the matching-theory equivalence of Gorsky, Steiner and Wiederrecht, every three-edge path in a cubic 3-connected Pfaffian bipartite graph lies in a Hamiltonian cycle (Corollary 7.2). The paper is 11 pages long. The official Lean statement `main` is Theorem 1.1.

### How the known proof works

- Pass to the dual triangulation, whose faces are coloured black and white; by Alt, Payne, Schmidt and Wood, Hamiltonicity amounts to partitioning its vertices into two sets that each induce a tree (Theorem 2.2, with a prescribed facial pattern).
- Without separating triangles, a planar density inequality and integral max-flow give a "pair" of disjoint Tutte states, bijections assigning each black face one of its non-root vertices (Section 3).
- A disk identity (Section 4) is used in a weighted exponential sum over pairs: terms whose opposite-edge set $Q_s$ has a cycle cancel, and positive spoke circulations show the sum is nonzero, so some pair has $Q_s$ a forest (Section 5).
- Complementary plane-tree duality turns that forest into the two induced trees (Section 6); separating triangles are handled by gluing smaller triangulations (Section 7).

### Background

- Barnette's conjecture was recorded by Grünbaum (1969). Tait's conjecture for all cubic polyhedral graphs was disproved by Tutte (1946).
- Known cases: all faces of size 4 or 6 (Goodey, 1975), a face-colouring condition (Feder–Subi, 2006), and faces of size at most 8 (Schnieders, 2025, partly computational); Kardoš proved the related Barnette–Goodey conjecture by computer (2020).
- Equivalent forms: the induced-tree partition of the dual (Alt, Payne, Schmidt, Wood, 2016), Hamiltonian cycles avoiding a given edge (Kelmans, via Hertel), and the Pfaffian version with a reduction to planar braces (Gorsky, Steiner, Wiederrecht, 2023).
- Z. Li's exposition (arXiv, October 2026) keeps the proof's structure but replaces the complex exponential sum by two sign-reversing involutions.

### Where to start

- [A note on the proof of Barnette's conjecture](https://arxiv.org/abs/2610.30490), Z. Li, 2026: a combinatorial exposition with figures, proving the stronger edge-avoiding form.
- [Thoughts on Barnette's conjecture](https://arxiv.org/abs/1312.3783), H. Alt, M. S. Payne, J. M. Schmidt, D. R. Wood, 2013: the dual induced-tree reformulation used in the proof.
- [Matching theory and Barnette's conjecture](https://arxiv.org/abs/2202.11641), M. Gorsky, R. Steiner, S. Wiederrecht, 2022: equivalent forms and the Pfaffian setting.

Prerequisites: planar duality and Euler's formula, perfect matchings in bipartite graphs, max-flow min-cut.

### Further references

- Z. Li, “A note on the proof of Barnette's conjecture” (2026). <https://arxiv.org/abs/2610.30490>
- H. Alt, M. S. Payne, J. M. Schmidt, D. R. Wood, “Thoughts on Barnette's conjecture”, Australas. J. Combin. 64 (2016), 354–365. <https://arxiv.org/abs/1312.3783>
- M. Gorsky, R. Steiner, S. Wiederrecht, “Matching theory and Barnette's conjecture”, Discrete Math. 346 (2023), 113249. <https://arxiv.org/abs/2202.11641>
- T. Schnieders, “Barnette graphs with faces up to size 8 are Hamiltonian” (2025). <https://arxiv.org/abs/2508.03531>
- F. Kardoš, “A computer-assisted proof of the Barnette–Goodey conjecture: not only fullerene graphs are Hamiltonian”, SIAM J. Discrete Math. 34 (2020), 62–100. <https://arxiv.org/abs/1409.2440>

### Lean

#### Official statement

`OAI.Barnette.main` in [`lean/MathathonProblems/P57_Barnette.lean`](lean/MathathonProblems/P57_Barnette.lean).

```lean
theorem main : MainStatement.{u}
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/BarnetteHamiltonian.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Combinatorics/Hamiltonian/Main.lean>. A Lean-verified claim must not use or copy it.

#### Mathlib

Mathlib has `SimpleGraph.Walk.IsHamiltonianCycle`, `SimpleGraph.IsHamiltonian`, `SimpleGraph.IsBipartite`, `SimpleGraph.IsRegularOfDegree`, perfect matchings (`SimpleGraph.Subgraph.IsPerfectMatching`) and Hall's marriage theorem (`Mathlib/Combinatorics/Hall`). It has no planar graphs, plane embeddings, dual graphs or vertex connectivity (only `SimpleGraph.IsEdgeConnected`); the Lean statement defines `PlaneEmbedding`, `Planar` and `ThreeVertexConnected`.
