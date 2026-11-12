# Problem 74

> Verbatim copy of one row of the Mathathon problem sheet. The text under each heading is the cell text, unchanged. See [README.md](README.md).

## Problem ID

74

## Title/name of problem

The Cap Set Problem and the Slice Rank Method

## Short description of problem (100 words or less)

In 2016, Ellenberg and Gijswijt, building on Croot-Lev-Pach, proved that a cap set in F_3^n has size O(2.756^n). The proof is strikingly short, using polynomials and what Tao later named the “slice rank” of a function. Yet it remains unclear why this approach succeeds where Fourier methods stalled, how robust it is, and which other patterns, fields, and geometric or colouring problems it can reach.

## Submitted Area

Additive combinatorics, algebraic combinatorics, polynomial method

## Proposed Tracks

Combinatorics

## Reference/source material

J. S. Ellenberg and D. Gijswijt, “On large subsets of F_q^n with no three-term arithmetic progression,” Annals of Mathematics 185 (2017), 339-343.
E. Croot, V. Lev, and P. P. Pach, “Progression-free sets in Z_4^n are exponentially small,” Annals of Mathematics 185 (2017), 331-337.
E. Naslund, “Monochromatic equilateral triangles in the unit distance graph,” Bulletin of the London Mathematical Society 52 (2020).

## Desired outcome

We would like teams to build a clear, verifiable understanding of the slice rank method, starting from its cap set origins and then testing how far it extends. Possible deliverables include a formalization (for example in Lean) of the slice rank lemma and the Ellenberg-Gijswijt bound, an exposition or interactive tool for visualizing slice rank on small examples, or an analysis of which assumptions in the method are essential and which can be relaxed. Teams could also explore how the technique carries over to related avoidance problems, including settings where the functions are not strictly polynomial or the forbidden configuration is geometric rather than purely additive. 

The topic has a short, accessible core proof and a lot of room around it. Teams can start from pure formalization or exposition and, if time allows, push toward new applications. Several adjacent results (e.g., Naslund’s geometric application) show the method’s reach beyond the original setting, so there is room for original work as well as consolidation.
