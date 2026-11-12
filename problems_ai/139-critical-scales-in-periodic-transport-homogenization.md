# 139 · Critical scales in periodic transport homogenization

## From the proposer

- **Area:** Optimal transport, calculus of variations, metric geometry, PDEs, numerical analysis, and spectral graph theory.
- **Tracks:** Geometry, Analysis

### Description

Periodic graph transport can converge to a continuum metric with a mesh-dependent effective mobility. That result does not determine normalized costs between distributions whose separation shrinks with the mesh. We propose to develop the critical regime where perturbation amplitude and mesh period are comparable, retaining the cost of creating and removing microscopic density patterns. The goals are dynamic cell formulas, quantitative convergence estimates, and spectral criteria identifying information lost by static homogenization. A central test is whether meshes with identical tangent norms and homogenized coefficients can have different critical transport laws.

### Desired outcome

Develop a research exposition and theorem framework explaining how microscopic relaxation competes with small transport displacements. Reconstruct the established periodic homogenization argument, identify the information removed by its static cell minimization, and derive a dynamic cell problem when the endpoint perturbation amplitude delta and mesh period h satisfy delta/h tending to a positive finite parameter. The formulation should retain microscopic continuity, the actual projected endpoints, and internal circulation constraints.

Establish critical limits for one-dimensional periodic meshes with arbitrary finite cell patterns and logarithmic-mean mobility. Seek quantitative estimates for the squared transport cost after division by delta squared, with explicit hypotheses and parameter dependence. Develop primal recovery paths and dual certificates that preserve conservation and endpoint data exactly. Extend the method to selected periodic graph classes where additional internal circulation modes can be controlled.

Identify spectral or variational invariants governing the departure from the infinitesimal law, and determine when microscopic rearrangement produces a strict improvement. Construct and rigorously compare mesh families with the same infinitesimal norm and static homogenized coefficient but different critical costs. The desired conclusion should explain which features of the cell geometry distinguish those families and why the distinction survives the limit as h tends to zero.

### References

- https://arxiv.org/abs/1905.05757v2
PETER GLADBACH, EVA KOPFER, JAN MAAS, AND LORENZO PORTINALE. Theorem 1.1 identifies the homogenized transport metric through an effective coefficient. Sections 3 and 4 explain periodic examples, microscopic cost reduction, and the role of mesh geometry.

- https://arxiv.org/abs/2110.15321
PETER GLADBACH, EVA KOPFER, JAN MAAS, AND LORENZO PORTINALE. Theorem 5.1 gives action homogenization through a cell formula, and Theorem 5.10 treats minimal actions with endpoint constraints.

- https://arxiv.org/abs/2312.12213v3
SADASHIGE ISHIDA AND HUGO LAVENANT. Sections 3 and 4 provide a quantitative dual approach for a different discretization, which serves as a reference for deriving estimates adapted to the critical scaling.

## AI-generated notes

<!-- status: Not a single theorem -->

- **Status:** A research programme: the homogenized limit of periodic graph transport is proved for fixed endpoints by P. Gladbach, E. Kopfer, J. Maas and L. Portinale (one-dimensional meshes, 2020; $\mathbb Z^d$-periodic graphs, 2023); no treatment of endpoint separations comparable to the mesh size was found.
- **Task:** Develop the regime in which the endpoint separation $\delta$ and the mesh period $h$ satisfy $\delta/h\to\lambda\in(0,\infty)$: a dynamic cell problem, quantitative estimates for the cost divided by $\delta^2$, spectral criteria, and meshes with the same homogenized limit but different critical costs.
- **Key reference:** [P. Gladbach, E. Kopfer, J. Maas, L. Portinale, "Homogenisation of one-dimensional discrete optimal transport", J. Math. Pures Appl. 139 (2020), 204–234](https://arxiv.org/abs/1905.05757)
- **Lean:** No official statement.

### Notes

- The cited homogenization theorems are for fixed endpoints and are not quantitative. In the one-dimensional upper bound (Theorem 6.6, (6.5)) the error is additive and uniform in the endpoints, and the proof changes the endpoint profiles up to errors that vanish as $N\to\infty$ (the $1/N$ terms in (6.8)–(6.9)). So they say nothing about costs of order $h^2$, as the proposer notes.
- "Tangent norms" presumably means the infinitesimal norm of the homogenized metric. On $\mathbb Z^d$-periodic graphs the limit of Riemannian discrete transport distances is a 2-Wasserstein distance for a Finsler norm that need not be Riemannian (Gladbach–Kopfer–Maas–Portinale 2023); in one dimension it is the constant multiple $\sqrt{c^\star}\thinspace W_2$.
- Reference 3 studies a different discretization (finite differences of the dual, Hamilton–Jacobi formulation on a space–time grid) and proves an $O(\sqrt h)$ rate for the transport cost.

### The problem

One dimension (Gladbach–Kopfer–Maas–Portinale 2020). Fix a partition of the circle $S^1=\mathbb R/\mathbb Z$ into $K$ cells of lengths $\pi_k$ with points $z_k$ at distances $d_{k,k+1}$, and admissible means $\theta_{k,k+1}$ (concave, 1-homogeneous, $\theta(1,1)=1$), for instance the logarithmic mean. The periodic mesh $\mathcal T_N$ concatenates $N$ rescaled copies, so $h=1/N$. $W_N$ is the discrete Benamou–Brenier distance on $\mathcal T_N$ for the Markov chain with rates $R_{kk'}=1/(\pi_kd_{kk'})$ between neighbouring cells and mobilities $\theta_{k,k+1}$, and $P_N\mu$ assigns to each cell its $\mu$-mass. Theorem 1.1: for all $\mu_0,\mu_1\in\mathcal P(S^1)$,

$$\lim_{N\to\infty}W_N(P_N\mu_0,P_N\mu_1)=\sqrt{c^\star(\theta,\mathcal T)}\thinspace W_2(\mu_0,\mu_1),\qquad c^\star=\inf_{m\in\mathcal P(\mathcal T)}\sum_{k=0}^{K-1}\frac{d_{k,k+1}}{\theta_{k,k+1}\big(\frac{m_k}{\pi_k},\frac{m_{k+1}}{\pi_{k+1}}\big)},$$

with Gromov–Hausdorff convergence of the metric spaces. Moreover $c^\star\le1$, with equality under the balance condition of Gladbach–Kopfer–Maas (2020) (Section 4).

$\mathbb Z^d$-periodic graphs (same authors, 2023): for convex lower semicontinuous edge energies, the rescaled discrete actions $\Gamma$-converge to a continuous action with density

$$f_{\rm hom}(\rho,j)=\inf\Big\lbrace\sum_{(x,y)\in E^Q}F_{xy}\big(m(x),m(y),J(x,y)\big)\Big\rbrace,$$

the infimum over periodic $m\ge0$ of total mass $\rho$ per cell and periodic divergence-free $J$ with effective flux $j$ (Theorem 5.1). The minimal actions with fixed endpoints converge under superlinear growth (Theorem 5.10).

The proposer's question: for endpoints whose separation $\delta$ is comparable to $h$, the static cell problem, which chooses the optimal microscopic profile $m$ freely, need not give the cost. One must also pay for creating and removing that profile, respect the exact projected endpoints, and account for internal circulation in each cell. The aim is the limit of $W_N^2/\delta^2$ for $\delta/h\to\lambda$, first on one-dimensional meshes with logarithmic-mean mobility, then on selected periodic graphs. The central test: can two meshes with the same infinitesimal norm and the same $c^\star$ (or $f_{\rm hom}$) have different critical limits?

### How the known proof works

- Heuristic (one dimension, §1): give each period a mass profile $\alpha\in\mathcal P(\mathcal T)$. The discrete energy of a flux $j$ is then about $\sum_kd_{k,k+1}/\theta_{k,k+1}(\alpha_k/\pi_k,\alpha_{k+1}/\pi_{k+1})$ times the continuous energy $\int|j|^2/\mu$, and minimizing over $\alpha$ gives $c^\star$.
- Lower bound (§5, Theorem 5.4): every discrete curve is approximated by one of similar energy whose flux is Lipschitz and whose density is Lipschitz up to oscillations within each period; the energy is then compared period by period with the cell formula.
- Upper bound (§6, Theorem 6.6): regularize the endpoints by the heat flow, take a $W_2$-geodesic and discretize it with the optimal profile $\alpha^\star$; the mismatch with the projected endpoints costs a vanishing additive error.
- On $\mathbb Z^d$-periodic graphs the same scheme runs through $\Gamma$-convergence: regularization of discrete curves, the cell formula with periodic divergence-free fluxes, and compactness results (Theorems 5.4 and 5.9) for the boundary-value problems.

### Background

- Dynamical transport metrics on Markov chains were introduced by Maas and by Mielke (2011); the discrete heat flow is the gradient flow of the relative entropy for the logarithmic-mean metric. Gigli and Maas (2013) proved convergence to $W_2$ on cubic meshes of the torus. Gladbach, Kopfer and Maas (2020) showed that on general meshes the lower bound can fail, and that an isotropy condition on the mesh is essentially necessary for convergence to $W_2$.
- Gladbach–Kopfer–Maas–Portinale (2020, Remark 1.3): with the logarithmic mean the discrete heat equations converge to the continuous one, yet the transport metrics converge to $\sqrt{c^\star}W_2\ne W_2$ unless the mesh is equidistant.
- Later work: costs with linear growth, e.g. $W_1$ (Portinale–Quattrocchi), and stochastic homogenization on random graphs (Gladbach–Kopfer; Gladbach–Maas–Portinale for minimum-cost flows).

### Where to start

- [Homogenisation of one-dimensional discrete optimal transport](https://arxiv.org/abs/1905.05757), P. Gladbach, E. Kopfer, J. Maas, L. Portinale, 2019: Theorem 1.1 and the heuristic in §1, the two-cell case in §3, the effective mobility in §4, the endpoint handling in §6.
- [Homogenisation of dynamical optimal transport on periodic graphs](https://arxiv.org/abs/2110.15321), same authors, 2021: §4 (cell formula), §5 (Theorems 5.1 and 5.10), §9 (examples, including finite-volume discretizations).
- [Quantitative convergence of a discretization of dynamic optimal transport using the dual formulation](https://arxiv.org/abs/2312.12213), S. Ishida, H. Lavenant, 2023: §§3–4, a duality-based rate (Theorem 4.1).
- [Gradient flows of the entropy for finite Markov chains](https://doi.org/10.1016/j.jfa.2011.06.009), J. Maas, 2011: the discrete transport metric.

Prerequisites: the Benamou–Brenier formula, transport metrics on Markov chains, $\Gamma$-convergence and periodic homogenization (cell formulas), convex duality, spectral theory of graph Laplacians.

### References, with links

- P. Gladbach, E. Kopfer, J. Maas and L. Portinale, "Homogenisation of one-dimensional discrete optimal transport", arXiv:1905.05757v2; J. Math. Pures Appl. 139 (2020), 204–234. <https://arxiv.org/abs/1905.05757v2>, <https://doi.org/10.1016/j.matpur.2020.02.008>
- P. Gladbach, E. Kopfer, J. Maas and L. Portinale, "Homogenisation of dynamical optimal transport on periodic graphs", arXiv:2110.15321; Calc. Var. Partial Differential Equations 62 (2023), no. 5, Paper 143. <https://arxiv.org/abs/2110.15321>, <https://doi.org/10.1007/s00526-023-02472-z>
- S. Ishida and H. Lavenant, "Quantitative convergence of a discretization of dynamic optimal transport using the dual formulation", arXiv:2312.12213v3; Found. Comput. Math. 26 (2026), 349–384. <https://arxiv.org/abs/2312.12213v3>, <https://doi.org/10.1007/s10208-024-09686-3>

### Further references

- P. Gladbach, E. Kopfer and J. Maas, "Scaling limits of discrete optimal transport", SIAM J. Math. Anal. 52 (2020), 2759–2802. <https://doi.org/10.1137/19M1243440>
- N. Gigli and J. Maas, "Gromov–Hausdorff convergence of discrete transportation metrics", SIAM J. Math. Anal. 45 (2013), 879–899. <https://doi.org/10.1137/120886315>
- J. Maas, "Gradient flows of the entropy for finite Markov chains", J. Funct. Anal. 261 (2011), 2250–2292. <https://doi.org/10.1016/j.jfa.2011.06.009>
- L. Portinale and F. Quattrocchi, "Discrete-to-continuum limits of optimal transport with linear growth on periodic graphs", European J. Appl. Math. 37 (2026), 614–642. <https://arxiv.org/abs/2311.17284>
- P. Gladbach and E. Kopfer, "Stochastic homogenization of dynamical discrete optimal transport", J. Math. Anal. Appl. 553 (2026), no. 2, Paper 129883. <https://doi.org/10.1016/j.jmaa.2025.129883>

### Lean

#### Official statement

This problem has no official Lean statement: it is a research programme whose limits and estimates are still to be formulated, not a single precise claim, and its basic objects, Wasserstein distances and dynamical (Benamou–Brenier) transport metrics on graphs, are not in Mathlib.

#### Mathlib

Mathlib has probability measures with the Lévy–Prokhorov metric (`MeasureTheory.ProbabilityMeasure`, `MeasureTheory.levyProkhorovDist`), the circle (`UnitAddCircle`), convex functions (`ConvexOn`) and graph Laplacians (`SimpleGraph.lapMatrix`). It has no Wasserstein distances, no continuity equation or Benamou–Brenier formula, no transport metrics on Markov chains and no $\Gamma$-convergence.
