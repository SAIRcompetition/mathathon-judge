# 31 · Tollmien–Schlichting instabilities

> Everything on this page except the section **From the proposer** is AI-generated and may contain errors.

## From the proposer

- **Title:** Quantitative Onset and Nonlinear Evolution of Tollmien–Schlichting Instabilities in Navier–Stokes Flows
- **Area:** Partial Differential Equations, Mathematical Fluid Dynamics, Hydrodynamic Stability, Spectral Theory, and Nonlinear Analysis
- **Tracks:** Computation/Applied Math, Analysis

### Description

This project investigates whether analytical methods from Navier–Stokes regularity theory can quantitatively characterize the onset and nonlinear evolution of Tollmien–Schlichting instabilities in viscous shear flows. Using the Orr–Sommerfeld equation, spectral analysis, and perturbative energy estimates, participants will study Reynolds-number-dependent instability thresholds, disturbance growth rates, and nonlinear interactions. The project aims to connect rigorous PDE stability and instability estimates with the early stages of boundary-layer transition, distinguishing the onset of unstable modes from the development of sustained turbulence.

### Desired outcome

Participants will derive the perturbation equations for a selected laminar flow and establish or reproduce nonlinear energy estimates that quantify how stability depends on Reynolds number and perturbation amplitude. The project aims to obtain a rigorous stability bound, investigate transient growth, and compare theoretical thresholds with known transition behavior. A final report will explain the analytical methods, assumptions, and limitations of the resulting predictions.

### References

- <https://doi.org/10.1090/memo/1294>
- <http://dx.doi.org/10.1016/j.aim.2016.01.007>
- DOI. 10.1137/22M1505773

## AI-generated notes

- **Status:** Linear Tollmien–Schlichting instability is proved (Grenier–Guo–Nguyen, 2016); its nonlinear saturation is conjectured but not proved (Bian–Grenier, 2024).
- **Task:** Perturbation equations and rigorous Reynolds-dependent stability bounds for one laminar flow.
- **Key reference:** [E. Grenier, Y. Guo and T. T. Nguyen, *Spectral instability of general symmetric shear flows in a two-dimensional channel*, Adv. Math. 292 (2016), 52–110](https://arxiv.org/abs/1402.1395)
- **Lean:** No official statement.

### Notes

- Reference 1 concerns plane Couette flow, which is spectrally stable at every Reynolds number and has no Tollmien–Schlichting waves. Its threshold result is driven by non-normal transient growth (the lift-up effect), not by unstable modes.
- The references are hydrodynamic stability results (spectral instability, nonlinear thresholds), not regularity theory in the sense of global existence of smooth solutions.

### The result

Tollmien–Schlichting waves are the unstable normal modes of the linearized Navier–Stokes equations about a shear flow $U(z)$ at large Reynolds number $R$, studied since about 1930; they occur even when $U$ is stable for Euler, so the instability is due to viscosity. For a stream function $\psi=\phi(z)e^{i\alpha(y-ct)}$, $\phi$ solves the Orr–Sommerfeld equation
$$\frac{1}{i\alpha R}\,(\partial_z^2-\alpha^2)^2\phi=(U-c)(\partial_z^2-\alpha^2)\phi-U''\phi.$$
Grenier, Guo and Nguyen prove that every analytic channel profile symmetric about the centreline, with $U'(0)>0$ at the wall (e.g. plane Poiseuille flow), has, for $R\ge R_c$ and $\alpha$ between marginal curves $\alpha_{\rm low}\approx R^{-1/7}$ and $\alpha_{\rm up}\approx R^{-1/11}$, an unstable mode with growth rate $\alpha\operatorname{Im}c\approx(\alpha R)^{-1/2}$. The proposer asks for perturbation equations, energy estimates in $R$ and amplitude, and a comparison with observed transition.

### Background

- The formal theory goes back to Heisenberg, C. C. Lin and Tollmien. Grenier–Guo–Nguyen avoid matched asymptotics by bounding Green functions of the Rayleigh and Airy operators in the critical layer; a companion paper treats boundary layers (Duke Math. J. 2016).
- Bian–Grenier (SIAM J. Math. Anal. 2024): for exponential and Blasius boundary layers the cubic interactions tame the instability; they conjecture saturation at amplitude $O(\nu^{1/4})$, unproved. Bian–Grenier–Haragus (arXiv:2501.02202) prove, under a spectral assumption, a Hopf bifurcation near the upper marginal curve.
- Bedrossian–Germain–Masmoudi (Mem. AMS 2020): 3D Couette perturbations of size $\epsilon\le c_0\mathrm{Re}^{-1}$ return to Couette flow, despite transient growth from $O(\mathrm{Re}^{-1})$ to $O(c_0)$.
- Subcritical ("by-pass") transition and the threshold exponent $\gamma$ in $\epsilon\sim\nu^\gamma$ are surveyed in their introduction, following Trefethen et al. (Science 1993) on non-normal growth.

### Where to start

- [Stability of the Couette flow at high Reynolds number in 2D and 3D](https://arxiv.org/abs/1712.02855), J. Bedrossian, P. Germain, N. Masmoudi, 2017: review aimed largely at applied mathematicians; thresholds, lift-up, enhanced dissipation.
- [Spectral instability of symmetric shear flows in a two-dimensional channel](https://arxiv.org/abs/1402.1395), E. Grenier, Y. Guo, T. Nguyen, 2014: §1 derives the Orr–Sommerfeld problem and states the theorem.
- [Onset of nonlinear instabilities in monotonic viscous boundary layers](https://arxiv.org/abs/2206.01318), D. Bian, E. Grenier, 2022: the quadratic and cubic corrections to a Tollmien–Schlichting mode.

Prerequisites: linearized Navier–Stokes equations, the Orr–Sommerfeld equation, energy estimates, spectral theory of non-self-adjoint operators.

### References, with links

- <https://doi.org/10.1090/memo/1294>
- <http://dx.doi.org/10.1016/j.aim.2016.01.007>
- <https://doi.org/10.1137/22M1505773>

### Further references

- E. Grenier, Y. Guo, and T. T. Nguyen, "Spectral instability of characteristic boundary layer flows," Duke Math. J. 165(16) (2016), 3085–3146. <https://arxiv.org/abs/1406.3862>
- J. Bedrossian, P. Germain, and N. Masmoudi, "Stability of the Couette flow at high Reynolds numbers in two dimensions and three dimensions," Bull. Amer. Math. Soc. 56(3) (2019), 373–414. <https://doi.org/10.1090/bull/1649>
- D. Bian, E. Grenier, and M. Haragus, "Bifurcations of viscous shear flows in a strip," arXiv:2501.02202 (2025). <https://arxiv.org/abs/2501.02202>
- L. N. Trefethen, A. E. Trefethen, S. C. Reddy, and T. A. Driscoll, "Hydrodynamic stability without eigenvalues," Science 261(5121) (1993), 578–584. <https://doi.org/10.1126/science.261.5121.578>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for quantitative stability estimates, not for the proof of one theorem.

#### Mathlib

Mathlib has ODE existence and uniqueness (`IsPicardLindelof`), Grönwall inequalities, the Fourier transform and `Laplacian.laplacian`, which cover simple energy estimates for ODE models. It has no Orr–Sommerfeld or Airy operators, no Navier–Stokes stability theory, and no spectral theory of non-self-adjoint differential operators.
