# 64 · The Specht problem

**Tracks:** Algebra/Number Theory · **Area:** Associative Algebra, Polynomial Identity Theory (PI-Algebras), Universal Algebra

## Description

A polynomial identity of an associative algebra is a noncommutative polynomial that vanishes under every substitution of algebra elements.

(a) Construct an infinite system of polynomial identities that is not finitely based, working over a field of positive characteristic.

(b) Prove that, over an infinite field, if the total number of distinct variables occurring in a system of polynomial identities is bounded, then the entire system follows from a finite subsystem.

Investigate the connection with Specht's problem and T-ideals.

## Desired outcome

An explicit example of an infinitely based system of polynomial identities in an associative algebra, with a rigorous proof that no finite subsystem generates all the identities. Participants should also prove the finite basis property for systems involving a bounded number of variables under appropriate assumptions on the base field. Alternative constructions and extensions to different characteristics are welcome.

## References

- A. Ya. Belov, Counterexamples to the Specht Problem. Sbornik: Mathematics, 191(3), 329–340 (2000). <https://www.mathnet.ru/eng/sm460>
- A. R. Kemer, Identities of Finitely Generated Algebras over an Infinite Field. Mathematics of the USSR-Izvestiya, 37(1), 69–96 (1991). <https://doi.org/10.1070/IM1991v037n01ABEH002053>
- N. I. Sandu, Infinite Independent Systems of the Identities of the Associative Algebra over an Infinite Field of Characteristic p > 0. Czechoslovak Mathematical Journal, 55(1), 1–23 (2005). <https://dml.cz/handle/10338.dmlcz/127956>

## Official Lean statement

`Mathathon.P64.exists_tIdeal_not_finitelyBased`, `Mathathon.P64.exists_finite_subsystem` in [`lean/MathathonProblems/P64_Specht.lean`](lean/MathathonProblems/P64_Specht.lean).

```lean
theorem exists_tIdeal_not_finitelyBased (p : ℕ) (hp : p.Prime) [CharP K p] [Infinite K] :
    ∃ I : Submodule K (FreeNUAlg K), IsTIdeal I ∧ ¬ IsFinitelyBased I
```

```lean
theorem exists_finite_subsystem [Infinite K] (m : ℕ) (S : Set (FreeNUAlg K))
    (hS : S ⊆ NonUnitalAlgebra.adjoin K (var K '' Set.Iio m)) :
    ∃ S₀ ⊆ S, S₀.Finite ∧ tIdealSpan S₀ = tIdealSpan S
```

Source: written for Mathathon; not taken from an existing formalization.
