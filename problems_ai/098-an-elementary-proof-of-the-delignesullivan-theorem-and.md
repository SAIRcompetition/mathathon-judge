# 98 · An Elementary Proof of the Deligne–Sullivan Theorem and Virtual Stable Parallelizability of Compact Hyperbolic Manifolds

## From the proposer

- **Area:** Differential Geometry, Algebraic Topology, Geometric Topology, Hyperbolic Geometry, and Algebraic Geometry.
- **Tracks:** Geometry

### Description

A theorem of Sullivan, building on joint work with Deligne, establishes that every compact hyperbolic manifold is virtually stably parallelizable; that is, some finite-sheeted cover has a stably trivial tangent bundle. Existing proofs rely on sophisticated techniques from algebraic geometry, étale homotopy theory, and arithmetic topology. The problem is to find a more elementary and accessible proof of this result, ideally avoiding the Deligne–Sullivan theorem, or alternatively to develop a simpler proof of the Deligne–Sullivan theorem itself. The challenge is to replace the technically demanding arguments with more direct geometric, topological, or algebraic methods.

### Desired outcome

The primary goal is to develop a simpler, more accessible proof that every compact hyperbolic manifold is virtually stably parallelizable, preferably without relying on the technically demanding Deligne–Sullivan theorem. Alternatively, one could investigate a more elementary proof of the Deligne–Sullivan theorem itself.

### References

1. D. Sullivan, *Hyperbolic Geometry and Homeomorphisms*, in Geometric Topology, Academic Press (1979), pp. 543–555. Particularly the section "Hyperbolic space forms," pp. 9–10 of the original manuscript.
https://repo-archives.ihes.fr/FONDS_IHES/I_Prepublications/SULLIVAN/1974-1995/M_78_200B/M_78_200B.pdf

2. P. Deligne and D. Sullivan, *Fibrés vectoriels complexes à groupe structural discret*, Comptes Rendus de l'Académie des Sciences de Paris, Série A, Vol. 281 (1975), pp. 1081–1083.
https://publications.ias.edu/sites/default/files/28_FibresVectoriels.pdf

3. D. Sullivan, *Genetics of Homotopy Theory and the Adams Conjecture*, Annals of Mathematics, Vol. 100, No. 1 (1974), pp. 1–79. Particularly Theorem 3.1 concerning the Hasse principle for maps.
https://doi.org/10.2307/1970841

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved by D. Sullivan (IHES preprint 1978, published 1979) from the theorem of P. Deligne and D. Sullivan (C. R. Acad. Sci. Paris 1975) that flat complex vector bundles over finite complexes become trivial on finite covers; both proofs use étale homotopy theory.
- **Task:** A more elementary proof that every compact hyperbolic manifold is virtually stably parallelizable, or a simpler proof of the Deligne–Sullivan theorem.
- **Key reference:** [P. Deligne and D. Sullivan, “Fibrés vectoriels complexes à groupe structural discret”, C. R. Acad. Sci. Paris Sér. A 281 (1975), 1081–1083](https://publications.ias.edu/sites/default/files/28_FibresVectoriels.pdf)
- **Lean:** No official statement.

### Notes

- The Deligne–Sullivan note treats complex vector bundles, with structure group $GL_n(\mathbb C)$. For tangent bundles Sullivan needs the same statement for the complexified orthogonal group $O(n+1,\mathbb C)$, which is homotopy equivalent to $O(n+1)$; his paper only says that the method of the note applies. Chatterji, Mislin and Pittet (2016) later proved the statement for connected complex Lie groups whose radical has simply connected derived group, which includes $SO(n+1,\mathbb C)$, by the same completion technique.
- The proposer's first link is the IHES preprint (January 1978), where the section "Hyperbolic space forms" is on pp. 9–10.

### The result

**Theorem (Sullivan).** Every compact hyperbolic manifold $M=\Gamma\backslash\mathbb H^n$ has a finite cover $\tilde M$ that is stably parallelizable: $T\tilde M\oplus\varepsilon^k$ is trivial for some $k$.

Reduction to flat bundles: in the hyperboloid model $\mathbb H^n\subset\mathbb R^{n,1}$, one has $\mathbb R^{n+1}=T_x\mathbb H^n\oplus\mathbb Rx$ at each point $x$, and $x\mapsto x$ is a $\Gamma$-invariant section of the second summand. Hence $TM\oplus\varepsilon$ is the flat bundle given by $\Gamma\subset O(n,1)\subset GL_{n+1}(\mathbb R)$, and it suffices that flat bundles with orthogonal structure group become trivial on a finite cover.

**Theorem (Deligne–Sullivan 1975).** Let $V$ be a complex local system of rank $n$ on a compact polyhedron $X$, and $\mathcal V$ the associated complex vector bundle. There is a finite covering $\tilde X\to X$ on which $\mathcal V$ is trivial as a topological vector bundle.

In low dimensions the theorem is elementary or nearly so: orientable surfaces are stably parallelizable and orientable 3-manifolds are parallelizable. A compact oriented hyperbolic 4-manifold has signature 0, so it is stably parallelizable if and only if it is spin (Martelli–Riolo–Slavich 2020, §1); Combined with Long and Reid's result that hyperbolic manifolds are virtually spin, this would already settle dimension 4; that combination is an inference made for these notes, not a statement found in the sources, and Long and Reid's paper itself was not checked. Passing to a cover is necessary: Martelli, Riolo and Slavich found compact orientable hyperbolic $n$-manifolds without spin structure for all $n\ge4$.

### How the known proof works

Deligne–Sullivan:
- The holonomy $\rho:\pi_1(X)\to GL_n(\mathbb C)$ takes values in $GL_n(A)$ for a finitely generated ring $A\subset\mathbb C$. Choose maximal ideals $\mathfrak m_1,\mathfrak m_2$ of $A$ with finite residue fields of different characteristics. Let $\tilde X$ be the cover given by the kernel of reduction modulo $\mathfrak m_1$ and $\mathfrak m_2$.
- Triviality of $\mathcal V$ on $\tilde X$ amounts to a map into a Postnikov stage of a Grassmannian being null-homotopic. The target is simply connected, so by Sullivan's Hasse principle for maps (Genetics, Theorem 3.1) it suffices that its $\ell$-adic completion is null for every prime $\ell$.
- For each $\ell$, use the $\mathfrak m_i$ of residue characteristic $\ne\ell$. Realize $X$ as the complex points of a scheme over $\mathbb Z$ built from a triangulation, so that the bundle is algebraic over $A$. Comparing étale homotopy types in characteristic 0 and modulo $\mathfrak m_i$ identifies the completed map with that of the trivial representation, because $\rho\equiv1\bmod\mathfrak m_i$.
- Remark (a) of the note: one prime $p$ suffices if $H_*(X)$ has no $p$-torsion and $2p\ge\dim X$, since Chern classes then detect the Postnikov stage after localizing at $p$.

### Background

- Real Chern classes of flat bundles vanish (Chern–Weil); the Deligne–Sullivan theorem strengthens this to triviality on a finite cover.
- For real bundles the orthogonal structure group matters. Flat $SL_2(\mathbb R)$-bundles over surfaces can have nonzero Euler class (remark (e) of the note), and Millson (1979) found flat real bundles with vanishing Euler class that are not trivial on any finite cover. Deligne and Sullivan asked whether the real analogue holds when the structure group reduces to $SL_n(\mathbb Z)$, or for $n$ odd.
- Sullivan used these manifolds, whose finite covers become parallelizable after removing a point, in place of tori in Kirby's torus trick, to study Lipschitz and quasiconformal homeomorphisms.
- Bustamante, Reyes and Riolo (arXiv 2026) build infinite towers of finite covers of closed hyperbolic manifolds in which no cover is stably parallelizable or spin.

### Where to start

- [Fibrés vectoriels complexes à groupe structural discret](https://publications.ias.edu/sites/default/files/28_FibresVectoriels.pdf), P. Deligne, D. Sullivan, 1975: the whole proof in three pages, with remarks and open problems.
- [Hyperbolic geometry and homeomorphisms](https://repo-archives.ihes.fr/FONDS_IHES/I_Prepublications/SULLIVAN/1974-1995/M_78_200B/M_78_200B.pdf), D. Sullivan, IHES preprint 1978: pp. 9–10 give the reduction from tangent bundles to flat orthogonal bundles.
- [Compact hyperbolic manifolds without spin structures](https://arxiv.org/abs/1904.12720), B. Martelli, S. Riolo, L. Slavich, 2019: §1 states the theorem, its low-dimensional meaning and why covers are needed.
- [Flat bundles with complex analytic holonomy](https://arxiv.org/abs/1308.1412), I. Chatterji, G. Mislin, C. Pittet, 2013: extends the theorem to other complex Lie groups and explains the strategy in §1.

Prerequisites: vector bundles and characteristic classes, flat bundles and holonomy, the hyperboloid model and lattices in $O(n,1)$, residual finiteness; for the original proof, $\ell$-adic completion of spaces and étale homotopy.

### References, with links

- D. Sullivan, “Hyperbolic geometry and homeomorphisms,” in *Geometric Topology* (Proc. Georgia Topology Conf., Athens, Ga., 1977), Academic Press (1979), 543–555; section “Hyperbolic space forms,” pp. 9–10 of the IHES preprint (January 1978). <https://repo-archives.ihes.fr/FONDS_IHES/I_Prepublications/SULLIVAN/1974-1995/M_78_200B/M_78_200B.pdf>
- P. Deligne and D. Sullivan, “Fibrés vectoriels complexes à groupe structural discret,” C. R. Acad. Sci. Paris Sér. A 281 (1975), 1081–1083. <https://publications.ias.edu/sites/default/files/28_FibresVectoriels.pdf>
- D. Sullivan, “Genetics of homotopy theory and the Adams conjecture,” Ann. of Math. 100 (1974), 1–79; Theorem 3.1 (Hasse principle for maps). <https://doi.org/10.2307/1970841>

### Further references

- B. Martelli, S. Riolo and L. Slavich, “Compact hyperbolic manifolds without spin structures,” Geom. Topol. 24 (2020), 2647–2674. <https://arxiv.org/abs/1904.12720>
- D. D. Long and A. W. Reid, “Virtually spinning hyperbolic manifolds,” Proc. Edinb. Math. Soc. 63 (2020), 305–313. <https://doi.org/10.1017/S0013091519000324>
- I. Chatterji, G. Mislin and C. Pittet, “Flat bundles with complex analytic holonomy,” Q. J. Math. 67 (2016), 743–755. <https://arxiv.org/abs/1308.1412>
- J. J. Millson, “Real vector bundles with discrete structure group,” Topology 18 (1979), 83–89. <https://doi.org/10.1016/0040-9383(79)90016-8>
- M. Bustamante, E. Reyes and S. Riolo, “Stably tangential strict hyperbolization,” arXiv:2604.05956 (2026). <https://arxiv.org/abs/2604.05956>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs compact hyperbolic manifolds of any dimension and stable triviality of their tangent bundles, which Mathlib does not have.

#### Mathlib

Mathlib has topological vector bundles (`VectorBundle`, `Bundle.Trivialization`, the trivial bundle `Bundle.Trivial`), tangent bundles of manifolds (`TangentBundle`), covering maps (`IsCoveringMap`), fundamental groups (`FundamentalGroup`), orthogonal groups (`Matrix.orthogonalGroup`) and the hyperbolic plane (`UpperHalfPlane`). It has no hyperbolic space in higher dimensions, no lattices in $O(n,1)$, no characteristic classes, no classification of vector bundles by maps to Grassmannians and no étale homotopy theory.
