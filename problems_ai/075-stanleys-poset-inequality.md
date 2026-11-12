# 75 · Stanley's poset inequality

## From the proposer

- **Area:** Combinatorics; convex geometry; toric geometry; algorithms
- **Tracks:** Combinatorics, Computation/Applied Math, Geometry

### Description

Let $N_k$ count the linear extensions of a poset that place a given element $a$ at position $k$. Stanley proved $N_k^2\ge N_{k-1}N_{k+1}$ by applying Alexandrov–Fenchel to order polytopes, and Kahn and Saks used this for a sorting theorem. A discrete count thus rests on deep convex geometry. Chan and Pak give a linear-algebraic proof.

### Desired outcome

A proof of the inequality using toric geometry, in which mixed volumes become intersection numbers, compared against the Chan-Pak proof. Alternatively, find a purely combinatoric proof.

### References

(1) R. Stanley, Two combinatorial applications of the Aleksandrov–Fenchel inequalities, J. Combin. Theory Ser. A 31 (1981), 56–65. (2) J. Kahn, M. Saks, Balancing poset extensions, Order 1 (1984), 113–126. (3) S. H. Chan, I. Pak, Log-concave poset inequalities, arXiv:2110.10740.

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved by R. Stanley (1981) with the Alexandrov–Fenchel inequality; conjectured by F. Chung, P. Fishburn and R. Graham (1980).
- **Task:** A toric-geometry proof compared with Chan–Pak, or a combinatorial proof.
- **Key reference:** [R. P. Stanley, Two combinatorial applications of the Aleksandrov–Fenchel inequalities, J. Combin. Theory Ser. A 31 (1981), 56–65](https://doi.org/10.1016/0097-3165%2881%2990053-4)
- **Lean:** Official statement.

### The result

Let $P$ be a poset on $n$ elements, $x\in P$, and $N_i$ the number of linear extensions $\sigma:P\to\{1,\dots,n\}$ with $\sigma(x)=i$. Stanley's Theorem 3.1 states $N_i^2\ge N_{i-1}N_{i+1}$ (more generally, with the positions of a chain $x_1<\dots<x_k$ prescribed). It follows from his Theorem 3.2,
$$N_i=(n-1)!\;V\big(\underbrace{K,\dots,K}_{i-1},\underbrace{L,\dots,L}_{n-i}\big),$$
for two polytopes $K,L\subset[0,1]^{n-1}$ built from $P$. Kahn and Saks (Order 1, 1984) proved the analogue for $\sigma(y)-\sigma(x)=a$ and deduced that every poset that is not a chain has $x,y$ with $3/11\le \Pr[\sigma(x)<\sigma(y)]\le 8/11$. The official Lean statement is Stanley's inequality with positions numbered from $0$.

### How the known proof works

- $K$ is the set of order-preserving $t\in[0,1]^{P\setminus\{x\}}$ with $t_y=1$ for $y>x$, and $L$ the set with $t_y=0$ for $y<x$; both are order polytopes of subposets, up to translation.
- Theorem 3.2: $\lambda_0K+\lambda_1L$ splits into simplices, one for each linear extension; comparing its volume with the mixed-volume expansion gives the formula.
- The Alexandrov–Fenchel inequality $V(K,L,Q_1,\dots)^2\ge V(K,K,Q_1,\dots)\,V(L,L,Q_1,\dots)$, with the remaining arguments copies of $K$ and $L$, then gives $N_i^2\ge N_{i-1}N_{i+1}$.
- The difficulty lies in Alexandrov–Fenchel, which has proofs by Alexandrov (polytopes), Khovanskii and Teissier (Hodge theory), Cordero-Erausquin et al. (analytic) and Shenfeld–van Handel (Bochner method).
- Chan and Pak avoid geometry: matrices of linear-extension counts (a "combinatorial atlas") are shown by induction to be hyperbolic, with at most one positive eigenvalue, which gives the inequality and its equality cases.

### Background

- Unimodality of $(N_i)$ was conjectured by Kislitsyn (1968) and Rivest; Chung, Fishburn and Graham conjectured log-concavity and proved it for posets of width two.
- Whether the defect $N_i^2-N_{i-1}N_{i+1}$ has a combinatorial interpretation (is in #P) is open. With $k\ge 2$ further elements at fixed positions, Chan and Pak (Forum Math. Pi, 2024) show it has none unless the polynomial hierarchy collapses.
- Shenfeld and van Handel (Acta Math. 231, 2023) proved that for $N_i>0$ equality holds if and only if $N_{i-1}=N_i=N_{i+1}$, and gave an explicit poset condition for it.
- The $1/3$–$2/3$ conjecture remains open; Brightwell, Felsner and Trotter improved $3/11$ to $1/2-1/(2\sqrt5)\approx0.2764$.

### Where to start

- [Linear extensions of finite posets](https://arxiv.org/abs/2311.02743), S. H. Chan and I. Pak, 2023: survey; Sections 9–10 on Stanley-type inequalities and equality cases, 14.6–14.7 on the geometric and atlas methods.
- [The extremals of the Alexandrov–Fenchel inequality for convex polytopes](https://arxiv.org/abs/2011.04059), Y. Shenfeld and R. van Handel, 2020: Section 15 gives $K$, $L$ and the proof in a few lines.
- [Log-concave poset inequalities](https://arxiv.org/abs/2110.10740), S. H. Chan and I. Pak, 2021: the combinatorial atlas proof.

Prerequisites: posets and linear extensions, convex polytopes and mixed volumes, eigenvalues of symmetric matrices; intersection theory on toric varieties for the toric route.

### References, with links

- R. Stanley, “Two combinatorial applications of the Aleksandrov–Fenchel inequalities,” J. Combin. Theory Ser. A 31 (1981), 56–65. <https://doi.org/10.1016/0097-3165(81)90053-4>
- J. Kahn and M. Saks, “Balancing poset extensions,” Order 1 (1984), 113–126. <https://doi.org/10.1007/BF00565647>
- S. H. Chan and I. Pak, “Log-concave poset inequalities,” arXiv:2110.10740. <https://arxiv.org/abs/2110.10740>

### Further references

- S. H. Chan and I. Pak, “Linear extensions of finite posets,” EMS Surveys in Mathematical Sciences (2025), arXiv:2311.02743. <https://arxiv.org/abs/2311.02743>
- Y. Shenfeld and R. van Handel, “The extremals of the Alexandrov–Fenchel inequality for convex polytopes,” Acta Math. 231 (2023), 89–204. <https://arxiv.org/abs/2011.04059>
- S. H. Chan and I. Pak, “Equality cases of the Alexandrov–Fenchel inequality are not in the polynomial hierarchy,” Forum Math. Pi 12 (2024), e21. <https://arxiv.org/abs/2309.05764>
- F. R. K. Chung, P. C. Fishburn and R. L. Graham, “On unimodality for linear extensions of partial orders,” SIAM J. Algebraic Discrete Methods 1 (1980), 405–410. <https://doi.org/10.1137/0601046>

### Lean

#### Official statement

`Mathathon.P75.stanley_inequality` in [`lean/MathathonProblems/P75_StanleyInequality.lean`](lean/MathathonProblems/P75_StanleyInequality.lean).

```lean
theorem stanley_inequality (α : Type*) [PartialOrder α] [Fintype α] (a : α) (k : ℕ) :
    numLinearExtensionsAt α a k * numLinearExtensionsAt α a (k + 2) ≤
      numLinearExtensionsAt α a (k + 1) ^ 2
```

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Mathlib

Mathlib has finite partial orders, order isomorphisms and the existence of a linear extension (`extend_partialOrder`, `LinearExtension`), plus `convexHull` and `MeasureTheory.volume`. It has no order polytopes, no mixed volumes, no Alexandrov–Fenchel (or Brunn–Minkowski) inequality and no toric varieties; the official statement counts extensions as strictly monotone bijections `α ≃ Fin n`.
