# 112 · Quarter-pinching sphere theorem

## From the proposer

- **Area:** Differential geometry, geometric analysis, Ricci flow
- **Tracks:** Geometry

### Description

Formalize Brendle and Schoen's differentiable sphere theorem in Lean. A closed, simply connected Riemannian manifold with strictly pointwise quarter-pinched positive sectional curvature is diffeomorphic to a sphere. Their proof uses Ricci flow to turn a local curvature condition into a global geometric conclusion. Formalizing it would check that argument and build reusable tools for geometric analysis.

### Desired outcome

Prove the differentiable quarter-pinching sphere theorem in Lean, including the curvature estimates and Ricci-flow arguments it needs. Build reusable definitions and lemmas for Riemannian curvature and geometric evolution equations.

### References

Simon Brendle and Richard Schoen, Manifolds with 1/4-pinched curvature are space forms, Journal of the American Mathematical Society 22 (2009), 287-307.
https://arxiv.org/abs/0705.0766

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved by S. Brendle and R. Schoen with Ricci flow (arXiv 2007, J. Amer. Math. Soc. 2009); the topological version under global pinching is due to Berger and Klingenberg (around 1960).
- **Task:** Formalize the differentiable quarter-pinching sphere theorem in Lean, with reusable tools for Riemannian curvature and geometric evolution equations.
- **Key reference:** [S. Brendle, R. Schoen, “Manifolds with 1/4-pinched curvature are space forms”, J. Amer. Math. Soc. 22 (2009), 287–307](https://arxiv.org/abs/0705.0766)
- **Lean:** No official statement.

### Notes

- Brendle–Schoen's theorem is stated for dimension $n\ge4$ and needs no simple connectivity: the conclusion is a constant-curvature metric, hence a spherical space form. The simply connected case gives $S^n$; dimensions 2 and 3 follow from classical results (for $n=3$, Hamilton 1982).
- Lean proofs of a globally pinched version (all sectional curvatures in $(1,4]$) were accepted by the lean-eval benchmark in October 2026; their sources are private. See Lean below.

### The result

A Riemannian manifold has pointwise $1/4$-pinched sectional curvatures if they are positive and, at every point $p$, $0<K(\pi_1)<4K(\pi_2)$ for all 2-planes $\pi_1,\pi_2\subset T_pM$. Global pinching asks instead that all sectional curvatures, at all points, lie in $(1,4]$.

**Theorem 1** (Brendle–Schoen). A compact Riemannian manifold of dimension $n\ge4$ with pointwise $1/4$-pinched sectional curvatures admits a metric of constant curvature, so it is diffeomorphic to a spherical space form; if it is simply connected, it is diffeomorphic to $S^n$.

They prove the stronger **Theorem 3**: if
$$R_{1313}+\lambda^2R_{1414}+\mu^2R_{2323}+\lambda^2\mu^2R_{2424}-2\lambda\mu R_{1234}>0$$
for all orthonormal four-frames and all $\lambda,\mu\in[-1,1]$, then the normalized Ricci flow $\partial_tg=-2\,\mathrm{Ric}_g+\frac2n r_g\,g$ ($r_g$ the mean scalar curvature) exists for all time and converges to a constant-curvature metric. Theorem 2 is an equivariant version. Under global pinching, Berger and Klingenberg had shown that a compact simply connected manifold is homeomorphic to $S^n$; Micallef and Moore (1988) obtained the homeomorphism under pointwise pinching. Brendle and Schoen also classify weakly $1/4$-pinched manifolds (Acta Math. 2008).

### How the known proof works

- Hamilton's maximum principle: a closed, convex, $O(n)$-invariant set of algebraic curvature operators that is invariant under the ODE $\frac{d}{dt}R=Q(R)$, with $Q(R)_{ijkl}=R_{ijpq}R_{klpq}+2R_{ipkq}R_{jplq}-2R_{iplq}R_{jpkq}$, is preserved by the Ricci flow.
- §2: nonnegative isotropic curvature is preserved by this ODE in every dimension (Proposition 11), by an intricate computation at a four-frame where the isotropic curvature is minimal; H. Nguyen proved this independently.
- §3: extend $R$ by zero to $\hat R$ on $\mathbb R^n\times\mathbb R^2$ (the curvature of $M\times\mathbb R^2$) and let $\hat C$ be the cone where $\hat R$ has nonnegative isotropic curvature. $\hat C$ is ODE-invariant, lies in the cone of nonnegative sectional curvature and contains all nonnegative curvature operators (Proposition 12).
- The Böhm–Wilking transformations $\ell_{a,b}$ turn $\hat C$ into a pinching family of cones (Propositions 13–15) and then into pinching sets (Propositions 16–17); as in Hamilton and Böhm–Wilking, the normalized flow then converges to constant curvature (Theorem 18).
- §4: an algebraic description of $\hat C$ (Proposition 21) gives Theorem 3, and Berger's inequality $|R_{1234}|\le2$ for curvatures in $[1,4]$ shows that pointwise $1/4$-pinched metrics satisfy it (Corollary 22).

### Background

- Hamilton introduced Ricci flow and showed that 3-manifolds with positive Ricci curvature (1982) and 4-manifolds with positive curvature operator (1986) are space forms.
- Böhm and Wilking (Annals 2008) proved that manifolds with 2-positive curvature operator are space forms and introduced the pinching-family technique used in §3.
- Micallef and Moore introduced positive isotropic curvature from the second variation of energy for minimal spheres.
- Brendle's book (2010) is a textbook account of Ricci flow and of this proof.

### Where to start

- [Manifolds with 1/4-pinched curvature are space forms](https://arxiv.org/abs/0705.0766), S. Brendle, R. Schoen, 2007: 19 pages; §1 states the results, §3 is the convergence argument.
- [Curvature, sphere theorems, and the Ricci flow](https://doi.org/10.1090/S0273-0979-2010-01312-4), S. Brendle, R. Schoen, Bull. Amer. Math. Soc. 2011: survey of the sphere theorems and the proof.
- [Ricci Flow and the Sphere Theorem](https://doi.org/10.1090/gsm/111), S. Brendle, 2010: textbook account of Ricci flow and the sphere theorem.
- [ricci-flow-blueprint](https://github.com/korbonits/ricci-flow-blueprint/tree/c8017e2c26898d11f39cec0dfce89368d5a0506a): shows what curvature and maximum-principle infrastructure already exists in Lean and where it stops.

Prerequisites: Levi-Civita connection and curvature tensors, algebraic curvature operators, Ricci flow and its evolution equations, maximum principles for parabolic systems.

### References, with links

- S. Brendle and R. Schoen, “Manifolds with 1/4-pinched curvature are space forms,” J. Amer. Math. Soc. 22 (2009), 287–307. <https://arxiv.org/abs/0705.0766> <https://doi.org/10.1090/S0894-0347-08-00613-9>

### Further references

- S. Brendle and R. M. Schoen, “Classification of manifolds with weakly 1/4-pinched curvatures,” Acta Math. 200 (2008), 1–13. <https://doi.org/10.1007/s11511-008-0022-7>
- C. Böhm and B. Wilking, “Manifolds with positive curvature operators are space forms,” Ann. of Math. 167 (2008), 1079–1097. <https://doi.org/10.4007/annals.2008.167.1079>
- R. S. Hamilton, “Three-manifolds with positive Ricci curvature,” J. Differential Geom. 17 (1982), 255–306. <https://doi.org/10.4310/jdg/1214436922>
- R. S. Hamilton, “Four-manifolds with positive curvature operator,” J. Differential Geom. 24 (1986), 153–179. <https://doi.org/10.4310/jdg/1214440433>
- M. J. Micallef and J. D. Moore, “Minimal two-spheres and the topology of manifolds with positive curvature on totally isotropic two-planes,” Ann. of Math. 127 (1988), 199–227. <https://doi.org/10.2307/1971420>
- H. T. Nguyen, “Isotropic curvature and the Ricci flow,” Int. Math. Res. Not. IMRN 2010, no. 3, 536–558. <https://doi.org/10.1093/imrn/rnp147>
- S. Brendle, *Ricci Flow and the Sphere Theorem*, Graduate Studies in Mathematics 111, AMS (2010). <https://doi.org/10.1090/gsm/111>
- S. Brendle and R. Schoen, “Curvature, sphere theorems, and the Ricci flow,” Bull. Amer. Math. Soc. 48 (2011), 1–32. <https://doi.org/10.1090/S0273-0979-2010-01312-4>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs the Riemann curvature tensor and sectional curvature, which Mathlib lacks (it has the Levi-Civita connection).

#### Related Lean formalizations

- The lean-eval benchmark states the [topological and differentiable sphere theorems](https://github.com/leanprover/lean-eval/blob/85a88c37f80170d9f08651dc63ce6b81a8a48cb9/LeanEval/Geometry/SphereTheorem.lean) with its own curvature tensor, a hypothesized smooth torsion-free metric connection, and global pinching in $(1,4]$ (problem [`sphere_theorem_differentiable`](https://lean-lang.org/eval/problems/sphere_theorem_differentiable/)). Its [results store](https://github.com/leanprover/lean-eval-submissions/tree/0548925a543c89eb9ff692af1a3592fdb86951bb/results) lists solutions of the differentiable version from four submitters, accepted by its comparator in October 2026, all with private sources.
- [Levi–Civita connections and metric-determined curvature invariants in Lean](https://palomar-registry.org/entry?id=PALOMAR-2026-09-02-000007&version=3), A. F. Ramos, D. B. Hulak, R. J. G. B. de Queiroz, Palomar registry (Lean-checked, trust level high): a smooth Levi-Civita connection, the curvature tensor, Ricci and scalar curvature.
- [Independent Bonnet–Myers diameter and compactness theorem](https://palomar-registry.org/entry?id=PALOMAR-2026-09-11-000001&version=1), same authors, Palomar registry (Lean-checked, trust level high): includes minimizing geodesics, parallel transport, second variation and index forms.
- [lean-poincare-formalization-plan](https://github.com/Arthur742Ramos/lean-poincare-formalization-plan/tree/ecea5074de52f270329db77f0278f743a7acd795), A. F. Ramos: a roadmap toward Perelman's proof; its README marks curvature and time-dependent geometry as proved and short-time existence of Ricci flow on compact manifolds as open.
- [ricci-flow-blueprint](https://github.com/korbonits/ricci-flow-blueprint/tree/c8017e2c26898d11f39cec0dfce89368d5a0506a): a blueprint for Hamilton's 1982 theorem; curvature, the Bianchi identities, maximum principles on closed manifolds and Hamilton's curvature ODE in dimension 3 are proved, while short-time existence and the theorem itself are `proof_wanted`.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has Riemannian metrics on vector bundles (`Bundle.RiemannianMetric`, `Bundle.RiemannianBundle`, `IsContMDiffRiemannianBundle`), Riemannian manifolds with their distance (`IsRiemannianManifold`, `Manifold.riemannianEDist`), covariant derivatives, torsion and the Levi-Civita connection (`CovariantDerivative`, `CovariantDerivative.torsion`, `CovariantDerivative.leviCivitaConnection`), Lie brackets of vector fields (`VectorField.mlieBracket`), diffeomorphisms (`Diffeomorph`) and the smooth structure on spheres (`EuclideanSpace.instIsManifoldSphere`). It has no curvature tensor, no sectional or Ricci curvature, no geodesics, no parabolic PDE theory and no Ricci flow.
