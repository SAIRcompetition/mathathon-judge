# 119 · Freedman's disc embedding theorem and 4D Poincare

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/119-freedmans-disc-embedding-theorem-and-4d-poincare.md`](../problems_original/119-freedmans-disc-embedding-theorem-and-4d-poincare.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Freedman's disc embedding theorem and 4D Poincare

### Short description of problem (100 words or less)

Formalize Freedman's disc embedding theorem and use it to prove the topological 4D Poincare theorem in Lean. The proof uses difficult infinite constructions, and later accounts have filled in details and repaired gaps in related arguments. We'd follow the modern exposition and check the whole argument explicitly. This would also build a lot of useful machinery for 4-manifold topology.

### Submitted Area

Geometric topology, 4-manifolds

### Proposed Tracks

Geometry

### Reference/source material

Behrens, Kalmar, Kim, Powell and Ray (eds.), The Disc Embedding Theorem (Oxford University Press, 2021): https://academic.oup.com/book/43693

The 4-dimensional disc embedding theorem and dual spheres: https://arxiv.org/abs/2006.05209

Michael Freedman, The topology of four-dimensional manifolds, Journal of Differential Geometry 17 (1982), 357-453.

### Desired outcome

A Lean proof of the disc embedding theorem and the topological 4D Poincare theorem. Make the difficult constructions and dependencies explicit so other topology projects can use them.

## AI-generated notes

<!-- status: Proved -->

> Written by Claude Opus 5.5 on 2026-11-11 from the proposer's text above.

- **Status:** Proved by M. H. Freedman (J. Differential Geom., 1982); the disc embedding theorem for good fundamental groups is Theorem 5.1A of Freedman–Quinn (1990), expounded in detail by Behrens, Kalmár, Kim, Powell and Ray (eds., 2021), with its dual-sphere part supplied by Powell, Ray and Teichner (Selecta Math., 2025).
- **Task:** Formalize the disc embedding theorem in Lean and derive the topological 4-dimensional Poincaré theorem from it.
- **Key reference:** [S. Behrens, B. Kalmár, M. H. Kim, M. Powell and A. Ray (eds.), *The Disc Embedding Theorem*, Oxford University Press, 2021](https://doi.org/10.1093/oso/9780198841319.001.0001)
- **Lean:** No official statement.

### Notes

- The book's Oxford Academic page (first reference) offers the PDF to subscribers only.
- The second reference is by M. Powell, A. Ray and P. Teichner (Selecta Math. 31 (2025), Paper No. 80). It constructs the geometrically dual spheres that Freedman–Quinn's Theorem 5.1A asserts but its proof does not construct, and proves their Proposition 1.6 on generic homotopies, which was stated without proof.
- Freedman's 1982 paper (third reference) treats simply connected 4-manifolds with Casson handles; the route through capped gropes and skyscrapers followed by the book goes back to Freedman (1984) and Freedman–Quinn (1990) (Powell–Ray–Teichner, §1).

### The result

Freedman's theorem: every closed topological 4-manifold homotopy equivalent to $S^4$ is homeomorphic to $S^4$.

Disc embedding theorem (Powell–Ray–Teichner, Theorem A; cf. Freedman–Quinn, Theorem 5.1A). Let $M$ be a connected topological 4-manifold with good fundamental group and $F=(f_1,\dots,f_k)\colon(\sqcup D^2,\sqcup S^1)\to(M,\partial M)$ a continuous map that is a locally flat embedding on the boundary. Suppose there are $g_i\colon S^2\to M$ with $\lambda(f_i,g_j)=\delta_{ij}$ and $\lambda(g_i,g_j)=0=\tilde\mu(g_i)$, where $\lambda$ is the equivariant intersection form with values in $\mathbb Z[\pi_1M]$ and $\tilde\mu$ the reduced self-intersection number. Then there is a locally flat embedding $\bar F$ with the same boundary, with generically immersed framed spheres $\bar g_i$ homotopic to $g_i$ such that $\bar f_i\cap\bar g_j$ is one transverse point if $i=j$ and empty otherwise.

Good groups include all groups of subexponential growth and are closed under subgroups, quotients, extensions and colimits; whether non-abelian free groups are good is open (Powell–Ray–Teichner, §1).

### How the known proof works

- Freedman–Quinn's proof, as outlined by Powell, Ray and Teichner, has three steps. First, upgrade the immersed disc to a 1-storey capped tower with at least four surface stages and the same framed boundary (book, Part II: capped gropes, height raising); Powell–Ray–Teichner change this step to keep geometrically dual spheres.
- Second, every such tower contains a skyscraper, an infinite tower, with the same attaching region (Freedman–Quinn, Proposition 3.8).
- Third, every skyscraper is homeomorphic to $D^2\times D^2$ relative to its attaching region (Freedman–Quinn, Theorem 4.1; book, Parts I and IV), by decomposition space theory: Bing's shrinking criterion, Bing and Whitehead decompositions, the ball to ball theorem. The core $D^2\times0$ is the embedded disc.
- Freedman's 1982 argument covered the simply connected case: every Casson handle is homeomorphic to the open 2-handle $D^2\times\mathbb R^2$.
- The book (Chapters 20, 22) then derives the 5-dimensional topological s-cobordism theorem for good fundamental groups, the Poincaré theorem, surgery and the classification of closed simply connected 4-manifolds.

### Background

- In dimensions $\ge5$ the Whitney trick removes pairs of intersection points along embedded discs, giving Smale's h-cobordism theorem and the Poincaré conjecture (Smale 1961; Newman and Connell for the topological version). In dimension 4 Whitney discs are only immersed; Casson's towers of immersed discs and Freedman's analysis of them overcome this.
- Freedman also classified closed simply connected topological 4-manifolds by intersection form and Kirby–Siebenmann invariant. The smooth 4-dimensional Poincaré conjecture is open.

### Where to start

- [The 4-dimensional disc embedding theorem and dual spheres](https://arxiv.org/abs/2006.05209), M. Powell, A. Ray, P. Teichner, 2020–2025: precise statement, definitions of $\lambda$ and $\tilde\mu$, and an outline of the whole proof in §1.
- [The Disc Embedding Theorem](https://academic.oup.com/book/43693), Behrens et al. (eds.), 2021: Chapter 2 outlines the proof, Chapter 11 states the theorem, Chapter 20 derives the Poincaré theorem.
- [A survey of the foundations of four-manifold theory in the topological category](https://arxiv.org/abs/1910.07372), S. Friedl, M. Nagel, P. Orson, M. Powell, 2019: which foundational results rest on which proofs.

Prerequisites: point-set topology and decomposition spaces, immersions and intersection numbers in $\mathbb Z[\pi_1]$, handle decompositions and h-cobordisms, basic surgery theory.

### References, with links

- S. Behrens, B. Kalmár, M. H. Kim, M. Powell and A. Ray (eds.), *The Disc Embedding Theorem*, Oxford University Press, 2021, doi:10.1093/oso/9780198841319.001.0001. <https://academic.oup.com/book/43693>
- M. Powell, A. Ray and P. Teichner, “The 4-dimensional disc embedding theorem and dual spheres”, Selecta Math. (N.S.) 31 (2025), no. 4, Paper No. 80. <https://arxiv.org/abs/2006.05209>
- M. H. Freedman, “The topology of four-dimensional manifolds”, J. Differential Geom. 17 (1982), 357–453. <https://doi.org/10.4310/jdg/1214437136>

### Further references

- M. H. Freedman, “The disk theorem for four-dimensional manifolds”, Proceedings of the International Congress of Mathematicians (Warsaw, 1983), 1984, 647–663.
- M. H. Freedman and F. Quinn, *Topology of 4-Manifolds*, Princeton Mathematical Series 39, Princeton University Press, 1990. <https://doi.org/10.1515/9781400861064>
- M. H. Freedman and P. Teichner, “4-manifold topology I: subexponential groups”, Invent. Math. 122 (1995), 509–529. <https://doi.org/10.1007/BF01231454>
- S. Friedl, M. Nagel, P. Orson and M. Powell, “A survey of the foundations of four-manifold theory in the topological category”, arXiv:1910.07372. <https://arxiv.org/abs/1910.07372>

### Lean

#### Official statement

This problem has no official Lean statement. The Poincaré theorem can be stated with Mathlib's charted spaces, homotopy equivalences and homeomorphisms (as below); the disc embedding theorem also needs topological immersions, equivariant intersection numbers and good groups, which Mathlib lacks.

#### Related Lean formalizations

- `LeanEval.Topology.poincare_4d_topological` in [lean-eval](https://github.com/leanprover/lean-eval/blob/85a88c37f80170d9f08651dc63ce6b81a8a48cb9/LeanEval/Topology/Poincare4DTopological.lean): every Hausdorff 4-manifold homotopy equivalent to $S^4$ is homeomorphic to $S^4$ (statement only).

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has charted spaces and manifolds with boundary (`ChartedSpace`, `ModelWithCorners.boundary`), `ContinuousMap.HomotopyEquiv`, `SimplyConnectedSpace`, `FundamentalGroup`, `HomotopyGroup`, singular homology (`AlgebraicTopology.singularHomologyFunctor`) and smooth immersions (`Manifold.IsImmersionAt`). The repository's `Wanted` library states the generalized Poincaré conjecture as `proof_wanted ContinuousMap.HomotopyEquiv.nonempty_homeomorph_sphere` (`Wanted/Geometry/Manifold/PoincareConjecture.lean`). There are no topological immersions or transversality, no equivariant intersection form, no Whitney moves, gropes, Casson handles or decomposition space theory, and no h-cobordism theorem.
