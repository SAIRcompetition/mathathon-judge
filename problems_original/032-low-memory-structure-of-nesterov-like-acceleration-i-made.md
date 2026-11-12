# Problem 32

## Problem ID

32

## Title/name of problem

Low-memory structure of Nesterov-like acceleration  (I made this title)

## Short description of problem (100 words or less)

Can additional memory improve the optimal performance of first-order optimization methods? For a specified class of objectives and a fixed gradient-query budget, compare methods maintaining an iterate and one auxiliary vector with methods allowed a second auxiliary vector. The goal is to identify settings in which the latter achieve a strictly better finite-horizon minimax guarantee, or prove that the additional state cannot help. In the latter case, seek a common structural explanation across various settings. To make the comparison precise, restrict both families to linear first-order updates with predetermined scalar coefficients and specify the performance criterion.

## Submitted Area

Applied mathematics/convex optimization/numerical analysis

## Proposed Tracks

Computation/Applied Math, Analysis

## Reference/source material

primary reference
d’Aspremont, Alexandre, Damien Scieur, and Adrien Taylor. "Acceleration methods." Foundations and trends in optimization 5.1-2 (2021): 1-245., Chapter 4. Nesterov Acceleration

methodology related
Das Gupta, Shuvomoy, Bart PG Van Parys, and Ernest K. Ryu. "Branch-and-bound performance estimation programming: a unified methodology for constructing optimal optimization methods: S. Das Gupta et al." Mathematical Programming 204.1 (2024): 567-639.

## Desired outcome

For basic settings like convex quadratics or L-smooth convex functions, it is known that additional memory cannot improve the worst-case performance. The participant will figure this out by combining literatures.

A small contribution can start from experimenting new algorithms (by finding extremal methods) for other problem settings, using the BnB-PEP or our AutoOPT framework. This can be parallelized for various interpolation conditions given plenty computational resources. One could also try characterization of the lower bound functions for the various settings. By studying these individual cases, one can hopefully identify a common structure that makes the statement false. (This is the ultimate question, but I don't expect this solved in Mathathon)

Aside from the main problem, another possible direction could be to investigate why momentum acceleration works for more practical non-convex settings. One can also work on the continuous-time analysis (based on Su-Boyd-Candes result), or connection to classical physics by interpreting the states (x, p) in the phase space (i.e. presymplectic discretization) depending on their interests.
