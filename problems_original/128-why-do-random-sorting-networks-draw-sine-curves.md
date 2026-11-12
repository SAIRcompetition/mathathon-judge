# Problem 128

> Verbatim copy of one row of the Mathathon problem sheet. The text under each heading is the cell text, unchanged. See [README.md](README.md).

## Problem ID

128

## Title/name of problem

Why Do Random Sorting Networks Draw Sine Curves?

## Short description of problem (100 words or less)

Start with the numbers 1 through n in order, and choose uniformly at random among all shortest sequences of adjacent swaps that reverse their order. Track one randomly chosen number, scaling positions to [-1, 1] and time to [0, 1]. Dauvergne proved that its trajectory converges to a random sine curve by analyzing how particles cross candidate trajectories. Can we find a more direct proof by tracking a simpler quantity: how far apart the labels in each early swap were at the start?

## Submitted Area

Probability, algebraic combinatorics

## Proposed Tracks

Computation/Applied Mathematics

## Reference/source material

1. Duncan Dauvergne, "The Archimedean Limit of Random Sorting Networks," Journal of the American Mathematical Society 35 (2022), 1215–1267 (arXiv:1802.08934). Sections 1.1 and 1.2 state the trajectory theorem, and Section 1.6 outlines the proof.

2. Mustazee Rahman, Bálint Virág, and Máté Vizer, "Geometry of Permutation Limits," Annals of Probability 47 (2019), 1398–1419 (arXiv:1609.03891). Theorem 2 and Corollary 2.1 reduce the trajectory limit to a sharp short-time bound on mean-square displacement.

3. Omer Angel, Alexander Holroyd, Dan Romik, and Bálint Virág, "Random Sorting Networks," Advances in Mathematics 215 (2007), 839–868 (arXiv:math/0609538). Theorem 1 establishes time stationarity, and Section 4 describes the bijection with staircase standard Young tableaux.

## Desired outcome

We would like participants to develop a direct proof (or partial milestones toward one) of the short-time displacement bound that implies the sine-curve limit.

The starting point is a finite identity: whenever two labels swap, the sum of squared displacements of all labels from their starting positions increases by twice the gap between the swapped labels. Thus, it suffices to bound the expected sum of label gaps in the first m swaps, for n << m << n^2.

Participants can aim to create:
1. A combinatorial characterization (via the Edelman–Greene correspondence on staircase Young tableaux) of when two specified labels cross within the first m swaps, tested against exact counts for small m and n.
2. Bounds on expected label gaps showing which particles interact early.
3. The sharp bound of (pi^2 / 3) * (m^2 / n) on the expected sum of the first m label gaps, yielding an alternative proof of the sine-curve limit.
