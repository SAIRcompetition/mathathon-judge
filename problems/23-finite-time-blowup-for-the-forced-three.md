# 23 · Finite-time blowup for the forced three-dimensional incompressible Navier–Stokes equations

**Tracks:** Analysis, Computation/Applied Math · **Area:** Analysis of PDEs (primary); fluid dynamics; mathematical formalization in Lean 4

## Description

In September 2026 OpenAI reported a proof that for every positive viscosity there exist smooth initial data and smooth forcing for which the 3D incompressible Navier–Stokes equations have no global smooth solution. The AI-authored write-up is long and its Lean 4 formalization checks the result without explaining it. The open question is the mechanism: what the forcing does and how the construction sits beside the forced blow-up constructions of Córdoba and Martínez-Zoroa, the Caffarelli–Kohn–Nirenberg partial regularity theory, the Escauriaza–Seregin–Šverák criterion, and Tao's averaged equation.

## Desired outcome

A human-readable account of the blowup construction that identifies the mechanism and the role of the forcing, ties each step to the Lean declaration that proves it, and situates the result against the partial regularity theory and earlier forced blow-up constructions, together with its physical relevance for fluid dynamics.

## References

- OpenAI, NavierStokesAndEuler: Lean 4 formalization of finite-time blowup for the forced Navier–Stokes equations on R^3 and the periodic torus, <https://github.com/openai/NavierStokesAndEuler> (2026).
- D. Córdoba, L. Martínez-Zoroa, and F. Zheng, “Finite time blow-up for the hypodissipative Navier Stokes equations with a force in L^1_t C^{1,ε}_x ∩ L^∞_t L^2_x,” arXiv:2407.06776 (2024).
- L. Caffarelli, R. Kohn, and L. Nirenberg, “Partial regularity of suitable weak solutions of the Navier–Stokes equations,” Comm. Pure Appl. Math. 35 (1982), 771–831.

## Official Lean statement

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
