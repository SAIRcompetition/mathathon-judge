# 20 · Hoeffding's D statistic

**Tracks:** Computation/Applied Math, Analysis · **Area:** Nonparametric statistics, biostatistics

## Description

In 1948 Hoeffding published his paper "A non-parametric test of independence" in which he defines a statistic ('D') and provides some examples of its computation. However, the development of the statistic in this paper is hard to follow, and since the statistic is frequently used in applied fields (especially biostatistics), many of its users may lack a good intuitive understanding of what it measures. Furthermore, the null distribution of the D statistic is not well understood for all sample sizes (Hoeffding's paper provides explicit descriptions for n = 5,6,7 and an asymptotic description as n -> infinity, but this is not always applicable to researchers working with moderate data sets, such as those with 8 to 50 samples).

## Desired outcome

An intuitive or more accessible description of the statistic, which could include a visualization of what the statistic measures/detects. A computation of the null distribution for 7 < n < infinity. Generalizations or improved connections/comparisons to other correlation metrics would also be useful.

## References

- Hoeffding's original paper: <https://www.jstor.org/stable/2236021>
- An example of the method used in biostatistics (gene expression): <https://academic.oup.com/bib/article/15/6/906/176706>

## Official Lean statement

This problem has no official Lean statement: it asks for an explanation of the D statistic and of its null distribution, not for the proof of one theorem.
