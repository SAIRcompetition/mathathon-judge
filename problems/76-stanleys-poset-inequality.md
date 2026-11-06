# 76 · Stanley's poset inequality

**Tracks:** Combinatorics, Computation/Applied Math, Geometry · **Area:** Combinatorics; convex geometry; toric geometry; algorithms

## Description

Let $N_k$ count the linear extensions of a poset that place a given element $a$ at position $k$. Stanley proved $N_k^2\ge N_{k-1}N_{k+1}$ by applying Alexandrov–Fenchel to order polytopes, and Kahn and Saks used this for a sorting theorem. A discrete count thus rests on deep convex geometry. Chan and Pak give a linear-algebraic proof.

## Desired outcome

A proof of the inequality using toric geometry, in which mixed volumes become intersection numbers, compared against the Chan-Pak proof. Alternatively, find a purely combinatoric proof.

## References

- R. Stanley, “Two combinatorial applications of the Aleksandrov–Fenchel inequalities,” J. Combin. Theory Ser. A 31 (1981), 56–65.
- J. Kahn and M. Saks, “Balancing poset extensions,” Order 1 (1984), 113–126.
- S. H. Chan and I. Pak, “Log-concave poset inequalities,” arXiv:2110.10740.

## Official Lean statement

`Mathathon.P76.stanley_inequality` in [`lean/MathathonProblems/P76_StanleyInequality.lean`](lean/MathathonProblems/P76_StanleyInequality.lean).

```lean
theorem stanley_inequality (α : Type*) [PartialOrder α] [Fintype α] (a : α) (k : ℕ) :
    numLinearExtensionsAt α a k * numLinearExtensionsAt α a (k + 2) ≤
      numLinearExtensionsAt α a (k + 1) ^ 2
```

Source: written for Mathathon; not taken from an existing formalization.
