# Problem 20

> Verbatim copy of one row of the Mathathon problem sheet. The text under each heading is the cell text, unchanged. See [README.md](README.md).

## Problem ID

20

## Title/name of problem

Hoeffding's D Statistic

## Short description of problem (100 words or less)

In 1948 Hoeffding published his paper "A non-parametric test of independence" in which he defines a statistic ('D') and provides some examples of its computation. However, I have personally found the development of the statistic from this paper to be more than a bit confusing, and, given that it is frequently used in applied fields (especially biostatistics) I imagine there are many others who do not have a good intuitive understanding of what it measures. Furthermore, the null distribution of the D statistic is not well understood for all sample sizes (Hoeffding's paper provides explicit descriptions for n = 5,6,7 and an asymptotic description as n -> infinity, but this is not always applicable to researchers working with moderate data sets, such as those with 8 to 50 samples).

## Submitted Area

Nonparametric statistics, biostatistics

## Proposed Tracks

Computation/Applied Math, Analysis

## Reference/source material

https://www.jstor.org/stable/2236021?seq=1 (Hoeffding's original paper)
https://academic.oup.com/bib/article/15/6/906/176706 (an example of the usage of this method in biostatistics/gene expression)

## Desired outcome

An intuitive or more accessible description of the statistic, which could include a visualization of what the statistic measures/detects. A computation of the null distribution for 7 < n < infinity. Generalizations or improved connections/comparisons to other correlation metrics would also be useful.
