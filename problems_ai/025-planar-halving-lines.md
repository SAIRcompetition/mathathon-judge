# 25 · Planar Halving Lines

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/025-planar-halving-lines.md`](../problems_original/025-planar-halving-lines.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Planar Halving Lines

### Short description of problem (100 words or less)

We are given n points in the plane. A pair of points is a halving pair if its line (a halving line) leaves (n-2)/2 points on either side. How many halving lines are possible?

### Submitted Area

combinatorial geometry

### Proposed Tracks

Geometry

### Reference/source material

1. Tamal Dey's longstanding bound appears in: "Improved Bounds for Planar k -Sets and Related Problems." https://link.springer.com/content/pdf/10.1007/PL00009354.pdf
2. A recent improvement on the bound from OpenAI: https://github.com/openai/math/blob/main/preprints/A-power-saving-for-planar-halving-lines-September-25-2026/main.pdf
3. An open problems page describing the problem: https://jeffe.cs.illinois.edu/open/ksets.html

### Desired outcome

As with many of the results in the recent OpenAI "drop", this improvement on the longstanding bound is difficult to decipher. Historically, arguments giving increasingly tight bounds for the problem have used a dual formulation and argued about arrangements of lines, and the recent proof also appears to do this. At minimum, the new results/techniques should be nicely visualizable. It would be quite a nice project to visualize the new techniques via this dual setup, and understand how precisely the new bound is obtained. Perhaps it might give us new ideas to improve bounds in combinatorial geometry more broadly.

## AI-generated notes

<!-- status: Proved (preprint) -->

> Written by AI for the earlier problem list, where this was problem 25 ([`problems/25-planar-halving-lines.md`](../problems/25-planar-halving-lines.md)), and carried over unchanged.

- **Status:** The bound $O(n^{4/3-\varepsilon})$, improving Dey's $O(n^{4/3})$ (1998), is proved in a September 2026 preprint by OpenAI that is not yet refereed; the exact order of the maximum number of halving lines remains open.
- **Task:** A visual explanation of the new bound, in the dual line-arrangement setting.
- **Key reference:** [OpenAI, A power saving for planar halving lines, preprint (25 September 2026)](https://github.com/openai/math/blob/main/preprints/A-power-saving-for-planar-halving-lines-September-25-2026/main.pdf)
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- The new bound is a 31-page preprint that has not been refereed. Its proof is nonquantitative: it gives no value of $\varepsilon$, $C$ or $n_0$.

### The result

For an even set $P$ of $n$ points in the plane with no three collinear, let $h(P)$ be the number of halving pairs. The largest possible $h(P)$ lies between $n\,e^{\Omega(\sqrt{\log n})}$ (Tóth, 2001; improved constant by Nivasch, 2008) and $O(n^{4/3})$ (Dey, Discrete Comput. Geom. 19, 1998). The preprint proves absolute constants $\varepsilon>0$, $C$, $n_0$ with
$$h(P)\le C\,n^{4/3-\varepsilon}\qquad(n\ge n_0 \text{ even}).$$
It also proves the same bound for the number $S_k(P)$ of switches of the rank-$k$ slope sweep, uniformly in $k$ (Theorem 1.2); both parts form the official Lean statement. As a corollary, $n$-point sets have $O(n(k+1)^{1/3-\varepsilon_0})$ $k$-sets.

### How the known proof works

- Sweep the slope $s$ and mark the $k$ points with smallest $y-sx$; each change of the marked set is a switch, and at the middle rank the switches are the halving pairs. The bound is proved for all ranks at once, because restricting to a block of switches changes the rank.
- Dey's mechanism (Section 2): joining the points an interval loses to those it gains gives a complete bipartite exchange graph; convex and concave chain partitions and a crossing count bound the number of disjoint intervals of activity at least $b$ by $O((n/b)^{4/3})$.
- The main estimate is a uniform little-$o$ improvement of this packing bound as $n/b\to\infty$; one fixed scale then gives a contracting recurrence and the power saving.
- The improvement is by contradiction and compactness: near-extremal configurations give limiting measures in "rank coordinates", and a rigidity lemma for three transverse families of sweep lines restores Euclidean control (Sections 3–5).
- A spatial measure with disk mass $O(r^{32/17})$ and a count of marked "tokens" crossing a boundary contradict positive limiting edge mass (Sections 6–7).

### Background

- Lovász (1971) and Erdős, Lovász, Simmons and Straus (1973) gave $O(n^{3/2})$ and $\Omega(n\log n)$; Pach, Steiger and Szemerédi (1992) gained an iterated-logarithm factor; Dey's convex-chain argument gave $O(nk^{1/3})$ for $k$-sets.
- Dually, points become lines and $k$-sets become vertices of the $k$-level of the arrangement; the slope sweep of $y-sx$ follows the $k$-level of the lines $s\mapsto y_i-sx_i$.
- Pinchasi (2009) related halving lines to measure concentration in the plane; Alonso, López and Rodrigo (2024) improved a lower-order term while keeping the exponent $4/3$.

### Where to start

- [Improved bounds for planar k-sets and related problems](https://doi.org/10.1007/PL00009354), T. K. Dey, 1998: the short $O(n^{4/3})$ proof that the new argument starts from.
- [A power saving for planar halving lines](https://github.com/openai/math/blob/main/preprints/A-power-saving-for-planar-halving-lines-September-25-2026/main.pdf), OpenAI, 2026: Sections 1.3 and 2 (pp. 3–7) give the strategy and the finite reductions.
- [Halving lines and k-sets](https://jeffe.cs.illinois.edu/open/ksets.html), J. Erickson (open problems page, 1999): history of the bounds up to Dey and the dual $k$-level formulation.

Prerequisites: point–line duality and line arrangements, the crossing lemma for graphs, convex chains; weak limits of measures and the Radon–Nikodym theorem for Sections 3–7.

### Further references

- G. Tóth, “Point sets with many k-sets,” Discrete & Computational Geometry 26 (2001), 187–194. <https://doi.org/10.1007/s004540010022>
- G. Nivasch, “An improved, simple construction of many halving edges,” in Surveys on Discrete and Computational Geometry, Contemporary Mathematics 453 (2008), 299–305. <https://doi.org/10.1090/conm/453/08804>
- J. Pach, W. Steiger and E. Szemerédi, “An upper bound on the number of planar k-sets,” Discrete & Computational Geometry 7 (1992), 109–123. <https://doi.org/10.1007/BF02187829>
- R. Pinchasi, “Halving lines and measure concentration in the plane,” Proc. 25th Symposium on Computational Geometry (2009), 141–147. <https://doi.org/10.1145/1542362.1542393>

### Lean

#### Official statement

`OAI.PlanarHalving.power_bounds` in [`lean/MathathonProblems/P25_HalvingLines.lean`](lean/MathathonProblems/P25_HalvingLines.lean).

```lean
theorem power_bounds :
    (∃ ε : ℝ, 0 < ε ∧ ∃ C : ℝ, ∃ n₀ : ℕ,
      ∀ n : ℕ, Even n → n₀ ≤ n → ∀ P : Fin n → Point,
        GeneralPosition P → (halvingCount P : ℝ) ≤ C * (n : ℝ) ^ ((4 : ℝ) / 3 - ε)) ∧
    (∃ ε : ℝ, 0 < ε ∧ ∃ C : ℝ,
      ∀ n : ℕ, 1 ≤ n → ∀ P : Fin n → Point, Generic P →
        ∀ k : ℕ, k ≤ n → (switchCount P k : ℝ) ≤ C * (n : ℝ) ^ ((4 : ℝ) / 3 - ε))
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/HalvingLines.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Combinatorics/HalvingLines/Main.lean>. A Lean-verified claim must not use or copy it.

#### Mathlib

Mathlib has collinearity (`Collinear`), convex hulls and finite point sets in `ℝ × ℝ`, and simple graphs. It has no halving lines, $k$-sets, line arrangements or crossing lemma; the official statement defines halving pairs (through an orientation determinant) and sweep switches itself.
