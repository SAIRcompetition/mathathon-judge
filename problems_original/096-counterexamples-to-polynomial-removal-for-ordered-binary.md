# Problem 96

## Problem ID

96

## Title/name of problem

Counterexamples to polynomial removal for ordered binary matrices

## Short description of problem (100 words or less)

In a manuscript released on October 6, 2026, OpenAI showed that polynomial removal fails for ordered binary matrices, answering a question of Alon, Fischer, and Newman (2007). They had proven that in the unordered case (both rows and columns can be permuted), the answer is yes. Alon and Ben-Eliezer (2020) showed that if you allow only row permutations, the answer is still yes.

OpenAI's counterexample is a 66x66 binary matrix. Five days later, Wang used similar methods to produce a 4x4 one.

Both proofs construct complicated host matrices, which we think could be better explained and simplified.

## Submitted Area

Combinatorics

## Proposed Tracks

Combinatorics

## Reference/source material

1. Noga Alon, Eldar Fischer and Ilan Newman, "Efficient Testing of Bipartite Graphs for Forbidden Induced Subgraphs", SIAM J. Comput. 37(3) (2007), 959–976. https://doi.org/10.1137/050627915
2. OpenAI, "Polynomial removal fails for ordered binary matrices", OpenAI Math Release preprint, dated September 25, 2026, released October 6, 2026, Theorem 1.1. https://github.com/openai/math/blob/main/preprints/Polynomial-removal-fails-for-ordered-binary-matrices-September-25-2026/paper.pdf
3. Zinan Wang, "A Four-by-Four Obstruction to Polynomial Removal for Ordered Binary Matrices", arXiv:2610.15370, October 11, 2026. https://arxiv.org/abs/2610.15370

## Desired outcome

A short, human-readable proof that Wang's 4x4 matrix is a counterexample, with pictures of the first few host matrices. Connections to similar problems, for example, removal lemmas for ordered graphs or for permutation patterns, whose occurrences are ordered copies of permutation matrices.

Both counterexamples come with Lean formalizations, so what is missing is understanding, not correctness.
