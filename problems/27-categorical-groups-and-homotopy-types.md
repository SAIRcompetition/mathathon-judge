# 27 · Categorical groups and homotopy types

**Tracks:** Algebra/Number Theory, Geometry · **Area:** Algebraic topology

## Description

Loday’s theorem states that cat^n-groups (equivalently, crossed n-cubes) model pointed connected homotopy (n+1)-types. The original 1982 proof had gaps; complete proofs were later given by Porter (via simplicial groups) and by Bullejos–Cegarra–Duskin (via multisimplicial groups). Even the corrected proofs are hard to follow: the delicate steps are the exactness of nerves of cat^n-groups under iterated fiber products and the verification of the hypotheses of the Bousfield–Friedlander theorem. No formalization exists, and no exposition of the n=2 case is accessible to non-specialists.

## Desired outcome

(a) A Lean formalization of the n=1 case: crossed modules, cat^1-groups, their equivalence, and the equivalence of the resulting homotopy category with pointed connected 2-types. (b) A self-contained, illustrated exposition of the n=2 case (crossed squares and 3-types), with explicit treatment of the two delicate steps above and worked examples such as the crossed square of a pair of normal subgroups. A stretch goal is a sketch of how the general-n proof reduces to these two steps.

## References

- J.-L. Loday, “Spaces with finitely many non-trivial homotopy groups,” J. Pure Appl. Algebra 24 (1982), 179–202.
- T. Porter, “n-types of simplicial groups and crossed n-cubes,” Topology 32 (1993), 5–24.
- M. Bullejos, A. M. Cegarra, and J. Duskin, “On cat^n-groups and homotopy types,” J. Pure Appl. Algebra 86 (1993), 135–154.

## Official Lean statement

`Mathathon.P27.nonempty_equivalence` in [`lean/MathathonProblems/P27_CrossedModulesCatOne.lean`](lean/MathathonProblems/P27_CrossedModulesCatOne.lean).

```lean
theorem nonempty_equivalence : Nonempty (CrossedModule.{u} ≌ CatOneGroup.{u})
```

Source: written for Mathathon; not taken from an existing formalization.

This statement covers only the algebraic part of outcome (a): the equivalence between crossed modules and cat¹-groups. The equivalence with pointed connected 2-types is not stated, because Mathlib cannot yet express it.
