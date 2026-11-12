# 49 · Tight Dimension Dependence for Convex Bandits

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/049-tight-dimension-dependence-for-convex-bandits.md`](../problems_original/049-tight-dimension-dependence-for-convex-bandits.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Tight Dimension Dependence for Convex Bandits

### Short description of problem (100 words or less)

The current state of art in the convex bandit problem, where a learner is tasked with optimising an unseen convex function with zero-order and noisy evaluations, is a regret bound of O(d^{2.5}\sqrt{n}), with d the dimension and n the number of data points. More recently, a lower bound of \Omega(d^{4/3}\sqrt{n}) was shown. Little is known on how this gap could be closed.

### Submitted Area

Online learning and optimisation

### Proposed Tracks

Computation/Applied Math, Analysis

### Reference/source material

https://arxiv.org/pdf/2607.18652 https://arxiv.org/pdf/2402.06535  https://arxiv.org/pdf/2406.06506

### Desired outcome

any tightening of the upper or lower bound would be helpful. 

## AI-generated notes

<!-- status: Open -->

> Written by AI for the earlier problem list, where this was problem 49 (commit `1f49cd4`), and carried over unchanged.

- **Status:** Open; in the stochastic setting the best bounds are $\Omega(d^{4/3}\sqrt n)$ (Rajaraman–Han, 2026 preprint, not yet refereed) and $\tilde O(d^{3/2}\sqrt n)$.
- **Task:** Any improvement of the upper or lower regret bound.
- **Key reference:** [N. Rajaraman and Y. Han, The price of hidden curvature: improved lower bounds for bandit convex optimization (2026), arXiv:2607.18652](https://arxiv.org/abs/2607.18652)
- **Lean:** No official statement.

### Notes

- The page compares bounds from two settings. $O(d^{2.5}\sqrt n)$ is the best known bound for the adversarial problem, and it is non-constructive (the best polynomial-time bound is $\tilde O(d^{3.5}\sqrt n)$). The lower bound $\Omega(d^{4/3}\sqrt n)$ is proved for the stochastic problem, where the best known upper bound is $\tilde O(d^{1.5}\sqrt n)$. In the stochastic setting the gap is therefore $d^{4/3}$ versus $d^{3/2}$.

### The result

A learner chooses $a_t$ in a convex body (here the unit ball $\mathbb B^d$) for $n$ rounds and observes only a noisy value $f(a_t)+\text{noise}$ of an unknown convex 1-Lipschitz $f$ (stochastic setting), or of losses chosen by an adversary. The minimax regret is $\inf\sup\mathbb E\sum_t(f(a_t)-\min f)$. Rajaraman and Han prove that for $d\ge C$, $n\ge Cd^2$
$$\mathfrak R^\star_n(d;\mathbb B^d)\ \ge\ c\cdot\begin{cases}\sqrt d\,n^{3/4}, & d^2\lesssim n\lesssim d^{10/3},\\ d^{4/3}\sqrt n, & n\gtrsim d^{10/3},\end{cases}$$
the first lower bound above the $d\sqrt n$ of linear bandits. Upper bounds: $\tilde O(d^{1.5}\sqrt n)$ stochastic (Lattimore–György 2023; Fokkema et al. 2024); $\tilde O(d^{2.5}\sqrt n)$ adversarial, information-theoretic (Lattimore 2020). They conjecture $\tilde\Theta(d^{3/2}\sqrt n\wedge\sqrt d\,n^{3/4}\wedge n)$.

### Background

- Flaxman, Kalai and McMahan (2005) gave $O(\sqrt d\,n^{3/4})$, which the new lower bound shows is optimal for $d^2\lesssim n\lesssim d^{10/3}$.
- Bubeck, Eldan and Lee (2017; JACM 2021) gave the first polynomial-time algorithm with $\mathrm{poly}(d)\sqrt n$ regret ($d^{9.5}$); Lattimore (2020) reduced the non-constructive adversarial bound to $d^{2.5}$.
- Lattimore and György reduced the stochastic dimension dependence to $d^{1.5}$ (COLT 2023, unconstrained); Fokkema et al. (2024) gave an online Newton method with $d^{3.5}\sqrt n$ adversarial regret.
- Bakhtiari, Lattimore and Szepesvári (2025) show that a naive application of the information-ratio method cannot give better than $\tilde O(d^{1.5}\sqrt n)$ (Lattimore's book, Note 8.v).
- The hard instances of Rajaraman–Han hide the curvature of a quadratic inside a "tube" that the learner must locate first.

### Where to start

- [Bandit convex optimisation](https://arxiv.org/abs/2402.06535), Lattimore, 2024–2025: book covering the main tools; Chapter 14 lists open problems.
- [The price of hidden curvature](https://arxiv.org/abs/2607.18652), Rajaraman and Han, 2026: Sections 1–2 explain the lower-bound construction.
- [Online Newton method for bandit convex optimisation](https://arxiv.org/abs/2406.06506), Fokkema, van der Hoeven, Lattimore and Mayo, 2024: the best polynomial-time adversarial bound.
- Prerequisites: convex analysis, information-theoretic lower bounds, exponential weights and online Newton step.

### Further references

- T. Lattimore, Improved regret for zeroth-order adversarial bandit convex optimisation, Math. Stat. Learn. 2 (2019), no. 3–4, 311–334 (arXiv 2020) <https://arxiv.org/abs/2006.00475>
- T. Lattimore and A. György, A second-order method for stochastic bandit convex optimisation, COLT 2023 <https://arxiv.org/abs/2302.05371>
- S. Bubeck, R. Eldan and Y. T. Lee, Kernel-based methods for bandit convex optimization, J. ACM 68 (2021) <https://arxiv.org/abs/1607.03084>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for improved regret bounds, while the optimal bound is unknown, not for the proof of one theorem.

#### Mathlib

Mathlib has convex functions (`ConvexOn`), Lipschitz maps (`LipschitzWith`), Euclidean balls and probability theory (measures, kernels, expectations). It has no bandit or regret framework.
