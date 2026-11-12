# 76 · The circulant Hadamard conjecture

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/076-the-circulant-hadamard-conjecture.md`](../problems_original/076-the-circulant-hadamard-conjecture.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

The circulant Hadamard conjecture

### Short description of problem (100 words or less)

A real circulant Hadamard matrix has order 1 or 4, which also classifies Barker sequences. This problem about $\pm1$ sequences resisted decades of work. The new 15-page proof reduces to $n=4u^2$, then shows an alternating product of character values is an algebraic integer whose conjugates all have absolute value 1. Kronecker's theorem and analysis finish.

### Submitted Area

Combinatorics; algebraic number theory

### Proposed Tracks

Combinatorics, Algebra/Number Theory

### Reference/source material

(1) OpenAI, The circulant Hadamard conjecture (23 September 2026), https://github.com/openai/math/tree/main/preprints/The-circulant-Hadamard-conjecture-September-23-2026 (2) R. Turyn, Character sums and difference sets, Pacific J. Math. 15 (1965), 319–346. (3) B. Schmidt, Cyclotomic integers and finite geometry, J. AMS 12 (1999), 929–952.

### Desired outcome

An explanation of where the "black magic" alternating product comes from and how it relates to earlier field-descent methods.

## AI-generated notes

<!-- status: Proved (preprint) -->

> Written by AI for the earlier problem list, where this was problem 76 ([`problems/76-circulant-hadamard-conjecture.md`](../problems/76-circulant-hadamard-conjecture.md)), and carried over unchanged.

- **Status:** Proved in a September 2026 preprint by OpenAI that is not yet refereed; the conjecture is traditionally attributed to H. J. Ryser (1963).
- **Task:** Where the alternating product comes from, and its link to field descent.
- **Key reference:** [OpenAI, The circulant Hadamard conjecture, preprint (23 September 2026)](https://github.com/openai/math/blob/main/preprints/The-circulant-Hadamard-conjecture-September-23-2026/paper.pdf)
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- The proof is a 15-page preprint that has not been refereed. The preprint lists five earlier claimed complete proofs (2016–2025).

### The result

A real Hadamard matrix of order $n$ is an $n\times n$ matrix $H$ with entries $\pm1$ and $HH^T=nI_n$; it is circulant if $H_{ij}=h_{j-i \bmod n}$ for signs $h_0,\dots,h_{n-1}$. The preprint proves: a real circulant Hadamard matrix of order $n$ exists if and only if $n\in\{1,4\}$ (Theorem 1.1, which is the official Lean statement). With the odd-length theorem of Turyn and Storer (1961; reproved by Schmidt and Willms, 2016), this gives the Barker lengths: a Barker sequence of length $n>1$ exists iff $n\in\{2,3,4,5,7,11,13\}$. Before this, Turyn (Pacific J. Math., 1965) showed that any order $n>4$ is $4u^2$ with $u$ odd and not a prime power, and Logan and Mossinghoff (2017) left 4 489 possible orders up to $4\cdot10^{30}$.

### How the known proof works

- Write the first row as $h=\sum h_jX^j$ in the group ring $\mathbb Z[C_n]$; orthogonality is $hh^*=n$. A group-ring form of Turyn's 2-primary descent gives $n=4u^2$ with $u$ odd (Section 2).
- For $u>1$ let $P=C_{u^2}$ and $I$ the set of primes dividing $u$. For $x\in\mathbb Z[i][P]$ with $xx^*=u^2$ and $S\subseteq I$, let $x_S$ be its value at characters of order $p$ on the $p$-parts for $p\in S$ (trivial elsewhere), and $\Delta(x)=\prod_{S\subseteq I}x_S^{(-1)^{|S|}}$.
- A descent lemma (Lemma 3.1) makes each ratio $x_{S\cup\{p\}}/x_S$ a local unit of residue one above $p$, so $\Delta(x)$ is an algebraic integer; as $|x_S|=u$ and the exponents sum to zero, Kronecker's theorem makes it a root of unity of odd order (Proposition 3.4).
- Splitting $C_{4u^2}=C_4\times P$, half the partial evaluations of $h$ at $Z=1,-1,i$ give $c,d,g$ of norm $u^2$, so $\Delta(d)/\Delta(c)$ and $\Delta(g)/\Delta(c)$ have odd order.
- At a prime above 2 (Section 4) these ratios have residue one, so they equal 1; comparing first-order terms with the identity $J=\sum_{z\in P}z$, which only the trivial character does not annihilate, gives a contradiction.

### Background

- Turyn's 1965 paper already compares character values: his fact (4) gets a root-of-unity quotient from equal principal ideals and absolute values, and his Theorem 5 compares the values of characters that differ by characters of a subgroup. The preprint cites both as precedents.
- Schmidt's field descent (J. Amer. Math. Soc., 1999): if $X\in\mathbb Z[\zeta_M]$ has $X\bar X=m$, a root-of-unity multiple of $X$ lies in a cyclotomic subfield determined by $M$ and $m$. Leung and Schmidt refined it (2005, 2012) and introduced an anti-field-descent method (2016).

### Where to start

- [The circulant Hadamard conjecture](https://github.com/openai/math/blob/main/preprints/The-circulant-Hadamard-conjecture-September-23-2026/paper.pdf), OpenAI, 2026: pages 1–4 give the context and a proof strategy before the details.
- [Character sums and difference sets](https://doi.org/10.2140/pjm.1965.15.319), R. J. Turyn, 1965: the classical restriction $n=4u^2$ and the character-value comparisons that the new proof builds on.
- [New restrictions on possible orders of circulant Hadamard matrices](https://personal.ntu.edu.sg/bernhard/Publications/pub/chdm.pdf), K. H. Leung and B. Schmidt, 2012 (author manuscript): the field descent method as applied to this problem.

Prerequisites: group rings of finite abelian groups, characters, cyclotomic integers and their prime ideals, Kronecker's theorem on algebraic integers with all conjugates on the unit circle.

### References, with links

- OpenAI, “The circulant Hadamard conjecture” (23 September 2026): <https://github.com/openai/math/tree/main/preprints/The-circulant-Hadamard-conjecture-September-23-2026>
- R. Turyn, “Character sums and difference sets,” Pacific J. Math. 15 (1965), 319–346. <https://doi.org/10.2140/pjm.1965.15.319>
- B. Schmidt, “Cyclotomic integers and finite geometry,” J. AMS 12 (1999), 929–952. <https://doi.org/10.1090/S0894-0347-99-00298-2>

### Further references

- K. H. Leung and B. Schmidt, “New restrictions on possible orders of circulant Hadamard matrices,” Designs, Codes and Cryptography 64 (2012), 143–151. <https://personal.ntu.edu.sg/bernhard/Publications/pub/chdm.pdf>
- K. H. Leung and B. Schmidt, “The anti-field-descent method,” Journal of Combinatorial Theory, Series A 139 (2016), 87–131. <https://doi.org/10.1016/j.jcta.2015.11.005>
- B. Logan and M. J. Mossinghoff, “Double Wieferich pairs and circulant Hadamard matrices,” J. Combin. Math. Combin. Comput. 101 (2017), 145–156.
- K.-U. Schmidt and J. Willms, “Barker sequences of odd length,” Designs, Codes and Cryptography 80 (2016), 409–414. <https://doi.org/10.1007/s10623-015-0104-4>

### Lean

#### Official statement

`OAI.CirculantHadamard.exists_iff_order_one_or_four` in [`lean/MathathonProblems/P76_CirculantHadamard.lean`](lean/MathathonProblems/P76_CirculantHadamard.lean).

```lean
theorem exists_iff_order_one_or_four (n : ℕ) (hn : 0 < n) :
    ExistsRealCirculantHadamard n ↔ n = 1 ∨ n = 4
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/CirculantHadamard.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/LinearAlgebra/CirculantHadamard/Main.lean>. A Lean-verified claim must not use or copy it.

#### Mathlib

Mathlib has circulant matrices (`Matrix.circulant`), Hadamard matrices with the divisibility $4\mid n$ (`Matrix.IsHadamard`, `Matrix.IsHadamard.four_dvd_card`), cyclotomic extensions (`IsCyclotomicExtension`), group rings (`MonoidAlgebra`), characters (`AddChar`) and Kronecker's theorem (`NumberField.Embeddings.pow_eq_one_of_norm_eq_one`). It has no Turyn bound, no field descent and no circulant Hadamard theorem.
