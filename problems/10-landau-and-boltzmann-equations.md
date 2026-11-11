# 10 · Landau and Boltzmann equations

> Everything on this page except the section **From the proposer** is AI-generated and may contain errors.

## From the proposer

- **Title:** well-posedness and stability of Landau equation, Vlasov-Landau equations and Boltzmann equation.
- **Area:** applied math, PDEs
- **Tracks:** Computation/Applied Math, Analysis

### Description

well-posedness and stability of Landau equation, Vlasov-Landau equations and Boltzmann equation. Useful for nuclear fusion.

### Desired outcome

formalizations in lean

### References

- <https://arxiv.org/abs/2311.09420>
- <https://arxiv.org/pdf/2409.01183>

## AI-generated notes

- **Status:** Global smooth solutions of the space-homogeneous Landau equation (Guillen–Silvestre, 2023) and Boltzmann equation (Imbert–Silvestre–Villani, 2024) are proved; the space-inhomogeneous theory for large data is still conditional.
- **Task:** Lean formalizations of well-posedness and stability results for these equations.
- **Key reference:** [N. Guillen and L. Silvestre, *The Landau equation does not blow up*, Acta Math. 234 (2025), 315–375](https://arxiv.org/abs/2311.09420)
- **Lean:** No official statement.

### Notes

- Both references treat only the space-homogeneous equations (unknown $f(t,v)$, no $x$-dependence). The Vlasov–Landau system named in the Description is not covered by them.
- In the arXiv version of the Boltzmann paper, the check that 3D inverse-power-law kernels with $2<q<7/3$ (so $-3<\gamma<-2$) satisfy the hypothesis of its Theorem 1.2 is numerical (§1.3 and Appendix A). For $q\ge 7/3$ ($\gamma\in[-2,1]$) it follows from a proved bound.

### The result

The objects are kinetic collision equations: the Landau equation $\partial_t f=q(f)$ with
$$q(f)(v)=\partial_{v_i}\int_{\mathbb R^3}\alpha(|v-w|)\,a_{ij}(v-w)\,(\partial_{v_j}-\partial_{w_j})[f(v)f(w)]\,dw,\qquad a_{ij}(z)=|z|^2\delta_{ij}-z_iz_j,$$
its version with transport in $x$ (Vlasov–Landau), and the Boltzmann equation. Guillen and Silvestre prove that the Fisher information $i(f)=\int|\nabla f|^2/f\,dv$ of a classical solution is non-increasing whenever $r|\alpha'(r)|/\alpha(r)\le\sqrt{19}$. For $\alpha(r)=r^\gamma$, $\gamma\in[-3,1]$ (Coulomb case $\gamma=-3$), initial data below a Maxwellian then give a unique global classical solution. Imbert, Silvestre and Villani prove the Boltzmann analogue (Invent. Math. 243, 2025) and obtain global smooth solutions for very soft potentials.

### Background

- Before 2023, monotonicity of the Fisher information was known only for Maxwell molecules ($\alpha\equiv1$): McKean (1966, Kac model), Toscani (1992), Villani (1998 Boltzmann, 2000 Landau). S. Ji later raised $\sqrt{19}$ to $\sqrt{22}$ (arXiv:2408.13954).
- Proof idea (Guillen–Silvestre §1.2): write $q(f)=\pi\,Q(f\otimes f)$ with a linear degenerate elliptic operator $Q$ on $\mathbb R^6$, use that taking marginals lowers the Fisher information, split $Q$ along three vector fields, and reduce to an inequality on $S^2$ with a nearly sharp constant (§9). Global existence (§11) then follows from known short-time existence and conditional regularity results.
- Earlier: Villani's global weak solutions, Guo's global solutions near a Maxwellian (also space-inhomogeneous, 2002), conditional regularity criteria, partial regularity (Golse, Gualdani, Imbert, Vasseur).
- For the space-inhomogeneous equations, large-data regularity is known only conditionally on bounds for macroscopic quantities; Villani (2025) calls it "the most urgent topic".

### Where to start

- [The Landau equation does not blow up](https://arxiv.org/abs/2311.09420), N. Guillen, L. Silvestre, 2023: §1.2 outlines the proof; §§3–9 are explicit computations with fixed operators.
- [Fisher information in kinetic theory](https://arxiv.org/abs/2501.00925), C. Villani, 2025: lecture notes placing both results in context.
- [On the monotonicity of the Fisher information for the Boltzmann equation](https://arxiv.org/abs/2409.01183), C. Imbert, L. Silvestre, C. Villani, 2024: the integro-differential version, reduced to a log-Sobolev-type inequality on the sphere.

Prerequisites: multivariable calculus and integration by parts, convexity of the Fisher information, basic parabolic PDE, Mathlib's measure theory and Fréchet calculus.

### Further references

- N. Guillen and L. Silvestre, "The Landau equation does not blow up," Acta Math. 234(2) (2025), 315–375. <https://doi.org/10.4310/acta.2025.v234.n2.a2>
- C. Imbert, L. Silvestre, and C. Villani, "On the monotonicity of the Fisher information for the Boltzmann equation," Invent. Math. 243(1) (2025), 127–179. <https://doi.org/10.1007/s00222-025-01376-3>
- C. Villani, "Fisher information in kinetic theory," arXiv:2501.00925 (2025). <https://arxiv.org/abs/2501.00925>
- Y. Guo, "The Landau equation in a periodic box," Comm. Math. Phys. 231(3) (2002), 391–434. <https://doi.org/10.1007/s00220-002-0729-9>
- S. Ji, "Bounds for the optimal constant of the Bakry–Émery Γ2 criterion inequality on RP^{d−1}," arXiv:2408.13954 (2024). <https://arxiv.org/abs/2408.13954>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs the Landau and Boltzmann collision operators and the function spaces of their well-posedness theory, which Mathlib does not have yet.

#### Mathlib

Mathlib has the ingredients of the statements: `SchwartzMap`, `fderiv`, `gradient`, `Laplacian.laplacian`, the Bochner integral, `MemLp`, Sobolev spaces (`TemperedDistribution.MemSobolev`, `BesselPotentialSpace`) and `InformationTheory.klDiv`. It has no Fisher information, no Landau or Boltzmann collision operator, and no parabolic regularity theory (Schauder or De Giorgi estimates).
