# Problem 54

> Verbatim copy of one row of the Mathathon problem sheet. The text under each heading is the cell text, unchanged. See [README.md](README.md).

## Problem ID

54

## Title/name of problem

Dissecting OpenAI’s counterexamples to the Auslander-Reiten and Second Tachikawa conjecture for finite-dimensional algebras

## Short description of problem (100 words or less)

The Auslander-Reiten and the Second Tachikawa conjectures belong to a web of homological conjectures which have strong influence on the development of the representation theory of finite-dimensional algebras for decades. Recently, OpenAI gave an intricate multi-step construction of rather special counterexamples, which are yet neither digested nor canonicalized. This project aims to verify key arguments, understand the underlying mechanisms, and seek simpler, more conceptual constructions. Guiding questions are whether these counterexamples are isolated phenomena or instances of a broader family, and where the mathematical novelty of the AI-generated constructions lies.

Tachikawa's second conjecture: Let A be a finite-dimensional self-injective algebra over a field k, and let M be a finitely generated A-module. Prove: if M has no nontrivial self-extensions in any positive degree, then M must be projective. In other words, if Ext^i_A(M, M) = 0 for every i > 0, then M is projective.

## Submitted Area

Representation theory of finite-dimensional algebras, homological algebra, category theory, ring theory

## Proposed Tracks

Algebra/Number Theory

## Reference/source material

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



## Desired outcome

The primary outcome would be a self-contained, accessible exposition of the construction pipeline, verifying key arguments, explaining the fundamental ideas, and identifying precedents in the literature. This account should clarify which ingredients are essential and where simplifications or generalizations are possible. More ambitious goals include finding new, simpler counterexamples and interpreting the constructions through derived noncommutative algebraic geometry.

I would like to understand OpenAI's proposed counterexample to Tachikawa's Second Conjecture from both a ring-theoretic and a categorical perspective.

In particular:

1. How is the counterexample constructed in terms of the structure of the finite-dimensional self-injective algebra A and the module M? What ring-theoretic intuition allow all higher self-extension groups Ext^i_A(M, M) to vanish while M remains nonprojective?

2. Can you connect OpenAI's counterexample to the setting of a stable module category of A, an object with no positive-degree self-extensions M, and the zero object.
