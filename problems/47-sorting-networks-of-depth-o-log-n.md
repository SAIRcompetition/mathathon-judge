# 47 · Sorting networks of depth O(log n)

> Everything on this page except the section **From the proposer** is AI-generated and may contain errors.

## From the proposer

- **Title:** Sorting Networks in O(log(n)) Depth
- **Area:** Computer science
- **Tracks:** Computation/Applied Math

### Description

Sorting lists is a fundamental problem in computer science that famously requires roughly n log(n) steps to do. However, this is only if the steps are taken sequentially; more efficient algorithms are possible if the steps are allowed to take place in parallel. A result of Ajtai-Komlós-Szemerédi shows that it is in fact possible to sort in O(log(n)) parallel rounds of operations. However, this algorithm (referred to as a sorting network) is famously difficult to understand and also impractical to implement. A simpler construction of these networks that have reasonable bounds on their depth would be of great interest in both theory and practice.

### Desired outcome

A simplified construction of a O(log(n)) depth sorting network (simplified e.g. by making use of nicer algebraic gadgets to abstract out some of the complexity, or else a simplified explanation of the AKS construction). A sorting network that is practically implementable would be desirable, though not necessary

### References

- <https://dl.acm.org/doi/abs/10.1145/800061.808726>, <https://users.encs.concordia.ca/~chvatal/notes/aks.pdf>, Volume 3 (Sorting and Searching) of The Art of Computer Programming

## AI-generated notes

- **Status:** Proved by M. Ajtai, J. Komlós and E. Szemerédi (1983); later simplified by Paterson (1990) and Seiferas (2009).
- **Task:** A simpler O(log n)-depth sorting network, or a clearer account of AKS.
- **Key reference:** [V. Chvátal, Lecture notes on the AKS sorting network](https://users.encs.concordia.ca/~chvatal/notes/aks.pdf)
- **Lean:** Official statement; a Lean proof already exists.

### The result

A comparator network on $n$ wires is a sequence of layers of disjoint comparators; its depth is the number of layers, and it sorts if every input leaves sorted. Ajtai, Komlós and Szemerédi (STOC 1983; Combinatorica 3 (1983), 1–19) proved that there is a constant $C$ such that for every $n$ some sorting network on $n$ wires has
$$\text{depth}\le C\log_2 n\quad\text{and size } O(n\log n).$$
The constant is very large: Paterson (1990) brought it below 6100, and Chvátal (1992) obtained depth at most $1830\log_2 N-58657$ for $N\ge 2^{78}$, from a later AKS proposal.

### How the known proof works

- A perfect halver on $a$ wires has depth greater than $\lg(a/2)$, so the obvious recursive scheme has depth $\Omega(\log^2 N)$; AKS use constant-depth approximate modules ("separators") instead, which may misroute a small fraction of keys.
- The $N=2^d$ wires move through a complete binary tree: at each time step every node applies a separator, sends a designated set $F$ of extreme outputs to its parent and the rest to its two children, so misrouted keys are later sent back up (Paterson's schedule).
- After $3d-20$ steps each node on level $d-6$ holds 64 keys that belong below it; a tail of fixed 64-wire sorting networks finishes.
- Correctness is an induction on time: each node holds fewer than $\delta^r c(i,t)/64$ "outsiders of order $r$", provided the module errors $\varepsilon_B,\varepsilon_F$ satisfy explicit inequalities (Theorem 2.1).
- Separators are built from $\varepsilon$-halvers, which come from bipartite expanders obtained by a counting argument (Theorems 3.1–3.3), so the modules are shown to exist rather than written down.

### Background

- Paterson (Algorithmica 1990) simplified the schedule; Chvátal's notes implement it with missing details filled in.
- Chvátal's 1992 report treats a later AKS proposal built from small $M$-sorters, of depth $(48+o(1))\log_M N+115$.
- Seiferas (Algorithmica 2009) further simplified the construction: about $6.05\log n$ iterations, each seven $(1/402.15)$-halvers deep.
- Goodrich's zig-zag sort (STOC 2014) is a simpler data-oblivious algorithm with $O(n\log n)$ comparisons, but it is not a network of depth $O(\log n)$.

### Where to start

- [Lecture notes on the AKS sorting network](https://users.encs.concordia.ca/~chvatal/notes/aks.pdf), Chvátal: complete proof in about 20 pages.
- [Lecture notes on the new AKS sorting network](https://doi.org/10.7282/T379487B), Chvátal, 1992: explicit constants.
- [Zig-zag sort](https://arxiv.org/abs/1403.2777), Goodrich, 2014: Section 5 compares the constants of AKS variants.
- Prerequisites: comparator networks, bipartite expanders, the probabilistic counting method.

### References, with links

- M. Ajtai, J. Komlós, and E. Szemerédi, the original construction: <https://dl.acm.org/doi/abs/10.1145/800061.808726>
- Notes on the AKS construction: <https://users.encs.concordia.ca/~chvatal/notes/aks.pdf>
- D. Knuth, *The Art of Computer Programming*, Volume 3 (Sorting and Searching).

### Further references

- M. Ajtai, J. Komlós and E. Szemerédi, Sorting in c log n parallel steps, Combinatorica 3 (1983), 1–19 <https://doi.org/10.1007/BF02579338>
- M. S. Paterson, Improved sorting networks with O(log N) depth, Algorithmica 5 (1990), 75–92 <https://doi.org/10.1007/BF01840378>
- J. Seiferas, Sorting networks of logarithmic depth, further simplified, Algorithmica 53 (2009), 374–384 <https://doi.org/10.1007/s00453-007-9025-6>
- V. Chvátal, Lecture notes on the new AKS sorting network, Rutgers DCS-TR-294 (1992) <https://doi.org/10.7282/T379487B>
- M. T. Goodrich, Zig-zag sort: a simple deterministic data-oblivious sorting algorithm running in O(n log n) time, STOC 2014 <https://arxiv.org/abs/1403.2777>

### Lean

#### Official statement

`Mathathon.P47.aks_sorting_network` in [`lean/MathathonProblems/P47_AKSSortingNetwork.lean`](lean/MathathonProblems/P47_AKSSortingNetwork.lean).

```lean
theorem aks_sorting_network :
    ∃ C : ℕ, ∀ n : ℕ, ∃ N : ComparatorNetwork n, N.length ≤ C * Nat.log 2 n ∧ N.Sorts
```

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Existing Lean proofs

- [girving/aks](https://github.com/girving/aks/tree/c7fb62ed80a4a610f87f34db0082cadbd7c00c9f) (Apache License 2.0) proves in Lean that its sorting networks sort and have depth at most 141·10⁶²·⌈log₂ n⌉, with its own definitions, following Seiferas's proof. A Lean-verified claim must not use or copy it.

#### Related Lean formalizations

- [AKS theorem — sorting networks of depth O(log n) and size O(n log n)](https://prove2.me/theorems/d5ec2944-08d9-4af5-94e8-404a7bb3a0c4), Prove2Me: a Lean statement that also bounds the size (open, not proved there).

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `List.insertionSort`, `List.mergeSort`, sortedness predicates and `Nat.log`. It has no comparator networks and no expander graphs; the official statement defines layers and networks itself.
