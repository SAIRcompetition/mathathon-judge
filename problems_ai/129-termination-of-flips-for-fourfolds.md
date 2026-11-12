# 129 · Termination of flips for fourfolds

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/129-termination-of-flips-for-fourfolds.md`](../problems_original/129-termination-of-flips-for-fourfolds.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Termination of flips for fourfolds

### Short description of problem (100 words or less)

Termination of log flips asks whether every sequence of flips for a log canonical pair eventually stops, a fundamental question in birational geometry. OpenAI manuscripts propose termination results for fourfolds. The arguments require further independent verification. Similarly, the proof bring several Hodge theoretic and topological tools that make it very hard to follow from the purely birational geometry perspective. The aim is trying to unify the mathematics used into a single framework and use it to simplify and or improve the proof.

### Submitted Area

Algebraic geometry

### Proposed Tracks

Geometry

### Reference/source material

https://github.com/openai/math/blob/main/preprints/Termination-of-generalized-log-canonical-flips-on-compact-Kahler-fourfolds-October-7-2026/termination-generalized-lc-kahler-fourfolds.pdf

### Desired outcome

Develop a unified framework that clarifies the proof’s structure. Identify the steps that depend essentially on dimension four, isolate the main obstacles to extending the method to higher dimensions and formulate intermediate problems that could provide further progress.

### Reference links

- <https://github.com/openai/math/blob/main/preprints/Termination-of-generalized-log-canonical-flips-on-compact-Kahler-fourfolds-October-7-2026/termination-generalized-lc-kahler-fourfolds.pdf>

## AI-generated notes

<!-- status: Proved (preprint) -->

> Written by Claude Opus 5.5 on 2026-11-11 from the proposer's text above.

- **Status:** Claimed in unrefereed OpenAI preprints: termination for projective log canonical fourfolds with rational boundary (24 September 2026) and for generalized log canonical flips on compact Kähler fourfolds (5–7 October 2026); earlier work covered only special cases (terminal, canonical, pseudo-effective, big boundary).
- **Task:** A unified, more birational account of the termination proof that isolates what depends on dimension four and what blocks higher dimensions.
- **Key reference:** [OpenAI, "Termination of generalized log canonical flips on compact Kähler fourfolds", preprint, 7 October 2026](https://github.com/openai/math/blob/main/preprints/Termination-of-generalized-log-canonical-flips-on-compact-Kahler-fourfolds-October-7-2026/termination-generalized-lc-kahler-fourfolds.pdf)
- **Lean:** No official statement.

### Notes

- The sheet links only the Kähler paper. Its proof adapts the projective paper (24 September 2026) and uses two companion preprints, on generalized canonical flips and on finite ordinary MMPs on compact Kähler fourfolds; the OpenAI catalogue groups them as family 056. The projective paper is the natural entry point.
- The repository describes its manuscripts as produced by an unnamed internal OpenAI model and as "raw research data, rather than polished academic papers". We found no independent check of these proofs.
- The Kähler theorem assumes rational boundary, globally Weil $\mathbb Q$-factorial models and projective flip diagrams, and concerns given flip sequences: "it does not assert the existence of all contractions or flips."

### The result

For a log canonical pair $(X,B)$, a flip is a diagram $X_i\xrightarrow{f_i}Z_i\xleftarrow{f_i^+}X_{i+1}$ of small projective birational morphisms with $-(K_{X_i}+B_i)$ $f_i$-ample and $K_{X_{i+1}}+B_{i+1}$ $f_i^+$-ample. The termination conjecture says that no infinite sequence of flips exists.

Claimed (OpenAI 2026):
- **Projective case (Theorem 1.2).** Let $(X,B)$ be a projective log canonical fourfold over an algebraically closed field of characteristic 0, with rational boundary and no $\mathbb Q$-factoriality or pseudo-effectivity assumption. Every negative extremal ray has its contraction and, if that is birational, the next model of the program; every program, for every sequence of choices, has finitely many birational steps; and a maximal program ends at a nef adjoint or a Mori fibre space.
- **Kähler case (Theorem 1.1).** Every sequence of generalized log canonical flips on normal irreducible, globally Weil $\mathbb Q$-factorial compact Kähler fourfolds terminates, provided the boundary is rational, the nef part is a fixed b-divisor $\mathbf M$ represented by an analytically nef $\mathbb Q$-Cartier divisor on a projective modification, and each flip diagram is projective. Taking $\mathbf M=0$ gives the ordinary log canonical case.

Known before: dimension 3 (Shokurov 1985, Kawamata 1992); in dimension 4, terminal flips (Kawamata–Matsuda–Matsuki 1987), canonical flips (Fujino 2004–05), klt flips when $-(K_X+B)$ is numerically equivalent to an effective divisor (Alexeev–Hacon–Kawamata 2007), pseudo-effective lc pairs (Moraga, arXiv 2018, publ. 2025; Chen–Tsakanikas 2023 for generalized pairs), klt MMPs with big boundary (Han–Liu–Zhuang 2025). In every dimension: termination with scaling for klt pairs with big boundary (Birkar–Cascini–Hacon–McKernan 2010).

### How the known proof works

As outlined in the preprints' introductions (not checked):
- Discrepancies only increase along flips. On a tail of the sequence the exceptional places of log discrepancy at most 1 form a fixed finite set; extracting them gives crepant terminal models ("terminal junctions"), joined by drops in boundary coefficients and finite terminal programs.
- Dimension four enters here: by ACC for minimal log discrepancies of surfaces (or adjunction and negative definiteness in the Kähler paper), places centred on surfaces have discrepancies in a finite set, so the coefficients that keep varying belong to divisors mapping to curves or points.
- Weighted difficulty, after Shokurov, Kawamata–Matsuda–Matsuki, Fujino and Alexeev–Hacon–Kawamata: count places of log discrepancy below 2 with ceiling weights $w(u)=\lceil N\max\{u,0\}\rceil$, subtract locally the contributions of repeated blow-ups over a surface, and add ranks of cycle classes on the normalized boundary components. Since $\lceil x_1+\dots+x_r\rceil\ge\sum_j\lceil x_j\rceil-(r-1)$, the possible deficit at a surface with $r$ normalization branches is $r-1$.
- Branch inequality (Theorem 5.1 in both papers): the excess of branches is paid for by cycle ranks and by distinct places of log discrepancy 2 over singular curves. This is the Hodge-theoretic step: weights on cohomology of degree 5, the decomposition theorem (Beilinson–Bernstein–Deligne–Gabber, Saito's Hodge modules), finite monodromy of local systems along the curves, then formal/étale arguments (projective case) or Quot schemes and Stein neighbourhoods with Fujino's local small $\mathbb Q$-factorialization (Kähler case) to produce divisorial valuations.
- The difficulty is then nonnegative and non-increasing, and drops at every flip with a surface on the positive side; the remaining flips lower the rank of surface cycle classes, as for terminal fourfolds (KMM). Special termination and dlt models pass from klt to lc; the projective paper moves the whole program to $\mathbb C$ and back to other fields.

### Background

- Shokurov's "difficulty" counts exceptional divisors of small discrepancy. KMM combined it with ranks of surface cycle classes for terminal fourfolds, and Alexeev–Hacon–Kawamata introduced weighted difficulties with cycle terms on boundary normalizations, which the OpenAI papers extend.
- Birkar (2007) showed that ACC for log canonical thresholds and special termination imply termination for lc pairs of nonnegative Kodaira dimension; Hacon and Moraga (2020) gave a reduction through weak Zariski decompositions. According to the projective preprint, what remained open in dimension 4 was the non-pseudo-effective case without a big boundary, which it claims for rational boundary.
- Kawamata posted a proof of termination of log flips in dimension 4 in 2003 and withdrew it for "a crucial error in Lemma 3.5" (arXiv:math/0302168).
- Kähler MMP: Höring–Peternell (threefolds, 2016), Das–Hacon–Păun (fourfolds, 2024), Hacon–Xie (big gklt Kähler pairs, arXiv 2026). Generalized pairs: Birkar–Zhang (2016); existence of generalized lc flips: Hacon–Liu (2023).

### Where to start

- [Termination for projective log canonical fourfolds with rational boundary](https://github.com/openai/math/blob/main/preprints/Termination-for-projective-log-canonical-fourfolds-with-rational-boundary-September-24-2026/paper.pdf), OpenAI, 2026: its introduction (pp. 1–4) separates the birational difficulty argument (Sections 2–4, 7–8) from the topological branch estimate (Sections 5–6).
- [Termination of (many) 4-dimensional log flips](https://doi.org/10.1007/s00222-007-0038-1), V. Alexeev, C. Hacon, Y. Kawamata, 2007: the weighted difficulty that the preprints extend.
- [Introduction to the minimal model problem](https://doi.org/10.2969/aspm/01010283), Y. Kawamata, K. Matsuda, K. Matsuki, 1987: §5-1, termination for terminal fourfolds by difficulty and cycle ranks.
- [Termination of pseudo-effective 4-fold flips](https://arxiv.org/abs/1802.10202), J. Moraga, 2018: the pseudo-effective case for lc fourfolds, by a different route.

Prerequisites: the minimal model program (discrepancies, flips, dlt models, special termination), generalized pairs, and for the branch estimate mixed Hodge theory, intersection cohomology and the decomposition theorem.

### References, with links

- OpenAI, "Termination of generalized log canonical flips on compact Kähler fourfolds", OpenAI Math Release preprint, 7 October 2026. <https://github.com/openai/math/blob/main/preprints/Termination-of-generalized-log-canonical-flips-on-compact-Kahler-fourfolds-October-7-2026/termination-generalized-lc-kahler-fourfolds.pdf>

### Further references

- OpenAI, "Termination for projective log canonical fourfolds with rational boundary", preprint, 24 September 2026. <https://github.com/openai/math/blob/main/preprints/Termination-for-projective-log-canonical-fourfolds-with-rational-boundary-September-24-2026/paper.pdf>
- OpenAI, "Termination of generalized-canonical flips on compact Kähler fourfolds", preprint, 6 October 2026. <https://github.com/openai/math/tree/main/preprints/Termination-of-generalized-canonical-flips-on-compact-Kahler-fourfolds-October-6-2026>
- O. Fujino, "Termination of 4-fold canonical flips", Publ. RIMS 40 (2004), 231–237; addendum, Publ. RIMS 41 (2005), 251–257. <https://doi.org/10.2977/prims/1145475971> <https://doi.org/10.2977/PRIMS/1145475410>
- C. Birkar, "Ascending chain condition for log canonical thresholds and termination of log flips", Duke Math. J. 136 (2007), 173–180. <https://doi.org/10.1215/S0012-7094-07-13615-9>
- G. Chen and N. Tsakanikas, "On the termination of flips for log canonical generalized pairs", Acta Math. Sin. (Engl. Ser.) 39 (2023), 967–994. <https://doi.org/10.1007/s10114-023-0116-3>
- J. Han, J. Liu, Z. Zhuang, "Effective termination of general type MMPs in dimension at most five", arXiv:2509.01501 (2025). <https://arxiv.org/abs/2509.01501>
- C. Birkar, P. Cascini, C. D. Hacon, J. McKernan, "Existence of minimal models for varieties of log general type", J. Amer. Math. Soc. 23 (2010), 405–468. <https://doi.org/10.1090/S0894-0347-09-00649-3>
- O. Das, C. Hacon, M. Păun, "On the 4-dimensional minimal model program for Kähler varieties", Adv. Math. 443 (2024), 109615. <https://doi.org/10.1016/j.aim.2024.109615>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs log canonical pairs, discrepancies and flips (and for the Kähler version compact Kähler spaces), which Mathlib does not have.

#### Mathlib

Mathlib has schemes with proper and smooth morphisms (`AlgebraicGeometry.IsProper`, `AlgebraicGeometry.Smooth`), normalization (`AlgebraicGeometry.Scheme.Hom.normalization`), Weil divisors as algebraic cycles (`AlgebraicGeometry.AlgebraicCycle`, `AlgebraicGeometry.AlgebraicCycle.IsWeilDivisor`), rational and birational maps (`AlgebraicGeometry.Scheme.RationalMap`, `AlgebraicGeometry.Scheme.Birational`), `KaehlerDifferential`, and complex manifolds with the theorem that holomorphic functions on compact connected ones are constant (`MDifferentiable.exists_eq_const_of_compactSpace`). It has no canonical divisor, $\mathbb Q$-Cartier divisors or ampleness on schemes, discrepancies, cone and contraction theorems, flips, Kähler spaces, Hodge modules or decomposition theorem.
