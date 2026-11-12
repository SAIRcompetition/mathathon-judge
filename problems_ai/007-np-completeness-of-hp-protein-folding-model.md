# 7 · NP-completeness of HP protein folding model

## From the proposer

- **Area:** Theoretical computer science, mathematical biology
- **Tracks:** Computation/Applied Math

### Description

Berger and Leighton (RECOMB 1998) and Papadimitriou et al. proved that optimality of an energy level in the hydrophobic-polar protein folding model has an NP-complete decision problem, in the 2D and 3D lattices. Can their complicated proofs be simplified?

### Desired outcome

Ideally a formalized proof in Lean; alternatively, a simplification of the construction(s).

### References

https://dl.acm.org/doi/abs/10.1145/279069.279080

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved for the square lattice by Crescenzi, Goldman, Papadimitriou, Piccolboni and Yannakakis (1998) and for the cubic lattice by B. Berger and T. Leighton (1998).
- **Task:** A formal proof, or simpler hardness reductions, for HP folding.
- **Key reference:** [B. Berger and T. Leighton, Protein folding in the hydrophobic-hydrophilic (HP) model is NP-complete, J. Comput. Biol. 5 (1998), 27–40](https://doi.org/10.1089/cmb.1998.5.27)
- **Lean:** Official statement.

### Notes

- The page's only reference is Berger–Leighton (cubic lattice); the square-lattice paper is listed below.

### The result

An HP sequence is a word over {H, P}; a fold is a self-avoiding walk on $\mathbb Z^2$ or $\mathbb Z^3$; its score is the number of H–H pairs that are lattice neighbours but not consecutive in the chain. Given a sequence and $k$, the problem asks whether some fold has at least $k$ H–H contacts. It is in NP and is NP-hard on $\mathbb Z^2$ (Crescenzi et al., J. Comput. Biol. 1998) and on $\mathbb Z^3$ (Berger and Leighton, J. Comput. Biol. 1998; RECOMB 1998). The official Lean statement asserts both.

### How the known proof works

- Square lattice (Crescenzi et al.): a reduction from Hamiltonian cycle; the paper treats both multi-string and single-string folding.
- The construction uses Trevisan codes, which map the vertices of a graph to the hypercube so that adjacency is reflected in Hamming distance.
- Cubic lattice (Berger–Leighton): a reduction from bin packing (strongly NP-complete) shows that PERFECT HP STRING-FOLD (the $n^3$ H's must fill an $n\times n\times n$ cube) is NP-complete and that HP folding is NP-hard.
- Key lemma: the optimal folds of $H^{N^3}$ are the $N\times N\times N$ cubes, via the bound $p\le\sqrt{ABC}$ for $p$ grid points with $A,B,C$ points aligned along the axes.
- Istrail and Lam describe both proofs as "quite involved".

### Background

- Earlier NP-hardness results used ad hoc models (Ngo–Marks 1992, Fraenkel, Unger–Moult 1993, Paterson–Przytycka 1996).
- Hart and Istrail gave a 3/8-approximation in 3D and a 1/4-approximation in 2D; Newman improved 2D to 1/3.
- Aichholzer et al. (2003) note that requiring a unique optimal fold defeats both hardness proofs, and ask whether hardness persists.

### Where to start

- [Combinatorial algorithms for protein folding in lattice models: a survey of mathematical results](https://www.intlpress.com/site/pub/files/_fulltext/journals/cis/2009/0009/0004/CIS-2009-0009-0004-a002.pdf), Istrail and Lam, 2009: Section 4 summarizes both proofs.
- [Long proteins with unique optimal foldings in the H-P model](https://arxiv.org/abs/cs/0201018), Aichholzer et al., 2002: definitions, known results, open problems.
- Prerequisites: polynomial-time reductions, Hamiltonian cycle and bin packing hardness, lattice geometry.

### Further references

- P. Crescenzi, D. Goldman, C. Papadimitriou, A. Piccolboni and M. Yannakakis, On the complexity of protein folding, J. Comput. Biol. 5 (1998), 423–465 <https://doi.org/10.1089/cmb.1998.5.423>
- B. Berger and T. Leighton, Protein folding in the hydrophobic-hydrophilic (HP) model is NP-complete, J. Comput. Biol. 5 (1998), 27–40 <https://doi.org/10.1089/cmb.1998.5.27>
- S. Istrail and F. Lam, Combinatorial algorithms for protein folding in lattice models: a survey of mathematical results, Commun. Inf. Syst. 9 (2009), 303–346 <https://doi.org/10.4310/CIS.2009.v9.n4.a2>
- O. Aichholzer, D. Bremner, E. D. Demaine, H. Meijer, V. Sacristán and M. Soss, Long proteins with unique optimal foldings in the H-P model, Comput. Geom. 25 (2003), 139–159 <https://arxiv.org/abs/cs/0201018>

### Lean

#### Official statement

`Mathathon.P07.hp_folding_2d_np_complete`, `Mathathon.P07.hp_folding_3d_np_complete` in [`lean/MathathonProblems/P07_HPFoldingNPComplete.lean`](lean/MathathonProblems/P07_HPFoldingNPComplete.lean).

```lean
theorem hp_folding_2d_np_complete : NPComplete (HPFolding 2)
```

```lean
theorem hp_folding_3d_np_complete : NPComplete (HPFolding 3)
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/DirectedFeedback.lean> (Apache-2.0), for NP as verification by a finite-alphabet `Turing.FinTM2`, copied unchanged; the reductions, the HP model and the two theorems are written by AI for Mathathon (see the file header).

#### Mathlib

Mathlib has polynomial-time Turing machines (`Turing.TM2ComputableInPolyTime`) and Hamiltonian walks (`SimpleGraph.Walk.IsHamiltonian`). It has no NP, no NP-completeness or Cook–Levin theorem, and no lattice folds; the official statement defines `InNP`, `NPComplete` and `HPFolding` itself.
