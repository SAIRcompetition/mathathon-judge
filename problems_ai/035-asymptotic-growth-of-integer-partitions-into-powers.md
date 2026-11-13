# 35 · Asymptotic Growth of Integer Partitions into Powers

## From the proposer

- **Area:** Analytic Number Theory, Enumerative Combinatorics, Asymptotic Analysis
- **Tracks:** Combinatorics, Algebra/Number Theory

### Description

Let $P_{k,r}(n)$ denote the number of partitions of an integer $n$ into $k$-th powers, with each part appearing at most $r$ times. The generating function is

$$\prod_{j=1}^{\infty}\frac{1-q^{(r+1)j^k}}{1-q^{j^k}}.$$

The central problem is to determine how multiplicity restrictions affect the asymptotic growth of $P_{k,r}(n)$ relative to unrestricted partitions. Of particular interest are explicit asymptotic formulas, higher-order correction terms, and rigorous error bounds describing the accuracy and convergence rates of these approximations.

### Desired outcome

A rigorous derivation of the asymptotic relationship between restricted and unrestricted partitions into $k$-th powers, ideally including an explicit asymptotic formula with higher-order correction terms and effective error bounds. Of particular interest are quantitative estimates for the convergence rate, improvements in approximation accuracy, and a generalization across different powers $k$ and multiplicity restrictions $r$. A computational comparison between theoretical approximations and exact partition counts would help illustrate the results.

### References

E. M. Wright, “Asymptotic Partition Formulae. III. Partitions into k-th Powers,” Acta Mathematica, 63 (1934), 143–191.
https://doi.org/10.1007/BF02547353

K. F. Roth and G. Szekeres, “Some Asymptotic Formulae in the Theory of Partitions,” The Quarterly Journal of Mathematics, 5 (1954), 241–259.
https://doi.org/10.1093/qmath/5.1.241

Cormac O'Sullivan, “Detailed Asymptotic Expansions for Partitions into Powers,” arXiv:2205.13468 (2022; revised 2023).
https://arxiv.org/abs/2205.13468

## AI-generated notes

<!-- status: Partly solved -->

- **Status:** Wright (1934) proved a full expansion for unrestricted partitions into $k$-th powers; for multiplicity at most $r$, Li and Zhou (2024) proved the leading-order asymptotic, and no proved higher-order expansion was found in the literature.
- **Task:** An asymptotic expansion of $P_{k,r}(n)$ with effective error bounds.
- **Key reference:** [C. O'Sullivan, Detailed asymptotic expansions for partitions into powers, Int. J. Number Theory 19 (2023), 2163–2196](https://arxiv.org/abs/2205.13468)
- **Lean:** Official statement.

### The result

For unrestricted partitions ($r=\infty$), Wright (Acta Math., 1934) proved $p_k(n)=M_k(n)\big(1+\sum_{j=1}^{R-1}Q_j(k)(k a_k)^{-j}(n+h_k)^{-j/(k+1)}+O(n^{-R/(k+1)})\big)$ for every $R$, where $M_k(n)$ is an explicit main term. O'Sullivan (2023) reproved this by the saddle-point method, with exact formulas for the $Q_j(k)$. For parts $\lfloor \ell^\kappa\rfloor$ ($\kappa\gt0$ real), each used at most $m$ times, Li and Zhou (Ramanujan J., 2024) proved an asymptotic equivalence with explicit constants; for $\kappa=k$, $m=r$ it reads

$$P_{k,r}(n)\sim\frac{(\beta/n)^{\frac{2k+1}{2k+2}}}{\sqrt{2\pi(r+1)(1+\frac1k)\beta}}\thinspace e^{(k+1)\beta^{k/(k+1)}n^{1/(k+1)}},\quad \beta=\big(1-(r+1)^{-1/k}\big)c_k,$$

with $c_k=\tfrac1k\Gamma(1+\tfrac1k)\zeta(1+\tfrac1k)$. Wright's main term has $c_k$ in place of $\beta$ and the power $n^{-(3k+1)/(2k+2)}$. The theorem gives the leading term only.

### How the known proof works

- O'Sullivan writes $p_k(n)$ as a Cauchy integral of $G_k(e^{-s})e^{ns}$ over a vertical segment.
- Away from $s$ near $0$ the integrand is small; the bound uses Dirichlet approximation with major and minor arcs, following Debruyne and Tenenbaum.
- Near $0$, the Mellin transform of $\log G_k(e^{-s})$ is $\zeta(z+1)\zeta(kz)\Gamma(z)$; shifting the contour gives $\log G_k(e^{-s})=kc_k s^{-1/k}+\tfrac12\log(s/(2\pi)^k)+h_k s+O(|s|^L)$.
- The integral is taken through the saddle point $s_n=(c_k/(n+h_k))^{k/(k+1)}$ and expanded term by term; the coefficients $Q_j(k)$ come out as De Moivre polynomials, matching a formula of Wright (1935).

### Background

- Hardy and Ramanujan (1918) stated the main term for $p_k(n)$ without proof; Wright's 1934 proof uses transformation formulas for $G_k(q)$ near roots of unity.
- Later proofs of Wright's theorem: Vaughan (2015, $k=2$), Gafni (2016, circle method), Tenenbaum, Wu and Li (2019, saddle point); O'Sullivan also proves convexity and log-concavity of $p_k(n)$ for large $n$.
- Li and Zhou apply the framework of Roth and Szekeres (1954) for partitions into the terms of a general sequence, and its generalization by Liardet and Thomas, to bounded multiplicities.
- Debruyne and Tenenbaum (2020) give full asymptotic series for partitions into parts from a general set, under analytic conditions on its Dirichlet series (unrestricted multiplicity).
- For distinct squares ($k=2$, $r=1$), Murthy, Brack, Bhaduri and Bartel (Phys. Rev. E, 2018) derived three correction terms by semiclassical methods and analysed the oscillations of $P_{2,1}(n)$.

### Where to start

- [Detailed asymptotic expansions for partitions into powers](https://arxiv.org/abs/2205.13468), C. O'Sullivan, 2022: Section 2 is a self-contained saddle-point proof of Wright's expansion.
- [Partitions into Piatetski-Shapiro sequences](https://arxiv.org/abs/2104.01886), N. H. Zhou and Y.-L. Li, 2021 (published in 2024 under a new title): Theorem 1.2 and its derivation in Section 2.
- [Semiclassical analysis of distinct square partitions](https://arxiv.org/abs/1808.05146), M. V. N. Murthy, M. Brack, R. K. Bhaduri and J. Bartel, 2018: correction terms and numerical comparisons for distinct squares.

Prerequisites: Mellin transforms and the Riemann zeta function, the saddle-point method, basic generating functions for partitions.

### Further references

- Y.-L. Li and N. H. Zhou, “Partitions into Segal–Piatetski–Shapiro sequences,” The Ramanujan Journal 65 (2024), 241–261; preprint arXiv:2104.01886 (2021), “Partitions into Piatetski-Shapiro sequences”. <https://doi.org/10.1007/s11139-024-00896-5>
- G. Tenenbaum, J. Wu and Y.-L. Li, “Power partitions and saddle-point method,” Journal of Number Theory 204 (2019), 435–445. <https://arxiv.org/abs/1901.02234>
- A. Gafni, “Power partitions,” Journal of Number Theory 163 (2016), 19–42. <https://arxiv.org/abs/1506.06124>
- G. Debruyne and G. Tenenbaum, “The saddle-point method for general partition functions,” Indagationes Mathematicae 31 (2020), 728–738. <https://arxiv.org/abs/2004.05227>
- M. V. N. Murthy, M. Brack, R. K. Bhaduri and J. Bartel, “Semiclassical analysis of distinct square partitions,” Physical Review E 98 (2018), 052131. <https://arxiv.org/abs/1808.05146>

### Lean

#### Official statement

`Mathathon.P35.partitions_into_powers_asymptotic` in [`lean/MathathonProblems/P35_PartitionsIntoPowers.lean`](lean/MathathonProblems/P35_PartitionsIntoPowers.lean).

```lean
theorem partitions_into_powers_asymptotic (k r : ℕ) (hk : 1 ≤ k) (hr : 1 ≤ r) :
    (fun n : ℕ => (P k r n : ℝ)) ~[atTop] fun n : ℕ => mainTerm k r n
```

Here `P k r n` is $P_{k,r}(n)$ and `mainTerm k r n` is $\dfrac{(\beta/n)^{(2k+1)/(2k+2)}}{\sqrt{2\pi(r+1)(1+1/k)\beta}}\exp\big((k+1)\beta^{k/(k+1)}n^{1/(k+1)}\big)$ with $\beta=\big(1-(r+1)^{-1/k}\big)\frac1k\Gamma(1+\frac1k)\zeta(1+\frac1k)$: the leading-order asymptotic proved by Li and Zhou (Theorem 1.2 of arXiv:2104.01886, case $\kappa=k$, $m=r$). Only the leading term is stated; the higher-order corrections and effective error bounds that the problem asks for, and the unrestricted case $r=\infty$ (Wright), are not part of the statement.

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Mathlib

Mathlib has partitions (`Nat.Partition`), partitions with each part used fewer than $m$ times (`Nat.Partition.countRestricted`) and parts restricted to a set (`Nat.Partition.restricted`), with product formulas for their generating functions (`Nat.Partition.genFun`, `Nat.Partition.hasProd_powerSeriesMk_card_countRestricted`), plus `riemannZeta` and `Real.Gamma`. It has no asymptotic formula for any partition function and no saddle-point method.
