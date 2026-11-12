# Problem 47

> Verbatim copy of one row of the Mathathon problem sheet. The text under each heading is the cell text, unchanged. See [README.md](README.md).

## Problem ID

47

## Title/name of problem

Sorting Networks in O(log(n)) Depth

## Short description of problem (100 words or less)

Sorting lists is a fundamental problem in computer science that famously requires roughly n log(n) steps to do. However, this is only if the steps are taken sequentially; more efficient algorithms are possible if the steps are allowed to take place in parallel. A result of Ajtai-Komlós-Szemerédi shows that it is in fact possible to sort in O(log(n)) parallel rounds of operations. However, this algorithm (referred to as a sorting network) is famously difficult to understand and also impractical to implement. A simpler construction of these networks that have reasonable bounds on their depth would be of great interest in both theory and practice.

## Submitted Area

Computer science

## Proposed Tracks

Computation/Applied Math

## Reference/source material

https://dl.acm.org/doi/abs/10.1145/800061.808726, https://users.encs.concordia.ca/~chvatal/notes/aks.pdf, Volume 3 (Sorting and Searching) of The Art of Computer Programming 

## Desired outcome

A simplified construction of a O(log(n)) depth sorting network (simplified e.g. by making use of nicer algebraic gadgets to abstract out some of the complexity, or else a simplified explanation of the AKS construction). A sorting network that is practically implementable would be desirable, though not necessary
