# 66 · The Enflo–Read counterexamples

**Tracks:** Analysis · **Area:** Functional analysis; operator theory

## Description

The invariant subspace problem asks whether every bounded operator on a complex Banach space has a nontrivial closed invariant subspace. For general Banach spaces the answer is no. Enflo and Read constructed counterexamples, Read even on ℓ1. These constructions are long and technical and are known to few people, while the separable Hilbert space case remains open. A clearer understanding of why the counterexamples work, and what fails on Hilbert spaces, would make this classical negative result accessible.

## Desired outcome

A clear exposition of the counterexample constructions and of what prevents them from working on Hilbert spaces.

## References

- C. J. Read, "A solution to the invariant subspace problem", Bull. London Math. Soc. 16 (1984), 337-401.
- P. Enflo, "On the invariant subspace problem for Banach spaces", Acta Math. 158 (1987), 213-313.
- C. J. Read, "A solution to the invariant subspace problem on the space l1", Bull. London Math. Soc. 17 (1985), 305-317.

## Official Lean statement

`InvariantSubspaceProblem.Invariant_subspace_problem_l1` in [`lean/MathathonProblems/P66_ReadL1.lean`](lean/MathathonProblems/P66_ReadL1.lean).

```lean
theorem Invariant_subspace_problem_l1 :
    ∃ (T : (lp (fun (_ : ℕ) => ℂ) 1) →L[ℂ] (lp (fun (_ : ℕ) => ℂ) 1)),
    IsEmpty (ClosedInvariantSubspace T)
```

Source: <https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjectures/Wikipedia/InvariantSubspaceProblem.lean> (adapted as described in the file header).

A Lean proof of this statement already exists: <https://github.com/zblore/fc-read-l1/blob/57ceaa0ecdea86e90d82c1fd241c17e3bdb93e2d/ReadL1/Main.lean>. A Lean-verified claim must not use or copy it.
