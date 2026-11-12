# 66 · Invariant subspace problem: the Enflo–Read counterexamples

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/066-invariant-subspace-problem-the-enfloread-counterexamples.md`](../problems_original/066-invariant-subspace-problem-the-enfloread-counterexamples.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Invariant subspace problem: the Enflo–Read counterexamples

### Short description of problem (100 words or less)

The invariant subspace problem asks whether every bounded operator on a complex Banach space has a nontrivial closed invariant subspace. For general Banach spaces the answer is no. Enflo and Read constructed counterexamples, Read even on ℓ1. These constructions are long and technical and are known to few people, while the separable Hilbert space case remains open. A clearer understanding of why the counterexamples work, and what fails on Hilbert spaces, would make this classical negative result accessible.

### Submitted Area

Functional analysis; operator theory

### Proposed Tracks

Analysis

### Reference/source material

1. C. J. Read, "A solution to the invariant subspace problem", Bull. London Math. Soc. 16 (1984), 337-401.
2. P. Enflo, "On the invariant subspace problem for Banach spaces", Acta Math. 158 (1987), 213-313.
3. C. J. Read, "A solution to the invariant subspace problem on the space l1", Bull. London Math. Soc. 17 (1985), 305-317.

### Desired outcome

A clear exposition of the counterexample constructions and of what prevents them from working on Hilbert spaces.

## AI-generated notes

<!-- status: Disproved -->

> Written by AI for the earlier problem list, where this was problem 66 (commit `1f49cd4`), and carried over unchanged.

- **Status:** Counterexamples on Banach spaces by P. Enflo (Acta Math. 1987) and C. J. Read (1984; on ℓ1 1985); open on Hilbert space.
- **Task:** A clear exposition of the constructions and why Hilbert spaces resist them.
- **Key reference:** [S. Grivaux and M. Roginskaya, "A general approach to Read's type constructions of operators without non-trivial invariant closed subspaces", Proc. London Math. Soc. 109 (2014), 596–652](https://arxiv.org/abs/1301.6143)
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- Enflo's 2023 preprint (arXiv:2305.15442) claims that every bounded operator on a Hilbert space has a nontrivial closed invariant subspace. arXiv lists no journal publication for it; the Hilbert case is treated here as open.

### The result

The invariant subspace problem asks whether every bounded operator $T$ on an infinite-dimensional separable complex Banach space $X$ has a closed subspace $M\ne\{0\},X$ with $TM\subseteq M$; equivalently, whether some nonzero vector is not cyclic. Enflo (Acta Math. 1987) and Read (1984) constructed Banach spaces with operators having no such subspace, and Read (1985) did it on $\ell^1$:
$$\exists\,T\in B(\ell^1)\ \text{with no nontrivial closed invariant subspace}.$$
Read later treated $c_0$ and $\bigoplus_{\ell^2}J$ (1989) and built operators on $\ell^1$ with no nontrivial closed invariant subset (1988). All known counterexamples live on non-reflexive spaces; the problem is open for reflexive spaces, in particular Hilbert space.

### How the known proof works

- Read-type operators are given by $Te_j=e_{j+1}$, with finitely supported $e_j$ in a basis $(f_j)$ that interleaves blocks of the bases of $\ell^p$ (or $c_0$) and of a second space $Z$.
- The $e_j$ are built on fast-growing intervals: "working intervals" separated by long "lay-off intervals" where $T$ is a weighted shift with weights close to 1; they join the working intervals without side effects.
- Working intervals of type (c) make orbit closures subspaces, type (b) make them totally ordered, and type (a) bring every nonzero orbit close to $e_0$, so every nonzero vector is cyclic.
- Parts (b) and (c) work on Hilbert space. Part (a) needs a basis of $Z$ that is not boundedly complete, which exists iff $Z$ is non-reflexive (Zippin); otherwise a limit $z$ with $T(z+e_0)=0$ appears.

### Background

- Beauzamy (1985) published a simplification of Enflo's example; Read (1986) published a short proof; Read (1997) built a quasinilpotent example on $\ell^1$.
- Positive results include Lomonosov (1973), for operators commuting with a nonzero compact operator, and Argyros–Haydon (2011), a space on which every operator is scalar plus compact and so has an invariant subspace.
- Grivaux and Roginskaya (2008) built Read-type operators on Hilbert space with properties (b) and (c); these still have invariant subspaces. Their Theorem 1.5 (2014) shows that a one-$\varepsilon$ version of (a) on $\ell^2$, for an operator without eigenvectors, would give a Hilbert space counterexample.

### Where to start

- [A general approach to Read's type constructions](https://arxiv.org/abs/1301.6143), S. Grivaux and M. Roginskaya, 2013: Section 2.1 explains the design; Section 5 the Hilbert case.
- [A short proof concerning the invariant subspace problem](https://doi.org/10.1112/jlms/s2-34.2.335), C. J. Read, 1986: a shorter proof by Read.
- [Un opérateur sans sous-espace invariant](https://doi.org/10.1007/BF01202903), B. Beauzamy, 1985: a simplified version of Enflo's example.

Prerequisites: Schauder bases, reflexivity, bounded operators, cyclic vectors.

### References, with links

- C. J. Read, "A solution to the invariant subspace problem", Bull. London Math. Soc. 16 (1984), 337-401. <https://doi.org/10.1112/blms/16.4.337>
- P. Enflo, "On the invariant subspace problem for Banach spaces", Acta Math. 158 (1987), 213-313. <https://doi.org/10.1007/BF02392260>
- C. J. Read, "A solution to the invariant subspace problem on the space l1", Bull. London Math. Soc. 17 (1985), 305-317. <https://doi.org/10.1112/blms/17.4.305>

### Further references

- S. Grivaux and M. Roginskaya, "A general approach to Read's type constructions of operators without non-trivial invariant closed subspaces", Proc. London Math. Soc. 109 (2014), 596–652. <https://arxiv.org/abs/1301.6143>
- C. J. Read, "A short proof concerning the invariant subspace problem", J. London Math. Soc. (2) 34 (1986), 335–348. <https://doi.org/10.1112/jlms/s2-34.2.335>
- B. Beauzamy, "Un opérateur sans sous-espace invariant: simplification de l'exemple de P. Enflo", Integral Equations Operator Theory 8 (1985), 314–384. <https://doi.org/10.1007/BF01202903>
- C. J. Read, "Quasinilpotent operators and the invariant subspace problem", J. London Math. Soc. 56 (1997), 595–606. <https://doi.org/10.1112/S0024610797005486>
- P. Enflo, "On the invariant subspace problem in Hilbert spaces" (2023). <https://arxiv.org/abs/2305.15442>

### Lean

#### Official statement

`InvariantSubspaceProblem.Invariant_subspace_problem_l1` in [`lean/MathathonProblems/P66_ReadL1.lean`](lean/MathathonProblems/P66_ReadL1.lean).

```lean
theorem Invariant_subspace_problem_l1 :
    ∃ (T : (lp (fun (_ : ℕ) => ℂ) 1) →L[ℂ] (lp (fun (_ : ℕ) => ℂ) 1)),
    IsEmpty (ClosedInvariantSubspace T)
```

Source: <https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjectures/Wikipedia/InvariantSubspaceProblem.lean> (adapted as described in the file header).

A Lean proof of this statement already exists: <https://github.com/zblore/fc-read-l1/blob/57ceaa0ecdea86e90d82c1fd241c17e3bdb93e2d/ReadL1/Main.lean>. A Lean-verified claim must not use or copy it.

#### Related Lean formalizations

- [jsp-000024-lomonosov-lean](https://github.com/baobingzhang/jsp-000024-lomonosov-lean/tree/8b43adc9781d70deb3d23bcdf38ec6195683669b): a Lean proof of Lomonosov's invariant subspace theorem.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `lp`, `ContinuousLinearMap`, `Module.End.invtSubmodule`, `IsCompactOperator`, `spectralRadius` and `SchauderBasis`. It has no Lomonosov theorem, no cyclic or hypercyclic vectors and no Zippin-type characterization of reflexivity.
