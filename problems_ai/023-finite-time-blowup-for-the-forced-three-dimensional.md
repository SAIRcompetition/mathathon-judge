# 23 · Finite-time blowup for the forced three-dimensional incompressible Navier–Stokes equations

## From the proposer

- **Area:** Analysis of PDEs (primary); fluid dynamics; mathematical formalization in Lean 4
- **Tracks:** Analysis, Computation/Applied Math

### Description

In September 2026 OpenAI reported a proof that for every positive viscosity there exist smooth initial data and smooth forcing for which the 3D incompressible Navier–Stokes equations have no global smooth solution. The AI-authored write-up is long and its Lean 4 formalization checks the result without explaining it. The open question is the mechanism: what the forcing does and how the construction sits beside the forced blow-up constructions of Córdoba and Martínez-Zoroa, the Caffarelli–Kohn–Nirenberg partial regularity theory, the Escauriaza–Seregin–Šverák criterion, and Tao's averaged equation.

### Desired outcome

A human-readable account of the blowup construction that identifies the mechanism and the role of the forcing, ties each step to the Lean declaration that proves it, and situates the result against the partial regularity theory and earlier forced blow-up constructions, together with its physical relevance for fluid dynamics.

### References

(1) OpenAI, NavierStokesAndEuler: Lean 4 formalization of finite-time blowup for the forced Navier–Stokes equations on ℝ³ and the periodic torus, https://github.com/openai/NavierStokesAndEuler (2026). (2) D. Córdoba, L. Martínez-Zoroa and F. Zheng, "Finite time blow-up for the hypodissipative Navier Stokes equations with a force in L<sup>1</sup><sub>t</sub>C<sup>1,ε</sup><sub>x</sub> ∩ L<sup>∞</sup><sub>t</sub>L<sup>2</sup><sub>x</sub>", arXiv:2407.06776 (2024). (3) L. Caffarelli, R. Kohn and L. Nirenberg, "Partial regularity of suitable weak solutions of the Navier–Stokes equations", Comm. Pure Appl. Math. 35 (1982), 771–831.

## AI-generated notes

<!-- status: Proved (preprint) -->

- **Status:** Proved by OpenAI in a paper released in September 2026; the paper is not yet refereed.
- **Task:** A readable account of the mechanism and the role of the forcing.
- **Key reference:** [OpenAI, *Finite time blowup for Navier–Stokes* (2026), 166 pp.](https://cdn.openai.com/pdf/32d9f210-8b73-45e0-91bc-82a30aef8a9a/navier-stokes.pdf)
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- Expositions already exist: Z. Lei and X. Ren, Part I (arXiv:2609.35406, the profiles; it adds a new linear model for the inner core) and Part II (arXiv:2611.06869, the pulses; it claims no original mathematical contribution).

### The result

Theorem 1.1: for every $\nu\gt0$ there exist a force $f\in C_c^\infty(\mathbb R^3\times(0,\infty);\mathbb R^3)$, a compact set $K$, and smooth $u,p$ on $\mathbb R^3\times[0,1)$ with

$$\partial_t u+(u\cdot\nabla)u-\nu\Delta u+\nabla p=f,\qquad \nabla\cdot u=0,\qquad u(\cdot,0)=0,$$

supports in $K$, $\sup_{t\lt1}\Vert u(t)\Vert_{L^2}\lt\infty$ and $\limsup_{t\uparrow1}\Vert u(t)\Vert_{L^\infty}=\infty$. So no global smooth solution with bounded energy exists: alternative (C) of Fefferman's Clay statement, and by compact support alternative (D) on $\mathbb T^3$ (Corollary 10.6).

### How the known proof works

- Leading field (§4, App. A–B): an axisymmetric, asymptotically self-similar vortex core of radius $\asymp\tau^{1/2}$, height $\asymp\tau^{1/2-h}$ and swirl $\asymp\tau^{-1/2-h}$ ($\tau=1-t$, $0\lt h\lt1/100$), joined to an exact "heat exterior".
- Background stress (§§4–5, App. C): the residual is the divergence of an annular stress $T$ lying in the cone spanned by the fluxes of two wave families.
- Pulses (§§6–7): ring-shaped oscillations, seeded by an exponentially small force and amplified by the shear, on ever finer scales; their averaged quadratic momentum flux cancels $T$.
- Corrections (§§8–9): a cycle of wave, mean-flow and radial-moment corrections makes the residual flat at the singular point.
- Completion (§10): cut-offs, the force defined as the residual and shown smooth through $t=1$, the energy bound ($h\lt1/6$), uniqueness. Most of the length is in §§4–9 (pp. 24–116).

### Background

- Caffarelli–Kohn–Nirenberg (1982) allow isolated singular points; here the only singularity is the origin at $t=1$. Escauriaza–Seregin–Šverák (2003) proved regularity for the unforced problem when $u\in L^\infty_tL^3_x$. Tao (2016) proved blowup for an averaged equation.
- Córdoba–Martínez-Zoroa (forced Euler, 2023) and Córdoba–Martínez-Zoroa–Zheng (hypodissipative Navier–Stokes, ARMA 2026) amplify vorticity across scales by larger-scale strain; here the pulses instead supply a mean momentum flux to a collapsing vortex (§1.1).
- Follow-up: Cao–Chi–Nie (arXiv:2609.10262) show such blowup forces are dense in a relative $L^1_tH^s_x$ topology exactly when $s\lt1/2$.

### Where to start

- [Finite time blowup for Navier–Stokes](https://cdn.openai.com/pdf/32d9f210-8b73-45e0-91bc-82a30aef8a9a/navier-stokes.pdf), OpenAI, 2026: §2 (physics) and §3 (proof outline), pp. 3–24.
- [Finite-time blowup for Navier–Stokes with smooth forcing, Part I](https://arxiv.org/abs/2609.35406) and [Part II](https://arxiv.org/abs/2611.06869), Z. Lei, X. Ren, 2026: an existing readable reconstruction.
- [Finite time blow-up for the hypodissipative Navier–Stokes equations with a force](https://arxiv.org/abs/2407.06776), D. Córdoba, L. Martínez-Zoroa, F. Zheng, 2024: the earlier forced construction.

Prerequisites: incompressible Navier–Stokes theory, axisymmetric flows, WKB-type oscillatory solutions.

### References, with links

- OpenAI, NavierStokesAndEuler: Lean 4 formalization of finite-time blowup for the forced Navier–Stokes equations on R^3 and the periodic torus, <https://github.com/openai/NavierStokesAndEuler> (2026).
- D. Córdoba, L. Martínez-Zoroa, and F. Zheng, “Finite time blow-up for the hypodissipative Navier Stokes equations with a force in L<sup>1</sup><sub>t</sub>C<sup>1,ε</sup><sub>x</sub> ∩ L<sup>∞</sup><sub>t</sub>L<sup>2</sup><sub>x</sub>,” arXiv:2407.06776 (2024). <https://arxiv.org/abs/2407.06776>
- L. Caffarelli, R. Kohn, and L. Nirenberg, “Partial regularity of suitable weak solutions of the Navier–Stokes equations,” Comm. Pure Appl. Math. 35 (1982), 771–831. <https://doi.org/10.1002/cpa.3160350604>

### Further references

- OpenAI, "Finite time blowup for Navier–Stokes" (2026). <https://cdn.openai.com/pdf/32d9f210-8b73-45e0-91bc-82a30aef8a9a/navier-stokes.pdf>
- Z. Lei and X. Ren, "Finite-time blowup for Navier–Stokes with smooth forcing, Part I: Construction of self-similar solutions with admissible stress and flat remainder," arXiv:2609.35406 (2026). <https://arxiv.org/abs/2609.35406>
- Z. Lei and X. Ren, "Finite-time blowup for Navier–Stokes with smooth forcing, Part II: Residual correction via oscillatory pulses," arXiv:2611.06869 (2026). <https://arxiv.org/abs/2611.06869>
- L. Escauriaza, G. Seregin, and V. Šverák, "L<sub>3,∞</sub>-solutions of the Navier–Stokes equations and backward uniqueness," Russian Math. Surveys 58(2) (2003), 211–250. <https://doi.org/10.1070/RM2003v058n02ABEH000609>
- T. Tao, "Finite time blowup for an averaged three-dimensional Navier–Stokes equation," J. Amer. Math. Soc. 29(3) (2016), 601–674. <https://arxiv.org/abs/1402.0290>

### Lean

#### Official statement

`NavierStokes.Comparator.navier_stokes_breakdown_R3`, `NavierStokes.Comparator.navier_stokes_breakdown_periodic` in [`lean/MathathonProblems/P23_NavierStokes.lean`](lean/MathathonProblems/P23_NavierStokes.lean).

```lean
theorem navier_stokes_breakdown_R3 (nu : ℝ) (hnu : nu > 0) :
    ∃ (u₀ : ℝ³ → ℝ³) (f : ℝ³ → ℝ → ℝ³),
    InitialVelocityConditionDecay u₀ ∧ ForceConditionDecay f ∧
    ¬ (∃ v p, NavierStokesExistenceAndSmoothnessRn nu u₀ f v p)
```

```lean
theorem navier_stokes_breakdown_periodic (nu : ℝ) (hnu : nu > 0) :
    ∃ (u₀ : ℝ³ → ℝ³) (f : ℝ³ → ℝ → ℝ³),
    InitialVelocityConditionPeriodic u₀ ∧ ForceConditionPeriodic f ∧
    ¬ (∃ v p, NavierStokesExistenceAndSmoothnessPeriodic nu u₀ f v p)
```

Source: <https://github.com/openai/NavierStokesAndEuler/blob/f9e8bc5b38b6e212696e8a30e3e91517af887bbd/ComparatorChallenges/NavierStokes.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/NavierStokesAndEuler/tree/f9e8bc5b38b6e212696e8a30e3e91517af887bbd/NavierStokes>. A Lean-verified claim must not use or copy it.

#### Related Lean formalizations

- [awkronos/navier](https://github.com/awkronos/navier/tree/72f85fb3e2b8b2ca544f0f639b01fd0cc13080f9): an independent Lean proof of finite-time breakdown for forced Navier–Stokes, with its own statement.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

The official statement uses only existing Mathlib notions: `EuclideanSpace ℝ (Fin 3)`, `fderiv`, `derivWithin`, `gradient`, `Laplacian.laplacian`, `ContDiffOn`, `iteratedFDerivWithin` and `MemLp`. Mathlib lacks Leray–Hopf weak solutions, the Leray projection and the Caffarelli–Kohn–Nirenberg theory.
