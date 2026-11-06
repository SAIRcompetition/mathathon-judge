# 47 · Sorting Networks in O(log(n)) Depth

**Tracks:** Computation/Applied Math · **Area:** Computer science

## Description

Sorting lists is a fundamental problem in computer science that famously requires roughly n log(n) steps to do. However, this is only if the steps are taken sequentially; more efficient algorithms are possible if the steps are allowed to take place in parallel. A result of Ajtai-Komlós-Szemerédi shows that it is in fact possible to sort in O(log(n)) parallel rounds of operations. However, this algorithm (referred to as a sorting network) is famously difficult to understand and also impractical to implement. A simpler construction of these networks that have reasonable bounds on their depth would be of great interest in both theory and practice.

## Desired outcome

A simplified construction of a O(log(n)) depth sorting network (simplified e.g. by making use of nicer algebraic gadgets to abstract out some of the complexity, or else a simplified explanation of the AKS construction). A sorting network that is practically implementable would be desirable, though not necessary.

## References

- M. Ajtai, J. Komlós, and E. Szemerédi, the original construction: <https://dl.acm.org/doi/abs/10.1145/800061.808726>
- Notes on the AKS construction: <https://users.encs.concordia.ca/~chvatal/notes/aks.pdf>
- D. Knuth, *The Art of Computer Programming*, Volume 3 (Sorting and Searching).

## Official Lean statement

This problem has no official Lean statement.
