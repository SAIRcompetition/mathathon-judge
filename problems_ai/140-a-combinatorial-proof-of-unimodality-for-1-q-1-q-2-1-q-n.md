# 140 · A combinatorial proof of unimodality for (1+q)(1+q^2)...(1+q^n)

## From the proposer

- **Area:** Algebraic combinatorics
- **Tracks:** Combinatorics

### Description

When (1+q)(1+q^2)...(1+q^n) is expanded, each factor contributes either 1 or q^i, so every subset S of {1,...,n} gives exactly one term q^(sum of S). The coefficient of q^k is therefore the number of subsets of {1,...,n} whose elements add up to k (e.g. for n = 4 these numbers are 1,1,1,2,2,2,2,2,1,1,1 (k = 0,...,10)). For every n they increase up to the middle value k = n(n+1)/4 and then decrease, i.e. the sequence is unimodal. Although the statement is elementary, the known proofs are quite unsatisfying: Stanley's relies on the hard Lefschetz theorem from algebraic geometry, and Proctor's on the representation theory of sl_2. Neither gives an explicit one-to-one map from the subsets with sum k to the subsets with sum k+1 (for k below the middle), which is what a combinatorial proof would provide. Stanley and Zanello call finding a combinatorial proof "an outstanding open problem".

### Desired outcome

The aim should be a new, purely combinatorial proof of this known result. The strongest version is an explicit rule, the same for every n, that arranges all subsets of {1,...,n} into chains S_1, S_2, ..., S_m in which each step either adds the element 1 or replaces some element j by j+1 (so the sum goes up by exactly 1), and each chain is symmetric about the middle. In Stanley's language, this is a symmetric chain decomposition of the poset M(n). Counting the chains passing through each sum k proves unimodality immediately, and it would answer Stanley's question of whether such a decomposition exists for every n. A weaker goal, which would still give a new proof of unimodality, is an explicit one-to-one map from the subsets with sum k to the subsets with sum k+1, for every k below the middle.


### References

1. R. P. Stanley, "Weyl groups, the hard Lefschetz theorem, and the Sperner property", SIAM J. Algebraic Discrete Methods 1 (1980) 168-184 (Section 7 asks whether M(n) is a symmetric chain order).
2. R. A. Proctor, "Solution of two difficult combinatorial problems with linear algebra", Amer. Math. Monthly 89 (1982) 721-734.
3. R. P. Stanley, F. Zanello, "Unimodality of partitions with distinct parts inside Ferrers shapes", arXiv:1305.6083 (open problem stated in the abstract).
4. Related recent work: Dorward (arXiv:2606.15891, 2026) counts symmetric chain decompositions of M(n) using AlphaEvolve data.

## AI-generated notes

<!-- status: Open -->

- **Status:** Unimodality is proved (J. W. B. Hughes, 1977, by Lie algebras; R. P. Stanley, 1980, by the hard Lefschetz theorem; R. A. Proctor, 1982, by $\mathfrak{sl}_2$-representations); a combinatorial proof, and Stanley's 1980 question whether $M(n)$ has a symmetric chain decomposition, are open.
- **Task:** A combinatorial proof of unimodality: ideally an explicit symmetric chain decomposition of $M(n)$, uniform in $n$, or at least explicit injections from the subsets with sum $k$ to those with sum $k+1$ below the middle.
- **Key reference:** [R. P. Stanley, "Weyl groups, the hard Lefschetz theorem, and the Sperner property", SIAM J. Algebraic Discrete Methods 1 (1980), 168–184](https://doi.org/10.1137/0601021)
- **Lean:** No official statement.

### Notes

- By Stanley's account (§5 of reference 1) the first explicit proof of unimodality is Hughes's (1977), based on a result of Dynkin. The sheet mentions only Stanley and Proctor.
- Reference 4 does not settle existence. It lists all SCDs of $M(3)$, $M(4)$, $M(5)$ and gives AlphaEvolve lower bounds for $n\le7$ (12 SCDs for $n=5$, at least 360036 for $n=7$). It proves that the number of SCDs of $M(n)$ is even for $n>2$, which, as the author notes, allows zero.

### The result

$M(n)$ is the set of subsets of $\{1,\dots,n\}$ (strict partitions with parts at most $n$) ordered by $S\le T$ if $|S|\le|T|$ and the $i$-th largest element of $S$ is at most the $i$-th largest element of $T$ for every $i\le|S|$. Its cover relations add the element 1 or replace some $j$ by $j+1$; the rank of $S$ is its element sum, the top rank is $N=n(n+1)/2$, and the rank-generating function is
$$\sum_{S\subseteq[n]}q^{\sum S}=\prod_{i=1}^n(1+q^i).$$
$M(n)$ is a distributive lattice, the Bruhat order on the parabolic quotient $W^J$ of the Weyl group of type $B_n$ with $J=\{s_1,\dots,s_{n-1}\}$; it is one of the minuscule lattices.

Theorem (Stanley 1980): $M(n)$ is rank-symmetric, rank-unimodal and strongly Sperner (Peck). Equivalently (Stanley's Lemma 1.1, "property T"), for each $i\le N/2$ separately there are $|M(n)_i|$ pairwise disjoint saturated chains from rank $i$ to rank $N-i$.

Open (Stanley 1980, §7): can $M(n)$ be partitioned into saturated chains $x_i<x_{i+1}<\dots<x_{N-i}$, i.e. does property T hold for all $i$ simultaneously? This is a symmetric chain decomposition (SCD). Stanley and Zanello (2015) call a combinatorial proof of the unimodality of $M(n)$ an outstanding open problem. For unimodality alone, any explicit injection from the subsets with sum $k$ to those with sum $k+1$, $k<N/2$, would do; it need not respect the order of $M(n)$.

### How the known proof works

- Stanley: $W^J$ is the poset of Schubert cells of the flag variety $G/P$, ordered by inclusion of closures, and the cell classes form a basis of the cohomology. Multiplication by the class of a hyperplane section maps each rank to the next and sends a cell class to a combination of classes of cells adjacent to it in the order (Lemma 2.2); by the hard Lefschetz theorem its iterates from rank $i$ to rank $N-i$ are invertible. By Lemma 1.1 this gives property T, hence the Peck property.
- Proctor: an explicit representation of $\mathfrak{sl}_2$ on the vector space with basis $M(n)$. A raising operator moves along cover relations with explicit positive weights, a lowering operator goes back, and their commutator acts on rank $r$ by the scalar $2r-N$. Finite-dimensional $\mathfrak{sl}_2$ theory then gives unimodality and the Sperner property, using only linear algebra.
- Both proofs give injections between ranks only through invertibility of matrices. Turning the resulting chains into symmetric ones is exactly what is missing; Dorward notes that piecing together Stanley's injections need not give symmetric chains.

### Background

- Lindström conjectured that $M(n)$ is Sperner. Stanley's Corollary 5.3 settles a conjecture of Erdős and Moser: among sets $A$ of $n$ distinct reals, the maximum number of subsets of $A$ with equal sums is attained for $A=\{-\lfloor\frac{n-1}2\rfloor,\dots,\lfloor\frac n2\rfloor\}$.
- For the Gaussian binomials $\binom{m+n}{m}_q$ (the lattice $L(m,n)$) there is a constructive proof of unimodality (O'Hara 1990), and SCDs are known for $m\le6$: Lindström ($m=3$), West ($m=4$), Wen ($m=5$, and $m=6$ in 2026). Stanley's note added in proof credits W. Riess (Erlangen report, April 1978) with the first proof for $m=3$ and $m=4$. For $M(n)$ much less is known (Dorward, §1).
- Stanley and Zanello study strict partitions inside other shifted shapes, where unimodality can fail.

### Where to start

- [Weyl groups, the hard Lefschetz theorem, and the Sperner property (author's copy)](https://math.mit.edu/~rstan/pubs/pubfiles/42.pdf), R. P. Stanley, 1980: Lemma 1.1, §5 ($M(n)$, Hughes, Erdős–Moser) and §7 (the question).
- [Solution of two difficult combinatorial problems with linear algebra](https://doi.org/10.1080/00029890.1982.11995524), R. A. Proctor, 1982: the explicit $\mathfrak{sl}_2$ operators.
- [On the number of symmetric chain decompositions of the minuscule lattices $L(m,n)$ and $M(n)$](https://arxiv.org/abs/2606.15891), R. Dorward, 2026: tableau formulation of SCDs, small cases, open problems (§7).
- [A symmetric chain decomposition of $L(6,n)$](https://arxiv.org/abs/2604.23042), X. Wen, 2026: the most recent explicit construction for the related lattices $L(m,n)$.

Prerequisites: graded posets, Sperner theory and symmetric chain decompositions, strict partitions and shifted Young diagrams, representations of $\mathfrak{sl}_2$; Bruhat order and Schubert calculus for Stanley's proof.

### References, with links

1. R. P. Stanley, "Weyl groups, the hard Lefschetz theorem, and the Sperner property", SIAM J. Algebraic Discrete Methods 1 (1980), 168–184 (§7: is $M(n)$ a symmetric chain order?). <https://doi.org/10.1137/0601021>
2. R. A. Proctor, "Solution of two difficult combinatorial problems with linear algebra", Amer. Math. Monthly 89 (1982), 721–734. <https://doi.org/10.1080/00029890.1982.11995524>
3. R. P. Stanley and F. Zanello, "Unimodality of partitions with distinct parts inside Ferrers shapes", arXiv:1305.6083; European J. Combin. 49 (2015), 194–202. <https://arxiv.org/abs/1305.6083>, <https://doi.org/10.1016/j.ejc.2015.03.007>
4. R. Dorward, "On the number of symmetric chain decompositions of the minuscule lattices $L(m,n)$ and $M(n)$", arXiv:2606.15891 (2026). <https://arxiv.org/abs/2606.15891>

### Further references

- J. W. B. Hughes, "Lie algebraic proofs of some theorems on partitions", in *Number Theory and Algebra* (H. Zassenhaus, ed.), Academic Press (1977), 135–155 (as cited by Stanley 1980).
- K. M. O'Hara, "Unimodality of Gaussian coefficients: a constructive proof", J. Combin. Theory Ser. A 53 (1990), 29–52. <https://doi.org/10.1016/0097-3165(90)90018-R>
- X. Wen, "A symmetric chain decomposition of $L(6,n)$", arXiv:2604.23042 (2026). <https://arxiv.org/abs/2604.23042>

### Lean

#### Official statement

This problem has no official Lean statement. Unimodality itself is easy to state with Mathlib (coefficients of a polynomial, or counts of subsets of `Finset.range` by sum); what the problem asks for is a combinatorial proof, which a statement cannot capture.

#### Mathlib

Mathlib has polynomials and their coefficients (`Polynomial.coeff`), partitions with the distinct-part partitions (`Nat.Partition`, `Nat.Partition.distincts`) and Glaisher's theorem (`Nat.Partition.card_odds_eq_card_distincts`), Young diagrams (`YoungDiagram`), and Sperner's theorem and the LYM inequality for the Boolean lattice (`IsAntichain.sperner`, `Finset.lubell_yamamoto_meshalkin_inequality_sum_card_div_choose`). It has no notion of unimodal sequence, no symmetric chain decompositions, no shifted Young diagrams or the poset $M(n)$, and no Bruhat order on parabolic quotients.
