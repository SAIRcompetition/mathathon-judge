# 85 · Different Effective Equation with shared Brownian Limit

## From the proposer

- **Area:** Probability, Stochastic Differential Equations, and Dynamical Systems.
- **Tracks:** Analysis

### Description

Two microscopic random walks can converge to Brownian motions with identical covariance while producing different limiting equations when used as driving signals. Their iterated integrals retain an area correction invisible to ordinary path convergence. So a contribution could be a complete reproducible passage from transition probabilities to the effective equation (reconstructing it for a finite-state Markov model and its time reversal).

### Desired outcome

A worked proof and reproducible demonstration showing exactly where microscopic temporal asymmetry survives the limit. For example, use a stationary 3-state Markov chain with simple designed increments, and compare it with its time reversal. Or on piecewise-linear walks, calculate the limiting covariance and antisymmetric area correction exactly.

### References

1. https://arxiv.org/abs/1709.04288 by Olga Lopusanschi and Damien Simon. Sections 1 and 2 establish enhanced convergence and identify the area correction.
2. https://doi.org/10.3934/cpaa.2026046 by Maximilian Engel, Peter Friz, Tal Orenshtein. They have a nice discrete-time discussion.
3. https://www.hairer.org/notes/RoughPaths.pdf by Peter Friz and Martin Hairer. Chapter 8 treats Ito-Lyons map's continuity and explains how enhanced driving signals determine solution limits.

## AI-generated notes

<!-- status: Not a single theorem -->

- **Status:** An exposition task; the underlying theorem (hidden Markov walks converge in rough-path topology to Brownian motion with an area anomaly) is proved and refereed (Lopusanschi–Simon, Bernoulli 2020); Engel–Friz–Orenshtein (CPAA 2026) give Green–Kubo formulas for the limit.
- **Task:** A worked, reproducible derivation of covariance, area correction and limit equation for a finite-state Markov walk and its time reversal.
- **Key reference:** [O. Lopusanschi, D. Simon, “Area anomaly in the rough path Brownian scaling limit of hidden Markov walks”, Bernoulli 26(4) (2020), 3111–3138](https://arxiv.org/abs/1709.04288)
- **Lean:** No official statement.

### Notes

- With straight-line interpolation the area anomaly comes only from correlations between steps and vanishes when the hidden chain is reversible (Lopusanschi–Simon, remark after (45b)); a nonzero example needs a non-reversible chain.
- The correction enters the limit equation only through Lie brackets of the vector fields; for commuting fields all walks with the same covariance give the same limit.

### The result

Let $X_n=\sum_{k<n}\xi(k)\in\mathbb R^d$, let $X^N$ interpolate $t\mapsto N^{-1/2}X_{Nt}$ linearly, and $\mathbb X^N_{s,t}=\int_s^t(X^N_r-X^N_s)\otimes dX^N_r$. A Brownian rough path with covariance $\Sigma$ and area correction $A\in\mathfrak{so}(d)$ is $(B,\mathbb B^{\rm Strat}+tA)$.

Theorem 1.1 (Lopusanschi–Simon): if the steps are driven by a hidden Markov chain $(R_n)$ (irreducible, positive recurrent; return time and steps with moments of all orders; steps conditionally independent given $(R_n)$, with law depending only on $R_n$, centred under the invariant law), then $(X^N,\mathbb X^N)$ converges in law in $C^{0,\alpha}$, $\alpha\in(\frac13,\frac12)$, to a Brownian rough path $(B,\mathbb B^{\rm Strat}+t\Gamma)$, where $\Gamma$ is the mean area swept per excursion of $(R_n)$ divided by the mean excursion length.

For stationary steps with summable correlations $\Delta(n)=\mathbb E[\xi(0)\otimes\xi(n)]$, if the lifts converge, then (Engel–Friz–Orenshtein, Theorem 2)
$$\Sigma=\Delta(0)+2\,\mathrm{Sym}\sum_{n\ge1}\Delta(n),\qquad A=\mathrm{Anti}\sum_{n\ge1}\Delta(n).$$
The time-reversed sequence has correlations $\Delta(n)^{\top}$: same $\Sigma$, area correction $-A$.

Example (Lopusanschi–Simon §1.3): $X_n=\sum_{k<n}e^{2\pi ik/L}U_k$ in $\mathbb C\cong\mathbb R^2$ ($L\ge3$, $U_k$ i.i.d. real, hidden chain $n\bmod L$) has $\Sigma=\tfrac12\operatorname{Var}(U)\,I$ and $|\Gamma^{12}|=\frac{\cos(\pi/L)}{4\sin(\pi/L)}(\mathbb EU)^2$.

By continuity of the Itô–Lyons map, solutions of $dY^N=f(Y^N)\,dX^N$ (columns $f_\beta\in C^3_b$) converge to the solution of
$$dY=f(Y)\circ dB+\textstyle\sum_{\beta,\gamma}A^{\beta\gamma}(Df_\gamma\,f_\beta)(Y)\,dt$$
(Kelly–Melbourne, Theorem 9.1; index order as in Gottwald–Melbourne, (2.3)).

### How the known proof works

- Proposition 2.1, Property 2.1: cut the hidden chain at its returns to a state $r_0$; the excursion increments in the step-2 group $G^2(V)$ are i.i.d., with first-level covariance $\Sigma\,\mathbb E T_1$ and second-level mean $\Gamma\,\mathbb E T_1$.
- Theorem 2.1, Lemmas 2.1–2.2, Propositions 2.2–2.3: the Breuillard–Friz–Huesmann rough-path Donsker theorem on the excursion time scale, then renewal estimates back to the original time scale and tightness. §2.3, (45a)–(45b): $\Sigma$ and $\Gamma$ from the invariant law and the pair occupation measure of an excursion.

### Background

- Piecewise-linear approximations give Stratonovich equations (Wong–Zakai); McShane gave the first two-dimensional counterexamples; i.i.d. steps give $A=0$ (Breuillard–Friz–Huesmann 2009).
- Other sources of $A\ne0$: Brownian motion in a magnetic field as the mass tends to 0 (Friz–Gassiat–Lyons 2015), Markov chains on periodic graphs (Lopusanschi–Simon 2018), additive functionals of non-reversible Markov processes (Deuschel–Orenshtein–Perkowski 2021), fast–slow systems (Kelly–Melbourne 2016). Time-reversibility of the fast dynamics forces $A=0$ only in a few classified cases (Gottwald–Melbourne 2024).

### Where to start

- [Area anomaly in the rough path Brownian scaling limit of hidden Markov walks](https://arxiv.org/abs/1709.04288), O. Lopusanschi, D. Simon, 2017: §§1.2–1.3 for statements and examples, §2.2 for the proof.
- [Nonlinear effects within invariance principles](https://arxiv.org/abs/2402.13748), M. Engel, P. K. Friz, T. Orenshtein, 2024: §2.1 (Theorems 1–2) obtains $\Sigma$ and $A$ from second moments.
- [A Course on Rough Paths](https://www.hairer.org/notes/RoughPaths.pdf), P. K. Friz, M. Hairer, 2020: §§3.3–3.6 (area corrections, random walks), §8.6 (continuity of the Itô–Lyons map), §9.1.

Prerequisites: finite Markov chains (invariant law, return times, time reversal), Brownian motion and Itô/Stratonovich integrals, level-2 rough paths.

### References, with links

- O. Lopusanschi and D. Simon, “Area anomaly in the rough path Brownian scaling limit of hidden Markov walks,” Bernoulli 26(4) (2020), 3111–3138. Sections 1–2. <https://arxiv.org/abs/1709.04288>
- M. Engel, P. K. Friz, and T. Orenshtein, “Nonlinear effects within invariance principles,” Communications on Pure and Applied Analysis 33 (2026), 101–115; arXiv:2402.13748. Discrete-time formulas in §2.1. <https://doi.org/10.3934/cpaa.2026046>
- P. K. Friz and M. Hairer, *A Course on Rough Paths, with an Introduction to Regularity Structures*, 2nd ed., Universitext, Springer (2020). Chapter 8: continuity of the Itô–Lyons map. <https://www.hairer.org/notes/RoughPaths.pdf>

### Further references

- E. Breuillard, P. Friz, M. Huesmann, “From random walks to rough paths,” Proc. Amer. Math. Soc. 137(10) (2009), 3487–3496. <https://arxiv.org/abs/0810.2681>
- P. Friz, P. Gassiat, T. Lyons, “Physical Brownian motion in a magnetic field as a rough path,” Trans. Amer. Math. Soc. 367(11) (2015), 7939–7955. <https://doi.org/10.1090/S0002-9947-2015-06272-2>
- O. Lopusanschi, D. Simon, “Lévy area with a drift as a renormalization limit of Markov chains on periodic graphs,” Stochastic Process. Appl. 128(7) (2018), 2404–2426. <https://arxiv.org/abs/1604.08947>
- J.-D. Deuschel, T. Orenshtein, N. Perkowski, “Additive functionals as rough paths,” Ann. Probab. 49(3) (2021), 1450–1479. <https://arxiv.org/abs/1912.09819>
- D. Kelly, I. Melbourne, “Smooth approximation of stochastic differential equations,” Ann. Probab. 44(1) (2016), 479–520. <https://arxiv.org/abs/1403.7281>
- G. A. Gottwald, I. Melbourne, “Time-reversibility and nonvanishing Lévy area,” Nonlinearity 37(7) (2024), 075018. <https://arxiv.org/abs/2210.11867>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for a worked, reproducible derivation for finite-state Markov walks, and the theorem behind it (convergence of the walk and its iterated integrals to a Brownian rough path with an area correction, Lopusanschi–Simon Theorem 1.1) needs $\mathbb R^d$-valued Brownian motion, its Stratonovich lift and convergence in law in a rough-path topology, which Mathlib does not have and which cannot be defined faithfully within a statement file.

#### Mathlib

Mathlib has real-valued Brownian motion (`ProbabilityTheory.IsBrownianReal`), Gaussian processes (`ProbabilityTheory.IsGaussianProcess`), Markov kernels with Ionescu-Tulcea trajectories (`ProbabilityTheory.Kernel.traj`) and irreducibility (`ProbabilityTheory.Kernel.IsIrreducible`), the real i.i.d. central limit theorem (`ProbabilityTheory.tendstoInDistribution_inv_sqrt_mul_sum`), `HolderWith` and `TensorAlgebra`. It has no $\mathbb R^d$-valued Brownian motion, no Itô or Stratonovich integral, no functional central limit theorem, and no rough paths or rough differential equations.
