# 16 · A human-checkable four color proof

- **Status:** Proved by K. Appel and W. Haken (1976, published 1977), again by Robertson, Sanders, Seymour and Thomas (1997); both proofs use computers.
- **Task:** A human-checkable proof, or an illuminating new proof strategy.
- **Tracks:** Combinatorics · **Area:** Combinatorics; graph theory
- **Key reference:** [N. Robertson, D. Sanders, P. Seymour, R. Thomas, "The four-colour theorem", J. Combin. Theory Ser. B 70 (1997), 2–44](https://doi.org/10.1006/jctb.1997.1750) (author copy: <https://thomas.math.gatech.edu/PAP/fc.pdf>)
- **Lean:** Official statement; a Lean proof already exists.
- **See also:** [Problem 82](82-four-color-theorem-via-algebra.md)

## Notes

- Problem 82 has the same theorem and Lean statement. This problem asks for a human-checkable or conceptual proof; Problem 82 asks for an exposition or independent check of the existing proof.
- The official Lean statement is Gonthier's real-plane form, which also covers maps with infinitely many regions.

## Description

An arbitrary map can be colored using four colors such that every two regions sharing a boundary receive distinct colors. In graph theory, it is equivalent to say every planar graph has a proper 4-coloring.

## Desired outcome

The current proofs reduce the problem to a finite case checking and then use computer assistance to finish the last steps. A preferable outcome would be a human-checkable proof, though it may still be hard even with AI-assistance. AI might be able to help find deep connections with other subjects such as algebra and topology. An illuminating alternative proof strategy will be very good.

## The result

The Four Colour Theorem: every loopless planar graph has a proper vertex colouring with four colours; equivalently, the countries of any plane map can be four-coloured so that countries sharing a boundary segment get different colours. Appel and Haken (with Koch) published the first proof in Illinois J. Math. 21 (1977). Robertson, Sanders, Seymour and Thomas gave a second proof, simpler in several respects (J. Combin. Theory Ser. B 70, 1997), and Gonthier checked a complete formal proof in Coq (2005). Every known proof relies on a computer-checked case analysis.

## How the known proof works

- A minimal counterexample is an internally 6-connected triangulation (Birkhoff, 1913).
- Reducibility: a computer shows that none of 633 configurations, with ring size up to 14, appears in a minimal counterexample (D-reducibility, or a contract of at most 4 edges).
- Unavoidability: vertex charges $10(6-\deg v)$ sum to 120 by Euler's formula; after 32 discharging rules, a positive vertex has one of the 633 configurations in its second neighbourhood.
- Hubs of degree at most 6 or at least 12 are handled directly; degrees 7 to 11 by formal proofs written for computer checking.
- Reducibility needs the computer; unavoidability is long, with individually human-verifiable steps.

## Background

- Kempe's failed 1879 proof introduced Kempe chains and gives five colours; Tait (1880) reformulated the theorem as 3-edge-colouring of bridgeless cubic plane graphs; Heesch developed reducibility and discharging.
- Appel–Haken used 1476 configurations and over 300 rules; RSST used 633 and 32, with a quadratic algorithm.
- Steinberger (Trans. Amer. Math. Soc. 2010) found an unavoidable set of 2822 D-reducible configurations.
- Gonthier's Coq proof follows RSST but uses hypermaps and avoids the Jordan curve theorem.
- Kauffman (vector cross products), Bar-Natan ($\mathfrak{sl}(N)$ Lie algebras) and Matiyasevich (divisibility) gave equivalent statements; Kauffman's and Bar-Natan's are deduced from the theorem and give no new proof.

## Where to start

- [An update on the four-color theorem](https://thomas.math.gatech.edu/PAP/update.pdf), R. Thomas, 1998: proof outline and the algebraic reformulations.
- [The four-colour theorem](https://thomas.math.gatech.edu/PAP/fc.pdf), N. Robertson, D. Sanders, P. Seymour, R. Thomas, 1997: Section 1 outlines the proof; Section 5 explains the choice of reducibility methods.
- [Hadwiger's conjecture](https://web.math.princeton.edu/~pds/papers/hadwiger/paper.pdf), P. Seymour, 2016: weaker hypotheses that might explain why planarity gives four colours.

Prerequisites: planar graphs and Euler's formula, triangulations, Kempe chains, edge colourings of cubic graphs.

## References

- K. Appel and W. Haken, *Every Planar Map Is Four Colorable*, Contemporary Mathematics 98, AMS (1989). <https://doi.org/10.1090/conm/098>
- N. Robertson, D. Sanders, P. Seymour, and R. Thomas, “The four-colour theorem,” J. Combin. Theory Ser. B 70 (1997), no. 1, 2–44. <https://doi.org/10.1006/jctb.1997.1750>
- Robin Thomas's website: <https://thomas.math.gatech.edu/FC/fourcolor.html>
- A digestible overview: <https://projecteuclid.org/journals/illinois-journal-of-mathematics/volume-60/issue-1/Wolfgang-Haken-and-the-four-color-problem/10.1215/ijm/1498032028.pdf>
- The 1976 proof: <https://projecteuclid.org/journals/illinois-journal-of-mathematics/volume-21/issue-3/Every-planar-map-is-four-colorable-Part-I-Discharging/10.1215/ijm/1256049011.pdf>

Further references:

- K. Appel, W. Haken, and J. Koch, “Every planar map is four colorable. Part II: Reducibility”, Illinois J. Math. 21 (1977), 491–567. <https://doi.org/10.1215/ijm/1256049012>
- R. Thomas, “An update on the four-color theorem”, Notices Amer. Math. Soc. 45 (1998), 848–859. <https://thomas.math.gatech.edu/PAP/update.pdf>
- G. Gonthier, “A computer-checked proof of the Four Colour Theorem”, report, Microsoft Research Cambridge (2005). <https://www.cl.cam.ac.uk/~lp15/Pages/4colproof.pdf>
- J. Steinberger, “An unavoidable set of D-reducible configurations”, Trans. Amer. Math. Soc. 362 (2010). <https://arxiv.org/abs/0905.0043>
- L. H. Kauffman, “Map coloring and the vector cross product”, J. Combin. Theory Ser. B 48 (1990), 145–154. <https://doi.org/10.1016/0095-8956(90)90114-F>

## Lean

### Official statement

`FourColor.RealPlane.four_color` in [`lean/MathathonProblems/P16_FourColorTheorem.lean`](lean/MathathonProblems/P16_FourColorTheorem.lean).

```lean
theorem four_color (m : Map) (h : SimpleMap m) : ColorableWith 4 m
```

Source: <https://github.com/RBarish-UTokyo/FourColorTheorem-Lean4/blob/20fa34599f5189dd569d96dd22f306c94ab1c446/Challenge.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/RBarish-UTokyo/FourColorTheorem-Lean4/blob/20fa34599f5189dd569d96dd22f306c94ab1c446/Solution.lean>. A Lean-verified claim must not use or copy it.

This Lean proof is registered in the Palomar registry, which re-checks it in Lean (trust level high): <https://palomar-registry.org/entry?id=PALOMAR-2026-09-27-000005&version=1>.

### Related Lean formalizations

- [Four Color Theorem for finite planar graphs](https://prove2.me/theorems/8247cfb9-1636-4cf1-a05f-220bae0de50a), Prove2Me: a graph-theoretic Lean statement (open, not proved there).
- [corun1024/4ct](https://github.com/corun1024/4ct/tree/3db71e0a786a1f19be04c5266fe3d06fed216885): another complete Lean proof of the four colour theorem, with Gonthier's statement.
- [formalized-fct](https://github.com/schematic-tech/formalized-fct/tree/8893455624dc8244a3929f560b23c57ad3ee4453): a Lean proof of the four colour theorem for finite planar graphs.

Projects outside the Palomar registry are described as their authors describe them; the organizers have not checked their proofs.

### Mathlib

Mathlib has `SimpleGraph.Colorable` and `SimpleGraph.chromaticNumber`. It has no planar graphs (a to-do in `Mathlib/Combinatorics/SimpleGraph/Coloring/Vertex.lean`), no Jordan curve theorem, and no hypermaps or discharging. The Lean statement uses only ℝ and its order, defining open sets and connectedness from rectangles.

---

*Description and Desired outcome are the proposer's text. The other sections were written by the organizers from the literature.*
