# 55 · A Simpler Counterexample to Hadwiger's Conjecture

## From the proposer

- **Area:** Combinatorics and Graph Theory
- **Tracks:** Combinatorics

### Description

Hadwiger's conjecture states that every graph with chromatic number at least k contains a K_k minor. OpenAI released a counterexample in its October 6, 2026 proof dump. The problem is to simplify the counterexample and its proof.

### Desired outcome

A simpler construction of a counterexample to Hadwiger's conjecture, ideally with a shorter and more elementary proof.

### References

https://github.com/openai/math/blob/main/preprints/A-counterexample-to-Hadwigers-conjecture-September-23-2026/paper.pdf

## AI-generated notes

<!-- status: Disproved (preprint) -->

- **Status:** Disproved in an OpenAI preprint dated 23 September 2026 (released 6 October 2026), not yet refereed; conjectured by H. Hadwiger (1943).
- **Task:** A simpler counterexample to Hadwiger's conjecture with a shorter, elementary proof.
- **Key reference:** [OpenAI, "A counterexample to Hadwiger's conjecture", preprint, 23 September 2026](https://github.com/openai/math/blob/main/preprints/A-counterexample-to-Hadwigers-conjecture-September-23-2026/paper.pdf)
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- The result is a preprint and has not been refereed.

### The result

Write $h(G)$ for the Hadwiger number and $\mathrm{cm}(G)$ for the largest connected matching (a matching whose edges are pairwise joined by an edge). Theorem 1.1: for arbitrarily large $m$ there are $m$-vertex graphs with $\alpha(G)\le 2$ and $\mathrm{cm}(G)\lt m/100$. Since $h(G)\le (m+4\thinspace\mathrm{cm}(G)+2)/3$ (Proposition 3.5) and $\chi_f(G)\ge m/\alpha(G)$, Corollary 1.2 gives

$$h(G)\lt\tfrac{26m}{75}+\tfrac23\lt\tfrac m2\le\chi_f(G)\le\chi(G).$$

So Hadwiger's conjecture and its fractional weakening fail. The official Lean statements `exists_counterexamples` and `not_hadwiger_conjecture` cover Theorem 1.1 and Corollary 1.2 except the fractional part.

### How the known proof works

- Reduction (Proposition 3.5, half a page): one- and two-vertex branch sets of a clique minor form a connected matching, so for $\alpha(G)\le 2$ any graph with $\mathrm{cm}(G)\lt m/8-1/2$ is a counterexample.
- Holes (Section 2): missing edges are certified by linear algebra over $\mathbb{F} _ 2$ (frame maps, tensors, a symmetric bilinear form); summing the identities around a triangle gives $0=1$, so the holes form a triangle-free relation and $\alpha(G)\le 2$.
- Two candidate matching edges "conflict" when all four cross pairs are holes; a distribution theorem forces conflicts, and an entropy-minimizing container argument with a capacitated cut transfers this to a random finite sample (Section 3).
- Forcing four holes (Sections 4–14) uses Boolean moment matrices, phase estimates, entropy and weak regularity; this is most of the 104 pages.

### Background

- Hadwiger's conjecture was known for $K_t$-minor-free graphs with $t\le 6$ (the case $t=6$ by Robertson, Seymour and Thomas, 1993).
- For $\alpha(G)=2$ it says every $m$-vertex graph has a $K_{\lceil m/2\rceil}$ minor (Plummer, Stiebitz, Toft); Duchet–Meyniel give $m/3$ and Fox slightly more. Seymour's survey (2016) called this case "an excellent place to look for a counterexample".
- The graphs also disprove the sharp connected-matching conjecture of Füredi, Gyárfás and Simonyi (2005); these graphs leave its weaker linear form unresolved.
- Related disproofs: the odd Hadwiger conjecture (Kühn, Sauermann, Steiner, Wigderson, 2025, also with $\alpha\le 2$) and the dominating Hadwiger conjecture (a disproof found by ChatGPT 6 Astra Ultra, with an exposition by Illingworth and Steiner, 2026); a companion OpenAI preprint gives $\chi(G)\gt\mu(G)+1$ for the Colin de Verdière invariant, which also yields counterexamples.
- Linear bounds hold: Norin and Steiner proved $\chi(G)\le C\thinspace h(G)$ (arXiv 2026), and Wood reduced $C$ to 1,118,430.

### Where to start

- [A counterexample to Hadwiger's conjecture](https://github.com/openai/math/blob/main/preprints/A-counterexample-to-Hadwigers-conjecture-September-23-2026/paper.pdf), OpenAI, 2026: Sections 1.2, 2 and 3.3 contain the overview, the triangle-free mechanism and the elementary minor bound.
- [Hadwiger's conjecture](https://web.math.princeton.edu/~pds/papers/hadwiger/paper.pdf), P. Seymour, 2016: survey; Section 4 treats stability number two.
- [Disproof of the dominating Hadwiger conjecture](https://arxiv.org/abs/2609.35361), F. Illingworth and R. Steiner, 2026: a short construction, the complement of a pseudorandom triangle-free graph.

Prerequisites: graph minors, matchings, linear algebra over $\mathbb{F} _ 2$, entropy and container methods.

### Further references

- P. Seymour, “Hadwiger's conjecture”, in *Open Problems in Mathematics*, Springer (2016), 417–437. <https://doi.org/10.1007/978-3-319-32162-2_13>
- Z. Füredi, A. Gyárfás, G. Simonyi, “Connected matchings and Hadwiger's conjecture”, Combin. Probab. Comput. 14 (2005), 435–438. <https://doi.org/10.1017/S0963548305006759>
- M. Kühn, L. Sauermann, R. Steiner, Y. Wigderson, “Disproof of the odd Hadwiger conjecture” (2025). <https://arxiv.org/abs/2512.20392>
- F. Illingworth, R. Steiner, “Disproof of the dominating Hadwiger conjecture” (2026). <https://arxiv.org/abs/2609.35361>
- S. Norin, R. Steiner, “A proof of the linear Hadwiger conjecture” (2026). <https://arxiv.org/abs/2610.05291>

### Lean

#### Official statement

`OAI.HadwigerCounterexample.exists_counterexamples`, `OAI.HadwigerCounterexample.not_hadwiger_conjecture` in [`lean/MathathonProblems/P55_HadwigerCounterexample.lean`](lean/MathathonProblems/P55_HadwigerCounterexample.lean).

```lean
theorem exists_counterexamples (M : ℕ) : ∃ m : ℕ, max M 5 ≤ m ∧
    ∃ G : SimpleGraph (Fin m), G.indepNum ≤ 2 ∧
      (connectedMatchingNumber G : ℚ) < (m : ℚ) / 100 ∧
      (hadwigerNumber G : ℚ) < 26 * (m : ℚ) / 75 + 2 / 3 ∧
      26 * (m : ℚ) / 75 + 2 / 3 < (m : ℚ) / 2 ∧
      (m : ℚ) / 2 ≤ (G.chromaticNumber.toNat : ℚ) ∧
      hadwigerNumber G < G.chromaticNumber.toNat ∧
      G.chromaticNumber ≠ ⊤ ∧
      G.chromaticNumber = ↑(G.chromaticNumber.toNat)
```

```lean
theorem not_hadwiger_conjecture :
    ¬ (∀ (m : ℕ) (G : SimpleGraph (Fin m)),
      G.chromaticNumber ≤ ↑(hadwigerNumber G))
```

The problem asks for a simpler counterexample, which need not have the parameters of `exists_counterexamples` (Theorem 1.1 with Corollary 1.2 of the preprint); a Lean-verified claim of a new counterexample proves `not_hadwiger_conjecture`.

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/HadwigerCounterexample.lean> (copied unchanged).

A Lean proof of both statements already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Combinatorics/HadwigerCounterexample/Main.lean>. A Lean-verified claim must not use or copy it.

#### Mathlib

Mathlib has `SimpleGraph.chromaticNumber`, `SimpleGraph.indepNum`, `SimpleGraph.cliqueNum` and matchings (`SimpleGraph.Subgraph.IsMatching`). It has no graph minors, Hadwiger number, connected matchings or fractional chromatic number; the Lean statement defines `HasCliqueMinor`, `hadwigerNumber` and `connectedMatchingNumber`.
