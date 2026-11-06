# 32 · Low-memory Nesterov acceleration

**Tracks:** Computation/Applied Math, Analysis · **Area:** Applied mathematics/convex optimization/numerical analysis

## Description

Can additional memory improve the optimal performance of first-order optimization methods? For a specified class of objectives and a fixed gradient-query budget, compare methods maintaining an iterate and one auxiliary vector with methods allowed a second auxiliary vector. The goal is to identify settings in which the latter achieve a strictly better finite-horizon minimax guarantee, or prove that the additional state cannot help. In the latter case, seek a common structural explanation across various settings. To make the comparison precise, restrict both families to linear first-order updates with predetermined scalar coefficients and specify the performance criterion.

## Desired outcome

For basic settings like convex quadratics or L-smooth convex functions, it is known that additional memory cannot improve the worst-case performance. This can be established by combining results from the literature.

A small contribution can start from experimenting new algorithms (by finding extremal methods) for other problem settings, using the BnB-PEP or AutoOPT frameworks. This can be parallelized for various interpolation conditions given plenty of computational resources. One could also try characterization of the lower bound functions for the various settings. By studying these individual cases, one can hopefully identify a common structure that makes the statement false. (This is the ultimate question, and it is not expected to be solved during the Mathathon.)

Aside from the main problem, another possible direction could be to investigate why momentum acceleration works for more practical non-convex settings. One can also work on the continuous-time analysis (based on Su-Boyd-Candes result), or connection to classical physics by interpreting the states (x, p) in the phase space (i.e. presymplectic discretization) depending on their interests.

## References

- Primary reference: A. d’Aspremont, D. Scieur, and A. Taylor, “Acceleration methods,” Foundations and Trends in Optimization 5.1–2 (2021): 1–245, Chapter 4 (Nesterov acceleration).
- Methodology: S. Das Gupta, B. P. G. Van Parys, and E. K. Ryu, “Branch-and-bound performance estimation programming: a unified methodology for constructing optimal optimization methods,” Mathematical Programming 204.1 (2024): 567–639.

## Official Lean statement

This problem has no official Lean statement: it asks for a comparison of optimization methods in a setting the team specifies, not for the proof of one theorem.
