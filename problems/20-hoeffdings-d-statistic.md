# 20 · Hoeffding's D statistic

- **Status:** Hoeffding's D (1948) is a standard rank test of independence; for moderate $n$ its null law is usually approximated.
- **Task:** An intuitive account of D; its null distribution for $n\ge8$.
- **Tracks:** Computation/Applied Math, Analysis · **Area:** Nonparametric statistics, biostatistics
- **Key reference:** [C. Even-Zohar, "independence: Fast Rank Tests" (2020)](https://arxiv.org/abs/2010.09712)
- **Lean:** No official statement.

## Description

In 1948 Hoeffding published his paper "A non-parametric test of independence" in which he defines a statistic ('D') and provides some examples of its computation. However, the development of the statistic in this paper is hard to follow, and since the statistic is frequently used in applied fields (especially biostatistics), many of its users may lack a good intuitive understanding of what it measures. Furthermore, the null distribution of the D statistic is not well understood for all sample sizes (Hoeffding's paper provides explicit descriptions for n = 5,6,7 and an asymptotic description as n -> infinity, but this is not always applicable to researchers working with moderate data sets, such as those with 8 to 50 samples).

## Desired outcome

An intuitive or more accessible description of the statistic, which could include a visualization of what the statistic measures/detects. A computation of the null distribution for 7 < n < infinity. Generalizations or improved connections/comparisons to other correlation metrics would also be useful.

## The result

For $(X,Y)$ with continuous marginals and joint distribution function $F$, Hoeffding's coefficient is
$$D=\int \big(F(x,y)-F_X(x)F_Y(y)\big)^2\,dF(x,y),$$
which is 0 under independence, positive for every dependent law with a density (Hoeffding 1948, Theorem 3.1), and at most $1/30$. The statistic $D_n$ is the U-statistic estimator of $D$ with a five-point kernel. It depends only on the rank permutation $\pi$ and is a fixed combination of the counts of 24 five-point patterns in $\pi$. Under independence $\pi$ is uniform, so the null law of $D_n$ depends only on $n$; $nD_n$ converges to $\sum_{j,k}\frac{1}{\pi^4j^2k^2}(Z_{jk}^2-1)$, $Z_{jk}$ independent standard Gaussians. The proposer wants intuition, exact null laws for moderate $n$, and comparisons.

## Background

- $D_n$ is computable in $O(n\log n)$ time from the counts $a_i,b_i,c_i,d_i$ of points in the four quadrants around each point (a $2\times2$ table); Blum, Kiefer and Rosenblatt (1961) proposed the closely related $n^{-5}\sum_i(a_id_i-b_ic_i)^2$.
- $D$ can miss dependence without a density: Yanagimoto (1970) gave a dependent law with $D=0$. Integrating against $dF_X\,dF_Y$ instead of $dF$ (Blum–Kiefer–Rosenblatt), or Bergsma–Dassios $\tau^*$, gives tests consistent against all alternatives.
- Weihs, Drton and Meinshausen (2018) put Kendall's $\tau$, $D$ and $\tau^*$ in one family of "symmetric rank covariances".
- In software, SAS refers to the Hollander–Wolfe tables for $n<10$ and otherwise uses the asymptotic law; the R package NSM3 offers Monte Carlo null distributions.

## Where to start

- [independence: Fast Rank Tests](https://arxiv.org/abs/2010.09712), C. Even-Zohar, 2020: a short modern account of Hoeffding's derivation, the pattern formula and the variants.
- [A Non-Parametric Test of Independence](https://doi.org/10.1214/aoms/1177730150), W. Hoeffding, 1948: the original paper.
- [Patterns in Random Permutations](https://arxiv.org/abs/1811.07883), C. Even-Zohar, 2018: the asymptotic joint law of pattern counts in a uniform random permutation.

Prerequisites: ranks and empirical distribution functions, U-statistics, permutation patterns, hypothesis testing.

## References

- Hoeffding's original paper: <https://www.jstor.org/stable/2236021>
- An example of the method used in biostatistics (gene expression): <https://academic.oup.com/bib/article/15/6/906/176706>

Further references:

- W. Hoeffding, "A non-parametric test of independence", Ann. Math. Statist. 19 (1948), 546–557. <https://doi.org/10.1214/aoms/1177730150>
- J. R. Blum, J. Kiefer and M. Rosenblatt, "Distribution free tests of independence based on the sample distribution function", Ann. Math. Statist. 32 (1961), 485–498. <https://doi.org/10.1214/aoms/1177705055>
- W. Bergsma and A. Dassios, "A consistent test of independence based on a sign covariance related to Kendall's tau", Bernoulli 20 (2014), 1006–1028. <https://doi.org/10.3150/13-BEJ514>
- L. Weihs, M. Drton and N. Meinshausen, "Symmetric rank covariances: a generalized framework for nonparametric measures of dependence", Biometrika 105 (2018), 547–562. <https://arxiv.org/abs/1708.05653>
- C. Even-Zohar, "Patterns in random permutations", Combinatorica 40 (2020), 775–804. <https://arxiv.org/abs/1811.07883>

## Lean

### Official statement

This problem has no official Lean statement: it asks for an explanation of the D statistic and of its null distribution, not for the proof of one theorem.

### Mathlib

Mathlib has `Equiv.Perm`, `ProbabilityTheory.cdf` and `ProbabilityTheory.IndepFun`. It has no rank statistics, U-statistics or permutation pattern counts.

---

*Description and Desired outcome are the proposer's text. The other sections were written by the organizers from the literature.*
