# Problem 100

## Problem ID

100

## Title/name of problem

Hironaka’s Resolution of Singularity: Understanding the Algorithm and Its Later Simplifications

## Short description of problem (100 words or less)

Hironaka’s theorem states that every algebraic variety over a field of characteristic zero admits a resolution of singularities. Develop an accessible explanation of how a modern resolution algorithm chooses blowup centers, measures progress, and guarantees termination. Use nontrivial worked examples to explain why naive choices can fail, and compare how later approaches, particularly those of Bierstone–Milman and Włodarczyk, clarified the construction and simplified its proof. The goal is to connect explicit local calculations with the logic of the general theorem.

## Submitted Area

Algebraic Geometry

## Proposed Tracks

Algebra/Number Theory, Geometry

## Reference/source material

Herwig Hauser, “The Hironaka theorem on resolution of singularities (or: A proof we always wanted to understand),” Bulletin of the American Mathematical Society 40 (2003).

Edward Bierstone and Pierre D. Milman, “Resolution of Singularities,” Several Complex Variables, MSRI Publications 37 (1999).

Jarosław Włodarczyk, “Simple Hironaka resolution in characteristic zero,” Journal of the American Mathematical Society 18 (2005).

## Desired outcome

A rigorous, accessible exposition of a modern proof of Hironaka’s theorem, supported by worked examples and, where useful, interactive visualizations or symbolic computation. The project should include:
- A complete walkthrough of a nontrivial surface example, explaining the chosen centers, coordinate charts, exceptional components, and measures of progress.
- A contrasting example showing why a plausible but naive sequence of blowups fails.
- An explanation of the mechanism guaranteeing termination and how local constructions fit together.
- A focused comparison of later improvements, distinguishing more systematic constructions, compatibility with coordinate changes, and simplifications of the proof.

## Judge Suggestions

Suggested outcome: interactive code packages with illustrative examples

A complete walkthough of a nontrivial surface example, etc is a good idea, but a 3-fold example would better illustrate the theorem. (For surfaces, one can take a normalization to reduce to the case where the singularities only occur at isolated points. The picture is more complicated for 3-folds because then the singularities can occur along a curve).

Hauser also discusses what goes wrong in positive characteristic (someone only recently understood). A complete walkthrough of what can go wrong would be a challenging but interesting exercise. A very ambitious goal would be to produce a variety in positive characteristic where its unknown how to resolve singularities. 

