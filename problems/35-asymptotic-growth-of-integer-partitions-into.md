# 35 · Asymptotic Growth of Integer Partitions into Powers

**Tracks:** Combinatorics, Algebra/Number Theory · **Area:** Analytic Number Theory, Enumerative Combinatorics, Asymptotic Analysis

## Description

Let $P_{k,r}(n)$ denote the number of partitions of an integer $n$ into $k$-th powers, with each part appearing at most \(r\) times. The generating function is

$$
\prod_{j=1}^{\infty}\frac{1-q^{(r+1)j^k}}{1-q^{j^k}}.
$$

The central problem is to determine how multiplicity restrictions affect the asymptotic growth of $P_{k,r}(n)$ relative to unrestricted partitions. Of particular interest are explicit asymptotic formulas, higher-order correction terms, and rigorous error bounds describing the accuracy and convergence rates of these approximations.

## Desired outcome

A rigorous derivation of the asymptotic relationship between restricted and unrestricted partitions into $k$-th powers, ideally including an explicit asymptotic formula with higher-order correction terms and effective error bounds. Of particular interest are quantitative estimates for the convergence rate, improvements in approximation accuracy, and a generalization across different powers $k$ and multiplicity restrictions $r$. A computational comparison between theoretical approximations and exact partition counts would help illustrate the results.

## References

- E. M. Wright, “Asymptotic Partition Formulae. III. Partitions into k-th Powers,” Acta Mathematica, 63 (1934), 143–191. <https://doi.org/10.1007/BF02547353>
- K. F. Roth and G. Szekeres, “Some Asymptotic Formulae in the Theory of Partitions,” The Quarterly Journal of Mathematics, 5 (1954), 241–259. <https://doi.org/10.1093/qmath/5.1.241>
- Cormac O'Sullivan, “Detailed Asymptotic Expansions for Partitions into Powers,” arXiv:2205.13468 (2022; revised 2023). <https://arxiv.org/abs/2205.13468>

## Official Lean statement

This problem has no official Lean statement.
