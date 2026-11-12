# 54 · Dissecting OpenAI’s counterexamples to the Auslander-Reiten and Second Tachikawa conjecture for finite-dimensional algebras

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/054-dissecting-openais-counterexamples-to-the-auslander-reiten.md`](../problems_original/054-dissecting-openais-counterexamples-to-the-auslander-reiten.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Dissecting OpenAI’s counterexamples to the Auslander-Reiten and Second Tachikawa conjecture for finite-dimensional algebras

### Short description of problem (100 words or less)

The Auslander-Reiten and the Second Tachikawa conjectures belong to a web of homological conjectures which have strong influence on the development of the representation theory of finite-dimensional algebras for decades. Recently, OpenAI gave an intricate multi-step construction of rather special counterexamples, which are yet neither digested nor canonicalized. This project aims to verify key arguments, understand the underlying mechanisms, and seek simpler, more conceptual constructions. Guiding questions are whether these counterexamples are isolated phenomena or instances of a broader family, and where the mathematical novelty of the AI-generated constructions lies.

Tachikawa's second conjecture: Let A be a finite-dimensional self-injective algebra over a field k, and let M be a finitely generated A-module. Prove: if M has no nontrivial self-extensions in any positive degree, then M must be projective. In other words, if Ext^i_A(M, M) = 0 for every i > 0, then M is projective.

### Submitted Area

Representation theory of finite-dimensional algebras, homological algebra, category theory, ring theory

### Proposed Tracks

Algebra/Number Theory

### Reference/source material

Short formulations of the two conjectures can be found in the recent preprint, bottom of page 1 and top of page 2: 
https://arxiv.org/pdf/2609.19172 
This preprint establishes that both conjectures are equivalent.
(This preprint uses the slightly more general setup of Artin algebras instead of finite-dimensional algebras).

The counterexamples to these conjectures have been uploaded by OpenAI on October, 6th:
https://github.com/openai/math/blob/main/preprints/An-explicit-counterexample-to-the-Auslander-Reiten-conjecture-September-23-2026/paper.pdf 
https://github.com/openai/math/blob/main/preprints/A-counterexample-to-Tachikawas-second-conjecture-September-23-2026/paper.pdf

Both preprints are variations on the same construction pipeline. I include both to offer participants different ways to engage with the material.

Shortly thereafter, an AI-assisted, and generalized exposition appeared by Qiyue Tang:
https://hexagonmath.org/2610.00143v1

For the sake of completeness, here are the original references of the conjectures by Auslander-Reiten, and Tachikawa:
https://www.jstor.org/stable/2040102?seq=1
https://link.springer.com/book/10.1007/BFb0059997



### Desired outcome

The primary outcome would be a self-contained, accessible exposition of the construction pipeline, verifying key arguments, explaining the fundamental ideas, and identifying precedents in the literature. This account should clarify which ingredients are essential and where simplifications or generalizations are possible. More ambitious goals include finding new, simpler counterexamples and interpreting the constructions through derived noncommutative algebraic geometry.

I would like to understand OpenAI's proposed counterexample to Tachikawa's Second Conjecture from both a ring-theoretic and a categorical perspective.

In particular:

1. How is the counterexample constructed in terms of the structure of the finite-dimensional self-injective algebra A and the module M? What ring-theoretic intuition allow all higher self-extension groups Ext^i_A(M, M) to vanish while M remains nonprojective?

2. Can you connect OpenAI's counterexample to the setting of a stable module category of A, an object with no positive-degree self-extensions M, and the zero object.

## AI-generated notes

<!-- status: Disproved (preprint) -->

> Written by AI for the earlier problem list ([`problems/54-auslander-reiten-and-tachikawa-conjectures.md`](../problems/54-auslander-reiten-and-tachikawa-conjectures.md)) and revised by Claude Opus 5.5 on 2026-11-11 to match the proposer's current text.

- **Status:** Counterexamples to both are claimed in two OpenAI preprints (September 2026), not yet refereed; the conjectures date from Tachikawa (1973) and Auslander–Reiten (1975).
- **Task:** An accessible exposition of the construction and of its ring-theoretic and stable-category meaning; simpler or more conceptual counterexamples.
- **Key reference:** [An explicit counterexample to the Auslander–Reiten conjecture](https://github.com/openai/math/blob/main/preprints/An-explicit-counterexample-to-the-Auslander-Reiten-conjecture-September-23-2026/paper.pdf), OpenAI, preprint, September 23, 2026.
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- arXiv 2609.19172 (H. Enomoto, R. Marczinzik) proves ARC, the Nakayama and generalized Nakayama conjectures and both Tachikawa conjectures globally equivalent: over a fixed commutative artinian ring they hold for all Artin algebras or fail together, not algebra by algebra.
- Tang's note (Hexagon 2610.00143, by its own statement AI-generated and offered for independent review) extends the construction to more fields and claims counterexamples to the little and big finitistic dimension conjectures (OpenAI claims the little one separately). The page links version 1; version 5 (October 23, 2026) is current.
- The question whether the examples are isolated already has a claimed partial answer: H. Chen (arXiv:2611.12176, 9 November 2026, written with substantial GPT-6.1 assistance according to its declaration) builds a family of counterexamples to TC2 from Frobenius algebras with a suitable module. None of these preprints is refereed.

### The result

Auslander–Reiten conjecture (ARC): if $A$ is an Artin algebra, $M$ is finitely generated and $\mathrm{Ext}^i_A(M,M\oplus A)=0$ for all $i>0$, then $M$ is projective. Tachikawa's second conjecture (TC2) is the self-injective case. Claims (OpenAI, 2026), over $k=\mathbb F_2(q,H_1,H_2)$: (i) a split algebra $\Lambda$ with 8 simple modules, $(\mathrm{rad}\,\Lambda)^4\ne0$, and a nonprojective Gorenstein-projective module $Z$ with
$$\mathrm{Ext}^i_\Lambda(Z,Z)=\mathrm{Ext}^i_\Lambda(Z,\Lambda)=0\qquad(i\ge1);$$
(ii) a symmetric algebra with a nonprojective module without positive self-extensions. Both persist under every field extension.

### How the known proof works

Structure as given in the Auslander–Reiten preprint (Section 1.2, Figure 1):
- Conversion principle (Section 3): a stable map $v\colon X\to F\otimes_A X$ over a symmetric algebra $A$ gives a module over $\Lambda=\begin{pmatrix}A&0\\F&A\end{pmatrix}$ whose positive self-extensions are governed by two actions of self-extensions of $X$ on $v$.
- Sections 4–5: a 10-dimensional algebra $C$ with simple module $s$; for $T=C\ltimes DC$, $\mathrm{Ext}^*_T(s,s)=k[\tau]$ with $|\tau|=3$ (an explicit Hochschild cocycle); then $A=T\otimes T$, $X=s\otimes s$.
- Sections 6–8: twisting $DC$ by $H$ scales degree-$3m$ classes by $H^{-m}$; the fibre $F$ of two twisted maps gives $v$, and the matrix $\begin{pmatrix}H_1^{-m}&1\\H_2^{-m}&1\end{pmatrix}$ is invertible for $m>0$.
- The Tachikawa preprint builds a related pair $(\Lambda,Z)$ and transfers it to the symmetric algebra $\Lambda\ltimes D\Lambda$ (Proposition 3.2), which also needs negative complete self-extensions to vanish.

### Background

- Classical global equivalences: ARC with the generalized Nakayama conjecture (Auslander–Reiten 1975); the Nakayama conjecture with TC1 and TC2 together (Müller 1968, Tachikawa 1973).
- Known positive cases include radical cube zero (Zhang–Zhou) and quantum complete intersections (Xia). Schulz (1994) gave a nonprojective module without self-extensions over an algebra over a skew field; his quantum exterior algebra examples supply the parameter shifting reused here.
- The commutative case is not resolved by these constructions. Tang's Corollary 1.2 covers every field of characteristic zero and every positive-characteristic field not algebraic over its prime field.
- Chen's construction takes a Frobenius algebra $H$ and a module $M_0$ with $\tau_HM_0\cong M_0$, stable endomorphism algebra $k$ and $\mathrm{Ext}^i_H(M_0,M_0)=0$ for $i\ge2$, over a field with an element of infinite multiplicative order. It yields a symmetric algebra with a nonprojective self-orthogonal module of complexity three whose stable endomorphism algebra is $k[\varepsilon]/(\varepsilon^2)$, and describes a related derived category through a formal dg algebra with a four-dimensional model. Chen asks whether TC2 holds over finite fields, and for modules of complexity at most two.

### Where to start

- [An explicit counterexample to the Auslander–Reiten conjecture](https://github.com/openai/math/blob/main/preprints/An-explicit-counterexample-to-the-Auslander-Reiten-conjecture-September-23-2026/paper.pdf), OpenAI, 2026: Sections 1–3, history, outline, conversion principle.
- [On the homological conjectures for Artin algebras](https://arxiv.org/abs/2609.19172), H. Enomoto, R. Marczinzik, 2026: statements and implications.
- [From Frobenius seeds to self-orthogonal modules over symmetric algebras](https://arxiv.org/abs/2611.12176), H. Chen, 2026: a general version with stable-category and dg-algebra descriptions, whose proofs can be checked without the OpenAI and Tang preprints (Introduction).
- [A note on counterexamples to homological conjectures](https://hexagonmath.org/2610.00143), Q. Tang, 2026: other fields.

Prerequisites: finite-dimensional algebras, Ext, symmetric algebras, stable module categories, trivial extensions, basic Hochschild cohomology.

### References, with links

- Short formulations of the two conjectures (bottom of page 1 and top of page 2), and a proof that they are equivalent, in the slightly more general setting of Artin algebras: <https://arxiv.org/pdf/2609.19172>
- OpenAI's counterexample to the Auslander–Reiten conjecture: <https://github.com/openai/math/blob/main/preprints/An-explicit-counterexample-to-the-Auslander-Reiten-conjecture-September-23-2026/paper.pdf>
- OpenAI's counterexample to Tachikawa's second conjecture: <https://github.com/openai/math/blob/main/preprints/A-counterexample-to-Tachikawas-second-conjecture-September-23-2026/paper.pdf> (both preprints are variations on the same construction pipeline, which offers different ways to engage with the material)
- Qiyue Tang, an AI-assisted and generalized exposition: <https://hexagonmath.org/2610.00143v1>
- The original references for the conjectures of Auslander–Reiten and of Tachikawa: M. Auslander and I. Reiten, “On a generalized version of the Nakayama conjecture”, Proc. Amer. Math. Soc. 52 (1975), 69–74, <https://www.jstor.org/stable/2040102>; H. Tachikawa, *Quasi-Frobenius Rings and Generalizations*, Lecture Notes in Math. 351, Springer (1973), <https://link.springer.com/book/10.1007/BFb0059997>

### Further references

- R. Schulz, "A non-projective module without self-extensions", Arch. Math. 62 (1994), 497–500. <https://doi.org/10.1007/BF01193735>
- OpenAI, "An algebra of infinite little finitistic dimension", preprint, September 23, 2026. <https://github.com/openai/math/blob/main/preprints/An-algebra-of-infinite-little-finitistic-dimension-September-23-2026/paper.pdf>
- H. Chen, "From Frobenius seeds to self-orthogonal modules over symmetric algebras", arXiv:2611.12176, 2026. <https://arxiv.org/abs/2611.12176>
- X. Zhang and P. Zhou, "Igusa–Todorov algebras and the Auslander–Reiten conjecture", arXiv:2609.14453, 2026. <https://arxiv.org/abs/2609.14453>
- W. Xia, "The Auslander–Reiten conjecture for quantum complete intersections", arXiv:2609.24007, 2026. <https://arxiv.org/abs/2609.24007>

### Lean

#### Official statement

`OAI.ArExplicit.Statement.main` in [`lean/MathathonProblems/P54_AuslanderReiten.lean`](lean/MathathonProblems/P54_AuslanderReiten.lean).

```lean
theorem main : FullStatement.{v}
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/AuslanderReiten.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Algebra/AuslanderReiten/All.lean>. A Lean-verified claim must not use or copy it.

`OAI.Tachikawa.main_theorem` in [`lean/MathathonProblems/P54_Tachikawa.lean`](lean/MathathonProblems/P54_Tachikawa.lean).

```lean
theorem main_theorem : Counterexample
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/Tachikawa.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/RingTheory/Tachikawa/Counterexample.lean>. A Lean-verified claim must not use or copy it.

#### Related Lean formalizations

- [tachikawa-characteristic-zero](https://github.com/KitaKen1/tachikawa-characteristic-zero/tree/46963814be5cc80f781fd78a3c27d3d93d2c2bd3): a Lean proof of a counterexample over ℚ, a variant of the official statement.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has module categories and Ext (`ModuleCat`, `CategoryTheory.Abelian.Ext`), projective and injective modules (`Module.Projective`, `Module.Injective`), the Jacobson radical (`Ring.jacobson`), duals (`Module.Dual`), tensor products of algebras and square-zero extensions (`TrivSqZeroExt`). It has no Gorenstein-projective modules, stable module categories, dominant dimension or Hochschild cohomology.
