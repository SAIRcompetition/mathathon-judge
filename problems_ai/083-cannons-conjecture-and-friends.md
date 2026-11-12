# 83 · Cannon's conjecture and friends

## From the proposer

- **Area:** Geometric topology
- **Tracks:** Geometry

### Description

Cannon's conjecture, which OpenAI has apparently proven, states that any hyperbolic group with Gromov boundary homeomorphic to a 2-sphere is virtually isomorphic to a cocompact Kleinian group. The convergence group theorem of Gabai gives an analogous result for hyperbolic groups with boundary homeomorphic to the circle. In broad strokes, these can be regarded as rigidity results for group actions on low-dimensional spheres. Could we produce a more conceptual, digestible proof of Cannon's conjecture, and are there any unifying threads between the proofs of these and other related results?

### Desired outcome

An expository write-up and/or video

### References

1. OpenAI write-up @ https://github.com/openai/math/tree/main/preprints/A-Modulus-Proof-of-Cannons-Conjecture-September-23-2026 
2. David Gabai, "Convergence groups are Fuchsian groups" @ https://www.projecteuclid.org/journalArticle/Download?urlid=bams%2F1183657188
3. G. Christopher Hruska and Genevieve Walsh, "Relatively hyperbolic groups with planar boundaries" @ https://arxiv.org/html/2405.20428v1 re: some related statements and extensions

## AI-generated notes

<!-- status: Proved (preprint) -->

- **Status:** Proved in an OpenAI preprint dated 23 September 2026 (released 6 October 2026; the repository states that its manuscripts were produced by an internal OpenAI model), not yet refereed; conjectured by Cannon (1991).
- **Task:** An expository write-up or video: a more conceptual proof of Cannon's conjecture and common threads with Gabai's convergence group theorem.
- **Key reference:** [A Modulus Proof of Cannon's Conjecture](https://github.com/openai/math/blob/main/preprints/A-Modulus-Proof-of-Cannons-Conjecture-September-23-2026/paper.pdf), OpenAI, preprint, September 23, 2026.
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- The preprint has not been refereed.
- "Virtually isomorphic to a cocompact Kleinian group" in the description should be read as in Theorem 1.1: a proper cocompact action on $\mathbb H^3$ with finite kernel, whose image may contain orientation-reversing isometries.

### The result

A finitely generated group $G$ is hyperbolic if geodesic triangles in a Cayley graph are uniformly thin; $\partial G$ is the set of asymptote classes of geodesic rays with the visual topology. Cannon's conjecture (Cannon 1991; Cannon–Swenson 1998, Conjecture 5.1): if $\partial G\cong S^2$, then $G$ acts properly and cocompactly by isometries on $\mathbb H^3$.

Theorem 1.1 (OpenAI): if $\partial G\cong S^2$, there is a homomorphism $\rho\colon G\to\mathrm{Isom}(\mathbb H^3)$ with finite kernel whose action is proper ($\lbrace g:\rho(g)K\cap K\ne\emptyset\rbrace$ finite for compact $K$) and cocompact. For torsion-free $G$, $G$ is then the fundamental group of a closed hyperbolic 3-manifold (Corollary 8.1). The circle case is classical: $\partial G\cong S^1$ if and only if $G$ acts properly and cocompactly by isometries on $\mathbb H^2$ (Tukia, Gabai, Casson–Jungreis, Freden).

### How the known proof works

Structure as given in the preprint (Section 1, "The proof in outline"):
- Section 2: with a visual metric on $Z=\partial G$, let $M(n)$ be the combinatorial 2-modulus at scale $a^{-n}$ of paths of diameter at least $d_0$. If $\sup_n M(n)\lt\infty$, $Z$ is quasi-Möbius to the round sphere (Theorem 2.5, Bonk–Kleiner, Bourdon–Kleiner), and Sullivan–Tukia straightening gives the action (Proposition 2.6).
- Section 3: if $M(n)$ is unbounded, crossing duality yields continuous functions with separating level continua and a nonconstant limit $u$ with $(\mathrm{osc} _ {B(x,s)}u)^2\le C\mu(B(x,Cs))$, $\mu$ finite (Proposition 3.7).
- Sections 4–6: exponential growth of the record moduli makes $u$ locally Hölder, and two magnifications by group elements conflict (Proposition 4.5); subexponential growth gives a tree of balls with a probability flow, and same-depth expansions with distinct punctures charge too much measure (Propositions 5.4, 6.1).

### Background

- Cannon (1994), Cannon–Swenson (1998) and Cannon–Floyd–Parry (1999) recast the conjecture as control of discrete moduli at small scales; Bonk–Kleiner (2005) proved it when the Ahlfors-regular conformal dimension of $\partial G$ is attained.
- Other partial routes: quasiconvex surface subgroups (Marković 2013), cubulated groups with planar boundary (Haïssinsky 2015), and drilling (Groves et al.), which reduces the residually finite case to a relative Cannon conjecture; Hruska–Walsh show the relative and absolute conjectures equivalent for torsion-free groups.
- Link with Gabai: uniform convergence actions on perfect metrizable compacta are exactly the boundary actions of non-elementary hyperbolic groups (Bowditch). On $S^1$ they are conjugate to virtually Fuchsian actions (Tukia, Gabai, Casson–Jungreis); on $S^2$ the difficulty is to make the action uniformly quasiconformal, after which Sullivan's and Tukia's theorems apply (Kapovich–Benakli, Section 9).

### Where to start

- [A Modulus Proof of Cannon's Conjecture](https://github.com/openai/math/blob/main/preprints/A-Modulus-Proof-of-Cannons-Conjecture-September-23-2026/paper.pdf), OpenAI, 2026: Section 1 (history and outline) and Section 2 (the classical reduction).
- [Boundaries of hyperbolic groups](https://arxiv.org/abs/math/0202286), I. Kapovich, N. Benakli, 2002: Section 5 (convergence groups, circle boundaries) and Section 9 (Cannon's program).
- [Conformal dimension and Gromov hyperbolic groups with 2-sphere boundary](https://arxiv.org/abs/math/0208135), M. Bonk, B. Kleiner, 2005: Theorems 1.1 and 1.3, the conformal-dimension criterion and its link to the Loewner property.

Prerequisites: hyperbolic groups and visual metrics, convergence groups, quasiconformal and quasisymmetric maps, combinatorial modulus and extremal length, the measurable Riemann mapping theorem.

### References, with links

- OpenAI, “A Modulus Proof of Cannon’s Conjecture,” preprint dated September 23, 2026: <https://github.com/openai/math/tree/main/preprints/A-Modulus-Proof-of-Cannons-Conjecture-September-23-2026>
- D. Gabai, “Convergence groups are Fuchsian groups,” Bull. Amer. Math. Soc. (N.S.) 25 (1991), no. 2, 395–402 (8 pages; the full proof is the Ann. of Math. paper below): <https://www.projecteuclid.org/journalArticle/Download?urlid=bams%2F1183657188>
- G. C. Hruska and G. S. Walsh, “Relatively hyperbolic groups with planar boundaries,” arXiv:2405.20428 (2024), for related statements and extensions: <https://arxiv.org/abs/2405.20428>

### Further references

- D. Gabai, “Convergence groups are Fuchsian groups”, Ann. of Math. (2) 136 (1992), 447–510. <https://doi.org/10.2307/2946597>
- A. Casson, D. Jungreis, “Convergence groups and Seifert fibered 3-manifolds”, Invent. Math. 118 (1994), 441–456. <https://doi.org/10.1007/BF01231540>
- J. W. Cannon, E. L. Swenson, “Recognizing constant curvature discrete groups in dimension 3”, Trans. Amer. Math. Soc. 350 (1998), 809–849. <https://doi.org/10.1090/S0002-9947-98-02107-2>
- M. Bonk, B. Kleiner, “Conformal dimension and Gromov hyperbolic groups with 2-sphere boundary”, Geom. Topol. 9 (2005), 219–246. <https://arxiv.org/abs/math/0208135>
- M. Bourdon, B. Kleiner, “Combinatorial modulus, the combinatorial Loewner property, and Coxeter groups”, Groups Geom. Dyn. 7 (2013), 39–107. <https://arxiv.org/abs/1002.1991>
- D. Groves, P. Haïssinsky, J. F. Manning, D. Osajda, A. Sisto, G. S. Walsh, “Drilling hyperbolic groups” (2024, revised 2026). <https://arxiv.org/abs/2406.14667>

### Lean

#### Official statement

`OAI.CannonRelease.cannon` in [`lean/MathathonProblems/P83_Cannon.lean`](lean/MathathonProblems/P83_Cannon.lean).

```lean
theorem cannon (G : Type u) [Group G] [TopologicalSpace G] [DiscreteTopology G]
    (D : CayleyData G) (hthin : D.ThinTriangles)
    (hsphere : Nonempty (Boundary D ≃ₜ SphereTwo)) :
    ∃ ρ : G →* H3Isom, ProperAction ρ ∧ CocompactAction ρ ∧
      (ρ.ker : Set G).Finite
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/CannonGeometricAction.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Geometry/Cannon/Main.lean>. A Lean-verified claim must not use or copy it.

The statement defines its own hyperbolic groups (thin geodesic triangles in a Cayley graph), Gromov boundary (geodesic rays up to bounded distance) and hyperbolic 3-space (the upper half-space model), since Mathlib has none of them.

#### Mathlib

Mathlib has Cayley graphs (`SimpleGraph.mulCayley`) with graph distance (`SimpleGraph.dist`), word length and the word metric (`Group.Generators.wordLength`, `Group.Generators.normedGroup`), `Metric.gromovProduct`, `EuclideanSpace ℝ (Fin 3)`, `Metric.sphere`, `Real.arcosh`, `IsometryEquiv` and `ProperlyDiscontinuousSMul`. It has no Gromov-hyperbolic spaces or groups, Gromov boundary, hyperbolic 3-space, convergence groups, quasiconformal maps or Kleinian groups; OpenAI's Lean statement defines thin triangles, the ray boundary and the upper half-space metric itself.
