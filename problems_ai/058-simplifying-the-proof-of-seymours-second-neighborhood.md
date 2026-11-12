# 58 · Simplifying the Proof of Seymour's Second-Neighborhood Conjecture

## From the proposer

- **Area:** Graph theory, combinatorics
- **Tracks:** Combinatorics

### Description

Seymour's second-neighborhood conjecture states that every oriented graph has a vertex with at least as many second out-neighbors as first out-neighbors. OpenAI released a proof in its October 6, 2026 proof dump. The problem is to simplify this proof.

### Desired outcome

A simpler proof of Seymour's second-neighborhood conjecture, ideally with a shorter and more elementary argument.

### References

https://github.com/openai/math/blob/main/preprints/A-proof-of-Seymours-second-neighborhood-conjecture-September-23-2026/paper.pdf

### Reference links

- <https://github.com/openai/math/blob/main/preprints/A-proof-of-Seymours-second-neighborhood-conjecture-September-23-2026/paper.pdf>

## AI-generated notes

<!-- status: Proved (preprint) -->

- **Status:** Proved in an OpenAI preprint dated 23 September 2026 (released 6 October 2026), not yet refereed; Seymour's conjecture, recorded by Dean and Latka (1995).
- **Task:** A simpler, shorter and more elementary proof of the conjecture.
- **Key reference:** [OpenAI, "A proof of Seymour's second-neighborhood conjecture", preprint, 23 September 2026](https://github.com/openai/math/blob/main/preprints/A-proof-of-Seymours-second-neighborhood-conjecture-September-23-2026/paper.pdf)
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- The result is a preprint and has not been refereed.

### The result

Theorem 1.1: every nonempty finite oriented graph (no loops, no 2-cycles) has a vertex $v$ with $|N^+_1(v)|\le|N^+_2(v)|$, where $N^+_2(v)$ is the set of vertices at directed distance exactly 2. No connectivity or degree hypothesis is needed. The paper also derives the vertex- and arc-weighted forms (via Seacrest's equivalences) and consequences for short directed cycles, for example a directed triangle whenever minimum in- and out-degree are at least $n/3$. It has 15 pages. The official Lean statement `exists_goodVertex` is Theorem 1.1.

### How the known proof works

- Take a counterexample of minimum order, then minimum number of arcs; it is strongly connected, and deleting arcs leaving $S$ shows $|F^2(S)\setminus F(S)|<|F(S)\setminus S|$ for every nonempty proper vertex set $S$, where $F$ is the out-neighbourhood operator (Lemma 2.2, adapting Seacrest).
- Replacing each vertex by a large transitive tournament gives $|U|+|F^2(U)|<2|F(U)|$ for every nonempty proper $U$ (Proposition 2.1).
- A pruning lemma for arbitrary finite binary relations (Lemma 3.1) removes conflicts between two families of ordered pairs at a cost charged to points left uncovered; its proof bounds a matching by a maximum-rank matrix argument (Lemma 3.2).
- An extremal choice of two compatible families maximizing size plus uncovered points, improved by the pruning lemma, gives a contradiction (Proposition 4.1).

### Background

- The tournament case (Dean's conjecture) was proved by Fisher (1996) with Farkas' lemma, and by Havet and Thomassé (2000) with median orders.
- Partial results: minimum out-degree at most 6 (Kaneko–Locke), and 7 in a computer-assisted preprint; tournaments minus a matching, a star or other structures (Fidler–Yuster, Ghazal and others); orientations of random graphs.
- Ratio results: some vertex has $|N^+_2|\ge\lambda|N^+_1|$ with $\lambda\approx 0.657$ (Chen, Shen, Yuster, 2003), improved to about $0.7155$ (Huang and Peng, 2024).
- The proof builds on the minimal-counterexample and product methods of Brantner, Brockman, Kay and Snively (2009) and on Seacrest's subset version (2018).

### Where to start

- [Seymour's second neighborhood conjecture for subsets of vertices](https://arxiv.org/abs/1808.06293), T. Seacrest, 2018: the subset version and the arc-deletion idea that Lemma 2.2 adapts.
- [Contributions to Seymour's second neighborhood conjecture](https://arxiv.org/abs/0808.0946), J. Brantner, G. Brockman, B. Kay, E. Snively, 2008: minimal counterexamples and graph products.
- [An improved bound on Seymour's second neighborhood conjecture](https://arxiv.org/abs/2412.20234), H. Huang and F. Peng, 2024: the best ratio bound before the proof (0.715538).

Prerequisites: directed graphs and tournaments, bipartite matchings (König's theorem), matrix rank.

### Further references

- D. C. Fisher, “Squaring a tournament: a proof of Dean's conjecture”, J. Graph Theory 23 (1996), 43–48. <https://doi.org/10.1002/(SICI)1097-0118(199609)23:1%3C43::AID-JGT4%3E3.0.CO;2-K>
- F. Havet and S. Thomassé, “Median orders of tournaments: a tool for the second neighborhood problem and Sumner's conjecture”, J. Graph Theory 35 (2000), 244–256. <https://doi.org/10.1002/1097-0118(200012)35:4%3C244::AID-JGT2%3E3.0.CO;2-H>
- T. Seacrest, “Seymour's second neighborhood conjecture for subsets of vertices” (2018). <https://arxiv.org/abs/1808.06293>
- J. Brantner, G. Brockman, B. Kay, E. Snively, “Contributions to Seymour's second neighborhood conjecture”, Involve 2 (2009), 387–395. <https://arxiv.org/abs/0808.0946>
- G. Chen, J. Shen, R. Yuster, “Second neighborhood via first neighborhood in digraphs”, Ann. Comb. 7 (2003), 15–20. <https://doi.org/10.1007/s000260300001>

### Lean

#### Official statement

`OAI.SeymourSecondNeighborhood.exists_goodVertex` in [`lean/MathathonProblems/P58_SeymourSecondNeighborhood.lean`](lean/MathathonProblems/P58_SeymourSecondNeighborhood.lean).

```lean
theorem exists_goodVertex (r : V → V → Prop) (hr : IsOriented r) :
    ∃ v, GoodVertex r v
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/SeymourSecondNeighborhood.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Combinatorics/SecondNeighborhood/Main.lean>. A Lean-verified claim must not use or copy it.

#### Mathlib

Mathlib has `Digraph` (with orientation-forgetting maps in `Mathlib/Combinatorics/Digraph/Orientation.lean`), `Finset` filtering and cardinalities, and matrix rank (`Matrix.rank`). It has no oriented-graph predicate, out-neighbourhoods at distance two or tournaments; the Lean statement defines `IsOriented`, `firstNeighbors`, `secondNeighbors` and `GoodVertex` directly.
