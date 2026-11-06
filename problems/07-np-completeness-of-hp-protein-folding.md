# 7 · NP-completeness of HP protein folding

**Tracks:** Computation/Applied Math · **Area:** Theoretical computer science, mathematical biology

## Description

Berger and Leighton (RECOMB 1998) and Papadimitriou et al. proved that optimality of an energy level in the hydrophobic-polar protein folding model has an NP-complete decision problem, in the 2D and 3D lattices. Can their complicated proofs be simplified?

## Desired outcome

Ideally a formalized proof in Lean; alternatively, a simplification of the construction(s).

## References

- <https://dl.acm.org/doi/abs/10.1145/279069.279080>

## Official Lean statement

`Mathathon.P07.hp_folding_2d_np_complete`, `Mathathon.P07.hp_folding_3d_np_complete` in [`lean/MathathonProblems/P07_HPFoldingNPComplete.lean`](lean/MathathonProblems/P07_HPFoldingNPComplete.lean).

```lean
theorem hp_folding_2d_np_complete : NPComplete (HPFolding 2)
```

```lean
theorem hp_folding_3d_np_complete : NPComplete (HPFolding 3)
```

Source: written for Mathathon; not taken from an existing formalization.
