# 34 · Monstrous moonshine

> Everything on this page except the section **From the proposer** is AI-generated and may contain errors.

## From the proposer

- **Title:** Monstrous moonshine
- **Area:** Modular forms, theoretical physics
- **Tracks:** Algebra/Number Theory, Computation/Applied Math

### Description

the monstrous moonshine is an incredible connection between the Monster group, the largest sporadic simple group, and modular functions, through the lens of string theory. The goal is to find a new proof

### Desired outcome

a novel proof of a central component such as a denominator identity, replication relation, or a key step toward the genus-zero property

### References

1. **J. H. Conway and S. P. Norton (1979).** *Monstrous Moonshine*. Bulletin of the London Mathematical Society, 11(3), 308–339. Original formulation of the Monstrous Moonshine conjectures, connecting the Monster sporadic simple group to modular functions of genus zero.  
   <https://doi.org/10.1112/blms/11.3.308>  
2. **I. Frenkel, J. Lepowsky, and A. Meurman (1988).** *Vertex Operator Algebras and the Monster*. Pure and Applied Mathematics, Vol. 134, Academic Press. Construction of the Moonshine module, an infinite-dimensional graded representation of the Monster group.  
   <https://shop.elsevier.com/books/vertex-operator-algebras-and-the-monster/frenkel/978-0-12-267065-7>  
3. **R. E. Borcherds (1992).** *Monstrous Moonshine and Monstrous Lie Superalgebras*. Inventiones Mathematicae, 109, 405–444. Original proof using generalized Kac–Moody algebras, denominator identities, and the no-ghost theorem from string theory. Particularly relevant are Sections 6–9 and Theorem 1.1.  
   <https://math.berkeley.edu/~reb/papers/monster/monster.pdf>

## AI-generated notes

- **Status:** Proved by R. E. Borcherds (1992); conjectured by Conway and Norton (1979).
- **Task:** New proof of a denominator identity, replication formula, or genus-zero step.
- **Key reference:** [Monstrous moonshine and monstrous Lie superalgebras](https://math.berkeley.edu/~reb/papers/monster/monster.pdf), R. E. Borcherds, *Invent. Math.* 109 (1992), 405–444.
- **Lean:** No official statement.

### The result

Frenkel, Lepowsky and Meurman (1988) constructed a graded representation $V^\natural=\bigoplus_n V_n$ of the Monster $\mathbb M$ with $\sum_n\dim V_n\,q^n=j(\tau)-744=q^{-1}+196884q+\cdots$. For $g\in\mathbb M$ the Thompson (McKay–Thompson) series is $T_g(q)=\sum_n\operatorname{Tr}(g\mid V_n)q^n$. Borcherds' Theorem 1.1: every $T_g$ is a Hauptmodul for a genus-zero subgroup of $\mathrm{SL}_2(\mathbb R)$, namely the one listed by Conway and Norton. A central identity is the denominator formula of the Monster Lie algebra, with $c(n)$ the coefficients of $j-744$:
$$p^{-1}\prod_{m>0,\,n\in\mathbb Z}(1-p^mq^n)^{c(mn)}=j(p)-j(q).$$

### How the known proof works

- Build the Monster Lie algebra $M$ from the vertex algebra $V^\natural\otimes V_{II_{1,1}}$ as a space of physical states; the no-ghost theorem of string theory gives $M_{m,n}\cong V_{mn}$ for $(m,n)\neq(0,0)$ (§§5–6).
- Show $M$ is a generalized Kac–Moody algebra and read off its simple roots, $(1,-1)$ and $(1,n)$ with multiplicity $c(n)$, from the product formula for $j$ (§§4, 7).
- Twisted denominator formulas: the identity $\Lambda(E)=H(E)$ for the positive part $E$, taken with the action of $g$, gives the replication formulas of Conway and Norton (§8).
- The replication formulas determine every $T_g$ from the coefficients $c_{g^j}(1),c_{g^j}(2),c_{g^j}(3),c_{g^j}(5)$ of $g$ and its powers (§9).
- The Conway–Norton Hauptmoduln satisfy the same recursions, so a finite case-by-case comparison of coefficients finishes the proof. Borcherds names this check as the step a conceptual argument should replace.

### Background

- Cummins and Gannon (*Invent. Math.* 129, 1997): a function $q^{-1}+\sum b_nq^n$ satisfying a modular equation for every $n\equiv1\pmod N$ is either $q^{-1}+b_1q$ or a Hauptmodul; the $T_g$ satisfy such equations, which replaces the case-by-case comparison (Gannon 2004).
- Jurisich–Lepowsky–Wilson (1995) and Jurisich (1998) identified a free subalgebra of $M$ and simplified the Lie-algebra part.
- Duncan, Griffin and Ono (2015) state that a conceptual explanation of the genus-zero (principal modulus) property is still missing; Zhu and Dong–Li–Mason explain modularity of the traces but not genus zero.
- Borcherds' Section 15 lists open questions, including Norton's conjecture that nontrivial completely replicable functions are Hauptmoduln; Gannon (2004) calls it still open.

### Where to start

- [Monstrous Moonshine: The first twenty-five years](https://arxiv.org/abs/math/0402345), T. Gannon, 2004: overview of the proof, including the modular-equation step of Cummins–Gannon.
- [Moonshine](https://arxiv.org/abs/1411.6571), J. F. R. Duncan, M. J. Griffin, K. Ono, 2015: survey; §3 on Borcherds–Kac–Moody algebras and replication, §4 on modularity.
- [Monstrous moonshine and monstrous Lie superalgebras](https://math.berkeley.edu/~reb/papers/monster/monster.pdf), R. E. Borcherds, 1992: §1 outlines the proof, §§6–9 give it.

Prerequisites: modular functions and congruence subgroups, Kac–Moody Lie algebras, basic vertex algebras.

### Further references

- T. Gannon, "Monstrous Moonshine: The first twenty-five years," 2004. <https://arxiv.org/abs/math/0402345>
- J. F. R. Duncan, M. J. Griffin, K. Ono, "Moonshine," *Res. Math. Sci.* 2 (2015), 11. <https://arxiv.org/abs/1411.6571>
- C. J. Cummins and T. Gannon, "Modular equations and the genus zero property of moonshine functions," *Invent. Math.* 129 (1997), 413–443. <https://doi.org/10.1007/s002220050167>
- E. Jurisich, J. Lepowsky, R. L. Wilson, "Realizations of the Monster Lie algebra," *Selecta Math. (N.S.)* 1 (1995), 129–161. <https://doi.org/10.1007/BF01614075>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs the Monster group and its moonshine module, which Mathlib does not have yet.

#### Mathlib

Mathlib has `ModularForm`, congruence subgroups such as `CongruenceSubgroup.Gamma0`, Lie algebras, and a first definition `VertexOperator` (`Mathlib/Algebra/Vertex/VertexOperator.lean`). It lacks the Monster group, the modular function $j$ as a Hauptmodul (only `WeierstrassCurve.j` for curves), vertex operator algebras, generalized Kac–Moody algebras and the no-ghost theorem.
