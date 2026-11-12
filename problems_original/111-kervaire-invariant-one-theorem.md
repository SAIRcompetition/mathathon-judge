# Problem 111

> Verbatim copy of one row of the Mathathon problem sheet. The text under each heading is the cell text, unchanged. See [README.md](README.md).

## Problem ID

111

## Title/name of problem

Kervaire invariant one theorem

## Short description of problem (100 words or less)

Formalize the Hill-Hopkins-Ravenel theorem in Lean: no smooth framed manifold of dimension greater than 126 has Kervaire invariant one. Their proof uses equivariant stable homotopy theory and a large amount of spectral sequence machinery. A related target is the Lin-Wang-Xu proof that dimension 126 does admit such manifolds. Formalizing these arguments would check the topology and computations together and build tools for other stable homotopy problems.

## Submitted Area

Algebraic topology, stable homotopy theory

## Proposed Tracks

Geometry

## Reference/source material

Hill, Hopkins and Ravenel, On the nonexistence of elements of Kervaire invariant one, Annals of Mathematics 184 (2016), 1-262.
https://annals.math.princeton.edu/2016/184-1/p01

Lin, Wang and Xu, On the Last Kervaire Invariant Problem.
https://arxiv.org/abs/2412.10879

## Desired outcome

Prove the Hill-Hopkins-Ravenel nonexistence theorem in Lean and develop the equivariant spectra and spectral sequence tools it needs. Another goal is to verify the dimension-126 existence proof, including its computational steps.
