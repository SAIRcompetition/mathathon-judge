# 73 · Lagrange Inversion: Combinatorial Proofs

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/073-lagrange-inversion-combinatorial-proofs.md`](../problems_original/073-lagrange-inversion-combinatorial-proofs.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Lagrange Inversion: Combinatorial Proofs

### Short description of problem (100 words or less)

Lagrange inversion gives coefficients of compositional inverses of power series. Analytic and formal proofs exist, but the combinatorial proofs (Raney, Joyal’s species proof, Gessel) are less known. The goal is to compare these proofs and apply them to tree and lattice path enumeration.

### Submitted Area

Enumerative combinatorics / formal power series

### Proposed Tracks

Combinatorics


### Reference/source material

Gessel, “A combinatorial proof of the multivariable Lagrange inversion formula,” Journal of Combinatorial Theory Series A 45 (1987)
Raney, “Functional composition patterns and power series reversion,” Transactions of the AMS 94 (1960)
Stanley, Enumerative Combinatorics, Vol. 2, Section 5.4

### Desired outcome

Formalization of one combinatorial proof, with code verifying the cycle lemma and examples in tree counting.

## AI-generated notes

<!-- status: Proved -->

> Written by AI for the earlier problem list, where this was problem 73 (commit `1f49cd4`), and carried over unchanged.

- **Status:** Given by J.-L. Lagrange (1770); analytic, formal and combinatorial proofs exist.
- **Task:** Formalize a combinatorial proof; code for the cycle lemma and tree counts.
- **Key reference:** [I. M. Gessel, Lagrange inversion, J. Combin. Theory Ser. A 144 (2016), 212–249](https://arxiv.org/abs/1609.05988)
- **Lean:** Official statement; a Lean proof already exists.

### The result

Let $R(t)$ be a formal power series. There is a unique power series $f(x)$ with $f=x\,R(f)$, and for positive integers $n$, $k$
$$[x^n]\,f(x)^k=\frac{k}{n}\,[t^{n-k}]\,R(t)^n .$$
Gessel's survey proves it equivalent to several other forms, such as $[x^n]\,\varphi(f)=\tfrac1n[t^{n-1}]\,\varphi'(t)R(t)^n$. Lagrange gave the formula in Mém. Acad. Berlin 24 (1770). The official Lean statement is the displayed identity with $n$ replaced by $n+k$ and the fraction cleared, $(n+k)\,[x^{n+k}]f^k=k\,[t^n]R^{n+k}$, over any commutative ring without additive torsion (Mathlib's `HasUniqueDiv`).

### How the known proof works

- Raney's proof (as sketched by Gessel, Section 4.5) reads $f=xR(f)$ as the generating function of plane trees, a vertex with $i$ children having weight $r_i$, so $[x^n]f^k$ is the weight of $k$-tuples of plane trees with $n$ vertices.
- A $k$-forest is coded by its sequence of child counts minus one (postorder); a sequence of integers $\ge -1$ is such a code iff its sum is $-k$ and all partial sums are negative.
- $[t^{n-k}]R(t)^n$ is the total weight of all length-$n$ sequences of integers $\ge -1$ with sum $-k$, without the partial-sum condition.
- Raney's lemma, a generalization of the Dvoretzky–Motzkin cycle lemma: such a sequence has exactly $k$ cyclic shifts with all partial sums negative, so a fraction $k/n$ of the weight is codes of forests.
- Gessel also gives non-combinatorial proofs: Jacobi's change of variables for residues (which he calls the simplest), induction, and a factorization proof similar to Lagrange's original.

### Background

- Combinatorial proofs: Raney (Trans. AMS, 1960) is the earliest; Labelle (Adv. Math. 42, 1981) gave another, and Gessel (J. Combin. Theory Ser. A 45, 1987) proved the multivariable formula combinatorially.
- Proofs through labelled trees count rooted forests by their child counts; they rest on the number of trees on $[m]$ with degrees $d_i$, $\binom{m-2}{d_1-1,\dots,d_m-1}$, proved by Prüfer codes, by induction (Moon) or by Rényi's variant.
- Applications in Gessel's survey: Catalan and ballot numbers, binomial-coefficient identities, Raney's equation $f=\sum_m A_m e^{B_m f}$.
- Other expositions: Stanley, Enumerative Combinatorics Vol. 2, Chapter 5, and Bergeron, Labelle and Leroux, Combinatorial Species and Tree-like Structures, Chapter 3.
- Problem 72 (Cayley's formula) uses Lagrange inversion as one of its proofs, via $T(x)=x\,e^{T(x)}$ for rooted trees.

### Where to start

- [Lagrange inversion](https://arxiv.org/abs/1609.05988), I. M. Gessel, 2016: Section 2 for the equivalent forms, Sections 4.4–4.6 for the combinatorial proofs, with exercises.
- [Enumerative Combinatorics 10: Cayley's Theorem](https://www.ltcc.ac.uk/media/london-taught-course-centre/documents/Notes-for-lecture-on-2-December---10.pdf), P. J. Cameron, 2013: a short worked example of Lagrange inversion counting rooted trees.

Prerequisites: formal power series and composition, generating functions for plane and labelled trees.

### References, with links

- Gessel, “A combinatorial proof of the multivariable Lagrange inversion formula,” Journal of Combinatorial Theory Series A 45 (1987) <https://doi.org/10.1016/0097-3165(87)90013-6>
- Raney, “Functional composition patterns and power series reversion,” Transactions of the AMS 94 (1960) <https://doi.org/10.1090/S0002-9947-1960-0114765-9>
- Stanley, Enumerative Combinatorics, Vol. 2, Section 5.4

### Further references

- I. M. Gessel, “Lagrange inversion,” Journal of Combinatorial Theory, Series A 144 (2016), 212–249. <https://arxiv.org/abs/1609.05988>
- G. Labelle, “Une nouvelle démonstration combinatoire des formules d'inversion de Lagrange,” Advances in Mathematics 42 (1981), 217–247. <https://doi.org/10.1016/0001-8708(81)90041-4>
- P. J. Cameron, “Enumerative Combinatorics 10: Cayley's Theorem,” LTCC lecture notes (2013). <https://www.ltcc.ac.uk/media/london-taught-course-centre/documents/Notes-for-lecture-on-2-December---10.pdf>

### Lean

#### Official statement

`Mathathon.P73.lagrange_inversion_coeff_pow` in [`lean/MathathonProblems/P73_LagrangeInversion.lean`](lean/MathathonProblems/P73_LagrangeInversion.lean).

```lean
theorem lagrange_inversion_coeff_pow {R : Type*} [CommRing R] [HasUniqueDiv R]
    {P Y : R⟦X⟧} (hY : Y = X * P.subst Y) (n k : ℕ) :
    (n + k) • (Y ^ k).coeff (n + k) = k • (P ^ (n + k)).coeff n
```

Source: <https://github.com/manman4/mathlib4/blob/21d5273c20a3771ded85855b0f429fdc76c1b080/Mathlib/RingTheory/PowerSeries/LagrangeInversion.lean> (adapted as described in the file header).

A Lean proof of this statement already exists: <https://github.com/manman4/mathlib4/blob/21d5273c20a3771ded85855b0f429fdc76c1b080/Mathlib/RingTheory/PowerSeries/LagrangeInversion.lean>. A Lean-verified claim must not use or copy it.

#### Related Lean formalizations

- [Formal Lagrange inversion with the integer factor retained](https://prove2.me/theorems/e1922e7f-322c-49af-87e8-2983392a5aac), Prove2Me: another Lean proof of Lagrange inversion for formal power series.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has formal power series (`PowerSeries`), substitution (`PowerSeries.subst`, `PowerSeries.HasSubst`), the compositional inverse (`PowerSeries.substInv`), the derivative (`PowerSeries.derivative`), and the Catalan series with binary trees counted by Catalan numbers (`PowerSeries.catalanSeries`, `BinaryTree.treesOfNumNodesEq_card_eq_catalan`). It has no Lagrange inversion theorem and no cycle lemma.
