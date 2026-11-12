# 3 · Definability of the Turing jump

## From the proposer

- **Area:** Computability theory, mathematical logic
- **Tracks:** Computation/Applied Math

### Description

Slaman and Shore (1999) proved that the Turing jump is definable in the first order theory of the Turing degrees. However, their proof is complicated and does not give a simple definition of the jump. Is there one? Conversely, how far can we go with negative results: prove that there is no Sigma_n definition for n=1,2,3,...?

### Desired outcome

Use AI to come up with a more explicit definition of the jump in the partial order of the Turing degrees, or prove restrictions on any such definition.

### References

Shore and Slaman, Defining the Turing Jump, Math. Res. Lett. 6 (1999), no. 5-6, 711–722

## AI-generated notes

<!-- status: Proved -->

- **Status:** Definability proved by R. Shore and T. Slaman (1999); a natural definition and definitions of lower quantifier complexity were posed as open questions by Shore (2007).
- **Task:** A more explicit definition of the jump, or limits on its complexity.
- **Key reference:** [R. A. Shore and T. A. Slaman, Defining the Turing jump, Math. Res. Lett. 6 (1999), 711–722](https://www.intlpress.com/site/pub/files/_fulltext/journals/mrl/1999/0006/0006/MRL-1999-0006-0006-a010.pdf)
- **Lean:** Official statement.

### Notes

- Shore (2007) defines $\mathbf{w}=\mathbf{x}'$ by a $\Pi_9$ formula in $\le$ alone. Since $\Pi_9\subseteq\Sigma_{10}$, "no $\Sigma_n$ definition" can only hold for $n\le 9$.
- The official Lean statement is the known definability theorem, not the open question.

### The result

Shore and Slaman proved that the map $\mathbf{x}\mapsto\mathbf{x}'$ is first-order definable, without parameters, in the partial order $(\mathcal D_T,\le)$ of the Turing degrees (Math. Res. Lett. 1999, Theorem 1.15):
$$\mathbf{x}'=\max\{\mathbf{z}\ :\ \neg\exists\,\mathbf{g}\ge\mathbf{x}\ \ (\mathbf{z}\vee\mathbf{g}=\mathbf{g}'')\}.$$
The double jump used here is definable by Slaman–Woodin's coding of second-order arithmetic, so the formula is not a natural order-theoretic property. Shore (J. Math. Log. 2007) gave direct definitions: $\Pi_8$ for $\mathbf{w}=\mathbf{x}'$ with $\le,\vee,\wedge$, $\Pi_9$ with $\le$ alone. He also showed that no $\Sigma_2$ or $\Pi_2$ formula in $\le$ defines $\mathbf{L}_2=\{\mathbf{x}:\mathbf{x}''=\mathbf{0}''\}$.

### How the known proof works

- Input 1 (Slaman–Woodin): the double jump is definable in $\mathcal D_T$, via their analysis of automorphisms and a coding of second-order arithmetic.
- Input 2 (Theorem 2.1): if $A$ is not $\Delta^0_n$, there is $G$ with $A\oplus G\ge_T G^{(n)}$ and $A\oplus 0^{(n)}\ge_T G^{(n)}$; proved by Kumabe–Slaman forcing, the bulk of the paper.
- With the Jockusch–Shore inversion theorem this extends to every $n$-REA operator (Theorem 2.3).
- With $n=2$: $\mathbf{z}\not\le\mathbf{0}'$ iff $\mathbf{z}\vee\mathbf{g}=\mathbf{g}''$ for some $\mathbf{g}$, which defines $\mathbf{0}'$ (Theorem 1.14); relativizing above $\mathbf{x}$ gives $\mathbf{x}'$.
- No priority construction is used; the non-natural part of the definition is Input 1, which internalizes the Slaman–Woodin analysis of automorphisms of $\mathcal D_T$.

### Background

- The question goes back to Kleene and Post (1954). Jockusch and Shore defined the arithmetic degrees order-theoretically; Cooper's proposed definition of $\mathbf{0}'$ was shown not to work (Shore–Slaman, Theorem 1.11).
- Shore (2007) replaced the Slaman–Woodin step by degree-theoretic coding.
- OpenAI (2026, preprint, not yet refereed) proved that $\mathcal D_T$ is rigid, hence, by a Slaman–Woodin equivalence, biinterpretable with second-order arithmetic; by Slaman (2008, Question 6.4) this implies that "$\mathbf{y}$ is r.e. in $\mathbf{x}$" is definable.

### Where to start

- [Defining the Turing jump](https://www.intlpress.com/site/pub/files/_fulltext/journals/mrl/1999/0006/0006/MRL-1999-0006-0006-a010.pdf), Shore and Slaman, 1999: Section 1 gives the plan.
- [Global properties of the Turing degrees and the Turing jump](https://math.berkeley.edu/~slaman/papers/IMS_slaman.pdf), Slaman, 2008: survey of coding, automorphisms, the jump.
- [Direct and local definitions of the Turing jump](https://richardashore.github.io/papers/pdf/defjump22.pdf), Shore, 2007: explicit formulas and a lower bound.
- Prerequisites: Turing degrees and the jump, forcing in arithmetic, REA operators.

### References, with links

- Shore and Slaman, Defining the Turing Jump, Math. Res. Lett. 6 (1999), no. 5-6, 711–722 <https://doi.org/10.4310/MRL.1999.v6.n6.a10>

### Further references

- R. A. Shore, Direct and local definitions of the Turing jump, J. Math. Log. 7 (2007), 229–262 <https://doi.org/10.1142/S0219061307000676>
- T. A. Slaman, Global properties of the Turing degrees and the Turing jump, in Computational Prospects of Infinity, Part I, World Scientific (2008), 83–101 <https://doi.org/10.1142/9789812794055_0002>
- OpenAI, Rigidity of the Turing degrees (2026) <https://github.com/openai/math/blob/main/preprints/Rigidity-of-the-Turing-degrees-September-24-2026/paper.pdf>

### Lean

#### Official statement

`Mathathon.P03.turing_jump_definable` in [`lean/MathathonProblems/P03_TuringJumpDefinable.lean`](lean/MathathonProblems/P03_TuringJumpDefinable.lean).

```lean
theorem turing_jump_definable :
    ∃ φ : FirstOrder.Language.order.Formula (Fin 2),
      ∀ a b : Degree, φ.Realize ![a, b] ↔ b = degreeJump a
```

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Related Lean formalizations

- [TauCeti](https://github.com/TauCetiProject/TauCeti/blob/29bc6871728983707bc42137a8a1cd941b898bd7/TauCeti/Computability/Jump/Basic.lean) defines the Turing jump in Lean and [proves the Friedberg–Muchnik theorem](https://github.com/TauCetiProject/TauCeti/blob/29bc6871728983707bc42137a8a1cd941b898bd7/TauCeti/Computability/FriedbergMuchnik/Basic.lean).

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `TuringReducible` and `TuringDegree` (degrees of partial functions `ℕ →. ℕ`, `Mathlib/Computability/TuringDegree.lean`) and the order language `FirstOrder.Language.order`. It has no Turing jump and no definability results for degree structures.
