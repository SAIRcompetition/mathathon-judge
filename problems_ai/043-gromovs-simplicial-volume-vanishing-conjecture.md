# 43 · Gromov's Simplicial Volume Vanishing Conjecture

## From the proposer

- **Area:** Geometry and Topology
- **Tracks:** Geometry

### Description

Gromov's simplicial volume is a number associated to a manifold through purely topological data. Gromov conjectured that if a closed manifold admits a Riemannian metric with positive scalar curvature, then its simplicial volume must vanish. The problem hopes to establish a relationship between a topological quantity (the simplicial volume) and a geometric quantity (scalar curvature). Problems of this flavour are central to geometry and topology (Atiyah-Singer Index theorem, for instance).

### Desired outcome

Would it be possible to extend the index theoretic techniques developed by Ma et al in the first paper above to prove the theorem in OpenAI's preprint on the same problem? 

### References

https://arxiv.org/pdf/2606.29135
https://github.com/openai/math/blob/main/preprints/Positive-scalar-curvature-forces-rational-inessentiality-September-23-2026/paper.pdf

## AI-generated notes

<!-- status: Proved (preprint) -->

- **Status:** Proved for manifolds with spin universal cover by Ma–Wang–Xie–Yu–Zhu (arXiv 2026); claimed in full by an OpenAI preprint (September 2026); neither is refereed yet.
- **Task:** Extend the Ma et al. index-theoretic method to OpenAI's rational-inessentiality theorem.
- **Key reference:** [Q. Ma, J. Wang, Z. Xie, G. Yu, B. Zhu, “Gromov's simplicial volume vanishing conjecture for positive scalar curvature”, arXiv:2606.29135 (2026)](https://arxiv.org/abs/2606.29135)
- **Lean:** No official statement.

### Notes

- The two references prove different statements: Ma et al. bound simplicial norms and need a spin universal cover; the OpenAI preprint claims the stronger rational inessentiality without spin, by a non-index method (graph metrics, warped circles, a torical band theorem of Cecchini–Schick).
- Version 1 of arXiv:2606.29135 (Ma–Yu) assumed an extra group-decay condition; version 4 (August 2026, five authors) removes it.

### The result

For a closed oriented $n$-manifold $M$, the simplicial volume $\|M\|$ is the infimum of $\sum|a_i|$ over real singular cycles $\sum a_i\sigma_i$ representing $[M]$. Gromov conjectured that $\|M\|=0$ if $M$ admits positive scalar curvature. Ma–Wang–Xie–Yu–Zhu prove this when the universal cover $\widetilde M$ is spin; more precisely every component of the $\hat A$-class has
$$\big\|\hat A_{[k]}(TM)\cap[M]\big\|_{\ell^1}=0,$$
and for $\|M\|$ itself nonnegative scalar curvature suffices. The OpenAI preprint claims that every closed connected oriented PSC manifold of dimension $n\ge 2$ is rationally inessential: the classifying map $c\colon M\to B\pi_1(M)$ sends $[M]$ to $0$ in $H_n(B\pi_1M;\mathbb Q)$. Since $\|M\|>0$ forces rational essentiality, this implies Gromov's conjecture and the Gromov–Lawson aspherical conjecture.

### How the known proof works

- Gromov's mapping theorem: $\|M\|$ equals the simplicial norm of $c_*[M]$ in $B\Gamma$, $\Gamma=\pi_1M$, so it suffices to represent $c_*[M]$ by group-homology cycles of arbitrarily small $\ell^1$-norm.
- “Epsilon homology” (Ma–Yu 2025) interpolates between $H_*(M)$ and $H_*(\Gamma)$.
- A quantitative higher index theorem, refining Connes–Moscovici, writes $c_*(\hat A_{[m-k]}\cap[M])$ through finite-propagation kernels $I_\varepsilon$ of the Dirac operator on $\widetilde M$; spin is needed here.
- The simplicial norm is at most $C\operatorname{Vol}(M)$ times norms of $I_\varepsilon$; positive scalar curvature (Lichnerowicz formula, heat-kernel estimates) makes this tend to $0$ as $\varepsilon\to\infty$.
- Nonnegative scalar curvature: either a conformal change gives positive scalar curvature, or the metric is Ricci-flat, $\pi_1$ is virtually abelian and $\|M\|=0$.

### Background

- Earlier results: Gromov–Lawson and Schoen–Yau obstructions; Chodosh–Li (aspherical case in dimensions 4 and 5) and Gromov (dimension 5); Guth and Braun–Sauer bound simplicial volume using macroscopic scalar curvature and volume.
- Rational inessentiality under positive scalar curvature was conjectured by Gromov and stated by Hanke (2012, Conjecture 2.9).
- A second OpenAI preprint (October 2026) claims Gromov's integral bound $\int_M(\mathrm{Scal}^-)^{n/2}\ge a_n\|M\|$ for $n\ge 3$, using the rational-inessentiality paper.

### Where to start

- [Gromov's simplicial volume vanishing conjecture for positive scalar curvature](https://arxiv.org/abs/2606.29135), Ma, Wang, Xie, Yu, Zhu, 2026: 23 pages, meant as an entry point to the index method.
- [Small scale index theory, scalar curvature, and Gromov's simplicial norms](https://arxiv.org/abs/2508.14791), Q. Ma, G. Yu, 2025: the quantitative index theorem.
- [Bounded cohomology of discrete groups](https://arxiv.org/abs/1610.08339), R. Frigerio, 2016: bounded cohomology and its use for simplicial volume.

Prerequisites: Dirac operators and the Lichnerowicz formula, group homology and classifying spaces, heat kernels.

### Further references

- Q. Ma and G. Yu, “Small scale index theory, scalar curvature, and Gromov's simplicial norms,” arXiv:2508.14791 (2025). <https://arxiv.org/abs/2508.14791>
- M. Gromov, “Volume and bounded cohomology,” Publ. Math. IHÉS 56 (1982), 5–99. <https://doi.org/10.5802/pmihes.3>
- M. Gromov, “Four lectures on scalar curvature,” arXiv:1908.10612. <https://arxiv.org/abs/1908.10612>
- B. Hanke, “Positive scalar curvature, K-area and essentialness,” arXiv:1011.3987. <https://arxiv.org/abs/1011.3987>
- O. Chodosh and C. Li, “Generalized soap bubbles and the topology of manifolds with positive scalar curvature,” Ann. of Math. 199 (2024), 707–740. <https://arxiv.org/abs/2008.11888>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs simplicial volume and scalar curvature, which Mathlib does not have yet.

#### Mathlib

Mathlib has Riemannian metrics (`RiemannianMetric`, `IsRiemannianManifold`), covariant derivatives (`CovariantDerivative`), singular homology (`AlgebraicTopology.singularHomologyFunctor`) and group homology (`groupHomology`). It has no curvature tensors or scalar curvature, no simplicial volume ($\ell^1$-seminorm), no classifying spaces and no Dirac operators.
