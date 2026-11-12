# 52 · Inviscid limit for 1-d compressible MHD

## From the proposer

- **Area:** fluid dynamics, PDE, compressible fluids
- **Tracks:** Computation/Applied Math, Analysis

### Description

For hyperbolic systems in 1-D, we know the inviscid limit holds for small data, for general systems, and recent work by my team member Geng Chen has shown that the inviscid limit holds for the Navier-Stokes to Euler in the isentropic case. These two proofs are not obviously compatible. Can we understand the intersection of the two proofs to show the inviscid limit for LARGE data solutions to general systems including the 7x7 MHD system?

### Desired outcome

Can the Chen-Kang-Vasseur theory handle MHD?

### References

https://annals.math.princeton.edu/2005/161-1/p06
https://arxiv.org/abs/2401.09305

## AI-generated notes

<!-- status: Open -->

- **Status:** Open; the inviscid limit is known for small-BV data with artificial viscosity for strictly hyperbolic systems (Bianchini–Bressan, 2005) and for barotropic Navier–Stokes (Chen–Kang–Vasseur, 2024 preprint, not yet refereed).
- **Task:** Whether the Chen–Kang–Vasseur theory extends to the 1D MHD system.
- **Key reference:** [G. Chen, M.-J. Kang and A. F. Vasseur, *From Navier–Stokes to BV solutions of the barotropic Euler equations*, arXiv:2401.09305 (2024)](https://arxiv.org/abs/2401.09305)
- **Lean:** No official statement.

### Notes

- Both results on the page concern small-BV data. Chen–Kang–Vasseur (three authors; the Description credits Geng Chen alone) prove convergence to small-BV solutions of barotropic Euler, not to large-data solutions.
- Bianchini–Bressan use the artificial viscosity $\varepsilon u_{xx}$ and assume strict hyperbolicity. Ideal MHD is not strictly hyperbolic (eigenvalues coincide when $B_n=0$ or $B_t=0$), and its fast and slow fields are neither linearly degenerate nor genuinely nonlinear, so neither result covers MHD as stated.
- Overlap with #51: both use the Kang–Vasseur relative-entropy method with shifts.

### The result

Bianchini and Bressan (Ann. of Math. 161, 2005): for a strictly hyperbolic $n\times n$ system $u_t+A(u)u_x=0$ with small-BV data, the solutions of $u_t+A(u)u_x=\varepsilon u_{xx}$ have BV bounds uniform in $\varepsilon$ and converge to a unique limit, the entropy solution when $A=Df$. Chen, Kang and Vasseur prove the analogue with physical viscosity for the 1D barotropic system
$$\rho_t+(\rho u)_x=0,\qquad(\rho u)_t+(\rho u^2)_x+p(\rho)_x=\nu\,(\bar\mu(\rho)u_x)_x,\qquad p(\rho)=\rho^\gamma,$$
with $\gamma>1$ and $\bar\mu(\rho)$ comparable to $1+\rho^\alpha$, $\gamma-1\le\alpha\le\gamma$. For small-BV Euler data, Navier–Stokes solutions converge in $L^q_{\rm loc}$ to the BV Euler solution, which is stable among all inviscid limits with locally bounded energy (Theorems 2.1–2.2). The proposer asks whether this extends to large data and to 1D compressible MHD.

### Background

- The obstacle for physical viscosity is the lack of BV bounds uniform in $\nu$. Chen–Perepelitsa (Comm. Pure Appl. Math. 2010) obtained vanishing-viscosity limits for energy-bounded data by compensated compactness, without identifying them with BV solutions.
- Chen–Kang–Vasseur (§4) work in Lagrangian variables with the effective velocity $h=u-\nu\,\bar\mu_L(v)v^{-1}v_x$ (Bresch–Desjardins), which puts the diffusion on $v$, and combine modified front tracking, weighted relative entropy with shifts uniform in $\nu$, and compensated compactness.
- The a-contraction method also covers extremal shocks of general systems, $2\times2$ systems, and Riemann problems for full Euler and Navier–Stokes–Fourier (review: Vasseur, Quart. Appl. Math. 2023).
- 1D ideal MHD has seven wave families (fast, Alfvén, slow pairs and the entropy wave), intermediate shocks and non-unique Riemann solutions (Takahashi–Yamada, arXiv:1210.5584).

### Where to start

- [From Navier–Stokes to BV solutions of the barotropic Euler equations](https://arxiv.org/abs/2401.09305), G. Chen, M.-J. Kang, A. F. Vasseur, 2024: §§3–4 (pp. 7–16) give the method and proof plan.
- [Vanishing viscosity solutions of nonlinear hyperbolic systems](https://annals.math.princeton.edu/2005/161-1/p06), S. Bianchini, A. Bressan, 2005: the result for general strictly hyperbolic systems.
- [Regular and non-regular solutions of the Riemann problem in ideal MHD](https://arxiv.org/abs/1210.5584), K. Takahashi, S. Yamada, 2012: §§2–3 give the MHD eigenvalues and degeneracies.

Prerequisites: 1D conservation laws (Riemann problem, Lax shocks, front tracking), compressible Navier–Stokes in Lagrangian coordinates, relative entropy, compensated compactness, planar MHD.

### Further references

- G.-Q. Chen and M. Perepelitsa, "Vanishing viscosity limit of the Navier–Stokes equations to the Euler equations for compressible fluid flow," Comm. Pure Appl. Math. 63(11) (2010), 1469–1504. <https://doi.org/10.1002/cpa.20332>
- A. F. Vasseur, "A review of recent applications of the relative entropy method to discontinuous solutions of conservation laws," Quart. Appl. Math. 81(3) (2023), 553–565. <https://doi.org/10.1090/qam/1667>
- K. Takahashi and S. Yamada, "Regular and non-regular solutions of the Riemann problem in ideal magnetohydrodynamics," arXiv:1210.5584 (2012). <https://arxiv.org/abs/1210.5584>
- G. Chen, S. G. Krupa, and A. F. Vasseur, "Uniqueness and weak-BV stability for 2×2 conservation laws," Arch. Ration. Mech. Anal. 246(1) (2022), 299–332. <https://arxiv.org/abs/2010.04761>

### Lean

#### Official statement

This problem has no official Lean statement: it asks whether the Chen–Kang–Vasseur method extends to large data and to 1D compressible MHD, an open question with no precisely formulated target theorem (ideal MHD is not strictly hyperbolic, and no solution class for large data is specified), and Mathlib has no compressible Navier–Stokes, Euler or MHD equations.

#### Mathlib

Mathlib has functions of bounded variation (`BoundedVariationOn`, `eVariationOn`), `MemLp`, Fréchet derivatives and the ODE existence theorem (`IsPicardLindelof`). It has no compressible Navier–Stokes, Euler or MHD equations, entropy solutions, front tracking or compensated compactness.
