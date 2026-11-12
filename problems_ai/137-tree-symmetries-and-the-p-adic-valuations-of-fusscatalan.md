# 137 · Tree Symmetries and the p-Adic Valuations of Fuss–Catalan Numbers

## From the proposer

- **Area:** Enumerative combinatorics; combinatorial number theory; (p)-adic divisibility
- **Tracks:** Combinatorics, Number Theory/Algebra

### Description

For a prime (p) and (q=p^k), the Fuss–Catalan numbers have a known exact (p)-adic valuation formula involving base-(p) digit sums. Konvalinka established this formula arithmetically and developed a combinatorial argument using group actions on (q)-ary trees, which proves the corresponding divisibility bound but not its exactness. The goal is to investigate whether these tree symmetries can be used to construct a fully combinatorial proof of the exact valuation formula. We may explore alternative group actions, analyze minimal orbits, or establish special cases, related to the properties of Fuss–Catalan numbers.

### Desired outcome

The primary objective is to develop a combinatorial proof of the exact (p)-adic valuation formula for Fuss–Catalan numbers when (q) is a prime power, building on Konvalinka's existing group-action approach. Ideally, the proof would explain how the structure and symmetries of (q)-ary trees give rise to the base-(p) digit-sum formula, without relying on factorial valuations. Possible intermediate outcomes include a characterization of the relevant tree orbits, alternative arguments for special cases or computational visualizations illustrating the connection between tree symmetries and divisibility. A further direction could involve extending the resulting techniques to weighted Fuss–Catalan numbers and maybe a multidimensional generalisation (ore ones, related to other statistics).

### References

- Matjaž Konvalinka, “Divisibility of generalized Catalan numbers,” Journal of Combinatorial Theory, Series A 114 (2007), no. 6, 1089–1100. DOI: 10.1016/j.jcta.2006.11.003.

- Emeric Deutsch and Bruce E. Sagan, “Congruences for Catalan and Motzkin numbers and related sequences,” Journal of Number Theory 117 (2006), no. 1, 191–215. DOI: 10.1016/j.jnt.2005.06.005.

- Alexander Postnikov and Bruce E. Sagan, “What power of two divides a weighted Catalan number?”, Journal of Combinatorial Theory, Series A 114 (2007), no. 5, 970–977. DOI: 10.1016/j.jcta.2006.09.007.

## AI-generated notes

<!-- status: Open -->

- **Status:** The valuation formula follows from Legendre's formula (M. Konvalinka, 2007, Proposition 2); a group-action proof including exactness exists for Catalan numbers, $q=2$ (E. Deutsch and B. E. Sagan, 2006), while for prime powers $q>2$ Konvalinka's tree symmetries prove only the divisibility, and no combinatorial proof of exactness was found.
- **Task:** A combinatorial proof, through symmetries of $q$-ary trees, that the power of $p$ given by the digit-sum formula is exactly the power dividing the Fuss–Catalan number.
- **Key reference:** [M. Konvalinka, "Divisibility of generalized Catalan numbers", J. Combin. Theory Ser. A 114 (2007), 1089–1100](https://doi.org/10.1016/j.jcta.2006.11.003)
- **Lean:** Official statement.

### Notes

- After Proposition 7 Konvalinka notes that it proves combinatorially only part of Proposition 2 (divisibility by $p^\xi$, not exactness). His analysis of the minimal orbits shows that their sizes have at least $\xi$ factors $p$, and gets "exactly" only by appeal to Proposition 2.
- The second reference already contains the model case: for $q=2$, Deutsch and Sagan count the orbits of minimal size exactly (Lemma 2.3).
- The parenthesized letters "(p)", "(q)" in the proposer's text stand for the mathematical symbols $p$, $q$.

### The result

For $q\ge1$ the Fuss–Catalan number
$$C^{(q)}_n=\frac{1}{(q-1)n+1}\binom{qn}{n}$$
counts $q$-ary trees with $n$ vertices (each vertex has $q$ ordered, possibly empty branches). Write $s_p(m)$ for the sum of the base-$p$ digits of $m$. Konvalinka's Proposition 2: if $q=p^k$ with $p$ prime and $k\ge1$, then
$$\nu_p\big(C^{(q)}_n\big)=\xi:=\frac{s_p((q-1)n+1)-1}{p-1}.$$
For $q=2$ this is $\nu_2(C_n)=s_2(n+1)-1$. The proof is Legendre's formula for $\nu_p(m!)$ together with $s_p(qn)=s_p(n)$.

Combinatorial results:

- Deutsch–Sagan (2006), Lemma 2.3: the automorphism group $G_n$ of the complete binary tree of depth $n$ (an iterated wreath product of $\mathbb Z/2$, a 2-group) acts on binary trees with $n$ vertices; every orbit has size divisible by $2^d$, $d=s_2(n+1)-1$, and exactly $1\cdot3\cdots(2d-1)$ orbits have size exactly $2^d$. This number is odd, so $\nu_2(C_n)=d$. They also give a bijective proof of the identity behind the count.
- Konvalinka (2007), Proposition 7: for $q=p^k$, every orbit of the automorphism group of the complete $q$-ary tree acting on $q$-ary trees has size divisible by $p^\xi$. Theorem 5 uses this for weighted Fuss–Catalan numbers: if $b(0)\equiv1\pmod q$ and $q^{n+1}\mid\Delta^nb(x)$ for all $n\ge1$ and $x$, then $C^{(q)}_n(b)\equiv C^{(q)}_n\pmod{p^{\xi+k}}$.

What is missing: since every orbit has size divisible by $p^\xi$,
$$C^{(q)}_n/p^\xi\equiv\sum_{O:\ \nu_p(|O|)=\xi}|O|/p^\xi\pmod p,$$
so exactness is equivalent to this sum over the minimal orbits being nonzero mod $p$. For $q\ge3$ the group is an iterated wreath product of $S_q$, not a $p$-group, so orbit sizes are not powers of $p$ and the minimal orbits must be counted with these weights.

### How the known proof works

- Arithmetic: in $C^{(q)}_n=(qn)!/(n!\,((q-1)n+1)!)$ apply $\nu_p(m!)=(m-s_p(m))/(p-1)$ and use $s_p(p^kn)=s_p(n)$.
- Orbits (Konvalinka, §3): the orbit of a tree $T$ has size $\prod_v\binom{q}{q^v_1,\dots,q^v_l}$ over the vertices $v$ whose $q$ branches are not all equivalent ("white" vertices), where $q^v_1,\dots,q^v_l$ are the sizes of the classes of equivalent branches at $v$.
- In an orbit of minimal $p$-adic size no black vertex has a white child (Lemma 8), fewer than $q$ complete $q$-ary subtrees of each depth are attached (Lemma 9), and a white vertex has fewer than $p$ equivalent white children (Lemma 10). Hence the white vertices form a $q$-ary tree with $(s_q((q-1)n+1)-1)/(q-1)$ vertices, and the factor count gives at least $\xi$.
- For $q=p$ prime, Lemmas 9 and 10 are trivial, and Remark 3 gives the residue of $C^{(p)}_n/p^\xi$ modulo $p$ as $\pm\prod_i(p-a_i-1)!$, where the $a_i$ are the base-$p$ digits of $(p-1)n+1$: a target for a weighted count of minimal orbits.

### Background

- Earlier combinatorial explanations of the parity of $C_n$ are due to Deutsch, Eğecioğlu, and Simion–Ullman (cited by Deutsch–Sagan). Postnikov and Sagan (2007) extended the Deutsch–Sagan orbit argument to weighted Catalan numbers, settling Postnikov's conjecture on plane Morse links.
- Gao and Gu (2021) obtain the Postnikov–Sagan conclusion under weaker conditions and strengthen Konvalinka's weighted result. Konvalinka's concluding questions on non-prime-power $q$ have negative answers by computer search, and he ends with a conjecture on polynomial weights for $q=2$.

### Where to start

- [Divisibility of generalized Catalan numbers (author's preprint)](https://users.fmf.uni-lj.si/konvalinka/wcatalan.pdf), M. Konvalinka: Proposition 2, Remark 3, Proposition 7 and Lemmas 8–10.
- [Congruences for Catalan and Motzkin numbers and related sequences](https://arxiv.org/abs/math/0407326), E. Deutsch, B. E. Sagan, 2004: §2, Lemma 2.3 and the bijective proof of identity (4) through binary total partitions.
- [What power of two divides a weighted Catalan number?](https://arxiv.org/abs/math/0601339), A. Postnikov, B. E. Sagan, 2006: the orbit argument with weights.
- [Arithmetic of weighted Catalan numbers](https://arxiv.org/abs/1908.03914), Y. Gao, A. Gu, 2019: weaker hypotheses, the $q$-weighted case and open questions.

Prerequisites: Legendre's and Kummer's theorems, group actions and orbit counting, automorphisms of rooted trees (iterated wreath products), plane trees and their enumeration.

### References, with links

- M. Konvalinka, "Divisibility of generalized Catalan numbers", J. Combin. Theory Ser. A 114 (2007), no. 6, 1089–1100. <https://doi.org/10.1016/j.jcta.2006.11.003> (author's preprint: <https://users.fmf.uni-lj.si/konvalinka/wcatalan.pdf>)
- E. Deutsch and B. E. Sagan, "Congruences for Catalan and Motzkin numbers and related sequences", J. Number Theory 117 (2006), no. 1, 191–215. <https://doi.org/10.1016/j.jnt.2005.06.005> (arXiv: <https://arxiv.org/abs/math/0407326>)
- A. Postnikov and B. E. Sagan, "What power of two divides a weighted Catalan number?", J. Combin. Theory Ser. A 114 (2007), no. 5, 970–977. <https://doi.org/10.1016/j.jcta.2006.09.007> (arXiv: <https://arxiv.org/abs/math/0601339>)

### Further references

- Y. Gao and A. Gu, "Arithmetic of weighted Catalan numbers", J. Number Theory 226 (2021), 213–242. <https://doi.org/10.1016/j.jnt.2021.03.007> (arXiv: <https://arxiv.org/abs/1908.03914>)

### Lean

#### Official statement

`Mathathon.P137.sub_one_mul_padicValNat_fussCatalan` in [`lean/MathathonProblems/P137_FussCatalanValuation.lean`](lean/MathathonProblems/P137_FussCatalanValuation.lean).

```lean
theorem sub_one_mul_padicValNat_fussCatalan (p k n : ℕ) [Fact p.Prime] (hk : 1 ≤ k) :
    (p - 1) * padicValNat p (fussCatalan (p ^ k) n) =
      (p.digits ((p ^ k - 1) * n + 1)).sum - 1
```

This is Konvalinka's Proposition 2, $\nu_p\big(C^{(q)}_n\big)=\frac{s_p((q-1)n+1)-1}{p-1}$ for $q=p^k$, multiplied by $p-1$ as in Mathlib's Legendre formula, with `fussCatalan q n` $=\binom{qn}{n}/((q-1)n+1)$. The problem asks for a combinatorial proof of this formula through symmetries of $q$-ary trees, which a Lean statement cannot require.

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Mathlib

Mathlib has `padicValNat`, `Nat.digits`, Legendre's formula `sub_one_mul_padicValNat_factorial` ($(p-1)\,\nu_p(n!)=n-s_p(n)$), Kummer's theorem (`padicValNat_choose`, `sub_one_mul_padicValNat_choose_eq_sub_sum_digits`), Catalan numbers (`catalan`, `catalan_eq_centralBinom_div`) counted by binary trees (`BinaryTree.treesOfNumNodesEq_card_eq_catalan`), orbit–stabilizer (`MulAction.card_orbit_mul_card_stabilizer_eq_card_group`), the $p$-group fixed-point congruence (`IsPGroup.card_modEq_card_fixedPoints`) and regular wreath products (`RegularWreathProduct`). Fuss–Catalan numbers are listed as a TODO in the Catalan file, and there are no $q$-ary trees or automorphism groups of rooted trees.
