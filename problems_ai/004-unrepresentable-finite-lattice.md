# 4 · Unrepresentable finite lattice

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/004-unrepresentable-finite-lattice.md`](../problems_original/004-unrepresentable-finite-lattice.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Unrepresentable finite lattice

### Short description of problem (100 words or less)

OpenAI solved the finite lattice representation problem by finding a finite lattice that is not isomorphic to the congruence lattice of any finite algebra. However, the minimum size of such a lattice is open. It is known that it is at least 8, and OpenAI gave some astronomical upper bounds. Can we narrow it down further?

### Submitted Area

Universal algebra

### Proposed Tracks

Algebra/Number Theory

### Reference/source material

https://github.com/openai/math/tree/main/preprints/A-Negative-Solution-to-the-Finite-Lattice-Representation-Problem-September-24-2026

### Desired outcome

A specific upper bound like maybe n<=10^{10^10} with an understandable proof.

### Links in the sheet

These hyperlinks are attached to cells of this row in the sheet. They are listed here because a plain-text copy of the cells does not show them.

- Reference/source material: <https://github.com/openai/math/tree/main/preprints/A-Negative-Solution-to-the-Finite-Lattice-Representation-Problem-September-24-2026>

## AI-generated notes

<!-- status: Open -->

> Written by AI for the earlier problem list, where this was problem 4 (commit `1f49cd4`), and carried over unchanged.

- **Status:** The minimum size is open; the existence of an unrepresentable finite lattice is claimed in two OpenAI preprints (September 2026) that are not yet refereed.
- **Task:** An explicit, much smaller upper bound with an understandable proof.
- **Key reference:** [Finite congruence lattices: characterization and undecidability](https://github.com/openai/math/blob/main/preprints/Finite-Congruence-Lattices-Characterization-and-Undecidability-September-24-2026/paper.pdf), OpenAI, preprint, 2026 (Sections 3, 16 and 17 for the size bounds).
- **Lean:** Official statement.

### Notes

- The linked preprint proves existence only; the explicit ("astronomical") bound is Theorem 16.7 of the companion preprint given as key reference.
- The lower bound 8 combines DeMeo's thesis (2012), which shows that every lattice with at most 7 elements except possibly one is representable, with Theorem 3.4 of the companion preprint, which represents that last lattice.

### The result

Claim (OpenAI, 2026): there is a finite lattice $L$ with $L\not\cong\mathrm{Con}(A)$ for every finite algebra $A$. By Pálfy and Pudlák (1980) it suffices to find a finite lattice that is not an interval $[D,G]$ in the subgroup lattice of a finite group, which the linked preprint constructs. The companion preprint also proves that representability is undecidable and gives, for the least size $n_{\min}$ of a nonrepresentable lattice,
$$8\le n_{\min}<M^*=x_5,\qquad x_0=10^9,\quad x_{j+1}=J^{x_j}(x_j),$$
where $J$ is computable, $J(x)>2^{2^{x!}}$, and $J(x)$ also exceeds the finite Ramsey and Hales–Jewett numbers with parameters at most $x$. A minimum example is specified through a Busy Beaver constant.

### How the known proof works

Structure of the negative-solution preprint, which proves Theorem 1.2 (a finite lattice that is no subgroup interval $[D,G]$):
- "Fences" test normal subgroups and attach a nonabelian simple type to selected vertices of a hypothetical interval (Section 2).
- Main step, most of the length (Theorem 3.2, Sections 3–7): a bound, independent of $G$, on the length of tested chains whose end labels differ, using the classification of finite simple groups, maximal-subgroup structure, representations of groups of Lie type and Ramsey arguments.
- Sections 8–10 build the lattice from a rank-4 Boolean lattice, a "detector" and chain tests longer than that bound, and rule out a minimal representation by Boolean gluing of homomorphisms to $\mathrm{Aut}(T)$.
- The companion preprint uses another family (private affine charts) and makes all parameters explicit in Section 16, with a quantitative substitute for the Larsen–Pink step.

### Background

- Grätzer and Schmidt (1963): every algebraic lattice is the congruence lattice of a possibly infinite algebra.
- Earlier subgroup-interval reductions: Baddeley–Lucchini (1997), Baddeley (1998), Börner (1999), Aschbacher (2008).
- DeMeo's thesis (2012) surveys representation methods and treats all lattices with at most 7 elements, with computer help (UACalc, GAP).

### Where to start

- [Finite congruence lattices: characterization and undecidability](https://github.com/openai/math/blob/main/preprints/Finite-Congruence-Lattices-Characterization-and-Undecidability-September-24-2026/paper.pdf), OpenAI, 2026: Sections 4 and 16 give the family and the ceiling to improve.
- [A negative solution to the finite lattice representation problem](https://github.com/openai/math/blob/main/preprints/A-Negative-Solution-to-the-Finite-Lattice-Representation-Problem-September-24-2026/paper.pdf), OpenAI, 2026: Sections 1.1–1.3 outline the shorter existence proof.
- [Congruence lattices of finite algebras](https://arxiv.org/abs/1204.4305), W. DeMeo, 2012: methods and the small lattices.

Prerequisites: lattice theory, basic universal algebra, finite permutation groups, finite Ramsey theory; statement-level use of the classification of finite simple groups.

### Further references

- OpenAI, "Finite congruence lattices: characterization and undecidability", preprint, September 24, 2026. <https://github.com/openai/math/blob/main/preprints/Finite-Congruence-Lattices-Characterization-and-Undecidability-September-24-2026/paper.pdf>
- W. J. DeMeo, "Congruence lattices of finite algebras", PhD thesis, University of Hawaiʻi at Mānoa, 2012. <https://arxiv.org/abs/1204.4305>
- P. P. Pálfy, P. Pudlák, "Congruence lattices of finite algebras and intervals in subgroup lattices of finite groups", Algebra Universalis 11 (1980), 22–27. <https://doi.org/10.1007/BF02483080>

### Lean

#### Official statement

`Mathathon.P04.exists_not_representable` in [`lean/MathathonProblems/P04_UnrepresentableLattice.lean`](lean/MathathonProblems/P04_UnrepresentableLattice.lean).

```lean
theorem exists_not_representable :
    ∃ (L : Type) (_ : Lattice L), Finite L ∧ Nonempty L ∧ ¬ Representable L
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Algebra/Universal/Congruence.lean> (adapted as described in the file header).

#### Mathlib

Mathlib has lattices and intervals (`Lattice`, `Set.Icc`), the complete lattice of equivalence relations (`Setoid`), congruences for one operation (`Con`, `RingCon`) and subgroup lattices (`Subgroup`). It has no algebras of arbitrary finite signature and no congruence lattices of such algebras; the official Lean file defines them (`Mathathon.P04.Algebra`, `Mathathon.P04.Congruence`).
