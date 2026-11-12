# 51 · Non-uniqueness or uniqueness of Glimm-Lax solutions

## From the proposer

- **Area:** fluid dynamics, PDE, compressible fluids
- **Tracks:** Computation/Applied Math, Analysis

### Description

In hyperbolic conservation laws, the uniqueness or non-uniqueness of Glimm-Lax solutions has been open since they were first constructed 50 years ago. I have proven in recent work that all Sobolev data is unique AND I have a slop proof which shows uniqueness for ALL small L^\infty solutions outside a meagre set. We would like to understand and simplify our slop proof, and possibly extend it.

### Desired outcome

a human readable version of our slop proof of uniqueness outside a meagre set

### References

https://arxiv.org/abs/2601.01349
[27] James Glimm and Peter D. Lax. Decay of solutions of systems of nonlinear hyperbolic conservation laws, volume No. 101 of Memoirs of the American Mathematical Society. American Mathematical Society, Providence, RI, 1970.
Alberto Bressan, Elio Marconi, and Ganesh Vaidya. Uniqueness domains for L∞ solutions of 2 × 2 hyperbolic conservation laws. Arch. Ration. Mech. Anal., 249(6), December 2025.

## AI-generated notes

<!-- status: Partly solved -->

- **Status:** Open in general; uniqueness for initial data in fractional Sobolev spaces was proved by Cheng, Faile and Krupa (2026), building on Bressan–Marconi–Vaidya (2025).
- **Task:** A readable version of the draft proof: uniqueness outside a meagre set.
- **Key reference:** [J. Cheng, C. Faile and S. G. Krupa, *The unique limit of the Glimm–Lax construction for Sobolev data and obstructions to 1-d convex integration*, Arch. Ration. Mech. Anal. 250 (2026), Paper 82](https://arxiv.org/abs/2601.01349)
- **Lean:** No official statement.

### Notes

- No public version of the draft proof of uniqueness outside a meagre set was found, so its exact statement cannot be checked from the page.
- It bears on Open Problem #1 of Cheng–Faile–Krupa: uniqueness for data in no fractional Sobolev space.
- Overlap with #52: both rest on the Kang–Vasseur relative-entropy method with shifts ("a-contraction").

### The result

Consider a $2\times2$ system $u_t+f(u)_x=0$ on $\mathbb R$, strictly hyperbolic at a state $d$, both fields genuinely nonlinear. Glimm and Lax (1970) proved that if $\|u_0-d\|_{L^\infty}\le\epsilon_1$, a global entropy solution exists that stays $L^\infty$-small and has total variation at most $C_0(\|u_0-d\|_{L^\infty}^{1/2}+L/t)$ on intervals of length $L$. These form the class $GL(\epsilon_1)$, where uniqueness has been open since 1970. Cheng, Faile and Krupa (Theorem 1.1) prove: if $u_0\in W^{s,p}_{\rm loc}$ for some $s>0$ and $\epsilon_1=\epsilon_1(s,p)$ is small, the solution in $GL(\epsilon_1)$ is unique, and these solutions form a Hölder semigroup,
$$\|u_1(t)-u_2(t)\|_{L^1(-R,R)}\le K\,\|u_1^0-u_2^0\|_{L^1(-R-ct,\,R+ct)}^{\theta},\qquad\theta<1.$$

### How the known proof works

- Bressan–Marconi–Vaidya (Prop. 2.1): for $t\ge\tau>0$ the solution lies where the front-tracking semigroup is defined, with Lipschitz constant $\le C\tau^{-\beta}$, so non-uniqueness can only start at $t=0$.
- BMV Theorem 1.1 (Prop. 2.2): uniqueness holds among solutions with $\sup_t t^{-\alpha}\|u(t)-u_0\|_{L^1}<\infty$.
- Key step (§2.3): Glimm–Lax solutions with $H^s$ data have this rate. Compare with the semigroup solution from mollified data $u_0*\gamma_\delta$, $\delta=t^{1-s/2}$, using an $L^2$ "weak-BV" stability estimate (Theorem 1.4) and $\|u_0-u_0*\gamma_\delta\|_{L^2}\lesssim\delta^s$.
- Theorem 1.4 (§§3–7, most of the length) extends the $L^2$ stability of Chen–Faile–Krupa to all such fluxes, via a new weighted relative-entropy contraction for rarefaction waves and front tracking with shifts.

### Background

- The $L^1$ stability theory gives uniqueness for entropy solutions of bounded variation; Glimm–Lax data may have infinite total variation.
- Bressan–Marconi–Vaidya (ARMA 2025) prove uniqueness for solutions whose total variation decays like $t^{\alpha-1}$, faster than $1/t$.
- The $L^2$ route: Chen–Krupa–Vasseur (ARMA 2022, weak-BV stability for $2\times2$ systems) and Chen–Faile–Krupa (arXiv:2507.23645, Hölder $L^2$ estimate).
- Non-uniqueness: Chen–Vasseur–Yu (arXiv:2407.02927) build non-unique continuous solutions by convex integration; Cheng–Faile–Krupa (Theorem 1.2) rule this out for $C^\alpha$, $\alpha>1/2$.

### Where to start

- [The unique limit of the Glimm–Lax construction for Sobolev data](https://arxiv.org/abs/2601.01349), J. Cheng, C. Faile, S. G. Krupa, 2026: §2 gives the whole argument assuming Theorem 1.4.
- [Uniqueness domains for L∞ solutions of 2×2 hyperbolic conservation laws](https://arxiv.org/abs/2505.00420), A. Bressan, E. Marconi, G. Vaidya, 2025: the semigroup at positive times.
- [Uniqueness and weak-BV stability for 2×2 conservation laws](https://arxiv.org/abs/2010.04761), G. Chen, S. G. Krupa, A. F. Vasseur, 2020: the relative-entropy method with shifts in its simplest form.

Prerequisites: 1D conservation laws (Riemann problem, Glimm scheme, front tracking), BV functions, relative entropy, fractional Sobolev spaces, Baire category.

### References, with links

- <https://arxiv.org/abs/2601.01349>
- James Glimm and Peter D. Lax. Decay of solutions of systems of nonlinear hyperbolic conservation laws, volume No. 101 of Memoirs of the American Mathematical Society. American Mathematical Society, Providence, RI, 1970. <https://doi.org/10.1090/memo/0101>
- Alberto Bressan, Elio Marconi, and Ganesh Vaidya. Uniqueness domains for L∞ solutions of 2 × 2 hyperbolic conservation laws. Arch. Ration. Mech. Anal., 249(6), December 2025. <https://doi.org/10.1007/s00205-025-02147-3>

### Further references

- G. Chen, S. G. Krupa, and A. F. Vasseur, "Uniqueness and weak-BV stability for 2×2 conservation laws," Arch. Ration. Mech. Anal. 246(1) (2022), 299–332. <https://arxiv.org/abs/2010.04761>
- G. Chen, C. Faile, and S. G. Krupa, "Solutions to conservation laws are Hölder-stable in L² in the weak-BV setting," arXiv:2507.23645 (2025). <https://arxiv.org/abs/2507.23645>
- R. M. Chen, A. F. Vasseur, and C. Yu, "Non-uniqueness for continuous solutions to 1D hyperbolic systems," arXiv:2407.02927 (2024). <https://arxiv.org/abs/2407.02927>

### Lean

#### Official statement

This problem has no official Lean statement: Mathlib has no entropy solutions of hyperbolic systems or Glimm–Lax solutions, and the claim to be explained (uniqueness for all small $L^\infty$ data outside a meagre set) has no public precise statement, in particular no specified topology in which the exceptional set is meagre, so a Lean version would have to guess it.

#### Mathlib

Mathlib has functions of bounded variation (`BoundedVariationOn`, `eVariationOn`), $L^p$ spaces (`MemLp`), mollification by convolution (`MeasureTheory.convolution`, `ContDiffBump`), Sobolev spaces (`TemperedDistribution.MemSobolev`) and the Baire category theorem (`BaireSpace`, `dense_iInter_of_isOpen`). It has no hyperbolic conservation laws, entropy solutions, Riemann problem or front-tracking scheme.
