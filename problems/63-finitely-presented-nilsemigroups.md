# 63 · Finitely presented nilsemigroups

- **Status:** Proved by I. A. Ivanov-Pogodaev and A. Ya. Kanel-Belov (announced 2020; full proof in three papers, 2021–2025), answering a question of Shevrin and Sapir.
- **Task:** An explicit infinite finitely presented nilsemigroup, ideally simpler, with fewer relations.
- **Tracks:** Algebra/Number Theory · **Area:** Semigroup Theory, Combinatorial Algebra, Geometric Algebra
- **Key reference:** [Construction of infinite finitely presented nilsemigroup (short version)](https://arxiv.org/abs/1912.01695), I. A. Ivanov-Pogodaev, A. Ya. Kanel-Belov, Doklady Math. 101 (2020), 81–85 (arXiv text in Russian).
- **Lean:** Official statement.

## Notes

- The page's References omit the first part of the full proof: "Finitely presented nilsemigroups: complexes with the property of uniform ellipticity", Izv. Math. 85 (2021).
- The constructed semigroup already satisfies a uniform identity, $x^9=0$.

## Description

A semigroup with zero is called a nilsemigroup if every element is nilpotent, meaning that for each element x there exists a positive integer n such that x^n = 0. Construct an infinite finitely presented nilsemigroup and prove both its infinitude and the nilpotency of all its elements. In particular, investigate constructions satisfying a uniform identity x^n = 0 and the role of finite defining relations in guaranteeing these properties.

## Desired outcome

An explicit finite presentation of an infinite nilsemigroup, together with rigorous proofs that every element is nilpotent and that the semigroup is infinite. Participants are encouraged to explore simpler constructions, reduce the number of generators or defining relations, or establish stronger properties such as a uniform bound on nilpotency exponents.

## The result

Theorem (Ivanov-Pogodaev and Kanel-Belov): there is a finitely presented infinite semigroup $S$ with zero such that
$$x^9=0\qquad\text{for all }x\in S;$$
in particular every element is nilpotent. This answers the question of L. N. Shevrin and M. V. Sapir (Sverdlovsk Notebook, 3.61b) whether an infinite finitely presented nilsemigroup exists. The result was announced in Doklady Math. 101 (2020). The full proof has three parts: the complexes (Izv. Math. 85, 2021), their deterministic coloring (Fundam. Prikl. Mat. 24, 2022) and the semigroup of paths (Algebra and Logic 63, 2025).

## How the known proof works

Plan as given in the Doklady paper (Section 2):
- Build a sequence of complexes of 4-cycles ("tiles") by a hierarchical subdivision rule, with finitely many vertex and edge types.
- The complexes must be locally finite, uniformly elliptic (distant points are joined by a wide bundle of shortest paths), deterministic (a finite coloring in which three corners of a tile determine the fourth) and aperiodic (no path is coded by a periodic word).
- Letters code vertex and edge types. All relations have length 7: non-paths and back-and-forth paths are set to zero, and the two shortest paths across each tile are identified.
- Shortest paths never reduce to zero, so $S$ is infinite; non-shortest paths and paths with a periodic part reduce to zero, which gives the nil property.
- The coloring paper (144 journal pages) is much longer than the other two parts (35 and 29 pages).

## Background

- Without finite presentation the problem is easy: declaring zero every word that is not a subword of a fixed square-free word over three letters gives an infinite semigroup with $x^2=0$.
- The construction uses ideas from aperiodic tilings and analogues of Goodman-Strauss type theorems on uniformly elliptic spaces.
- Related open questions recalled in the Doklady paper: is there a finitely presented infinite periodic group (all known ones are infinitely presented)? Is there a finitely presented infinite-dimensional nil ring (Latyshev)?

## Where to start

- [Construction of infinite finitely presented nilsemigroup (short version)](https://arxiv.org/abs/1912.01695), Ivanov-Pogodaev, Kanel-Belov, 2019: five-page plan (Russian; English in Doklady Math.).
- [Deterministic coloring of a family of complexes](https://arxiv.org/abs/2007.02862), Ivanov-Pogodaev, Kanel-Belov, 2020: the second part, with a summary of the first (Russian).
- [Construction of infinite finitely presented nilsemigroup](https://arxiv.org/abs/1412.5221), Ivanov-Pogodaev, Kanel-Belov, 2014: a 160-page early full version (Russian).

Prerequisites: semigroup presentations and rewriting, combinatorics on words, substitution tilings, metric graphs; reading Russian helps.

## References

- I. A. Ivanov-Pogodaev, A. Ya. Kanel-Belov, Construction of a Nilsemigroup of Paths in a Countable Family of Uniformly Elliptic Complexes. Algebra and Logic, 63(6), 410–438 (2025). <https://doi.org/10.1007/s10469-025-09803-3>
- I. A. Ivanov-Pogodaev, A. Ya. Kanel-Belov, Deterministic Coloring of a Family of Complexes. Fundamentalnaya i Prikladnaya Matematika, 24(2), 37–180 (2022). <https://arxiv.org/abs/2007.02862>

Further references:

- I. A. Ivanov-Pogodaev, A. Ya. Kanel-Belov, "Finitely presented nilsemigroups: complexes with the property of uniform ellipticity", Izv. Math. 85 (2021), 1146–1180. <https://doi.org/10.1070/IM8978>
- A. Ya. Belov-Kanel, I. A. Ivanov-Pogodaev, "Construction of infinite finitely presented nilsemigroup", Doklady Math. 101 (2020), 81–85. <https://arxiv.org/abs/1912.01695>

## Lean

### Official statement

`Mathathon.P63.exists_infinite_finitely_presented_nilsemigroup` in [`lean/MathathonProblems/P63_FinitelyPresentedNilsemigroup.lean`](lean/MathathonProblems/P63_FinitelyPresentedNilsemigroup.lean).

```lean
theorem exists_infinite_finitely_presented_nilsemigroup :
    ∃ (S : Type) (_ : SemigroupWithZero S),
      IsFinitelyPresented S ∧ Infinite S ∧ ∀ x : S, IsNil x
```

Source: written for Mathathon; not taken from an existing formalization.

### Mathlib

Mathlib has free semigroups (`FreeSemigroup`), congruences generated by relations and their quotients (`conGen`, `Con.Quotient`), semigroups with zero (`SemigroupWithZero`), nilpotent elements (`IsNilpotent`, which needs a monoid power; the official file defines `IsNil` itself) and basic tile notions (`DiscreteTiling.Prototile`, `DiscreteTiling.PlacedTile`). It has no finitely presented semigroups, no rewriting theory for semigroup presentations and no hierarchical or aperiodic tilings.

---

*Description and Desired outcome are the proposer's text. The other sections were written by the organizers from the literature.*
