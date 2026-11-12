# 105 · Where is the topology hiding, which is missing from a Newton polygon?

## From the proposer

- **Area:** Algebraic geometry
- **Tracks:** Geometry

### Description

For a Newton-nondegenerate plane curve singularity germ, there is a known formula for the Milnor number of the singularity in terms of its Newton polygon. But for special choices of coefficients, the formula applied to the (unchanged) Newton polygon only yields a lower bound, and Gwozdziewicz proves a correction term. The project would be to explain this correction term in terms of a concrete topological operation connecting the Milnor fiber of the Newton-degenerate curve to that of the nondegenerate one.

### Desired outcome

The output would ideally be a brief paper establishing a geometric explanation for the correction term, exhibiting examples using illustrations throughout.

### References

1. Janusz Gwozdziewicz, Generalized Noether's Formulas for Plane Curves Singularities, Universitatis Iagellonicae Acta Mathematica 48 (2010), pp. 55–62. [PDF](https://ruj.uj.edu.pl/server/api/core/bitstreams/5759f599-8225-4c9b-8444-42ddb9550ec7/content)
2. 3. Mutsuo Oka, Introduction to Plane Curve Singularity (Toric Resolution and Puiseux Pairs)

## AI-generated notes

<!-- status: Open -->

- **Status:** Open as far as we found: the correction formula itself is proved (J. Gwoździewicz, Univ. Iagel. Acta Math., 2010, generalizing Kouchnirenko's Newton-polygon formula of 1976 to all convenient germs), but a topological explanation of the correction term, which is what is asked here, is not in the literature we found.
- **Task:** Explain Gwoździewicz's correction term by a concrete topological operation relating the Milnor fibre of a Newton-degenerate curve to that of a nondegenerate one with the same Newton polygon.
- **Key reference:** [J. Gwoździewicz, “Generalized Noether's formulas for plane curves singularities”, Univ. Iagel. Acta Math. 48 (2010), 55–62](https://ruj.uj.edu.pl/server/api/core/bitstreams/5759f599-8225-4c9b-8444-42ddb9550ec7/content)
- **Lean:** No official statement.

### Notes

- The sheet's reference list goes from item 1 to "2. 3."; a second reference seems to be missing.
- Kouchnirenko's formula and Gwoździewicz's results assume $f$ convenient: $f(x,0)\not\equiv0$ and $f(0,y)\not\equiv0$.

### The result

Let $f=\sum a_{ij}x^iy^j\in\mathbb C\{x,y\}$ be convenient with $f(0)=0$, let $\Delta_f$ be the convex hull of $\bigcup_{a_{ij}\neq0}\big((i,j)+\mathbb R_{\ge0}^2\big)$ and $N_f$ its compact edges (the Newton polygon), meeting the axes at $(a,0)$ and $(0,b)$. With $A(\Delta)$ the area of $\mathbb R^2_{\ge0}\setminus\Delta$, set
$$\mu(\Delta)=2A(\Delta)-a-b+1,\qquad r(\Delta)=\#(N\cap\mathbb Z^2)-1 .$$
Kouchnirenko (1976): $\mu_0(f)\ge\mu(\Delta_f)$, with equality if $f$ is nondegenerate, i.e. for every edge $\gamma$ the face polynomial $f_\gamma=\sum_{(i,j)\in\gamma}a_{ij}x^iy^j$ has no critical point in $(\mathbb C^*)^2$.

Gwoździewicz (Theorem 4, Corollary 5): let $\pi\colon M\to\mathbb C^2$ be the local toric modification of a regular fan $W$ of the first quadrant, $\tilde\Delta_f$ the Newton diagram thickened relative to $W$, $C=\{f=0\}$ and $\tilde C$ its strict transform. Then
$$\mu_0(f)=\mu(\tilde\Delta_f)+r(\tilde\Delta_f)+\sum_{p\in\tilde C\cap\pi^{-1}(0)}\big(\mu_p(\tilde C)-1\big).$$
If $W$ contains the inner normals of all edges of $N_f$, then $\tilde\Delta_f=\Delta_f$ and the correction term is
$$\mu_0(f)-\mu(\Delta_f)=r(\Delta_f)+\sum_{p}\big(\mu_p(\tilde C)-1\big).$$
In this case, for nondegenerate $f$, $\tilde C$ is smooth along $\pi^{-1}(0)$ (Remark 3) and the formula reduces to Kouchnirenko's. The same paper gives the analogous formula for the $\delta$-invariant and for intersection multiplicities; for a single blow-up they are Noether's formulas.

### How the known proof works

- Every regular fan arises from $\{(1,0),(0,1)\}$ by repeatedly subdividing a cone $\sigma[\xi,\nu]$ into $\sigma[\xi,\xi+\nu]$ and $\sigma[\xi+\nu,\nu]$, so $\pi$ is a composition of point blow-ups (Lemma 6, Corollary 7, Theorem 8).
- In the chart of $\sigma[\xi,\nu]$, $f\circ\varphi_\sigma=u^{l(\Delta,\xi)}v^{l(\Delta,\nu)}\tilde f(u,v)$ with $l(\Delta,\xi)=\min_{p\in\Delta}\langle p,\xi\rangle$, and the multiplicity of the strict transform at the centre of the next blow-up is $l(\Delta,\xi+\nu)-l(\Delta,\xi)-l(\Delta,\nu)$ (Lemma 9).
- Noether's formula $\delta_0(C)=\frac{m_0(m_0-1)}2+\sum_p\delta_p(\tilde C)$ for one blow-up therefore shows, by induction on the number of cones, that $\delta_0(C)-\sum_p\delta_p(\tilde C)$ depends only on $\tilde\Delta_f$; evaluating it on a nondegenerate series with diagram $\tilde\Delta_f$ gives $\delta(\tilde\Delta_f)=\frac{\mu(\tilde\Delta_f)+r(\tilde\Delta_f)-1}2$.
- Milnor's formula $2\delta_p=\mu_p+r_p-1$ ($r_p$ the number of branches), together with $r_0(C)=\sum_pr_p(\tilde C)$, turns this into the formula for $\mu_0$.

### Background

- The Milnor fibre of a reduced plane curve germ is a connected surface with $\mu$-dimensional first homology whose boundary is the link, with $r$ components; since $\mu=2\delta-r+1$, its genus is $\delta-r+1$.
- When $W$ contains the edge normals, $\tilde C$ meets the exceptional curve $E_\gamma$ of an edge $\gamma$ only at points corresponding to the roots in $\mathbb C^*$ of $f_\gamma$ in the chart coordinate (read off from $f\circ\varphi_\sigma=u^{l(\Delta,\xi)}v^{l(\Delta,\nu)}\tilde f$), and $(\tilde C\cdot E_\gamma)_p$ is the multiplicity $m_p$ of the root; nondegeneracy means all roots are simple. As these roots number $r(\Delta_f)$ with multiplicity, the correction term equals $\sum_p(\mu_p(\tilde C)+m_p-1)$, a sum of nonnegative terms that vanish exactly at simple roots (our reformulation of Corollary 5).
- The Milnor number is upper semicontinuous, and in a deformation $f_s$ of an isolated singularity $\mu_0(f_0)=\sum_{q\in B}\mu_q(f_s)$ for small $s$ (conservation of the Milnor number). Perturbing the coefficients of $f$ on $N_f$ generically keeps the Newton polygon and makes $f_s$ nondegenerate for small $s\neq0$, so, on our reading, the correction term counts, with multiplicity, the critical points that leave the origin. Relating these to the points $p$ above is one way to read the problem.
- Related tools for pictures: Varchenko's formula (1976) for the monodromy zeta function of a nondegenerate germ in terms of its Newton diagram, and A'Campo's real morsifications (1975), which show vanishing cycles of plane curve singularities.

### Where to start

- [Generalized Noether's formulas for plane curves singularities](https://ruj.uj.edu.pl/server/api/core/bitstreams/5759f599-8225-4c9b-8444-42ddb9550ec7/content), J. Gwoździewicz, 2010: eight pages, Theorem 4 and Corollary 5.
- [Introduction to plane curve singularities. Toric resolution tower and Puiseux pairs](https://doi.org/10.1007/978-3-0346-0209-9_9), M. Oka, 2010: toric modifications and how they resolve nondegenerate curves.
- [Introduction to Singularities and Deformations](https://doi.org/10.1007/3-540-28419-2), G.-M. Greuel, C. Lossen, E. Shustin, 2007: Milnor and Tjurina numbers, semicontinuity, plane curve invariants.
- [Singular Points of Plane Curves](https://doi.org/10.1017/CBO9780511617560), C. T. C. Wall, 2004: Newton polygons, resolution and the Milnor fibration for plane curves.

Prerequisites: power series in two variables, resolution of plane curves by blow-ups, intersection multiplicity, fans and toric charts, the Milnor fibration.

### References, with links

- Janusz Gwoździewicz, Generalized Noether's Formulas for Plane Curves Singularities, Universitatis Iagellonicae Acta Mathematica 48 (2010), pp. 55–62. <https://ruj.uj.edu.pl/server/api/core/bitstreams/5759f599-8225-4c9b-8444-42ddb9550ec7/content>
- Mutsuo Oka, Introduction to Plane Curve Singularity (Toric Resolution and Puiseux Pairs); published as “Introduction to Plane Curve Singularities. Toric Resolution Tower and Puiseux Pairs”, in *Arrangements, Local Systems and Singularities*, Progress in Mathematics, Birkhäuser (2010), 209–245. <https://doi.org/10.1007/978-3-0346-0209-9_9>

### Further references

- A. G. Kouchnirenko, “Polyèdres de Newton et nombres de Milnor”, Invent. Math. 32 (1976), 1–31. <https://doi.org/10.1007/BF01389769>
- J. Milnor, *Singular Points of Complex Hypersurfaces*, Ann. of Math. Studies 61, Princeton University Press (1968). <https://doi.org/10.1515/9781400881819>
- G.-M. Greuel, C. Lossen, E. Shustin, *Introduction to Singularities and Deformations*, Springer (2007). <https://doi.org/10.1007/3-540-28419-2>
- C. T. C. Wall, *Singular Points of Plane Curves*, Cambridge University Press (2004). <https://doi.org/10.1017/CBO9780511617560>
- A. N. Varchenko, “Zeta-function of monodromy and Newton's diagram”, Invent. Math. 37 (1976), 253–262. <https://doi.org/10.1007/BF01390323>
- N. A'Campo, “Le groupe de monodromie du déploiement des singularités isolées de courbes planes I”, Math. Ann. 213 (1975), 1–32. <https://doi.org/10.1007/BF01883883>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs Milnor numbers of convergent power series, Newton diagrams, toric modifications and strict transforms, which Mathlib does not have.

#### Mathlib

Mathlib has multivariate polynomials and power series with partial derivatives (`MvPolynomial.pderiv`, `MvPowerSeries.pderiv`), analytic functions (`AnalyticAt`), lengths and ranks of modules (`Module.length`, `Module.finrank`, enough to define $\dim\mathbb C\{x,y\}/(f_x,f_y)$ once the ring is available), convex hulls (`convexHull`) and Rees algebras (`reesAlgebra`). It has no ring of convergent power series, no Newton polygons, no Milnor number or Milnor fibration, and no blow-ups or toric modifications.
