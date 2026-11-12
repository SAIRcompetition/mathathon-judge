# Problem 68

## Problem ID

68

## Title/name of problem

Non-parametric Bernstein von-Mises theorems

## Short description of problem (100 words or less)

The Bernstein von-Mises theorem states that the posterior mean centred at the ground truth is a Gaussian distribution, under suitable assumptions. Several proofs of this theorem exist in infinite dimensional settings with slightly different hypotheses. Each proof is incredibly long (50 pages) and involves many tedious optimisations of constants. The goal of this project is to unify and simplify these existing proofs in literature to provide a definitive reference BvM theorem for statisticians and formalise it in lean.

## Submitted Area

Non-parametric Bayesian statistics

## Proposed Tracks

Analysis

## Reference/source material

This problem was proposed jointly by my PhD supervisor Richard Nickl
[1] BvM for parabolic PDE setting https://arxiv.org/abs/2407.14781
[2]  BvM for white noise model https://projecteuclid.org/journals/annals-of-statistics/volume-42/issue-5/On-the-Bernsteinvon-Mises-phenomenon-for-nonparametric-Bayes-procedures/10.1214/14-AOS1246.full
[3] Chapter 12 in Ghosal, S. and van der Vaart, A. W. (2017). Fundamentals of Nonparametric Bayesian Inference. Cambridge University Press.

## Desired outcome

A Bernstein-von Mises theorem whose hypotheses are more general that all of the non-parametric Bernstein-von Mises theorems appearing in literature. Either a new proof that unifies these statements, or the existing proof structure with all constants optimised in each of the cases covered by the hypotheses. 
A formalisation of the above theorem +proof in lean.
