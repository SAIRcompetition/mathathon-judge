# Problem 23

## Problem ID

23

## Title/name of problem

Finite-time blowup for the forced three-dimensional incompressible Navier–Stokes equations

## Short description of problem (100 words or less)

In September 2026 OpenAI reported a proof that for every positive viscosity there exist smooth initial data and smooth forcing for which the 3D incompressible Navier–Stokes equations have no global smooth solution. The AI-authored write-up is long and its Lean 4 formalization checks the result without explaining it. The open question is the mechanism: what the forcing does and how the construction sits beside the forced blow-up constructions of Córdoba and Martínez-Zoroa, the Caffarelli–Kohn–Nirenberg partial regularity theory, the Escauriaza–Seregin–Šverák criterion, and Tao's averaged equation.

## Submitted Area

Analysis of PDEs (primary); fluid dynamics; mathematical formalization in Lean 4

## Proposed Tracks

Analysis, Computation/Applied Math

## Reference/source material

(1) OpenAI, NavierStokesAndEuler: Lean 4 formalization of finite-time blowup for the forced Navier–Stokes equations on R^3 and the periodic torus, https://github.com/openai/NavierStokesAndEuler (2026). (2) D. Córdoba, L. Martínez-Zoroa and F. Zheng, "Finite time blow-up for the hypodissipative Navier Stokes equations with a force in L^1_t C^{1,ε}_x ∩ L^∞_t L^2_x", arXiv:2407.06776 (2024). (3) L. Caffarelli, R. Kohn and L. Nirenberg, "Partial regularity of suitable weak solutions of the Navier–Stokes equations", Comm. Pure Appl. Math. 35 (1982), 771–831.

## Desired outcome

A human-readable account of the blowup construction that identifies the mechanism and the role of the forcing, ties each step to the Lean declaration that proves it, and situates the result against the partial regularity theory and earlier forced blow-up constructions, together with its physical relevance for fluid dynamics.
