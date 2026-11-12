# Problem 91

> Verbatim copy of one row of the Mathathon problem sheet. The text under each heading is the cell text, unchanged. See [README.md](README.md).

## Problem ID

91

## Title/name of problem

A classification of finite Euclidean Ramsey configurations

## Short description of problem (100 words or less)

A finite set X ⊂ ℝⁿ is Ramsey if for every r, every r-colouring of ℝᵐ (m large) contains a monochromatic congruent copy of X. Erdős et al. (1973) showed Ramsey sets are spherical. Graham conjectured the converse, and Leader, Russell and Walters (2012) conjectured that Ramsey sets are exactly the subtransitive ones. OpenAI's publication claims a complete classification via a tensor condition over the coordinate fields. It follows that every subtransitive set and every set of at most five concyclic points is Ramsey, and that some Ramsey cyclic quadrilaterals are not subtransitive.

## Submitted Area

Combinatorics / discrete geometry (Euclidean Ramsey theory)

## Proposed Tracks

Combinatorics

## Reference/source material

OpenAI, “A classification of finite Euclidean Ramsey configurations”, preprint, 23 September 2026. https://github.com/openai/math/tree/main/preprints/A-classification-of-finite-Euclidean-Ramsey-configurations-September-23-2026 (Lean formalisation: lean/docs/172.md in the same repository, uses "sorry" everywhere)
P. Erdős, R. L. Graham, P. Montgomery, B. L. Rothschild, J. Spencer, E. G. Straus, “Euclidean Ramsey theorems I”, J. Combin. Theory Ser. A 14 (1973), 341–363.
I. Leader, P. A. Russell, M. Walters, “Transitive sets in Euclidean Ramsey theory”, J. Combin. Theory Ser. A 119 (2012), 382–396.

## Desired outcome

- Independent human verification of the tensor criterion, with an explanation of its geometric meaning.
- A readable, self-contained proof of a special case, e.g. that every cyclic quadrilateral is Ramsey.
- An explicit check of the counterexample: a concrete Ramsey cyclic quadrilateral that is not subtransitive, with a proof that it is not.
- Maybe Lean formalization?
