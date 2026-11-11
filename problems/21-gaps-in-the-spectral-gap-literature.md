# 21 · Gaps in the spectral gap literature

> Everything on this page except the section **From the proposer** is AI-generated and may contain errors.

## From the proposer

- **Title:** Gaps in Spectral Gap Literature
- **Area:** Random graphs, random matrices, spectral gap
- **Tracks:** Combinatorics, Analysis

### Description

The first result in this area was an unreadable paper by Joel Friedman. Charles Bordenave wrote a more readable paper but it was still quite hard. Brito-Ioana-Harris wrote a yet more readable paper, but relied on a key lemma by Bordenave that they were unable to reprove in an intuitive way (Prop 28 in Bordenave's paper; Lemma 7 in B-I-H). (I haven't fully surveyed the field to see if there are newer papers that make this stuff clearer).

### Desired outcome

An intuitive proof of Proposition 28 in Bordenave's paper; a deeper exploration of these papers, intricacies and gaps between them, explanation and commentary/visualizations to help those learning the theory.

### References

- Brito-Ioana-Harris, 2021: <https://arxiv.org/pdf/1804.07808>
- Bordenave, 2019: <https://arxiv.org/pdf/1502.04482>
- Friedman, 2004: <https://arxiv.org/pdf/cs/0405020>
- Friedman & Kohler, 2014: <https://arxiv.org/pdf/1403.3462>

## AI-generated notes

- **Status:** Proved by J. Friedman (arXiv 2004; Mem. Amer. Math. Soc. 2008); conjectured by N. Alon.
- **Task:** An intuitive proof of Bordenave's Proposition 28, plus commentary on the proofs.
- **Key reference:** [C. Bordenave, "A new proof of Friedman's second eigenvalue theorem and its extension to random lifts", Ann. Sci. Éc. Norm. Supér. 53 (2020), 1393–1439](https://arxiv.org/abs/1502.04482)
- **Lean:** Official statement.

### Notes

- "Brito-Ioana-Harris" is Brito–Dumitriu–Harris (G. Brito, I. Dumitriu, K. D. Harris; Combin. Probab. Comput. 2022).
- Proposition 28 is numbered as in Bordenave's arXiv version 4; it is the random-lift analogue of his Proposition 11 (random matchings), and Brito–Dumitriu–Harris apply it to a single-edge lift in their Lemma 7.

### The result

Friedman's theorem, as Bordenave's Theorem 1: let $d\ge3$ and $G$ uniform among simple $d$-regular graphs on $n$ vertices ($nd$ even), with adjacency eigenvalues $d=\mu_1\ge\dots\ge\mu_n$. For every $\varepsilon>0$,
$$\lim_{n\to\infty}\mathbb P\big(\max(\mu_2,|\mu_n|)\ge 2\sqrt{d-1}+\varepsilon\big)=0 .$$
Proposition 28 bounds the expectation of a product of entries (some centred) of independent uniform random permutation matrices along a sequence of $2k$ half-edges, $k\le\sqrt n$, by $c\,2^b n^{-a}(3k/\sqrt n)^{a_1}$, where $a$ is the number of distinct edges, and $b$ and $a_1$ count the inconsistent and the consistent edges of multiplicity one among the centred factors. The factor $(3k/\sqrt n)^{a_1}$ says that the entries are nearly centred and weakly dependent when $k=o(\sqrt n)$.

### How the known proof works

- The Ihara–Bass formula reduces the problem to the non-backtracking matrix $B$ of the configuration model.
- With high probability the graph is tangle-free at scale $\ell\asymp\log n$, so $B^\ell$ equals a matrix that ignores walks through tangles; tangles are why the trace method fails in expectation.
- Linear algebra (after Massoulié) bounds this matrix, off the constant vector, by norms of matrices of weighted paths of length at most $\ell$.
- These norms are bounded by $\mathbb E\,\mathrm{tr}(CC^*)^m$, $m\asymp\log n/\log\log n$, using the moment bound for products of matching entries (Proposition 11; Proposition 28 for lifts) and path counting.

### Background

- Friedman's arXiv paper has 118 pages. Friedman and Kohler (2014) simplified his method ("certified traces") for random covers; Bordenave gives a simpler proof of their result.
- Puder (2015) proved the bound $2\sqrt{d-1}+1$ ($+0.84$ for even $d$) by a substantially simpler method. Bordenave and Collins (2019) proved strong asymptotic freeness of independent random permutations with a matrix version of the non-backtracking method.
- Huang and Yau (2021) gave a new proof with an improved, polynomial rate; Huang, McKenzie and Yau (2024 preprint) proved edge universality, so about 69% of $d$-regular graphs are Ramanujan.
- Chen, Garza-Vargas, Tropp and van Handel (Ann. of Math. 2026) give a short proof of Friedman's theorem for the permutation model (even degree) using only soft arguments.

### Where to start

- [A new proof of Friedman's second eigenvalue Theorem and its extension to random lifts](https://arxiv.org/abs/1502.04482), C. Bordenave, 2015–2019: overview in Section 2.1; Proposition 28 in Section 4.2.
- [Spectral gap in random bipartite biregular graphs and applications](https://arxiv.org/abs/1804.07808), G. Brito, I. Dumitriu, K. D. Harris, 2018: Lemma 7 uses Proposition 28.
- [A new approach to strong convergence](https://arxiv.org/abs/2405.16026), C.-F. Chen et al., 2024: a different short proof, for comparison.

Prerequisites: spectral graph theory, the moment method, non-backtracking walks, the configuration model.

### Further references

- J. Friedman, "A proof of Alon's second eigenvalue conjecture and related problems", Mem. Amer. Math. Soc. 195 (2008), no. 910. <https://doi.org/10.1090/memo/0910>
- D. Puder, "Expansion of random graphs: new proofs, new results", Invent. Math. 201 (2015), 845–908. <https://arxiv.org/abs/1212.5216>
- C. Bordenave and B. Collins, "Eigenvalues of random lifts and polynomials of random permutation matrices", Ann. of Math. 190 (2019), 811–875. <https://arxiv.org/abs/1801.00876>
- J. Huang, T. McKenzie and H.-T. Yau, "Ramanujan property and edge universality of random regular graphs" (2024). <https://arxiv.org/abs/2412.20263>
- C.-F. Chen, J. Garza-Vargas, J. A. Tropp and R. van Handel, "A new approach to strong convergence", Ann. of Math. 203 (2026), 555–602. <https://arxiv.org/abs/2405.16026>

### Lean

#### Official statement

`Mathathon.P21.friedman_second_eigenvalue` in [`lean/MathathonProblems/P21_FriedmanSecondEigenvalue.lean`](lean/MathathonProblems/P21_FriedmanSecondEigenvalue.lean).

```lean
theorem friedman_second_eigenvalue (d : ℕ) (hd : 3 ≤ d) (ε : ℝ) (hε : 0 < ε) :
    ∀ δ : ℝ, 0 < δ → ∃ N : ℕ, ∀ n : ℕ, N ≤ n → Even (n * d) →
      (({G ∈ regularGraphs d n |
          HasLargeNontrivialEigenvalue G (2 * Real.sqrt ((d : ℝ) - 1) + ε)}.ncard : ℝ) /
        ((regularGraphs d n).ncard : ℝ)) < δ
```

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Related Lean formalizations

- [The expander mixing lemma and the Alon–Boppana bound](https://palomar-registry.org/entry?id=PALOMAR-2026-10-22-000035&version=1), Palomar registry (Lean-checked, trust level high): the Alon–Boppana lower bound on the second eigenvalue, the counterpart of Friedman's theorem.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `SimpleGraph.adjMatrix`, `SimpleGraph.IsRegularOfDegree` and `Matrix.IsHermitian.eigenvalues₀`. It has no non-backtracking matrix, Ihara–Bass formula, configuration model or random lifts.
