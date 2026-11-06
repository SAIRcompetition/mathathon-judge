# 4 · An unrepresentable finite lattice

**Tracks:** Algebra/Number Theory · **Area:** Universal algebra

## Description

OpenAI solved the finite lattice representation problem by finding a finite lattice that is not isomorphic to the congruence lattice of any finite algebra. However, the minimum size of such a lattice is open. It is known that it is at least 8, and OpenAI gave some astronomical upper bounds. Can we narrow it down further?

## Desired outcome

A specific upper bound like maybe n<=10^{10^10} with an understandable proof.

## References

- <https://github.com/openai/math/tree/main/preprints/A-Negative-Solution-to-the-Finite-Lattice-Representation-Problem-September-24-2026>

## Official Lean statement

`Mathathon.P04.exists_not_representable` in [`lean/MathathonProblems/P04_UnrepresentableLattice.lean`](lean/MathathonProblems/P04_UnrepresentableLattice.lean).

```lean
theorem exists_not_representable :
    ∃ (L : Type) (_ : Lattice L), Finite L ∧ Nonempty L ∧ ¬ Representable L
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Algebra/Universal/Congruence.lean> (adapted as described in the file header).
