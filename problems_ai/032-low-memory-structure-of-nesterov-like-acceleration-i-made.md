# 32 · Low-memory structure of Nesterov-like acceleration (I made this title)

## From the proposer

- **Area:** Applied mathematics/convex optimization/numerical analysis
- **Tracks:** Computation/Applied Math, Analysis

### Description

Can additional memory improve the optimal performance of first-order optimization methods? For a specified class of objectives and a fixed gradient-query budget, compare methods maintaining an iterate and one auxiliary vector with methods allowed a second auxiliary vector. The goal is to identify settings in which the latter achieve a strictly better finite-horizon minimax guarantee, or prove that the additional state cannot help. In the latter case, seek a common structural explanation across various settings. To make the comparison precise, restrict both families to linear first-order updates with predetermined scalar coefficients and specify the performance criterion.

### Desired outcome

For basic settings like convex quadratics or L-smooth convex functions, it is known that additional memory cannot improve the worst-case performance. The participant will figure this out by combining literatures.

A small contribution can start from experimenting new algorithms (by finding extremal methods) for other problem settings, using the BnB-PEP or our AutoOPT framework. This can be parallelized for various interpolation conditions given plenty computational resources. One could also try characterization of the lower bound functions for the various settings. By studying these individual cases, one can hopefully identify a common structure that makes the statement false. (This is the ultimate question, but I don't expect this solved in Mathathon)

Aside from the main problem, another possible direction could be to investigate why momentum acceleration works for more practical non-convex settings. One can also work on the continuous-time analysis (based on Su-Boyd-Candes result), or connection to classical physics by interpreting the states (x, p) in the phase space (i.e. presymplectic discretization) depending on their interests.

### References

primary reference
d’Aspremont, Alexandre, Damien Scieur, and Adrien Taylor. "Acceleration methods." Foundations and trends in optimization 5.1-2 (2021): 1-245., Chapter 4. Nesterov Acceleration

methodology related
Das Gupta, Shuvomoy, Bart PG Van Parys, and Ernest K. Ryu. "Branch-and-bound performance estimation programming: a unified methodology for constructing optimal optimization methods." Mathematical Programming 204.1 (2024): 567-639.

## AI-generated notes

<!-- status: Open -->

- **Status:** Open in general; for convex quadratics and $L$-smooth convex functions the exactly optimal methods are known and keep only one auxiliary vector.
- **Task:** Settings where a second auxiliary vector strictly helps, or proof it cannot.
- **Key reference:** [A. d'Aspremont, D. Scieur and A. Taylor, *Acceleration Methods*, Found. Trends Optim. 5 (2021), 1–245](https://arxiv.org/abs/2101.09545)
- **Lean:** No official statement.

### Notes

- The question is not yet one precise statement: the function class, the performance criterion and the two method families have to be fixed first, as the Description says.
- For $L$-smooth convex functions and the criterion below, OGM keeps one auxiliary vector and already matches Drori's lower bound for all black-box methods, so a second vector cannot help there. Grimmer, Jo and Park (arXiv:2609.07671, 2026, not yet refereed) further prove that OGM is the unique optimal fixed-step method for this criterion.

### The result

A fixed-step first-order method computes $y_{k+1}=y_k-\sum_{i\le k}h_{k+1,i}\nabla f(y_i)$ with coefficients chosen in advance; the question is whether the minimax value over a function class changes when the update may store only the iterate and one auxiliary vector, rather than two. On $L$-smooth convex functions with criterion $(f(y_N)-f_\star)/\Vert y_0-x_\star\Vert^2$, the best full-history method is the optimized gradient method (OGM, Kim–Fessler 2016), with worst case $L/(2\theta_{N,N}^2)$. Drori (2017) proved that no black-box method does better in dimension $d\ge N+1$. OGM has the two-sequence form

$$x_{k+1}=y_k-\tfrac1L\nabla f(y_k),\qquad y_{k+1}=x_{k+1}+\tfrac{\theta_{k,N}-1}{\theta_{k+1,N}}(x_{k+1}-x_k)+\tfrac{\theta_{k,N}}{\theta_{k+1,N}}(x_{k+1}-y_k).$$

For quadratics with spectrum in $[\mu,L]$, the Chebyshev method, a two-term recurrence, attains Nemirovsky's lower bound.

### Background

- Performance estimation: Drori–Teboulle (Math. Program. 2014) turned the worst case of a fixed-step method into an optimization problem; Taylor–Hendrickx–Glineur (Math. Program. 2017) gave exact interpolation conditions; Kim–Fessler optimized the coefficients and found OGM.
- Strongly convex case: the information-theoretic exact method ITEM (Taylor–Drori) is optimal for $\Vert z_N-x_\star\Vert^2/\Vert x_0-x_\star\Vert^2$ and is written with two sequences; its limit is the triple momentum method, as the heavy-ball method is the limit of Chebyshev's method.
- Numerical design: BnB-PEP computes globally optimal fixed-step methods, also for nonconvex classes. The AutoOPT pipeline built on it (Kim–Ryu–Das Gupta, arXiv:2608.07407) found "lemniscate acceleration" for gradient-norm minimization and an analytic form of ITEM-f. Kamri–Hendrickx–Glineur (arXiv:2507.20773) tune memoryless and full-history methods numerically.
- Grimmer–Jo–Park also prove uniqueness of OGM-G and of the lemniscate method for two gradient-norm criteria. Continuous-time models of acceleration are in §4.8 of the monograph.

### Where to start

- [Acceleration Methods](https://arxiv.org/abs/2101.09545), A. d'Aspremont, D. Scieur, A. Taylor, 2021: §2.3 (Chebyshev method and lower bound), §4.3 (OGM, its two forms, Drori's bound) and §4.6 (ITEM).
- [Branch-and-bound performance estimation programming](https://arxiv.org/abs/2203.07305), S. Das Gupta, B. Van Parys, E. Ryu, 2022: how optimal fixed-step methods are computed for a given class and criterion.
- [On minimax optimality and uniqueness of fixed-step first-order methods for smooth convex optimization](https://arxiv.org/abs/2609.07671), B. Grimmer, S. Jo, C. Park, 2026: algebraic lower-bound and uniqueness arguments, closest to the structural question.

Prerequisites: smooth and strongly convex functions, Lagrangian and semidefinite duality, Chebyshev polynomials, basic numerical optimization.

### References, with links

- Primary reference: A. d’Aspremont, D. Scieur, and A. Taylor, “Acceleration methods,” Foundations and Trends in Optimization 5.1–2 (2021): 1–245, Chapter 4 (Nesterov acceleration). <https://doi.org/10.1561/2400000036>
- Methodology: S. Das Gupta, B. P. G. Van Parys, and E. K. Ryu, “Branch-and-bound performance estimation programming: a unified methodology for constructing optimal optimization methods,” Mathematical Programming 204.1 (2024): 567–639. <https://doi.org/10.1007/s10107-023-01973-1>

### Further references

- D. Kim and J. A. Fessler, "Optimized first-order methods for smooth convex minimization," Math. Program. 159(1) (2016), 81–107. <https://arxiv.org/abs/1406.5468>
- Y. Drori, "The exact information-based complexity of smooth convex minimization," J. Complexity 39 (2017), 1–16. <https://arxiv.org/abs/1606.01424>
- B. Grimmer, S. Jo, and C. Park, "On minimax optimality and uniqueness of fixed-step first-order methods for smooth convex optimization," arXiv:2609.07671 (2026). <https://arxiv.org/abs/2609.07671>
- H. Kim, E. K. Ryu, and S. Das Gupta, "A domain-specific harness for end-to-end automation of optimization research," arXiv:2608.07407 (2026). <https://arxiv.org/abs/2608.07407>
- Y. Drori and M. Teboulle, "Performance of first-order methods for smooth convex minimization: a novel approach," Math. Program. 145 (2014), 451–482. <https://doi.org/10.1007/s10107-013-0653-0>

### Lean

#### Official statement

This problem has no official Lean statement: it asks whether a second auxiliary vector can improve the minimax guarantee of fixed-step first-order methods in settings (function class, performance criterion) that the team is to specify, so there is no single statement to formalize.

#### Mathlib

Mathlib has `ConvexOn`, `StrongConvexOn`, `gradient`, `LipschitzWith`, `Matrix.PosSemidef`, and Chebyshev polynomials with extremal properties (`Polynomial.Chebyshev.T`, `Polynomial.Chebyshev.leadingCoeff_le_of_forall_abs_le_one`). It has no first-order methods, performance estimation problems or convergence-rate theorems for gradient schemes.
