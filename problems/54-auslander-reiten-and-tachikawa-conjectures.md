# 54 · Auslander–Reiten and Tachikawa conjectures

**Tracks:** Algebra/Number Theory · **Area:** Representation theory of finite-dimensional algebras, homological algebra, category theory

## Description

The Auslander-Reiten and the Second Tachikawa conjectures belong to a web of homological conjectures which have strong influence on the development of the representation theory of finite-dimensional algebras for decades. Recently, OpenAI gave an intricate multi-step construction of rather special counterexamples, which are yet neither digested nor canonicalized. This project aims to verify key arguments, understand the underlying mechanisms, and seek simpler, more conceptual constructions. Guiding questions are whether these counterexamples are isolated phenomena or instances of a broader family, and where the mathematical novelty of the AI-generated constructions lies.

## Desired outcome

The primary outcome would be a self-contained, accessible exposition of the construction pipeline, verifying key arguments, explaining the fundamental ideas, and identifying precedents in the literature. This account should clarify which ingredients are essential and where simplifications or generalizations are possible. More ambitious goals include finding new, simpler counterexamples and interpreting the constructions through derived noncommutative algebraic geometry.

## References

- Short formulations of the two conjectures (bottom of page 1 and top of page 2), and a proof that they are equivalent, in the slightly more general setting of Artin algebras: <https://arxiv.org/pdf/2609.19172>
- OpenAI's counterexample to the Auslander–Reiten conjecture: <https://github.com/openai/math/blob/main/preprints/An-explicit-counterexample-to-the-Auslander-Reiten-conjecture-September-23-2026/paper.pdf>
- OpenAI's counterexample to Tachikawa's second conjecture: <https://github.com/openai/math/blob/main/preprints/A-counterexample-to-Tachikawas-second-conjecture-September-23-2026/paper.pdf> (both preprints are variations on the same construction pipeline, which offers different ways to engage with the material)
- Qiyue Tang, an AI-assisted and generalized exposition: <https://hexagonmath.org/2610.00143v1>
- The original references for the conjectures of Auslander–Reiten and of Tachikawa: <https://www.jstor.org/stable/2040102> and <https://link.springer.com/book/10.1007/BFb0059997>

## Official Lean statement

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
