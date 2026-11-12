# Problem 99

## Problem ID

99

## Title/name of problem

Towards a combinatorial proof of Schur positivity for LLT polynomials of unit interval graphs

## Short description of problem (100 words or less)

LLT polynomials of unit interval graphs are known to be Schur positive: every Schur coefficient is a polynomial in q with nonnegative integer coefficients. The existing proofs are unsatisfying: Grojnowski-Haiman express the coefficients through Kazhdan-Lusztig theory of affine Hecke algebras, and Guay-Paquet's second proof uses Hessenberg varieties, which, as Alexandersson-Sulzgruber put it, gives positivity "but no combinatorial formula for the coefficients". Combinatorial rules are known only for special families (e.g. Roberts for maximum area at most 2, Huh-Nam-Yoo for melting lollipops), and none is known for unit interval graphs in general.

## Submitted Area

Algebraic combinatorics (symmetric functions)

## Proposed Tracks

Combinatorics

## Reference/source material

1. I. Grojnowski, M. Haiman, "Affine Hecke algebras and positivity of LLT and Macdonald polynomials", preprint (2007), available at math.berkeley.edu/~mhaiman.
2. M. Guay-Paquet, "A second proof of the Shareshian-Wachs conjecture, by way of a new Hopf algebra" (2016), arXiv:1601.05498 (Schur positivity of unit interval graph LLT polynomials follows from this, as noted by Alexandersson-Sulzgruber, arXiv:2004.09198).
3. A. Roberts, "Dual equivalence graphs revisited and the explicit Schur expansion of a family of LLT polynomials", J. Algebraic Combin. (2014), arXiv:1302.0319 (Theorem 4.3).

## Desired outcome

A combinatorial proof of Schur positivity for every unit interval graph would be nice: an explicit description of what each Schur coefficient counts, together with a reason why it works.

Fortunately we do already have natural starting points; combinatorial rules already exist for some families: Roberts' rule covers every graph without a K_4, and Huh-Nam-Yoo's covers melting lollipops. But each rule already breaks on a 4-vertex graph where the other works (K_4, and a triangle with a tail). So perhaps a first goal is to understand these failures and find one rule that handles both.

And even if the full problem is too much for the mathathon, we can start with a natural test case: K-chains (chains of cliques glued at single vertices), which are the simplest graphs containing a K_4 that no known rule covers. The interesting ones contain a K_4 with something attached on both sides (Roberts' rule fails on 11 of the 14 such graphs with 8 vertices, for example). Thus, we could start with establishing a rule that is correct on all K-chains with 8 vertices, and work towards a proof for the whole family.
