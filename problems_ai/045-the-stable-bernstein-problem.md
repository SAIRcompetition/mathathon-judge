# 45 · The stable Bernstein problem

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/045-the-stable-bernstein-problem.md`](../problems_original/045-the-stable-bernstein-problem.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

The stable Bernstein problem

### Short description of problem (100 words or less)

In September 2026, Han Hong, Haizhong Li, and Gaoming Wang proved the last remaining case of the stable Bernstein problem: every smooth, complete, connected stable minimal hypersurface in (\mathbb{R}^7), without boundary and admitting a global unit normal, is a hyperplane. Their proof combines extensive analytic estimates and algebraic verification. The proposed theme is to find an alternative, more conceptual proof, without adding curvature or volume growth assumptions.

### Submitted Area

Differential Geometry / Geometric Analysis

### Proposed Tracks

Geometry

### Reference/source material

1. Han Hong, Haizhong Li, and Gaoming Wang. *The stable Bernstein theorem in \(\mathbb{R}^{7}\)* (2026). The recent paper proving the final case of the stable Bernstein problem.  
[arXiv:2609.15720](https://arxiv.org/abs/2609.15720).

2. Laurent Mazet. *Stable minimal hypersurfaces in \(\mathbb{R}^{6}\)* (2024). A geometric proof of the case in \(\mathbb{R}^{6}\), using \(\mu\) bubbles and spectral volume comparison.  
[arXiv:2405.14676](https://arxiv.org/abs/2405.14676).

3. Giovanni Catino, Paolo Mastrolia, and Alberto Roncoroni. *Two rigidity results for stable minimal hypersurfaces*. Geometric and Functional Analysis 34 (2024). An alternative proof of the case in \(\mathbb{R}^{4}\) using a conformal change of metric.  
[DOI:10.1007/s00039-024-00662-1](https://doi.org/10.1007/s00039-024-00662-1).

4. Otis Chodosh and Chao Li. *Stable anisotropic minimal hypersurfaces in \(\mathbb{R}^{4}\)*. Forum of Mathematics, Pi 11 (2023), e3. Includes an alternative proof of the stable Bernstein theorem in \(\mathbb{R}^{4}\) using \(\mu\) bubbles, a conformal change of metric, and techniques from positive scalar curvature.  
[arXiv:2206.06394](https://arxiv.org/abs/2206.06394).

### Desired outcome

An alternative proof of the theorem using substantially different geometric or analytic techniques. Ideally, the proof would reveal a geometric mechanism through which stability forces flatness and develop ideas that could also be applied to other geometric rigidity problems.

Proofs that are conceptually quite different, in lower dimensions, are also very welcome.

## AI-generated notes

<!-- status: Proved (preprint) -->

> Written by AI for the earlier problem list, where this was problem 45 (commit `1f49cd4`), and carried over unchanged.

- **Status:** Last case ($\mathbb R^7$) proved by Hong, Li and Wang (arXiv, September 2026), not yet refereed; false in $\mathbb R^8$ and beyond.
- **Task:** A conceptually different proof that stability forces flatness in $\mathbb R^7$.
- **Key reference:** [H. Hong, H. Li, G. Wang, “The stable Bernstein theorem in $\mathbb R^7$”, arXiv:2609.15720 (2026)](https://arxiv.org/abs/2609.15720)
- **Lean:** No official statement.

### Notes

- The $\mathbb R^7$ proof (85 pages) relies on finitely many polynomial inequalities with rational coefficients, checked by Mathematica code published with the paper.

### The result

A two-sided minimal immersion $F\colon M^n\to\mathbb R^{n+1}$ with second fundamental form $A$ is stable if
$$\int_M |A|^2f^2\,dV\le\int_M|\nabla f|^2\,dV\qquad\text{for all } f\in C^\infty_c(M).$$
Stable Bernstein theorem: for $n\le 6$, every smooth, connected, complete, two-sided stable minimal immersion $M^n\to\mathbb R^{n+1}$ is a hyperplane; no volume-growth or curvature bound is assumed. Cases: $n=2$ do Carmo–Peng, Fischer-Colbrie–Schoen, Pogorelov (1979–81); $n=3$ Chodosh–Li (Acta Math. 2024); $n=4$ Chodosh–Li–Minter–Stryker (Annals 2026); $n=5$ Mazet (arXiv 2024); $n=6$ Hong–Li–Wang (arXiv 2026), which also gives $n<6$ by taking products with $\mathbb R^{6-n}$. For $n\ge 7$ it fails: Bombieri–De Giorgi–Giusti found non-flat area-minimizing examples in $\mathbb R^8$.

### How the known proof works

- Blow-up reduction to a stable immersion with $\sup|A|\le 2$ and $|A|(o)=1$.
- Let $G$ be the minimal positive Green function of $-\Delta$ with pole $o$, and $J(t)=\int_{\{G=t\}}|\nabla G|^3$; the key quantities are the moments $M_\sigma=\int_0^{t_0}J(t)t^{-\sigma-1}dt$, finite at first only for $\sigma<2$; $\sigma=5/2$ is critical.
- Step 1 reaches $M_{2.46}<\infty$ with Bochner's formula, Simons' identity, stability, the full Codazzi constraint and a Schoen–Simon–Yau inequality.
- Steps 2–3 reach every $\sigma<5/2$: stability is applied to a nonlinear norm of two test functions (coercivity on fifteen rational parameter intervals), then divergence identities of three further tensors are added; the polynomial inequalities are checked in rational arithmetic.
- Finite subcritical moments give finite critical energies; Brendle's sharp isoperimetric inequality fixes the sign of a boundary term, which forces $A\equiv0$.

### Background

- With Euclidean volume growth the result was known earlier: Schoen–Simon–Yau (1975) for $n\le5$, Schoen–Simon (1981) for embedded $n=6$, Bellettini (2025) for immersed $n=6$.
- Other proofs for $n=3$: Chodosh–Li via warped μ-bubbles and the Gulliver–Lawson conformal change (Forum Math. Pi 2023); Catino–Mastrolia–Roncoroni via a conformal change (GAFA 2024); Hong–Wang via mixed radial volume comparison (arXiv 2026); Cabré–Catino–Mari–Mastrolia–Roncoroni via Green-function gradient estimates (arXiv 2026).
- For $n=4,5$ the proofs use spectral bi-Ricci curvature and spectral volume comparison (Antonelli–Xu) to control μ-bubbles; Hong–Li–Wang instead use Green-function energies.
- The flatness statement is equivalent to an interior curvature estimate for stable minimal hypersurfaces.

### Where to start

- [Stable minimal hypersurfaces in R⁴](https://arxiv.org/abs/2108.11462), O. Chodosh, C. Li, 2021: the first case without a volume-growth assumption.
- [The stable Bernstein theorem in R⁷](https://arxiv.org/abs/2609.15720), H. Hong, H. Li, G. Wang, 2026: §1.1 gives the full proof outline.
- [Lectures on minimal surface theory](https://arxiv.org/abs/1308.3325), B. White, 2013: introductory minicourse; Lecture 3 explains how Bernstein-type results give curvature estimates.

Prerequisites: second variation of area, Simons' identity, Green functions on complete manifolds, comparison geometry.

### References, with links

- Han Hong, Haizhong Li, and Gaoming Wang. *The stable Bernstein theorem in $\mathbb{R}^{7}$* (2026). The recent paper proving the final case of the stable Bernstein problem. [arXiv:2609.15720](https://arxiv.org/abs/2609.15720).
- Laurent Mazet. *Stable minimal hypersurfaces in $\mathbb{R}^{6}$* (2024). A geometric proof of the case in $\mathbb{R}^{6}$, using $\mu$ bubbles and spectral volume comparison. [arXiv:2405.14676](https://arxiv.org/abs/2405.14676).
- Giovanni Catino, Paolo Mastrolia, and Alberto Roncoroni. *Two rigidity results for stable minimal hypersurfaces*. Geometric and Functional Analysis 34 (2024). An alternative proof of the case in $\mathbb{R}^{4}$ using a conformal change of metric. [DOI:10.1007/s00039-024-00662-1](https://doi.org/10.1007/s00039-024-00662-1).
- Otis Chodosh and Chao Li. *Stable anisotropic minimal hypersurfaces in $\mathbb{R}^{4}$*. Forum of Mathematics, Pi 11 (2023), e3. Includes an alternative proof of the stable Bernstein theorem in $\mathbb{R}^{4}$ using $\mu$ bubbles, a conformal change of metric, and techniques from positive scalar curvature. [arXiv:2206.06394](https://arxiv.org/abs/2206.06394).

### Further references

- O. Chodosh and C. Li, “Stable minimal hypersurfaces in R⁴,” Acta Math. 233 (2024), 1–31. <https://arxiv.org/abs/2108.11462>
- O. Chodosh, C. Li, P. Minter, D. Stryker, “Stable minimal hypersurfaces in R⁵,” Ann. of Math. 204 (2026), 423–453. <https://doi.org/10.4007/annals.2026.204.1.5>
- X. Cabré, G. Catino, L. Mari, P. Mastrolia, A. Roncoroni, “Gradient estimates for the Green kernel under spectral Ricci bounds, and the stable Bernstein theorem in R⁴,” arXiv:2604.14393 (2026). <https://arxiv.org/abs/2604.14393>
- H. Hong and G. Wang, “Mixed radial volume comparison under spectral Ricci bounds,” arXiv:2609.02430 (2026). <https://arxiv.org/abs/2609.02430>
- B. White, “Introduction to minimal surface theory,” in Geometric Analysis, IAS/Park City Math. Ser. 22 (2016), 387–438; arXiv title “Lectures on minimal surface theory.” <https://arxiv.org/abs/1308.3325>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs stable minimal hypersurfaces, which Mathlib does not have yet.

#### Mathlib

Mathlib has immersions (`Manifold.IsImmersion`), Riemannian metrics (`RiemannianMetric`, `IsRiemannianManifold`) and Euclidean space (`EuclideanSpace ℝ (Fin 7)`). It has no second fundamental form, mean curvature, minimal hypersurfaces or second variation of area.
