# Problem 132

## Problem ID

132

## Title/name of problem

An Interactive Computational Laboratory for Spatial Stochastic Processes and Scaling Limits

## Short description of problem (100 words or less)

Modern research in probability studies discrete stochastic systems—such as critical percolation, KPZ random growth models, and determinantal point processes—and their universal continuum scaling limits. However, exploring these systems computationally typically requires writing bespoke simulation code for each model and observable. How can we design a unified, mathematically rigorous web platform where researchers can configure discrete spatial processes, vary parameters and scaling regimes, and interactively inspect both individual trajectories and empirical Monte Carlo distributions of key observables (such as crossing probabilities, height fluctuations, and pair correlation functions)?

## Submitted Area

Probability, statistical mechanics, and scientific computing

## Proposed Tracks

Computation/Applied Mathematics, Analysis

## Reference/source material

1. Geoffrey Grimmett, "Percolation," 2nd ed., Grundlehren der mathematischen Wissenschaften 321, Springer (1999), Chapters 1–2 and 11; alongside M. E. J. Newman and R. M. Ziff, "Fast Monte Carlo algorithm for site or bond percolation," Physical Review E 64 (2001), 016706 (Sections II–III specify the O(N) union-find algorithm for computing crossing probabilities and cluster-size observables across all p simultaneously).

2. Ivan Corwin, "The Kardar–Parisi–Zhang Equation and Universality Class," Random Matrices: Theory and Applications 1 (2012), 1130001 (arXiv:1106.1596). Section 1.1 and Section 2 define corner growth, TASEP, and PNG droplet dynamics, the 1:2:3 KPZ scaling exponents, and limit fluctuation statistics.

3. J. Ben Hough, Manjunath Krishnapur, Yuval Peres, and Bálint Virág, "Determinantal Processes and Independence," Probability Surveys 3 (2006), 206–229 (arXiv:math/0503110). Sections 1–4 establish the spectral projection algorithm for exact sampling of determinantal point processes and define intensity and k-point correlation observables.

## Desired outcome

We would like participants to build a modular, browser-based simulation and statistical analysis platform tailored for probability researchers. The platform should support three core model families—percolation (e.g., site/bond percolation on planar lattices), random growth (e.g., TASEP, corner growth, Eden/last-passage percolation), and spatial point processes (e.g., Poisson, Ginibre, and sine-kernel determinantal processes)—with a unified workflow:

1. Model & Parameter Configuration: Users select a process, lattice/domain geometry, boundary conditions, model parameters (e.g., occupation probability p, jump rates, kernel parameters), and observation scale n (including mesoscopic and macroscopic rescalings such as KPZ n^(1/3) fluctuation scaling).

2. Dual Execution Modes:
   - Single-Realization Mode: Real-time visualization of spatial configurations, cluster geometry, interfaces, or space-time trajectories.
   - Ensemble (Monte Carlo) Mode: Batch execution of N independent realizations using efficient exact algorithms (e.g., Newman–Ziff union-find for percolation, spectral projection for DPPs).

3. Observable & Statistical Inspection: Users select functional observables—such as box-crossing probabilities, largest-cluster volume, interface height profiles, radial pair correlation functions g(r), or nearest-neighbor spacing—and inspect empirical histograms, sample moments, finite-size scaling curves, and overlays against known asymptotic distributions (e.g., Tracy–Widom, Gaussian, or Cardy's formula).
