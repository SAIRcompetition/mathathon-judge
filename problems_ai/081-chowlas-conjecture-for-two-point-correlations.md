# 81 · Chowla’s conjecture for two-point correlations

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/081-chowlas-conjecture-for-two-point-correlations.md`](../problems_original/081-chowlas-conjecture-for-two-point-correlations.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Chowla’s conjecture for two-point correlations

### Short description of problem (100 words or less)

Let \lambda(n)=(-1)^{Omega(n)}, where \Omega(n) counts prime factors with multiplicity. The estimate \sum_{n\le x}\lambda(n)=o(x) is equivalent to the famous prime number theorem. The two-point Chowla conjecture asserts that \sum_{n\le x}\lambda(n)\lambda(n+h)=o(x) for every fixed positive integer h. So the parities of the numbers of prime factors of n and n+h are asymptotically uncorrelated. These type of question, while still very difficults, serve as a simpler model for questions about correlations of primes, including the twin prime conjecture. OpenAI recently announced a proof.

### Submitted Area

Number theory

### Proposed Tracks

Number Theory/Algebra

### Reference/source material

OpenAI manuscript with claimed solution
https://github.com/openai/math/blob/main/preprints/Ordinary-two-point-correlations-of-multiplicative-functions-September-24-2026/final.pdf

Averaged variant of the conjecture was proved by Matomaki-Radziwiłł-Tao
"An averaged form of Chowla's conjecture." Algebra Number Theory 9 (2015) DOI: 10.2140/ant.2015.9.2167

Best known bound for the logarithmic variant of the conjecture:
Cédric Pilatte. "Improved bounds for the two-point logarithmic Chowla conjecture." Journal of the American Mathematical Society DOI: 10.1090/jams/1084



### Desired outcome

I would like there to be survey  explaining: outline of the proof, key ideas, new techniques and their comparison to previous works and maybe other areas of mathematics.
The goal would be to understand how agument developed instead of just seeing a sequence of true claims and share it with others in a survey note.
Another goal (but less reliable) could be to attempt (with AI assistance) to simplify the proof.

### Links in the sheet

These hyperlinks are attached to cells of this row in the sheet. They are listed here because a plain-text copy of the cells does not show them.

- Proposed Tracks: <https://www.sciencedirect.com/science/article/pii/S0167839625000214?via%3Dihub>
- Reference/source material: <https://www.sciencedirect.com/science/article/pii/S0167839625000214?via%3Dihub>
- Desired outcome: <https://www.sciencedirect.com/science/article/pii/S0167839625000214?via%3Dihub>

## AI-generated notes

<!-- status: Proved (preprint) -->

> Written by AI for the earlier problem list, where this was problem 81 (commit `1f49cd4`), and carried over unchanged.

- **Status:** Proved in an OpenAI preprint dated 24 September 2026 (released 6 October 2026), which its repository describes as produced by an internal OpenAI model; not yet refereed. Conjectured by Chowla (1965).
- **Task:** A survey of the proof: outline, key ideas, new techniques compared with earlier work; optionally a simpler proof.
- **Key reference:** [Ordinary two-point correlations of multiplicative functions](https://github.com/openai/math/blob/main/preprints/Ordinary-two-point-correlations-of-multiplicative-functions-September-24-2026/final.pdf), OpenAI, preprint, 24 September 2026.
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- The 87-page preprint has not been refereed. No numerical value of the exponent $c$ is given, and the constants need not be effective.
- OpenAI has also released a 7-page abridged [summary of the model's reasoning](https://github.com/openai/math/blob/main/reasoning_traces/ordinary-two-point-correlations.pdf) for this result.

### The result

Let $\lambda(n)=(-1)^{\Omega(n)}$, where $\Omega(n)$ counts prime factors with multiplicity. The two-point Chowla conjecture states $\sum_{n\le x}\lambda(n)\lambda(n+h)=o(x)$ for each fixed $h\ge1$. Theorem 1.1 (OpenAI): there is an absolute $c>0$ such that for all integers $a_1,a_2\ge1$, $b_1,b_2\ge0$ with $a_1b_2\ne a_2b_1$,
$$\Big|\sum_{1\le n\le X}\lambda(a_1n+b_1)\lambda(a_2n+b_2)\Big|\le C_{a_1,a_2,b_1,b_2}\,\frac{X}{(\log X)^{c}}\qquad(X\ge3).$$
Theorem 1.2 (binary corrected Elliott conjecture): $\frac1N\sum_{n\le N}f_1(n+h_1)f_2(n+h_2)\to0$ for distinct $h_1,h_2\ge0$ and multiplicative $f_1,f_2$ with $|f_i|\le1$, one of them uniformly nonpretentious: $\inf_{|t|\le N}D(f,\chi n^{it};N)\to\infty$ for every Dirichlet character $\chi$, where $D(f,g;N)^2=\sum_{p\le N}(1-\operatorname{Re}f(p)\overline{g(p)})/p$.

### How the known proof works

- Proposition 2.1 proves the same saving for $\lambda(n)\lambda(n+h)$ in every residue class; Section 9 deduces the affine forms by complete multiplicativity.
- Dilating by $d=p_1\cdots p_J$, one prime from each of $J\asymp\log\log X$ disjoint prime supplies of reciprocal mass between $W$ and $2W$, gives sums with centered factors $\mathbf 1_{p\mid n}-1/p$. Braverman's bounded-independence theorem for constant-depth circuits (Lemma 3.1) and the Matomäki–Radziwiłł–Tao short exponential-sum estimate (Lemma 4.1) control the passage to independent residues and the centering error.
- A trace bound for the resulting graph operator (Theorem 5.4; Sections 6–7 discard words with many independent congruences or singleton primes and code the rest by forests) costs $(C\sqrt W)^J$ against a mass of at least $W^J$, so a large fixed $W$ saves a power of $\log X$ (Section 8).
- Part II (Sections 10–17) proves Theorem 1.2 with a weighted divisor graph on two prime bands and a conditional cylinder sieve.

### Background

- Chowla (1965) conjectured vanishing Liouville correlations at every fixed set of shifts; Elliott (1992) extended this to bounded multiplicative functions, with a condition later corrected by Matomäki, Radziwiłł and Tao.
- Ordinary averages: $|\sum_{n\le X}\lambda(n)\lambda(n+h)|\le(1-\delta(h))X$ for large $X$ (Matomäki–Radziwiłł 2016); cancellation on average over shifts $h\le H$, any $H\to\infty$ (Matomäki–Radziwiłł–Tao 2015), and outside a set of scales of logarithmic density zero (Tao–Teräväinen 2019).
- Logarithmic averages: Tao (2016, entropy decrement); the rate $\log x/\sqrt{\log\log x}$ for $\sum_{n\le x}\lambda(n)\lambda(n+1)/n$ by divisibility-graph expansion (Helfgott–Radziwiłł 2021), then $(\log x)^{1-c_0}$ (Pilatte).

### Where to start

- [Ordinary two-point correlations of multiplicative functions](https://github.com/openai/math/blob/main/preprints/Ordinary-two-point-correlations-of-multiplicative-functions-September-24-2026/final.pdf), OpenAI, 2026: Sections 1.1–1.3 (pp. 4–6) for history, main ideas and organization, then Part I.
- [Expansion, divisibility and parity](https://arxiv.org/abs/2103.06853), H. A. Helfgott, M. Radziwiłł, 2021: the divisibility-graph expansion adapted in both parts.
- [Improved bounds for the two-point logarithmic Chowla conjecture](https://arxiv.org/abs/2310.19357), C. Pilatte, 2023: centered prime factors, prohibited sequences and a rank-truncated sieve, also adapted.

Prerequisites: multiplicative functions and pretentious distance, the Matomäki–Radziwiłł short-interval theorem, exponential sums, trace methods for graph operators.

### References, with links

- OpenAI, “Ordinary two-point correlations of multiplicative functions”, preprint, 24 September 2026 (manuscript with the claimed solution): <https://github.com/openai/math/blob/main/preprints/Ordinary-two-point-correlations-of-multiplicative-functions-September-24-2026/final.pdf>
- K. Matomäki, M. Radziwiłł, and T. Tao, “An averaged form of Chowla's conjecture”, Algebra Number Theory 9 (2015), 2167–2196 (the averaged variant): <https://doi.org/10.2140/ant.2015.9.2167>
- C. Pilatte, “Improved bounds for the two-point logarithmic Chowla conjecture”, J. Amer. Math. Soc. (2026), published electronically 10 September 2026 (best known bound for the logarithmic variant): <https://doi.org/10.1090/jams/1084>

### Further references

- K. Matomäki and M. Radziwiłł, “Multiplicative functions in short intervals”, Ann. of Math. 183 (2016), 1015–1056. <https://doi.org/10.4007/annals.2016.183.3.6>
- T. Tao, “The logarithmically averaged Chowla and Elliott conjectures for two-point correlations”, Forum Math. Pi 4 (2016), e8. <https://doi.org/10.1017/fmp.2016.6>
- T. Tao and J. Teräväinen, “The structure of correlations of multiplicative functions at almost all scales, with applications to the Chowla and Elliott conjectures”, Algebra Number Theory 13 (2019), 2103–2150. <https://doi.org/10.2140/ant.2019.13.2103>
- H. A. Helfgott and M. Radziwiłł, “Expansion, divisibility and parity” (2021). <https://arxiv.org/abs/2103.06853>
- M. Braverman, “Polylogarithmic independence fools AC⁰ circuits”, J. ACM 57 (2010), no. 5, Art. 28. <https://doi.org/10.1145/1754399.1754401>

### Lean

#### Official statement

`OAI.OrdinaryTwoPointCorrelations.liouville_log_saving` in [`lean/MathathonProblems/P81_TwoPointChowla.lean`](lean/MathathonProblems/P81_TwoPointChowla.lean).

```lean
theorem liouville_log_saving :
    ∃ c : ℝ, 0 < c ∧ ∀ a₁ a₂ b₁ b₂ : ℕ,
      0 < a₁ → 0 < a₂ → a₁ * b₂ ≠ a₂ * b₁ →
      ∃ C : ℝ, 0 < C ∧ ∀ X : ℝ, 3 ≤ X →
        ‖affineSum liouville liouville a₁ a₂ b₁ b₂ ⌊X⌋₊‖ ≤
          C * X / Real.rpow (Real.log X) c
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/OrdinaryTwoPointCorrelations.lean> (adapted as described in the file header).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/NumberTheory/TwoPointCorrelations/FinalMain.lean>. A Lean-verified claim must not use or copy it.

This statement is Theorem 1.1 of the preprint. The source file also states the binary and affine corrected Elliott conjectures, which are left out here.

#### Mathlib

Mathlib has the Liouville function `ArithmeticFunction.liouville` with `liouville_apply` ($\lambda(n)=(-1)^{\Omega(n)}$, `Mathlib/NumberTheory/ArithmeticFunction/Liouville.lean`), `ArithmeticFunction.cardFactors`, `ArithmeticFunction.moebius`, `ArithmeticFunction.IsMultiplicative`, `DirichletCharacter` and Dirichlet's theorem `Nat.forall_exists_prime_gt_and_eq_mod`, enough to state Theorem 1.1. It lacks the prime number theorem, Halász's theorem, the Matomäki–Radziwiłł short-interval estimates and the pretentious distance, which a statement of Theorem 1.2 must define.
