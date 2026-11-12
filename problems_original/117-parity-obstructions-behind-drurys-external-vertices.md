# Problem 117

## Problem ID

117

## Title/name of problem

Parity obstructions behind Drury’s external vertices conjecture: from n = 4 to n = 5

## Short description of problem (100 words or less)

The Marcus–de Oliveira conjecture places det(A+B), for normal A, B, in the convex hull of the vertex points v(σ) = ∏(a_i − b_σ(i)). Drury’s external vertices conjecture (1996): if all Re v(σ) ≥ 1, then Re v − 1 is a nonnegative combination of the indicators P_IJ(σ) = [σ(I) = J]. It yields the determinantal conjecture for every half-plane excluding the origin. Drury proved n = 4 in 2004 by analysing 210 roots. A new unpublised two-page proof sent to the organization shows the n = 4 case is a parity obstruction: positivity confines the phases of 57 root monomials to (−π/2, π/2), and an odd multiplicative relation whose double is a sum of flat relations cannot exist.

## Submitted Area

Linear algebra

## Proposed Tracks

Combinatorics

## Reference/source material

S. W. Drury, “The determinantal conjecture and Hadamard type inequalities,” Linear Algebra Appl. 246, 279–297 (1996). Sec. 3: the space D_n, the cone Γ, and External Vertices Conjectures I and II; Sec. 4: why EVC implies the determinantal conjecture for half-planes not containing the origin.
S. W. Drury, “The external vertices conjecture in case n = 4,” Electron. J. Linear Algebra 11, 180–191 (2004). The original proof.

## Desired outcome

(1) Reformulate the two-page proof as an invariant: define the lattice L of multiplicative relations among the root monomials, its sign character χ, and the flat sublattice F forced by the half-plane hypothesis; prove that nontriviality of χ on the 2-torsion of L/F implies the facet inequality; recompute the n = 4 case in this language, recovering the dodecagon, the minimality of twelve, and the order-three symmetry as structural facts rather than search results. (2) Implement the pipeline for general n: facets of Γ_n, positivity implications of each facet, L, F, χ, torsion search. (3) Run it at n = 5. The target is either a proof of EVC(5), which would be new, or the first facet where the obstruction vanishes, followed by a linear-programming search for a counterexample at that facet. (4) State precisely which half-planes EVC(n) controls and what region of the plane the full conjecture still has to exclude. Deliverables: an explainer readable after a first linear-algebra course, and a repository with the exact-arithmetic verification of the n = 4 proof and the n = 5 computation. No claim about the full n = 4 determinantal conjecture is expected.
