# Problem 120

> Verbatim copy of one row of the Mathathon problem sheet. The text under each heading is the cell text, unchanged. See [README.md](README.md).

## Problem ID

120

## Title/name of problem

Characterizations and identities for probability distributions

## Short description of problem (100 words or less)

Formalize results that characterize probability distributions or identify the laws of interesting random variables. Two possible targets are Marcinkiewicz's theorem, which says a polynomial characteristic exponent forces a Gaussian or a point mass, and Dufresne's identity, which gives an inverse-gamma law for an integral of geometric Brownian motion. Other directions could include stable distributions, gamma characterizations, Polya-Gamma mixture identities, or distinct densities with the same moments. The idea is to pick a concrete theorem and check its proof and assumptions in Lean.

## Submitted Area

Probability theory, statistics, stochastic processes

## Proposed Tracks

Analysis

## Reference/source material

Quantitative Marcinkiewicz's theorem and central limit theorems: applications to spin systems and point processes: https://arxiv.org/abs/2107.08469

Perpetual integral functionals as hitting and occupation times (includes Dufresne's identity): https://arxiv.org/abs/math/0403069

A direct approach to the stable distributions: https://arxiv.org/abs/1604.07350

## Desired outcome

A Lean proof of one or more of these results, ideally Marcinkiewicz's theorem or Dufresne's identity. Include the concrete distribution formula or characterization and its hypotheses, and build reusable tools for related examples.
