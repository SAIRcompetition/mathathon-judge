# 46 · The power saving for planar unit distances

## From the proposer

- **Area:** Combinatorial geometry; arithmetic geometry; discrete geometry
- **Tracks:** Combinatorics, Geometry

### Description

OpenAI's 2026 preprint proves $u(n)=O(n^{4/3-\delta})$, the first exponent improvement since Spencer-Szemerédi-Trotter (1984). The proof combines cuttings, an entropy-based prediction lemma, heights at every place of a number field, and sign changes of square roots. It's also a proof by contradiction, and doesn't provide an explicit $\delta$. None of this resembles points and unit circles. Valtr's metric attains $n^{4/3}$, so the proof must use something specifically Euclidean.

### Desired outcome

A human-readable account of the proof's architecture, a clear explanation of exactly where it uses Euclidean structure and fails for Valtr's metric, and an explicit delta in the power saving.

### References

(1) OpenAI, A power saving for planar unit distances (23 September 2026), https://github.com/openai/math/tree/main/preprints/A-power-saving-for-planar-unit-distances-September-23-2026 (2) J. Spencer, E. Szemerédi, W. Trotter, Unit distances in the Euclidean plane, in Graph Theory and Combinatorics (Academic Press, 1984), 293–303. (3) L. Székely, Crossing numbers and hard Erdős problems in discrete geometry, Combin. Probab. Comput. 6 (1997), 353–358.

## AI-generated notes

<!-- status: Proved (preprint) -->

- **Status:** Proved in an OpenAI preprint dated 23 September 2026 (released 6 October 2026), not yet refereed; the problem is Erdős's (1946).
- **Task:** The proof's architecture, its Euclidean input, and an explicit δ.
- **Key reference:** [OpenAI, "A power saving for planar unit distances", preprint, 23 September 2026](https://github.com/openai/math/blob/main/preprints/A-power-saving-for-planar-unit-distances-September-23-2026/paper.pdf)
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- The result is a preprint and has not been refereed.

### The result

Let $u(n)$ be the maximum number of unordered pairs at distance 1 among $n$ points of the Euclidean plane. Theorem 1.1: there are absolute constants $C\gt0$ and $1\le\beta\lt4/3$ with

$$u(n)\le C\thinspace n^{\beta}\qquad\text{for all } n .$$

This improves the bound $O(n^{4/3})$ of Spencer, Szemerédi and Trotter (1984). The proof is by contradiction along a sequence of near-extremal configurations and gives no value of $\beta$. The best lower bound is $u(n)\ge n^{1.014}$ for infinitely many $n$ (Sawin, 2026). The official Lean statement `main` is Theorem 1.1.

### How the known proof works

- Assuming no power saving, take near-extremal configurations, move them to real algebraic coordinates (Lemma 2.1), and use random cuttings to get a point–circle incidence graph with controlled degrees (Section 2).
- Endpoints of a random two-edge path share $o(\log t)$ mutual information ($t=n^{1/3}$), giving an entropy prediction lemma valid for general point–centre laws (Section 3).
- In coordinates $z=x+iy$, $w=x-iy$ a unit edge has jumps $d$ and $d^{-1}$; the product formula turns this into height bounds over all places, and a bounded "scale" is excluded by a determinant argument (Section 4).
- Otherwise level decompositions and a height-weighted extraction give a dense pair graph with small-height rectangle products (Sections 5–7).
- Section 8 rules this out with valuations that flip signs of square roots independently; the paper has 53 pages.

### Background

- Erdős (1946) gave the lower bound $n^{1+c/\log\log n}$; Székely (1997) proved $O(n^{4/3})$ by crossing numbers, using only that two unit circles meet in at most two points and two points lie on at most two unit circles.
- The same proofs give $O(n^{4/3})$ for strictly convex norms, and Valtr constructed one with $\Omega(n^{4/3})$ unit distances (reported by Matoušek, arXiv 2010).
- An OpenAI construction (May 2026) disproved $u(n)=n^{1+o(1)}$; Alon et al. gave a human-verified account and Sawin the exponent 1.014.
- Guth's survey (2026) explains why 4/3 resisted improvement, including curves where $n^{4/3}$ is sharp.

### Where to start

- [A power saving for planar unit distances](https://github.com/openai/math/blob/main/preprints/A-power-saving-for-planar-unit-distances-September-23-2026/paper.pdf), OpenAI, 2026: Section 1.2 outlines the proof step by step.
- [Perspectives on the unit distance problem](https://arxiv.org/abs/2609.10791), L. Guth, 2026: survey; Section 5.4 explains why 4/3 is hard to beat.
- [Remarks on the disproof of the unit distance conjecture](https://arxiv.org/abs/2605.20695), N. Alon et al., 2026: the number-field ideas in a shorter setting.

Prerequisites: Szemerédi–Trotter and the crossing lemma, cuttings, entropy, heights on number fields.

### References, with links

- OpenAI, “A power saving for planar unit distances” (23 September 2026): <https://github.com/openai/math/tree/main/preprints/A-power-saving-for-planar-unit-distances-September-23-2026>
- J. Spencer, E. Szemerédi, and W. Trotter, “Unit distances in the Euclidean plane,” in *Graph Theory and Combinatorics* (Academic Press, 1984), 293–303.
- L. Székely, “Crossing numbers and hard Erdős problems in discrete geometry,” Combin. Probab. Comput. 6 (1997), 353–358. <https://doi.org/10.1017/S0963548397002976>

### Further references

- J. Matoušek, “The number of unit distances is almost linear for most norms” (2010). <https://arxiv.org/abs/1007.1095>
- L. Guth, “Perspectives on the unit distance problem” (2026). <https://arxiv.org/abs/2609.10791>
- N. Alon, T. F. Bloom, W. T. Gowers, D. Litt, W. Sawin, A. Shankar, J. Tsimerman, V. Wang, M. M. Wood, “Remarks on the disproof of the unit distance conjecture” (2026). <https://arxiv.org/abs/2605.20695>
- W. Sawin, “An explicit lower bound for the unit distance problem” (2026). <https://arxiv.org/abs/2605.20579>

### Lean

#### Official statement

`OAI.PlanarUnitDistances.main` in [`lean/MathathonProblems/P46_PlanarUnitDistances.lean`](lean/MathathonProblems/P46_PlanarUnitDistances.lean).

```lean
theorem main : ∃ C β : ℝ, 0 < C ∧ 1 ≤ β ∧ β < (4 : ℝ) / 3 ∧
    ∀ n : ℕ, (u n : ℝ) ≤ C * (n : ℝ) ^ β
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/PlanarUnitDistances.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Geometry/UnitDistances/Main.lean>. A Lean-verified claim must not use or copy it.

#### Related Lean formalizations

- [`unit_distance_upper_bound` in lean-eval](https://github.com/leanprover/lean-eval/blob/85a88c37f80170d9f08651dc63ce6b81a8a48cb9/generated/unit_distance_upper_bound/Challenge.lean): a Lean statement of the Spencer–Szemerédi–Trotter bound $u(n)=O(n^{4/3})$ (statement only).

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `EuclideanSpace ℝ (Fin 2)`, `SimpleGraph.UnitDistEmbedding`, heights with the product formula (`Height.AdmissibleAbsValues`, `Height.logHeight`), `IsRealClosed` and `InformationTheory.klDiv`. It lacks Szemerédi–Trotter, the crossing lemma, cuttings and $u(n)$ (the Lean statement defines it).
