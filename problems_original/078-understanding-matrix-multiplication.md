# Problem 78

## Problem ID

78

## Title/name of problem

Understanding Matrix Multiplication

## Short description of problem (100 words or less)

Recent constructions achieve a matrix multiplication exponent approaching 9/4, yet their asymptotic operation counts conceal enormous finite costs. A starting point could be from the polynomial packing construction in Rafael Pass's paper, by investigating how its algebraic savings become a recursive algorithm. There are several things to consider, like polynomial packing, interpolation, approximate identities conversion, etc.

## Submitted Area

Algebraic Complexity Theory, Numerical Linear Algebra

## Proposed Tracks

Computation/Applied Math

## Reference/source material

1. https://arxiv.org/abs/2610.28627 by Rafael Pass. Primary reference for the construction and its conversion into an explicit recursive algorithm.
2. https://arxiv.org/abs/math/0603207v3 by James Demmel, Ioana Dumitriu, Olga Holtz, and Robert Kleinberg. Reference for the relationship between fast multiplication and numerical stability.

## Desired outcome

An exposition of an existing fast matrix multiplication construction.
- Small, exact worked examples that reveal the construction's key ideas.
- Reproducible symbolic computations and visualizations.
- An explicit analysis of how block dimensions, coefficient sizes, and operation counts depend on the chosen exponent, clarifying the gap between asymptotic efficiency and practical computation.

Potentially a connection to numerical analysis that clarifies precision requirements too. Although the reference construction already includes an asymptotic bit-complexity analysis.

## Judge Suggestions

Suggested outcome: interactive code packages illustrating worked examples and/or analysis of finite costs.
