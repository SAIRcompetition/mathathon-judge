# 69 · Nonparametric Bernstein–von Mises

**Tracks:** Analysis · **Area:** Non-parametric Bayesian statistics

## Description

The Bernstein von-Mises theorem states that the posterior mean centred at the ground truth is a Gaussian distribution, under suitable assumptions. Several proofs of this theorem exist in infinite dimensional settings with slightly different hypotheses. Each proof is incredibly long (50 pages) and involves many tedious optimisations of constants. The goal of this project is to unify and simplify these existing proofs in literature to provide a definitive reference BvM theorem for statisticians and formalise it in lean.

## Desired outcome

- A Bernstein–von Mises theorem whose hypotheses are more general than all of the non-parametric Bernstein–von Mises theorems in the literature: either a new proof that unifies these statements, or the existing proof structure with all constants optimised in each of the cases covered by the hypotheses.
- A formalisation of this theorem and its proof in Lean.

## References

- BvM for the parabolic PDE setting: <https://arxiv.org/abs/2407.14781>
- BvM for the white noise model: <https://projecteuclid.org/journals/annals-of-statistics/volume-42/issue-5/On-the-Bernsteinvon-Mises-phenomenon-for-nonparametric-Bayes-procedures/10.1214/14-AOS1246.full>
- S. Ghosal and A. W. van der Vaart, *Fundamentals of Nonparametric Bayesian Inference*, Cambridge University Press (2017), Chapter 12.

## Official Lean statement

This problem has no official Lean statement: a faithful statement needs the nonparametric statistical models of Bernstein–von Mises theorems, which Mathlib does not have yet.
