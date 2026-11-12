# 11 · Mazur's Collatz Paper

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/011-mazurs-collatz-paper.md`](../problems_original/011-mazurs-collatz-paper.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Mazur's Collatz Paper

### Short description of problem (100 words or less)

Recently, Mazur (using ChatGPT) proved that a positive proportion of positive integers iterate to 1 under the Collatz map, massively improving upon Tao's result. However, the paper is AI-generated and terribly written, so it would be valuable to understand this paper and perhaps rewrite it to be more conceptual.

### Submitted Area

Number theory, Probability theory

### Proposed Tracks

Algebra/Number Theory, Analysis

### Reference/source material

Mazur's paper:
https://www.proofatlas.ai/papers/positive-density-log-time-collatz/Mazur_Explicit_Positive_Density_Collatz_Convergence_in_Logarithmic_Time_v2.pdf

Tao's Collatz paper, which Mazur builds on:
https://www.cambridge.org/core/journals/forum-of-mathematics-pi/article/almost-all-orbits-of-the-collatz-map-attain-almost-bounded-values/1008CC2DF91AF87F66D190C5E01C907F

### Desired outcome

A human-readable paper which explains the ideas behind this new breakthrough. Preferably, a new way to phrase this argument which is more conceptually nice.

## AI-generated notes

<!-- status: Proved (preprint) -->

> Written by AI for the earlier problem list, where this was problem 11 ([`problems/11-mazurs-collatz-paper.md`](../problems/11-mazurs-collatz-paper.md)), and carried over unchanged.

- **Status:** Proved by L. Mazur in a 2026 preprint posted on ProofAtlas (version 2.1); not yet refereed.
- **Task:** A human-readable, more conceptual account of Mazur's positive-density argument.
- **Key reference:** [L. Mazur, "Explicit positive-density Collatz convergence in logarithmic time", version 2.1 (2026)](https://www.proofatlas.ai/papers/positive-density-log-time-collatz/Mazur_Explicit_Positive_Density_Collatz_Convergence_in_Logarithmic_Time_v2.pdf)
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- The author is Lech Mazur. The paper (version 2.1, September 2026) is a preprint and has not been refereed.
- The paper says its result and Tao's are different conclusions: Tao's covers almost all $N$ (logarithmic density) but only reaches values below any $f(N)\to\infty$; Mazur's reaches 1, on a set of positive lower density.

### The result

Let $T(n)=n/2$ for even $n$, $T(n)=3n+1$ for odd $n$, and $\tau(n)$ the number of steps to reach 1. Theorem 1.1: there are an explicit rational $c>0$ and integer $X_0$ such that for every $X\ge X_0$
$$\#\{1\le n<X:\ \tau(n)\le \tfrac{523}{50}\log n\}\ \ge\ cX .$$
So the integers reaching 1 within $10.46\log n$ steps have positive lower natural density. The constants are given by finite formulas; $c$ is tiny and $X_0$ enormous.

### How the known proof works

- Inverse Syracuse histories: a valuation word $w$ gives an affine map back from an odd endpoint, with weight $3^d2^{-A(w)}$.
- Finite ternary mixing: the laws of a random affine recursion on $\mathbb Z/3^q\mathbb Z$ are close to lifts of coarser ones, a finite form of Tao's Proposition 1.14.
- Histories with first-crossing constraints on partial valuation sums give masses with summable variation, uniform in the seed; averaging over residues picks one seed $M$ with $S(M)=1$ and positive limit mass.
- The residue weight is removed and the mass is converted into a count of distinct integers in $[X,32X)$.
- A bound on the whole valuation history converts odd steps into Collatz time, giving $523/50$.

### Background

- Tao (Forum Math. Pi 2022): for any $f\to\infty$, almost every $N$ in logarithmic density has an orbit value below $f(N)$; his 3-adic mixing estimate is the input above.
- Krasikov and Lagarias (Acta Arith. 2003): at least $X^{0.84}$ integers up to $X$ reach 1.
- Mazur's earlier ProofAtlas preprints (2026) give $X^{0.90}$ bounds for predecessor sets and a natural-density version of Tao's theorem in logarithmic time; the paper cites them for comparison.

### Where to start

- [Explicit positive-density Collatz convergence in logarithmic time](https://www.proofatlas.ai/papers/positive-density-log-time-collatz/Mazur_Explicit_Positive_Density_Collatz_Convergence_in_Logarithmic_Time_v2.pdf), L. Mazur, 2026: the 13-page paper to be explained.
- [Almost all orbits of the Collatz map attain almost bounded values](https://arxiv.org/abs/1909.03562), T. Tao, 2019: Sections 1.2–1.4 introduce the Syracuse random variables and the mixing Proposition 1.14.

Prerequisites: the Syracuse map and 2-adic valuations, probability on $\mathbb Z/3^q\mathbb Z$, natural and logarithmic density.

### Further references

- T. Tao, "Almost all orbits of the Collatz map attain almost bounded values", Forum Math. Pi 10 (2022), e12. <https://arxiv.org/abs/1909.03562>
- I. Krasikov and J. C. Lagarias, "Bounds for the 3x+1 problem using difference inequalities", Acta Arith. 109 (2003), 237–258. <https://doi.org/10.4064/aa109-3-4>

### Lean

#### Official statement

`CollatzPositiveDensity.exists_positive_density` in [`lean/MathathonProblems/P11_CollatzPositiveDensity.lean`](lean/MathathonProblems/P11_CollatzPositiveDensity.lean).

```lean
theorem exists_positive_density :
    ∃ c : ℝ, 0 < c ∧ ∃ X₀ : ℕ, ∀ X : ℕ, X₀ ≤ X →
      c * X ≤ (countBelow (523 / 50) X : ℝ)
```

Source: <https://www.proofatlas.ai/sources/positive-density-log-time-collatz/commits/830b9d3f38f2a8da8cd921bf6a9310dd69336fd0/CollatzPositiveDensity.lean> (adapted as described in the file header).

A Lean proof of this statement already exists: <https://www.proofatlas.ai/sources/positive-density-log-time-collatz/commits/830b9d3f38f2a8da8cd921bf6a9310dd69336fd0/>. A Lean-verified claim must not use or copy it.

#### Related Lean formalizations

- [Positive density of Collatz convergence at every rate above 3/log(4/3)](https://palomar-registry.org/entry?id=PALOMAR-2026-09-23-000002&version=1), Palomar registry (Lean-checked, trust level high): a positive lower density of integers that reach 1 within c log x steps, for every c > 3/log(4/3) ≈ 10.43 (the official statement uses c = 523/50 = 10.46).
- [CollatzPosDens](https://palomar-registry.org/entry?id=PALOMAR-2026-10-15-000013&version=1), Palomar registry (Lean-checked, trust level high): an explicit positive lower density of odd starting values that reach a given target, from a different paper (*Explicit positive lower density for the Collatz Conjecture*).
- [Tao Theorem 1.3: almost all Collatz orbits attain almost bounded values](https://prove2.me/theorems/8469bda5-b114-46bd-9a75-5a504e93b336), Prove2Me: a Lean statement of Tao's theorem (open, not proved there).
- [AxiomMath/CollatzPositiveDensity](https://github.com/AxiomMath/CollatzPositiveDensity/tree/c2e1f71e5ac8f54292d633cda70d23853c4e2c42): the Lean project behind the CollatzPosDens entry above.
- [tao-collatz](https://github.com/gotrevor/tao-collatz/tree/95a7172bb253c849404ab1c687602e0ce6b5469a): a Lean proof of Tao's theorem that almost all Collatz orbits attain almost bounded values.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `Nat.iterate` (notation `f^[n]`), `Nat.count`, `Real.log`, `padicValNat` and `ZMod`, enough for the statement. It has no Collatz or Syracuse map.
