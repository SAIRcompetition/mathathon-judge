# 27 · Categorical groups and homotopy types

## From the proposer

- **Area:** algebraic topology
- **Tracks:** Algebra/Number Theory, Geometry

### Description

Loday’s theorem states that cat^n-groups (equivalently, crossed n-cubes) model pointed connected homotopy (n+1)-types. The original 1982 proof had gaps; complete proofs were later given by Porter (via simplicial groups) and by Bullejos–Cegarra–Duskin (via multisimplicial groups). Even the corrected proofs are hard to follow: the delicate steps are the exactness of nerves of cat^n-groups under iterated fiber products and the verification of the hypotheses of the Bousfield–Friedlander theorem. No formalization exists, and no exposition of the n=2 case is accessible to non-specialists.

### Desired outcome

A Lean formalization of the n=1 case: crossed modules, cat^1-groups, their equivalence, and the equivalence of the resulting homotopy category with pointed connected 2-types. (b) A self-contained, illustrated exposition of the n=2 case (crossed squares and 3-types), with explicit treatment of the two delicate steps above and worked examples such as the crossed square of a pair of normal subgroups. A stretch goal is a sketch of how the general-n proof reduces to these two steps.

### References

J.-L. Loday, “Spaces with finitely many non-trivial homotopy groups,” J. Pure Appl. Algebra 24 (1982), 179–202;  T. Porter, “n-types of simplicial groups and crossed n-cubes,” Topology 32 (1993), 5–24;  M. Bullejos, A. M. Cegarra, J. Duskin, “On cat^n-groups and homotopy types,” J. Pure Appl. Algebra 86 (1993), 135–154

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved by Loday (1982) with some details wrong; corrected proofs by Porter (1993) and Bullejos–Cegarra–Duskin (1993); the case $n=1$ goes back to Mac Lane and Whitehead (1950).
- **Task:** A Lean formalization for $n=1$; an illustrated exposition of crossed squares.
- **Key reference:** [n-types of simplicial groups and crossed n-cubes](https://doi.org/10.1016/0040-9383%2893%2990033-R), T. Porter, Topology 32 (1993), 5–24.
- **Lean:** Official statement.

### Notes

- Expository material on $n=2$ exists: Chapter 5 of Porter's lecture notes *The Crossed Menagerie* treats crossed squares, cat$^2$-groups and the crossed square of a simplicial group, and Arvasi–Odabaş–Wensley (J. Symbolic Comput., 2023) give examples, including the crossed square of two normal subgroups, and GAP algorithms.

### The result

A cat$^n$-group is a group $G$ with endomorphisms $s_i,t_i$ ($1\le i\le n$) such that $s_it_i=t_i$, $t_is_i=s_i$, $[\ker s_i,\ker t_i]=1$, and maps with different indices commute: $n$ independent cat$^1$-structures. Loday's theorem: cat$^n$-groups model pointed connected homotopy $(n+1)$-types. Ellis–Steiner (1987): cat$^n$-groups are equivalent to crossed $n$-cubes (crossed modules for $n=1$, crossed squares for $n=2$). In Porter's form, with simplicial groups modelling connected homotopy types,
$$M(-,n)\colon\ \mathrm{Ho}_n(\mathbf{SimpGrp})\ \xrightarrow{\ \simeq\ }\ \mathrm{Ho}(\mathbf{Crs}_n),$$
where $\mathrm{Ho}(\mathbf{Crs}_n)$ inverts the trivial epimorphisms of crossed $n$-cubes. Bullejos, Cegarra and Duskin (1993) gave a proof using multisimplicial groups.

### How the known proof works

Porter's approach, as summarized in *The Crossed Menagerie*, §5.5:
- From a simplicial group $G$ build the crossed $n$-cube $M(G,n)$: each $M(G,n)_A$ is an intersection of kernels of face maps modulo the $d_0$-image of a similar intersection one dimension up; the $h$-maps are commutators.
- $M(G,n)$ is a morphism of crossed $(n-1)$-cubes whose cokernel is $M(G,n-1)$ and whose kernel is $\pi_n(G)$ (Proposition 50).
- Conversely, a crossed $n$-cube gives an $n$-simplicial group by iterated nerves and, by the diagonal, a simplicial group; one more nerve gives the classifying space.
- Applying $M(-,n)$ to this simplicial group returns a crossed $n$-cube quasi-isomorphic to the original. Bullejos–Cegarra–Duskin work instead with cat$^n$-groups and more simplicial methods.

### Background

- Mac Lane and Whitehead (1950): crossed modules model connected homotopy 2-types ("3-types" in their terminology).
- Brown and Spencer (1976): crossed modules are equivalent to internal categories in groups, that is, cat$^1$-groups.
- Brown and Loday (1987): a van Kampen theorem for the fundamental cat$^n$-group of an $n$-cube of spaces.
- Paoli (2009): weakly globular cat$^n$-groups, a subclass with better homotopical properties that still models all connected $(n+1)$-types.
- The GAP package XMod computes crossed squares and cat$^2$-groups; Arvasi–Odabaş–Wensley list the 1,000 cat$^2$-groups on groups of order at most 30.

### Where to start

- [The Crossed Menagerie](https://ncatlab.org/timporter/files/menagerie11.pdf), T. Porter, 2012: Chapters 2–3 for crossed modules and 2-types, Chapter 5 for crossed squares and Loday's theorem.
- [Computing 3-dimensional groups: crossed squares and cat$^2$-groups](https://arxiv.org/abs/1911.12799), Z. Arvasi, A. Odabaş, C. D. Wensley, 2019: definitions, examples and algorithms for $n=2$.
- [n-types of simplicial groups and crossed n-cubes](https://doi.org/10.1016/0040-9383%2893%2990033-R), T. Porter, 1993: the full proof via simplicial groups.

Prerequisites: group actions and semidirect products, basic category theory, simplicial groups, homotopy groups and Postnikov truncations.

### References, with links

- J.-L. Loday, “Spaces with finitely many non-trivial homotopy groups,” J. Pure Appl. Algebra 24 (1982), 179–202. <https://doi.org/10.1016/0022-4049(82)90014-7>
- T. Porter, “n-types of simplicial groups and crossed n-cubes,” Topology 32 (1993), 5–24. <https://doi.org/10.1016/0040-9383(93)90033-R>
- M. Bullejos, A. M. Cegarra, and J. Duskin, “On cat^n-groups and homotopy types,” J. Pure Appl. Algebra 86 (1993), 135–154. <https://doi.org/10.1016/0022-4049(93)90099-F>

### Further references

- T. Porter, "The Crossed Menagerie: an introduction to crossed gadgetry and cohomology in algebra and topology", lecture notes, 2012. <https://ncatlab.org/timporter/files/menagerie11.pdf>
- G. Ellis, R. Steiner, "Higher-dimensional crossed modules and the homotopy groups of (n+1)-ads", J. Pure Appl. Algebra 46 (1987), 117–136. <https://doi.org/10.1016/0022-4049(87)90089-2>
- R. Brown, C. B. Spencer, "G-groupoids, crossed modules and the fundamental groupoid of a topological group", Indag. Math. 79 (1976), 296–302. <https://doi.org/10.1016/1385-7258(76)90068-8>
- S. Mac Lane, J. H. C. Whitehead, "On the 3-type of a complex", Proc. Natl. Acad. Sci. USA 36 (1950), 41–48. <https://doi.org/10.1073/pnas.36.1.41>
- Z. Arvasi, A. Odabaş, C. D. Wensley, "Computing 3-dimensional groups: crossed squares and cat²-groups", J. Symbolic Comput. 114 (2023), 267–281. <https://arxiv.org/abs/1911.12799>

### Lean

#### Official statement

`Mathathon.P27.nonempty_equivalence` in [`lean/MathathonProblems/P27_CrossedModulesCatOne.lean`](lean/MathathonProblems/P27_CrossedModulesCatOne.lean).

```lean
theorem nonempty_equivalence : Nonempty (CrossedModule.{u} ≌ CatOneGroup.{u})
```

Source: written by AI for Mathathon; not taken from an existing formalization.

This statement covers only the algebraic part of outcome (a): the equivalence between crossed modules and cat¹-groups. The equivalence with pointed connected 2-types is not stated, because Mathlib cannot yet express it.

#### Related Lean formalizations

- [Crossed modules and internal Grp categories: both constructions](https://prove2.me/theorems/2929b219-3cac-4c1e-a6fa-b05e7744aa1c), Prove2Me: a Lean statement of the two constructions between crossed modules and internal categories in groups (open, not proved there).

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has group actions by automorphisms (`MulDistribMulAction`), semidirect products (`SemidirectProduct`), equivalences of categories (`CategoryTheory.Equivalence`), simplicial objects and simplicial sets (`SimplicialObject`, `SSet`), the nerve of a category (`CategoryTheory.nerve`), Kan complexes and topological homotopy groups (`HomotopyGroup`). It has no crossed modules, cat$^n$-groups, simplicial groups as a homotopy theory, or homotopy category of $n$-types.
