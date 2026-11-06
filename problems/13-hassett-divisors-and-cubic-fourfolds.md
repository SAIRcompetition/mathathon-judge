# 13 · Hassett divisors and cubic fourfolds

**Tracks:** Geometry · **Area:** Algebraic geometry (Hodge theory and lattice theory; cubic fourfolds and K3 surfaces)

## Description

A smooth cubic fourfold is special if it contains an algebraic surface not homologous to a complete intersection. Hassett showed these form a countable family of divisors C_d in the moduli space, nonempty iff d > 6 and d ≡ 0, 2 (mod 6), and that C_d has an associated K3 surface iff d is not divisible by 4, 9, or any odd prime ≡ 2 (mod 3). Intersections of these divisors are governed by lattice embeddings. The problem is to understand this lattice picture and its link to rationality.

## Desired outcome

An open-source implementation of the algorithm for the irreducible components of intersections of two Hassett divisors, validated against published cases (for example, five components for C8 ∩ C14 and eight for C8 ∩ C26). Also an interactive visualization of the divisors and their intersections, and a written explainer connecting the lattice picture to K3 associations and rationality questions.

## References

- B. Hassett, “Special cubic fourfolds,” Compositio Mathematica 120 (2000), 1–23. See Theorem 1.0.1 (the divisors C_d; nonempty iff d > 6 and d ≡ 0, 2 mod 6) and Section 5 (associated K3 surfaces).
- S. Yang and X. Yu, “On lattice polarizable cubic fourfolds,” arXiv:2103.09132. See Section 7, Algorithm 7.6 (irreducible components of C_{d₁} ∩ C_{d₂}) and Theorems 7.9 and 7.11 (worked examples C₂₀ ∩ C₃₈ and C₂₀ ∩ C₁₂).
- S. Zucker, “The Hodge conjecture for cubic fourfolds,” Compositio Mathematica 34 (1977), 199–209. See Theorem 3.2.

## Official Lean statement

This problem has no official Lean statement: a faithful statement needs cubic fourfolds, their moduli space, and their Hodge structures, which Mathlib does not have yet.
