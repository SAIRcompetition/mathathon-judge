# 9 · Clustered Hadwiger's theorem

## From the proposer

- **Area:** Graph Theory
- **Tracks:** Combinatorics

### Description

The Clustered Hadwiger's theorem, proved by Dujmović, Esperet, Morin and Wood asserts that for every positive integer $t$, every $K_t$-minor-free graph is $(t−1)$-colorable with monochromatic components of bounded size. 

The proof is complex and relies on Robertson-Seymour Graph Minor Structure theorem, which in turn has a proof spanning hundreds of pages. On the other hand, van den Heuvel and Wood gave an elegant ``book" proof of a weaker statement where $(t-1)$-colorability is replaced by $(2t-2)$-colorability.

The goal is to obtain a short proof of The Clustered Hadwiger's theorem that doesn't rely on Graph Minor Structure theorem.

### Desired outcome

The main goal is to obtain an elegant, self-contained proof of the Clustered Hadwiger's theorem. A weaker outcome would be an improvement  of van den Heuvel and Wood bound, which retains a short proof. A stronger outcome would be a self-contained proof of a strengthening The Clustered Hadwiger's theorem to list-colorings.

### References

The Clustered Hadwiger's theorem: https://arxiv.org/abs/2306.06224
van den Heuvel and Wood proof: https://arxiv.org/abs/1704.06536

### Reference links

- <https://arxiv.org/abs/1704.06536>

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved by V. Dujmović, L. Esperet, P. Morin and D. R. Wood (FOCS 2023; full version arXiv:2306.06224); asked by Edwards, Kang, Kim, Oum and Seymour (2015).
- **Task:** A self-contained proof that avoids the Graph Minor Structure Theorem.
- **Key reference:** [V. Dujmović, L. Esperet, P. Morin, D. R. Wood, "Proof of the Clustered Hadwiger Conjecture", arXiv:2306.06224](https://arxiv.org/abs/2306.06224)
- **Lean:** Official statement.

### Notes

- The page's weaker outcome (fewer than $2t-2$ colours) is already known: Liu and Wood (J. Combin. Theory Ser. B 2022) proved $t$ colours with bounded clustering (Corollary 3), so this outcome is new only with a short proof.

### The result

For every $t$ there is $c(t)$ such that every graph with no $K_t$ minor has a colouring with $t-1$ colours in which each monochromatic component has at most $c(t)$ vertices (Theorem 1). Fewer colours do not suffice for any clustering bound (Proposition 9). Theorem 1 follows from Theorem 4 on $J_{s,t}$-minor-free graphs, which also gives $s+1$ colours for $K_{s,t}$-minor-free graphs. An extended abstract appeared in FOCS 2023; the full version is arXiv v2 (2026, 86 pages in PDF). The official Lean statement `clustered_hadwiger` is Theorem 1.

### How the known proof works

- The proof is for $J_{s,t}$-minor-free graphs ($K_t$ is the case $s=t-2$) and starts from the Graph Minor Structure Theorem in the Dvořák–Thomas form (major and non-major apex vertices), with torsos glued by clique-sums.
- Torsos glued by large clique-sums form "curtains"; the tree of curtains is coloured top-down, so each curtain has at most $s$ precoloured vertices.
- In each curtain, parts of layered partitions (graph product structure theory) are contracted below the top layers ("raising the curtain"), giving a bounded-treewidth minor that is coloured with $s+1$ colours by extended Liu–Wood lemmas.
- After lowering the curtain, islands (Esperet–Ochem) and reserved colours cut monochromatic components to bounded size; Sections 2–4 take about 55 pages.

### Background

- Earlier colour bounds: $\lceil 31t/2\rceil$ (Kawarabayashi–Mohar 2007), then $\lceil (7t-3)/2\rceil$, $4t-4$, $3t-3$, $2t-2$, and $t$ (Liu–Wood). Dvořák and Norin showed that $t-1$ colours suffice for $t\le 9$.
- van den Heuvel and Wood partition the graph into connected parts, each adjacent to at most $t-2$ earlier parts and 2-colourable with clustering $\lceil (t-2)/2\rceil$; this also gives $t-1$ colours with monochromatic degree at most $t-2$.
- Lists: Liu and Wood proved that $K_t$-minor-free graphs of bounded treewidth are $(t-1)$-choosable with bounded clustering.
- Kawarabayashi, Thomas and Wollan gave a newer, self-contained proof of the structure theorem (arXiv 2020).

### Where to start

- [Improper colourings inspired by Hadwiger's conjecture](https://arxiv.org/abs/1704.06536), J. van den Heuvel and D. R. Wood, 2017: the short decomposition proof (Theorem 3).
- [Proof of the Clustered Hadwiger Conjecture](https://arxiv.org/abs/2306.06224), V. Dujmović, L. Esperet, P. Morin, D. R. Wood, 2023: Section 1.9 outlines the proof; Section 2 proves $t+4$ colours briefly.
- [Clustered variants of Hajós' conjecture](https://arxiv.org/abs/1908.05597), C.-H. Liu and D. R. Wood, 2019: bounded-treewidth choosability and $t$ colours.

Prerequisites: graph minors, treewidth, the statement of the Graph Minor Structure Theorem.

### References, with links

- The Clustered Hadwiger's theorem: V. Dujmović, L. Esperet, P. Morin, D. R. Wood, “Proof of the Clustered Hadwiger Conjecture”, arXiv:2306.06224. <https://arxiv.org/abs/2306.06224>
- van den Heuvel and Wood proof: J. van den Heuvel and D. R. Wood, “Improper colourings inspired by Hadwiger's conjecture”, J. London Math. Soc. 98 (2018), 129–148; arXiv:1704.06536. <https://arxiv.org/abs/1704.06536> <https://doi.org/10.1112/jlms.12127>

### Further references

- V. Dujmović, L. Esperet, P. Morin, D. R. Wood, “Proof of the Clustered Hadwiger Conjecture”, FOCS 2023, 1921–1930. <https://doi.org/10.1109/FOCS57990.2023.00116>
- K. Edwards, D. Y. Kang, J. Kim, S. Oum, P. Seymour, “A relative of Hadwiger's conjecture”, SIAM J. Discrete Math. 29 (2015), 2385–2388. <https://doi.org/10.1137/141002177>
- C.-H. Liu and D. R. Wood, “Clustered variants of Hajós' conjecture”, J. Combin. Theory Ser. B 152 (2022), 27–54. <https://arxiv.org/abs/1908.05597>
- D. R. Wood, “Defective and clustered graph colouring”, Electron. J. Combin. DS23 (2018). <https://arxiv.org/abs/1803.07694>
- K. Kawarabayashi, R. Thomas, P. Wollan, “Quickly excluding a non-planar graph” (2020). <https://arxiv.org/abs/2010.12397>

### Lean

#### Official statement

`Mathathon.P09.clustered_hadwiger` in [`lean/MathathonProblems/P09_ClusteredHadwiger.lean`](lean/MathathonProblems/P09_ClusteredHadwiger.lean).

```lean
theorem clustered_hadwiger (t : ℕ) :
    ∃ c : ℕ, ∀ (n : ℕ) (G : SimpleGraph (Fin n)),
      ¬ IsMinor (⊤ : SimpleGraph (Fin t)) G →
        ∃ f : Fin n → Fin (t - 1), HasClusteringAtMost G f c
```

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Related Lean formalizations

- [LinearHadwiger](https://github.com/snorin239/LinearHadwiger/tree/9ef0db5fbaba0c4bc15248b9ea83933c262559c1): a Lean proof that graphs with no K_t minor are properly colourable with C·t colours, for an absolute constant C.
- The [Lean files of arXiv:2610.10831](https://arxiv.org/src/2610.10831v2/anc/lean/README.md) prove an explicit bound χ ≤ 1118430(t−1) for graphs with no K_t minor.
- [Mader's theorem and Hadwiger's conjecture for t ≤ 4](https://palomar-registry.org/entry?id=PALOMAR-2026-10-16-000001&version=2), Palomar registry (Lean-checked, trust level high).

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `SimpleGraph`, colourings (`SimpleGraph.Coloring`, `SimpleGraph.Colorable`, `SimpleGraph.chromaticNumber`) and `SimpleGraph.ConnectedComponent`. It has no graph minors, treewidth or clustered colourings; the Lean statement defines its own `IsMinor`, `monoSubgraph` and `HasClusteringAtMost`.
