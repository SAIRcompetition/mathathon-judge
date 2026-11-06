# 74 · Lagrange inversion

**Tracks:** Combinatorics · **Area:** Enumerative combinatorics / formal power series

## Description

Lagrange inversion gives coefficients of compositional inverses of power series. Analytic and formal proofs exist, but the combinatorial proofs (Raney, Joyal’s species proof, Gessel) are less known. The goal is to compare these proofs and apply them to tree and lattice path enumeration.

## Desired outcome

Formalization of one combinatorial proof, with code verifying the cycle lemma and examples in tree counting.

## References

- Gessel, “A combinatorial proof of the multivariable Lagrange inversion formula,” Journal of Combinatorial Theory Series A 45 (1987)
- Raney, “Functional composition patterns and power series reversion,” Transactions of the AMS 94 (1960)
- Stanley, Enumerative Combinatorics, Vol. 2, Section 5.4

## Official Lean statement

`Mathathon.P74.lagrange_inversion_coeff_pow` in [`lean/MathathonProblems/P74_LagrangeInversion.lean`](lean/MathathonProblems/P74_LagrangeInversion.lean).

```lean
theorem lagrange_inversion_coeff_pow {R : Type*} [CommRing R] [HasUniqueDiv R]
    {P Y : R⟦X⟧} (hY : Y = X * P.subst Y) (n k : ℕ) :
    (n + k) • (Y ^ k).coeff (n + k) = k • (P ^ (n + k)).coeff n
```

Source: <https://github.com/manman4/mathlib4/blob/21d5273c20a3771ded85855b0f429fdc76c1b080/Mathlib/RingTheory/PowerSeries/LagrangeInversion.lean> (adapted as described in the file header).

A Lean proof of this statement already exists: <https://github.com/manman4/mathlib4/blob/21d5273c20a3771ded85855b0f429fdc76c1b080/Mathlib/RingTheory/PowerSeries/LagrangeInversion.lean>. A Lean-verified claim must not use or copy it.
