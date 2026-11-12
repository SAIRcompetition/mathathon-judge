# 96 · Counterexamples to polynomial removal for ordered binary matrices

## From the proposer

- **Area:** Combinatorics
- **Tracks:** Combinatorics

### Description

In a manuscript released on October 6, 2026, OpenAI showed that polynomial removal fails for ordered binary matrices, answering a question of Alon, Fischer, and Newman (2007). They had proven that in the unordered case (both rows and columns can be permuted), the answer is yes. Alon and Ben-Eliezer (2020) showed that if you allow only row permutations, the answer is still yes.

OpenAI's counterexample is a 66x66 binary matrix. Five days later, Wang used similar methods to produce a 4x4 one.

Both proofs construct complicated host matrices, which we think could be better explained and simplified.

### Desired outcome

A short, human-readable proof that Wang's 4x4 matrix is a counterexample, with pictures of the first few host matrices. Connections to similar problems, for example, removal lemmas for ordered graphs or for permutation patterns, whose occurrences are ordered copies of permutation matrices.

Both counterexamples come with Lean formalizations, so what is missing is understanding, not correctness.

### References

1. Noga Alon, Eldar Fischer and Ilan Newman, "Efficient Testing of Bipartite Graphs for Forbidden Induced Subgraphs", SIAM J. Comput. 37(3) (2007), 959–976. https://doi.org/10.1137/050627915
2. OpenAI, "Polynomial removal fails for ordered binary matrices", OpenAI Math Release preprint, dated September 25, 2026, released October 6, 2026, Theorem 1.1. https://github.com/openai/math/blob/main/preprints/Polynomial-removal-fails-for-ordered-binary-matrices-September-25-2026/paper.pdf
3. Zinan Wang, "A Four-by-Four Obstruction to Polynomial Removal for Ordered Binary Matrices", arXiv:2610.15370, October 11, 2026. https://arxiv.org/abs/2610.15370

## AI-generated notes

<!-- status: Disproved (preprint) -->

- **Status:** Disproved in an OpenAI preprint dated 25 September 2026 (released 6 October 2026) with a 66×66 pattern, and by Z. Wang (arXiv, 11 October 2026) with a 4×4 pattern; neither has been refereed. The question goes back to Alon, Fischer and Newman (2007).
- **Task:** A short, human-readable proof that Wang's 4×4 matrix has no polynomial removal bound, pictures of the first host matrices, and connections to removal lemmas for ordered graphs and permutations.
- **Key reference:** [Z. Wang, “A Four-by-Four Obstruction to Polynomial Removal for Ordered Binary Matrices”, arXiv:2610.15370 (2026)](https://arxiv.org/abs/2610.15370)
- **Lean:** Official statement.

### Notes

- Both counterexamples are preprints and have not been refereed.
- The positive results the proposer mentions concern families of patterns closed under permutations: of rows and columns (Alon–Fischer–Newman 2007, induced bipartite subgraphs) or of rows only (Alon–Ben-Eliezer 2020, Theorem 1.5).

### The result

For a fixed binary $k\times k$ matrix $H$ and a binary $n\times n$ matrix $A$, an ordered copy of $H$ is a choice of rows $r_1<\dots<r_k$ and columns $c_1<\dots<c_k$ with $A(r_i,c_j)=H(i,j)$ for all $i,j$; zeros must match as well as ones. Let $N_H(A)$ be the number of copies and $D_H(A)$ the least number of entries (changed in either direction) whose change makes $A$ free of $H$; put $\mathrm{dist}_H(A)=D_H(A)/n^2$. Polynomial removal for $H$ would mean
$$N_H(A)\ \ge\ c\,\mathrm{dist}_H(A)^{C}\,n^{2k}\qquad\text{for all }A,$$
with $c,C>0$ depending only on $H$ (Gishboliner–Shapira 2025, Conjecture 4.5; for finite families, Alon–Ben-Eliezer 2020, Problem 1.4).

Wang's Theorem 1.1: let
$$H_4=\begin{pmatrix}0&1&1&0\\1&0&0&1\\1&0&1&0\\0&1&1&1\end{pmatrix}=\begin{pmatrix}J_2-I_2&I_2\\ I_2&P\end{pmatrix},\qquad P=\begin{pmatrix}1&0\\1&1\end{pmatrix}.$$
For every $h\ge1$, with $m=2^h$ and $n_h=(14h+2)m$, there is an explicit $n_h\times n_h$ matrix $A_h$ with
$$D_{H_4}(A_h)=m^2,\qquad \mathrm{dist}_{H_4}(A_h)=(14h+2)^{-2},\qquad N_{H_4}(A_h)=2m^6+\tfrac{m-2}{2}\,m^5 .$$
So the distance is $\varepsilon_h=\Theta(h^{-2})$ while the copy density $N/n_h^8$ is $\Theta(4^{-h}h^{-8})$, smaller than any power of $\varepsilon_h$. The $m$ leaf-diagonal cells meet every copy, yet every repair changes $m^2$ cells (Corollary 6.1): edits create new copies. The first hosts have sizes $32$, $120$ and $352$.

OpenAI's Theorem 1.1 is the same phenomenon for a 66×66 pattern $H$ (a 64×64 "anchor" with the body $P$ in its last two rows and columns): for $n_h=(386h+2)2^h$ and $\varepsilon_h=(386h+2)^{-2}$ there are $A_h$ with $\mathrm{dist}_H(A_h)\ge\varepsilon_h$ and $N_H(A_h)\le\varepsilon_h2^{-h}n_h^{132}$.

### How the known proof works

Wang follows the tree-propagation method of the OpenAI preprint.
- Body rule: for bits $a,b$, $\begin{pmatrix}1&a\\1&b\end{pmatrix}\ne P$ iff $b\le a$, and $\begin{pmatrix}a&b\\1&1\end{pmatrix}\ne P$ iff $a\le b$. In an $H_4$-free matrix every "frame" of marker rows and columns matching the other twelve entries of $H_4$ therefore forces an inequality between two entries.
- Host: rows and columns are indexed by a binary tree of depth $h$, with a minus and a plus block at each internal node (rows: minus block, subtrees, plus block; columns: the reverse), and the two blocks coincide at each leaf. Dummy blocks and marker blocks for $6h$ modes $V_i^\pm$, $W_{i,b}^\pm$ choose which pairs of levels are compared.
- Lower bound for arbitrary edits: the $m^2$ "protected selections" indexed by $(a,b)$ follow the root-to-leaf path of $z=a\oplus b$; every cell is protected by at most one selection (Lemma 3.1), so fewer than $m^2$ edits leave one selection untouched.
- Propagation: along an untouched selection, $H_4$-freeness carries the root values $x_0=1$ and $y_0=0$ down the path, giving $x_i=1$ and $y_i=0$ at every level. At the leaf the plus and minus cells coincide, a contradiction (Proposition 3.3).
- Upper bounds: every copy in $A_h$ is one of two "terminal" types through a leaf-diagonal cell (an arithmetic classification checked in Lean); changing the $m^2$ entries between the dummy rows and the leaf columns from 1 to 0 gives an $H_4$-free matrix. Copies are counted block by block (Lemma 2.2).

### Background

- Alon, Fischer and Newman (2007) proved polynomial bounds when rows and columns may be permuted and asked about ordered matrices (Section 7). Alon, Ben-Eliezer and Fischer (2017) proved a removal lemma for ordered matrices and ordered graphs, with very large bounds.
- Alon and Ben-Eliezer (2020) gave polynomial bounds when the host has $\varepsilon n^2$ entry-disjoint copies (Theorem 1.2), a weaker statement because hitting the existing copies does not prevent new ones.
- Gishboliner and Shapira (2025) stated the conjecture for a single pattern and noted that it was not known even for the $2\times2$ identity matrix; neither preprint treats patterns smaller than $4\times4$.
- Ordered graphs: Gishboliner and Tomon (2022) showed that the induced removal lemma for an ordered graph $F$ has polynomial bounds exactly when $F$ has two vertices or, up to complementation and reversal, $F$ is $x<y<z$ with edges $xy,xz$.
- Earlier nonpolynomial lower bounds (Fischer–Rozenberg 2007; Alon–Ben-Eliezer 2020, §5.1) needed a third symbol in the host.

### Where to start

- [A Four-by-Four Obstruction to Polynomial Removal for Ordered Binary Matrices](https://arxiv.org/abs/2610.15370), Z. Wang, 2026: Sections 2–3 give the host and the lower bound in about three pages.
- [Polynomial removal fails for ordered binary matrices](https://github.com/openai/math/blob/main/preprints/Polynomial-removal-fails-for-ordered-binary-matrices-September-25-2026/paper.pdf), OpenAI, 2026: the "Proof strategy" paragraph and Section 2 explain the tree mechanism and the role of the anchor.
- [Polynomial property testing](https://arxiv.org/abs/2508.16878), L. Gishboliner, A. Shapira, 2025: Section 4 states the conjecture and the known positive results.
- [Polynomial removal lemmas for ordered graphs](https://arxiv.org/abs/2110.03577), L. Gishboliner, I. Tomon, 2021: the closest analogue for ordered graphs.

Prerequisites: induced removal lemmas and their link to property testing, ordered patterns in matrices, binary trees.

### References, with links

- N. Alon, E. Fischer and I. Newman, “Efficient testing of bipartite graphs for forbidden induced subgraphs,” SIAM J. Comput. 37 (2007), no. 3, 959–976. <https://doi.org/10.1137/050627915>
- OpenAI, “Polynomial removal fails for ordered binary matrices,” OpenAI Math Release preprint, dated 25 September 2026, released 6 October 2026, Theorem 1.1. <https://github.com/openai/math/blob/main/preprints/Polynomial-removal-fails-for-ordered-binary-matrices-September-25-2026/paper.pdf>
- Z. Wang, “A Four-by-Four Obstruction to Polynomial Removal for Ordered Binary Matrices,” arXiv:2610.15370 (11 October 2026). <https://arxiv.org/abs/2610.15370>

### Further references

- N. Alon and O. Ben-Eliezer, “Efficient removal lemmas for matrices,” Order 37 (2020), 83–101. <https://doi.org/10.1007/s11083-019-09494-3>
- N. Alon, O. Ben-Eliezer and E. Fischer, “Testing hereditary properties of ordered graphs and matrices,” FOCS 2017, 848–858. <https://arxiv.org/abs/1704.02367>
- L. Gishboliner and A. Shapira, “Polynomial property testing,” Comput. Sci. Rev. 58 (2025), 100806. <https://doi.org/10.1016/j.cosrev.2025.100806>
- L. Gishboliner and I. Tomon, “Polynomial removal lemmas for ordered graphs,” Combinatorial Theory 2(3) (2022). <https://arxiv.org/abs/2110.03577>
- E. Fischer and E. Rozenberg, “Lower bounds for testing forbidden induced substructures in bipartite-graph-like combinatorial objects,” APPROX-RANDOM 2007, LNCS 4627, 464–478. <https://doi.org/10.1007/978-3-540-74208-1_34>

### Lean

#### Official statement

`Mathathon.P96.no_polynomial_removal_bound` in [`lean/MathathonProblems/P96_FourByFourRemoval.lean`](lean/MathathonProblems/P96_FourByFourRemoval.lean).

```lean
theorem no_polynomial_removal_bound :
    ∀ c C : ℝ, 0 < c → 0 < C →
  ∃ n : ℕ, 1 ≤ n ∧
    ∃ ε : ℝ, 0 < ε ∧ ε < 1 ∧
      ∃ A : BinaryMatrix n,
        fixedDistance A ≥ ε ∧
        (copyCount fixedH A : ℝ) <
          c * Real.rpow ε C * ((n : ℝ) ^ 8)
```

Here `fixedH` is Wang's $4\times4$ pattern $H_4$ and the statement is his Corollary 1.2: no bound $N_{H_4}(A)\ge c\,\mathrm{dist}_{H_4}(A)^C\,n^8$ holds for all binary matrices $A$. Wang reports a Lean proof of his own formulation: the arXiv record of arXiv:2610.15370 says that the Lean sources are included as ancillary files, but none are attached to version 1 (checked 12 November 2026), so his formulation could not be compared with this statement. A Lean-verified claim must not use or copy his proof.

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/MatrixRemoval.lean> (Apache License 2.0). Adapted: OpenAI's statement for its $66\times66$ pattern is copied with the pattern replaced by $H_4$ and the exponent $132$ of $n$ by $8$.

#### Related Lean formalizations

- OpenAI, [`OAI.Problem348.no_polynomial_removal_bound`](https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/MatrixRemoval.lean): a Lean statement that the 66×66 pattern has no polynomial removal bound, with a proof in the [MatrixRemoval](https://github.com/openai/math/tree/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Combinatorics/MatrixRemoval) library (`Main.lean`).
- Z. Wang, Lean 4.24.0 development described in [arXiv:2610.15370](https://arxiv.org/abs/2610.15370) and announced there as ancillary files, none of which are attached to version 1 (checked 12 November 2026): the author reports declarations `end_to_end_main_theorem` and `no_polynomial_removal_bound` for the 4×4 pattern, and an axiom audit allowing only `propext`, `Classical.choice` and `Quot.sound`.

These projects are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `Matrix`, `StrictMono` maps between `Fin` types, the Szemerédi regularity lemma (`szemeredi_regularity`) and the triangle removal lemma (`SimpleGraph.triangle_removal`). It has no ordered copies of matrices, no induced or ordered removal lemmas and no property testing.
