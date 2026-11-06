# 48 · Rigidity of the enumeration degrees

- **Status:** Follows from the rigidity of the Turing degrees (OpenAI, 2026 preprint, not yet refereed) by Corollary 3.8 of Cai, Ganchev, Lempp, Miller and Soskova (2016).
- **Task:** A simpler proof that the enumeration degrees are rigid, ideally formalized.
- **Tracks:** Computation/Applied Math · **Area:** Computability theory
- **Key reference:** [M. Cai, H. A. Ganchev, S. Lempp, J. S. Miller and M. I. Soskova, Defining totality in the enumeration degrees, J. Amer. Math. Soc. 29 (2016), 1051–1067](https://people.math.wisc.edu/~lempp/papers/totality.pdf)
- **Lean:** Official statement.

## Notes

- The rigidity of $\mathcal D_T$ is a September 2026 preprint by OpenAI; it has not been refereed.

## Description

OpenAI recently proved (in Lean) that the Turing degrees D_T are rigid. It is also known that the Turing degrees are definable in the enumeration degrees D_e, so that it follows that the enumeration degrees are rigid. But the definition of D_T in D_e is complicated, so it is not easy to obtain rigidity of D_e in Lean. The task is to find an easier way.

## Desired outcome

Simple proof and ideally a Lean formalization

## The result

Every automorphism of $(\mathcal D_e,\le)$ is the identity. Cai, Ganchev, Lempp, Miller and Soskova (JAMS 2016) proved that the total degrees, the image of $\iota(\deg_T A)=\deg_e(A\oplus\overline A)$, are definable: a degree is total iff it is $\mathbf 0_e$ or the join of a maximal $\mathcal K$-pair. Here $\{\mathbf a,\mathbf b\}$ is a $\mathcal K$-pair (Kalimullin) iff
$$\forall\mathbf x\ \ (\mathbf a\vee\mathbf x)\wedge(\mathbf b\vee\mathbf x)=\mathbf x .$$
Their Corollary 3.8: if $\mathcal D_T$ is rigid, so is $\mathcal D_e$. OpenAI proved that $\mathcal D_T$ is rigid (2026).

## How the known proof works

- Kalimullin's characterization (the display) makes $\mathcal K$-pairs and maximal $\mathcal K$-pairs definable.
- Jockusch: every nonzero total degree contains $A\oplus\overline A$ with $A$ semi-computable, hence is the join of a maximal $\mathcal K$-pair (Theorem 2.2).
- The hard direction (Theorem 2.3): every nontrivial $\mathcal K$-pair $A,B$ lies below some $C,\overline C$ with $C$ semi-computable, by a dynamic labelling of the rationals; this gives Theorem 2.4.
- So an automorphism of $\mathcal D_e$ induces an automorphism of $\mathcal D_T$, which is the identity by rigidity.
- By Selman's theorem, $A\le_e B$ iff every total degree above $B$ is above $A$; so each degree is determined by the total degrees above it, and the automorphism is the identity.

## Background

- Rogers asked in the 1960s whether the total degrees are definable in $\mathcal D_e$; Kalimullin (2003) defined the enumeration jump with $\mathcal K$-pairs, and Ganchev and Soskova defined totality in the local structure below $\mathbf 0_e'$.
- Soskova (2016) defined the total degrees with a parameter and showed that rigidity of $\mathcal D_e$ is equivalent to its own biinterpretability conjecture.
- Using Slaman–Woodin, Cai et al. show that every automorphism of $\mathcal D_e$ is the identity above $\mathbf 0_e''$ (Corollary 3.9).
- OpenAI's proof of $\mathcal D_T$ rigidity combines the Slaman–Woodin representation of automorphisms by arithmetic maps with a Baire-category argument.

## Where to start

- [Defining totality in the enumeration degrees](https://people.math.wisc.edu/~lempp/papers/totality.pdf), Cai, Ganchev, Lempp, Miller, Soskova, 2016: Section 2 (definition) and Section 3.2 (automorphisms).
- [Rigidity of the Turing degrees](https://github.com/openai/math/blob/main/preprints/Rigidity-of-the-Turing-degrees-September-24-2026/paper.pdf), OpenAI, 2026: the $\mathcal D_T$ input, in 10 pages.
- Prerequisites: enumeration and Turing reducibility, semi-computable sets, basic degree theory.

## References

- Cai, Ganchev, Lempp, Miller, and Soskova (JAMS 2016). <https://doi.org/10.1090/jams/848>
- OpenAI, “Rigidity of the Turing degrees”: <https://github.com/openai/math/tree/main/preprints/Rigidity-of-the-Turing-degrees-September-24-2026>

Further references:

- I. Sh. Kalimullin, Definability of the jump operator in the enumeration degrees, J. Math. Log. 3 (2003), 257–267 <https://doi.org/10.1142/S0219061303000285>
- M. I. Soskova, The automorphism group of the enumeration degrees, Ann. Pure Appl. Logic 167 (2016), 982–999 <https://doi.org/10.1016/j.apal.2014.01.007>
- A. L. Selman, Arithmetical reducibilities I, Z. Math. Logik Grundlag. Math. 17 (1971), 335–350 <https://doi.org/10.1002/malq.19710170139>
- C. G. Jockusch, Jr., Semirecursive sets and positive reducibility, Trans. Amer. Math. Soc. 131 (1968), 420–436 <https://doi.org/10.1090/S0002-9947-1968-0220595-7>

## Lean

### Official statement

`Mathathon.P48.enumeration_degrees_rigid` in [`lean/MathathonProblems/P48_EnumerationDegreeRigidity.lean`](lean/MathathonProblems/P48_EnumerationDegreeRigidity.lean).

```lean
theorem enumeration_degrees_rigid : ∀ π : EDegree ≃o EDegree, ∀ a : EDegree, π a = a
```

Source: written for Mathathon; not taken from an existing formalization.

### Mathlib

Mathlib has c.e. predicates (`REPred`), codes for partial recursive functions (`Nat.Partrec.Code`), `Antisymmetrization` and Turing degrees of partial functions (`TuringDegree`). It has no enumeration reducibility, enumeration degrees, $\mathcal K$-pairs or semi-computable sets; the official statement defines `EnumReducible` and `EDegree` itself.

---

*Description and Desired outcome are the proposer's text. The other sections were written by the organizers from the literature.*
