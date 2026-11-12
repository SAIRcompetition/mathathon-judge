# Problem 140

> Verbatim copy of one row of the Mathathon problem sheet. The text under each heading is the cell text, unchanged. See [README.md](README.md).

## Problem ID

140

## Title/name of problem

A combinatorial proof of unimodality for (1+q)(1+q^2)...(1+q^n)

## Short description of problem (100 words or less)

When (1+q)(1+q^2)...(1+q^n) is expanded, each factor contributes either 1 or q^i, so every subset S of {1,...,n} gives exactly one term q^(sum of S). The coefficient of q^k is therefore the number of subsets of {1,...,n} whose elements add up to k (e.g. for n = 4 these numbers are 1,1,1,2,2,2,2,2,1,1,1 (k = 0,...,10)). For every n they increase up to the middle value k = n(n+1)/4 and then decrease, i.e. the sequence is unimodal. Although the statement is elementary, the known proofs are quite unsatisfying: Stanley's relies on the hard Lefschetz theorem from algebraic geometry, and Proctor's on the representation theory of sl_2. Neither gives an explicit one-to-one map from the subsets with sum k to the subsets with sum k+1 (for k below the middle), which is what a combinatorial proof would provide. Stanley and Zanello call finding a combinatorial proof "an outstanding open problem".

## Submitted Area

Algebraic combinatorics

## Proposed Tracks

Combinatorics

## Reference/source material

1. R. P. Stanley, "Weyl groups, the hard Lefschetz theorem, and the Sperner property", SIAM J. Algebraic Discrete Methods 1 (1980) 168-184 (Section 7 asks whether M(n) is a symmetric chain order).
2. R. A. Proctor, "Solution of two difficult combinatorial problems with linear algebra", Amer. Math. Monthly 89 (1982) 721-734.
3. R. P. Stanley, F. Zanello, "Unimodality of partitions with distinct parts inside Ferrers shapes", arXiv:1305.6083 (open problem stated in the abstract).
4. Related recent work: Dorward (arXiv:2606.15891, 2026) counts symmetric chain decompositions of M(n) using AlphaEvolve data.

## Desired outcome

The aim should be a new, purely combinatorial proof of this known result. The strongest version is an explicit rule, the same for every n, that arranges all subsets of {1,...,n} into chains S_1, S_2, ..., S_m in which each step either adds the element 1 or replaces some element j by j+1 (so the sum goes up by exactly 1), and each chain is symmetric about the middle. In Stanley's language, this is a symmetric chain decomposition of the poset M(n). Counting the chains passing through each sum k proves unimodality immediately, and it would answer Stanley's question of whether such a decomposition exists for every n. A weaker goal, which would still give a new proof of unimodality, is an explicit one-to-one map from the subsets with sum k to the subsets with sum k+1, for every k below the middle.

