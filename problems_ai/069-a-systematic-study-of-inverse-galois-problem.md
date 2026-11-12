# 69 · A Systematic Study of Inverse Galois Problem

## From the proposer

- **Area:** Algebraic Geomtry
- **Tracks:** Geometry

### Description

The classification of finite simple groups was a landmark achievement in group theory. A natural next milestone is to realize every finite simple group as a Galois group over Q. A concrete way to achieve this is to construct, for each group, an explicit polynomial over Q whose splitting field has that Galois group. AI gives a promising tool to accelerate progress toward this goal.

### Desired outcome

A systematic understanding of solved inverse Galois problems and exploring more unknown cases.

### References

1. Inverse Galois Theory: https://link.springer.com/book/10.1007/978-3-662-55420-3?utm_source=chatgpt.com
2. The Mathieu group M23 is a Galois group over Q: https://arxiv.org/abs/2608.08538


## AI-generated notes

<!-- status: Open -->

- **Status:** Open over ℚ in general; known for solvable, symmetric, alternating and all 26 sporadic groups ($M_{23}$ in a 2026 preprint), among others.
- **Task:** A survey of solved cases and attacks on unknown cases.
- **Key reference:** [Inverse Galois Theory](https://doi.org/10.1007/978-3-662-55420-3), G. Malle and B. H. Matzat, 2nd ed., Springer Monographs in Mathematics, 2018.
- **Lean:** Official statement.

### Notes

- The M23 realization (arXiv:2608.08538, 2026) completes the sporadic groups; it is a preprint, not yet refereed, with code and a Magma certificate of the Galois group.

### The result

The inverse Galois problem asks whether every finite group $G$ is isomorphic to $\operatorname{Gal}(L/\mathbb Q)$ for some Galois extension $L/\mathbb Q$. Over number fields it is known for solvable groups (Shafarevich), symmetric and alternating groups (Hilbert), and families of groups of Lie type such as $\mathrm{PSL}_2(\mathbb F_p)$. Over $\mathbb Q$, 25 of the 26 sporadic groups were realized in 1984–1989; Huang, Jackson, Lee, Poonen, Pries and Zhang (2026) realized $M_{23}$ by an explicit degree-23 polynomial. Zywina's August 2025 list of simple groups of order at most $10^8$ not known over $\mathbb Q$ has seven groups, including $M_{23}$; the smallest is ${}^2B_2(8)$, of order 29120. The main tool is Hilbert irreducibility: a regular $G$-extension of $\mathbb Q(t)$ specializes to infinitely many $G$-extensions of $\mathbb Q$.

### Background

- The rigidity and braid-group methods gave regular extensions of $\mathbb Q(t)$ for the sporadic groups other than $M_{23}$; Malle–Matzat, II.9, has an exposition.
- Noether's problem gives another route, but it fails even for some cyclic groups over $\mathbb Q$ (Swan, Voskresenskiĭ).
- For $M_{23}$: seven covers with monodromy $(2A,23A,23B)$, computed as Belyi maps; $G_{\mathbb Q}$ unexpectedly fixes one, which descends to $\mathbb Q$.
- The M23 paper reports that all 4953 transitive groups of degree at most 23 are now realized ($17T7$, via Hilbert modular forms, was the other late case) and, citing SAIR's IGP24 competition, all 25,000 of degree 24; the competition's public results show a realization, checked by its verifier, for each degree-24 group.

### Where to start

- [Park City lecture notes: around the inverse Galois problem](https://arxiv.org/abs/2302.13719), O. Wittenberg, 2023: known cases, Noether's problem, rigidity via Hurwitz spaces.
- [The Mathieu group M23 is a Galois group over ℚ](https://arxiv.org/abs/2608.08538), X. Huang, B. Jackson, K.-H. Lee, B. Poonen, R. Pries, S. Zhang, 2026: a complete recent example of the rigidity and Belyi-map workflow, with [code](https://github.com/shaowuz/m23isgalois).
- [Inverse Galois problem for small simple groups](https://davidzywina.github.io/papers/smallGalois.pdf), D. Zywina, last updated August 2025: the non-abelian simple groups of order at most $10^8$ not known over $\mathbb Q$.

Prerequisites: Galois theory, finite groups and character tables, covers of $\mathbb P^1$ and the Riemann existence theorem.

### Further references

- O. Wittenberg, "Park City lecture notes: around the inverse Galois problem," 2023; in *Number Theory Informed by Computation*, IAS/Park City Math. Ser. 29, AMS, 2025. <https://arxiv.org/abs/2302.13719>
- D. Zywina, "Inverse Galois problem for small simple groups." <https://davidzywina.github.io/papers/smallGalois.pdf>
- R. van Bommel, E. Costa, N. D. Elkies, T. Keller, S. Schiavone, J. Voight, "The constructive inverse Galois problem via Hilbert modular forms: realizing the transitive group 17T7," 2024. <https://arxiv.org/abs/2411.07857>
- SAIR Foundation, "IGP24: The Inverse Galois Problem in Degree 24," competition page, 2026. <https://competition.sair.foundation/competitions/igp24/overview>

### Lean

#### Official statement

`InverseGalois.inverse_galois_problem` in [`lean/MathathonProblems/P69_InverseGalois.lean`](lean/MathathonProblems/P69_InverseGalois.lean).

```lean
theorem inverse_galois_problem {G : Type*} [Fintype G] [Group G] :
    IsRealizable ℚ G
```

Source: <https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjectures/Wikipedia/InverseGalois.lean> (adapted as described in the file header).

This statement is the open inverse Galois problem over ℚ. The problem asks for progress on cases of it.

#### Related Lean formalizations

- [Theorem 1.1, M23 is a Galois group over ℚ](https://prove2.me/theorems/3a99f517-25c1-48ca-9534-2e140456f6f4), Prove2Me: a Lean statement of the 2026 realization of the Mathieu group M23 over ℚ by Huang, Jackson, Lee, Poonen, Pries and Zhang (open, not proved there).
- [InverseGaloisProblem](https://github.com/Timeroot/InverseGaloisProblem/tree/973f72c1900fb72c460833448b472899fa659366): Lean proofs of cases of the problem, including Shafarevich's theorem for solvable groups and realizations of S_n, A_n and PSL₂(p).

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `IsGalois`, the Galois group of a polynomial `Polynomial.Gal`, `Polynomial.Gal.galActionHom`, and `Polynomial.Gal.galActionHom_bijective_of_prime_degree` (an irreducible rational polynomial of prime degree with exactly two non-real roots has full symmetric Galois group). It lacks Hilbert's irreducibility theorem, the rigidity method, Hurwitz spaces and the sporadic groups.
