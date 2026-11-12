# 84 · Exotic hyperbolic groups from 2-complexes

## From the proposer

- **Area:** Geometric group theory
- **Tracks:** Number Theory/Algebra, Geometry

### Description

Recent results of OpenAI, and subsequent follow-ups, have claimed a number of word-hyperbolic groups with "exotic" properties: (1) a word-hyperbolic group which is not residually finite; (2) a word-hyperbolic group which does not act geometrically on any CAT(0) space; (3) a non-sofic word-hyperbolic group. All three examples appear to involve the construction of certain 2-dimensional complexes, starting with suitable incidence graphs. How similar are these constructions, or is it simply a sufficiently flexible general construction?

### Desired outcome

An expository write-up; code to generate and visualize(?) 2-complexes from the construction

### References

1. OpenAI non-RF group @ https://github.com/openai/math/blob/main/preprints/a-torsion-free-hyperbolic-group-that-is-not-residually-finite-September-23-2026/paper.pdf
2. OpenAI non-CAT(0) group @ https://github.com/openai/math/blob/main/preprints/A-hyperbolic-group-with-no-geometric-CAT0-action-September-25-2026/paper.pdf
3. H. Sandhu and A. Thom, "An example of a non-sofic hyperbolic group" @ https://arxiv.org/html/2610.24836

## AI-generated notes

<!-- status: Not a single theorem -->

- **Status:** Three counterexamples are claimed, none refereed: a non-residually-finite and a non-CAT(0) hyperbolic group in OpenAI preprints dated 23 and 25 September 2026 (released 6 October 2026; the repository states that an internal OpenAI model produced its manuscripts), and a non-sofic one by H. Sandhu and A. Thom (arXiv, October 2026; based, the authors state, on an AI-generated construction).
- **Task:** An exposition comparing the three 2-complex constructions, with code that generates (and perhaps visualizes) the complexes.
- **Key reference:** [A torsion-free hyperbolic group that is not residually finite](https://github.com/openai/math/blob/main/preprints/a-torsion-free-hyperbolic-group-that-is-not-residually-finite-September-23-2026/paper.pdf), OpenAI, preprint, September 23, 2026.
- **Lean:** No official statement.

### Notes

- Douglas and Mghirbi (AI-assisted preprint, 2026, not peer reviewed) show that OpenAI's non-residually-finite group is itself not sofic, by an approximate version of its rank count.
- The complexes are huge or not explicit ((1) needs a sufficiently large prime $q$, (2) has no effective size, Sandhu–Thom's presentation has about $10^{132}$ generators), so code can build only scaled-down versions.

### The result

A group is residually finite if every nonidentity element survives in a finite quotient, and sofic if for every finite $F\ni1$ and $\eta\gt0$ some $\phi\colon F\to\mathrm{Sym}(n)$ with $\phi(1)=\mathrm{id}$ has $\phi(a)\phi(b)=\phi(ab)$ off at most $\eta n$ points and each $\phi(a)$, $a\ne1$, fixing fewer than $\eta n$ points. An action is geometric if it is proper, cocompact and isometric.
1. OpenAI, Theorem 1.1: some torsion-free word-hyperbolic group, the fundamental group of a finite Euclidean triangle complex, is not residually finite.
2. OpenAI, Theorem 1.1: some finite connected 2-dimensional aspherical simplicial complex $K$ has a linear disk-filling inequality (so $\pi_1K$ is word-hyperbolic), $\pi_1K$ has no geometric action on a proper complete CAT(0) space, and no finite complex homotopy equivalent to $K$ has a locally CAT(0) metric.
3. Sandhu–Thom, Theorem A: some finite connected triangle complex $K$ with a locally CAT(−1) metric has torsion-free, word-hyperbolic, non-sofic $\pi_1K$; hence some nontrivial torsion-free hyperbolic group has no nontrivial sofic quotient (Corollary B).

### How the known proof works

- (1), Section 2: random marked affine lines in $\mathbb F_q^{20}$ with a punctured incidence graph of girth above 12 (Lemma 2.2) each give an $r\times r$ array of edges, completed to triangles through a third vertex; a link criterion (Theorem 2.1) gives hyperbolicity and nontrivial four-edge "rectangular words" (Lemma 2.3). In a finite quotient keeping them all, the regular representation gives matrices of rank at least $rD/4$ over $\mathbb F_q$ (2.10), while Lagrange interpolation at the marks makes their direct sum a sum of small-rank terms (2.14).
- (3) runs the same argument on the explicit Lazebnik–Ustimenko graph $D(5,q)$ (girth at least 10) with hyperbolic triangles; a rank bound of Alon–Hall–Knauer–Pinchasi–Yuster makes it robust for permutation models with small defects (Theorem 3.1), which soficity would provide.
- (2) is different: random labellings of a modified Fano-plane incidence graph, with diagram counting for asphericity and linear filling (Theorem 3.1). Geometric CAT(0) actions of infinitely many of these groups would yield, via energy minimization, a limiting configuration in a complete CAT(0) space (Proposition 5.9) that a tangent-cone argument excludes (Proposition 6.5).

### Background

- Kapovich–Wise: all hyperbolic groups are residually finite if and only if every nontrivial one has a nontrivial finite quotient. Cubulated hyperbolic groups are residually finite (Agol, Haglund–Wise), so groups (1) and (3) act geometrically on no CAT(0) cube complex.
- The CAT(−1) realization question is Problem H11 of Baumslag–Myasnikov–Shpilrain (1999); Sandhu–Thom's group acts geometrically on a CAT(−1) space (Proposition 4.2), so, unlike group (2), it is a CAT(0) group.
- Residually finite groups are sofic, so non-soficity is the stronger property. Sandhu–Thom credit the first non-sofic group to a separate OpenAI result (2026); Chapman–Peled (2025) gave a conditional construction of a non-sofic hyperbolic group.

### Where to start

- [A torsion-free hyperbolic group that is not residually finite](https://github.com/openai/math/blob/main/preprints/a-torsion-free-hyperbolic-group-that-is-not-residually-finite-September-23-2026/paper.pdf), OpenAI, 2026: "The two constraints" (Section 1) and Section 2.
- [An example of a non-sofic hyperbolic group](https://arxiv.org/abs/2610.24836), H. Sandhu, A. Thom, 2026: an 8-page version with an explicit incidence graph.
- [A hyperbolic group with no geometric CAT(0) action](https://github.com/openai/math/blob/main/preprints/A-hyperbolic-group-with-no-geometric-CAT0-action-September-25-2026/paper.pdf), OpenAI, 2026: Section 1.2 and Section 2.1 with Figures 1–2 (the Fano-plane template).

Prerequisites: presentation complexes, the link condition, CAT(0) and CAT(−1) spaces, hyperbolic groups, interpolation over finite fields, matrix rank.

### References, with links

- OpenAI, “A torsion-free hyperbolic group that is not residually finite,” preprint dated September 23, 2026: <https://github.com/openai/math/blob/main/preprints/a-torsion-free-hyperbolic-group-that-is-not-residually-finite-September-23-2026/paper.pdf>
- OpenAI, “A hyperbolic group with no geometric CAT(0) action,” preprint dated September 25, 2026: <https://github.com/openai/math/blob/main/preprints/A-hyperbolic-group-with-no-geometric-CAT0-action-September-25-2026/paper.pdf>
- H. Sandhu and A. Thom, “An example of a non-sofic hyperbolic group,” arXiv:2610.24836 (2026): <https://arxiv.org/abs/2610.24836>

### Further references

- S. Douglas, N. Mghirbi, “Non-soficity of OpenAI’s torsion-free hyperbolic group”, preprint, version 1.2.0 (2026). <https://doi.org/10.5281/zenodo.23202474>
- I. Kapovich, D. T. Wise, “The equivalence of some residual properties of word-hyperbolic groups”, J. Algebra 223 (2000), 562–583. <https://doi.org/10.1006/jabr.1999.8104>
- I. Agol, “The virtual Haken conjecture”, Doc. Math. 18 (2013), 1045–1087. <https://doi.org/10.4171/DM/421>
- F. Lazebnik, V. A. Ustimenko, A. J. Woldar, “A new series of dense graphs of high girth”, Bull. Amer. Math. Soc. 32 (1995), 73–79. <https://doi.org/10.1090/S0273-0979-1995-00569-0>
- M. Chapman, Y. Peled, “Cocycle stability in permutations of random simplicial complexes” (2025). <https://arxiv.org/abs/2509.21566>

### Lean

#### Official statement

This problem has no official Lean statement: it asks how similar the constructions behind three different theorems are (hyperbolic groups that are not residually finite, not CAT(0) and not sofic) and for code that builds the complexes, not for the proof of one theorem; Lean statements of all three properties, with Lean proofs, are listed below.

#### Existing Lean proofs

- `OAI.Release075.main` in [`ComparatorChallenges/TorsionFreeHyperbolic.lean`](https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/TorsionFreeHyperbolic.lean) (openai/math): a torsion-free word-hyperbolic group that is not residually finite, with a Lean proof in [`OAI/GroupTheory/Hyperbolic`](https://github.com/openai/math/tree/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/GroupTheory/Hyperbolic).
- `OAI.HyperbolicObstruction.main` in [`ComparatorChallenges/HyperbolicObstruction.lean`](https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/HyperbolicObstruction.lean) (openai/math): a finite aspherical complex whose word-hyperbolic fundamental group acts geometrically on no proper CAT(0) space, with a Lean proof in [`OAI/Geometry/HyperbolicGroups`](https://github.com/openai/math/tree/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Geometry/HyperbolicGroups).
- [hyperbolic-group-not-sofic](https://github.com/Apsiape/hyperbolic-group-not-sofic/tree/1fb4c580ac698abd8e2c4a118ea24eb969675494) (S. Douglas and N. Mghirbi): a Lean proof that some torsion-free word-hyperbolic group is not sofic (`Approx252.exists_torsionFree_wordHyperbolic_not_sofic`), for Lean v4.35.0.

#### Related Lean formalizations

- [`HyperbolicGroupsResiduallyFinite.lean`](https://github.com/google-deepmind/formal-conjectures/blob/3afb9beda5bcb9933e6e10276e87f8ccfd851222/FormalConjectures/Other/HyperbolicGroupsResiduallyFinite.lean) in Formal Conjectures: a Lean statement that not every hyperbolic group is residually finite (statement only).

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `Group.ResiduallyFinite`, `Group.Generators` with word length and the word metric (`Group.Generators.wordLength`, `Group.Generators.normedGroup`), Cayley graphs (`SimpleGraph.mulCayley`), `Metric.gromovProduct`, `FundamentalGroup`, `HomotopyGroup.Pi`, `AbstractSimplicialComplex`, `IsometryEquiv` and `ProperSpace`. It lacks hyperbolic groups, CAT(0) and CAT(−1) spaces, geometric actions, polyhedral complexes with links and sofic groups; the existing Lean statements define these themselves.
