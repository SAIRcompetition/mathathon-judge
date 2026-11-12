# 78 · Understanding Matrix Multiplication

## From the proposer

- **Area:** Algebraic Complexity Theory, Numerical Linear Algebra
- **Tracks:** Computation/Applied Math

### Description

Recent constructions achieve a matrix multiplication exponent approaching 9/4, yet their asymptotic operation counts conceal enormous finite costs. A starting point could be from the polynomial packing construction in Rafael Pass's paper, by investigating how its algebraic savings become a recursive algorithm. There are several things to consider, like polynomial packing, interpolation, approximate identities conversion, etc.

### Desired outcome

An exposition of an existing fast matrix multiplication construction.
- Small, exact worked examples that reveal the construction's key ideas.
- Reproducible symbolic computations and visualizations.
- An explicit analysis of how block dimensions, coefficient sizes, and operation counts depend on the chosen exponent, clarifying the gap between asymptotic efficiency and practical computation.

Potentially a connection to numerical analysis that clarifies precision requirements too. Although the reference construction already includes an asymptotic bit-complexity analysis.

### References

1. https://arxiv.org/abs/2610.28627 by Rafael Pass. Primary reference for the construction and its conversion into an explicit recursive algorithm.
2. https://arxiv.org/abs/math/0603207v3 by James Demmel, Ioana Dumitriu, Olga Holtz, and Robert Kleinberg. Reference for the relationship between fast multiplication and numerical stability.

## From the judges

Suggested outcome: interactive code packages illustrating worked examples and/or analysis of finite costs.

## AI-generated notes

<!-- status: Proved (preprint) -->

- **Status:** $\omega\le 9/4$ proved by OpenAI (October 2026 preprint) and constructively by R. Pass (arXiv, October 2026); neither proof is yet refereed.
- **Task:** An exposition of an existing fast matrix multiplication construction, with worked examples.
- **Key reference:** [R. Pass, Matrix multiplication from polynomial packings: a constructive and elementary proof of ω ≤ 9/4 (2026), arXiv:2610.28627](https://arxiv.org/abs/2610.28627)
- **Lean:** Official statement; a Lean proof already exists.

### The result

The exponent $\omega$ of matrix multiplication over $\mathbb C$ is the infimum of $\tau$ such that $n\times n$ matrices can be multiplied with $O(n^{\tau})$ arithmetic operations. OpenAI ("An upper bound of 9/4 for the matrix multiplication exponent", 2 October 2026) proved $\omega\le9/4$ with Strassen's asymptotic spectrum, without constructing the algorithms. Pass (Theorem 1.1) gives, for every $\gamma\gt0$, an explicit recursive algorithm multiplying integer $n\times n$ matrices with

$$O(n^{9/4+\gamma})\ \text{integer operations},$$

from a fixed Strassen-style identity: a $v\times v$ block product computed with $r$ block multiplications, $\log_v r$ close to $9/4$. For $B$-bit inputs, intermediate integers have $O(B+\log n)$ bits (Section 4.3). The constants are enormous.

### How the known proof works

- Start from OpenAI's three-for-one polynomial degeneration and generalize it to a same-left $(c+2)\text{-for-}c$ packing modulo a formal $\varepsilon$: $c+1$ full products and one "middle product" from $c$ multiplications, via a telescoping encoding $E_j=P_j-zP_{j+1}+\varepsilon z^bq_{j-1}$.
- Exchanging roles (transposition principle) turns full products into middle products, giving a dual packing.
- Using the primal packing in $d$ variables and the dual in $d$ more gives $(c+2)^{2d}$ outputs from $c^{2d}$ products; keeping only "balanced" outputs costs a factor at most $d+1$.
- Interpolation at points $i+\varepsilon j$ removes the same-left restriction; tensoring with two role-exchanged copies reduces all three matrix dimensions, and alternating rounds grow both polynomial lengths.
- For fixed $c$ this reaches any exponent above $\frac32\log(1+\frac{3}{c-1})/\log(1+\frac2c)$, which tends to $9/4$; Bini's interpolation removes $\varepsilon$ and block recursion gives the algorithm.

### Background

- Strassen (1969) gave $\omega\lt2.81$; laser-method refinements reached $\omega\lt2.371339$ (Alman, Duan, Vassilevska Williams, Xu, Xu, Zhou) and $\omega\lt2.371177$ (Dupont et al., 2026).
- OpenAI first proved $\omega\lt2.258$ (September 2026), then $9/4$; it also reports $\omega\lt2.371054886006746$ over every field.
- Demmel, Dumitriu, Holtz and Kleinberg (2007) gave a forward error analysis for a large class of recursive algorithms and showed that the exponent $\omega$ can be achieved by numerically stable algorithms.
- Bläser's self-contained survey (2013) gives the history of fast matrix multiplication algorithms, with tensors treated concretely.

### Where to start

- [Matrix multiplication from polynomial packings](https://arxiv.org/abs/2610.28627), Pass, 2026: Section 1.1 explains the whole construction with small cases ($c=4$).
- [An upper bound of 9/4 for the matrix multiplication exponent](https://github.com/openai/math/blob/main/preprints/Matrix-Multiplication-Nine-Fourths-October-2-2026/paper.pdf), OpenAI, 2026: the original non-constructive proof.
- [Fast matrix multiplication is stable](https://arxiv.org/abs/math/0603207), Demmel, Dumitriu, Holtz, Kleinberg, 2006: numerical stability of recursive algorithms.
- Prerequisites: bilinear algorithms and tensors, polynomial multiplication and interpolation, Strassen's recursion.

### Further references

- OpenAI, An upper bound of 9/4 for the matrix multiplication exponent (2026) <https://github.com/openai/math/blob/main/preprints/Matrix-Multiplication-Nine-Fourths-October-2-2026/paper.pdf>
- J. Alman, R. Duan, V. Vassilevska Williams, Y. Xu, Z. Xu and R. Zhou, More asymmetry yields faster matrix multiplication, SODA 2025, 2005–2039 <https://arxiv.org/abs/2404.16349>
- M. Bläser, Fast matrix multiplication, Theory Comput. Graduate Surveys 5 (2013), 1–60 <https://doi.org/10.4086/toc.gs.2013.005>

### Lean

#### Official statement

`OAI.MatrixMultiplication.complex_omega_le_nine_quarters` in [`lean/MathathonProblems/P78_MatrixMultiplication.lean`](lean/MathathonProblems/P78_MatrixMultiplication.lean).

```lean
theorem complex_omega_le_nine_quarters :
    Arithmetic.omega ℂ ≤ (9 : ℝ) / 4
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/MatrixMultiplication.lean> (adapted as described in the file header).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/LinearAlgebra/MatrixMultiplication/Main.lean>. A Lean-verified claim must not use or copy it.

#### Related Lean formalizations

- [Matrix multiplication exponent at most 9/4 over arbitrary fields](https://palomar-registry.org/entry?id=PALOMAR-2026-10-08-000005&version=1) and [over every ring](https://palomar-registry.org/entry?id=PALOMAR-2026-10-11-000007&version=1), Palomar registry (Lean-checked, trust level high): extensions of OpenAI's proof beyond ℂ.
- [LeanMMBound: the matrix multiplication exponent is below 2.3710449](https://palomar-registry.org/entry?id=PALOMAR-2026-10-07-000007&version=1), Palomar registry (Lean-checked, trust level high): a Lean proof of ω < 2.3710449 over every commutative ring.
- [qit-lmu/omega](https://github.com/qit-lmu/omega/tree/1461021e155210c53f9ca7945c5b659f3e461f8e) and [matrix-multiplication-block-identities](https://github.com/YuvalFilmus/matrix-multiplication-block-identities/tree/8e38460c2c04617692a64a826b09e8995ac8717d): two more Lean proofs of ω ≤ 9/4 over every field, by different methods.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has matrices and matrix multiplication (`Matrix`), polynomials (`Polynomial`) and tensor products (`TensorProduct`). It has no arithmetic circuits, tensor rank, border rank or exponent $\omega$; the official statement defines `Program`, `MatrixAlgorithm` and `omega` itself.
