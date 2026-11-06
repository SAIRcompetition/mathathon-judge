# 82 · The four color theorem via algebra

- **Status:** Proved by K. Appel and W. Haken (1976, published 1977), again by Robertson, Sanders, Seymour and Thomas (1997); both proofs use computers.
- **Task:** A readable, interactive tour of unavoidability and reducibility, or independent checks.
- **Tracks:** Combinatorics · **Area:** Graph theory / computational combinatorics
- **Key reference:** [N. Robertson, D. Sanders, P. Seymour, R. Thomas, "The four-colour theorem", J. Combin. Theory Ser. B 70 (1997), 2–44](https://doi.org/10.1006/jctb.1997.1750) (author copy: <https://thomas.math.gatech.edu/PAP/fc.pdf>)
- **Lean:** Official statement; a Lean proof already exists.
- **See also:** [Problem 16](16-human-checkable-four-color-proof.md)

## Notes

- Problem 16 has the same theorem and Lean statement and asks for a human-checkable proof; this problem asks for an exposition, interactive tools or independent checks of the existing proof.

## Description

The Appel-Haken proof and later Robertson-Sanders-Seymour-Thomas proof rely on large computer-assisted case checks, and Gonthier formalized it in Coq (2005). Understanding and exposition remain hard. Is there a more conceptual route, for example via Kauffman’s or Tait-edge-coloring algebra, or a visualizable reducibility check? The goals of this problem differ from those of Problem 16.

## Desired outcome

A readable tour of the unavoidable-set and reducibility machinery with interactive tools, or an independent verification of selected components.

## The result

Every loopless planar graph is 4-colourable. In the proof of Robertson, Sanders, Seymour and Thomas (J. Combin. Theory Ser. B 70, 1997), a configuration is a near-triangulation with prescribed vertex degrees. For a fixed list of 633 configurations they prove by computer that none appears in a minimal counterexample (reducibility), and by formal proofs that a computer checks in minutes that every internally 6-connected triangulation contains one (unavoidability); minimal counterexamples are such triangulations. Reducibility is tested on edge 3-colourings (Tait colourings) of the ring around a configuration: it is D-reducible when Kempe-chain changes lead from every ring colouring to one that extends inside.

## How the known proof works

- Reducibility (Section 3): the program lists the ring colourings that extend into the free completion and computes the maximal "consistent" set of the others; if it is empty the configuration is D-reducible, otherwise a contract of 1 to 4 edges is checked.
- Ring sizes are at most 14; for ring size 14 the consistency computation normally took under a minute on a Sparc 20 workstation.
- Unavoidability (Section 4): charges $10(6-\deg v)$ move by 32 rules, and for hub degrees 7 to 11 computer-readable proofs show that a positively charged cartwheel contains a good configuration.
- The programs and data (configurations, rules, files `present7` to `present11`) are public in two arXiv deposits (2014).

## Background

- Appel–Haken used 1476 configurations and over 300 rules; RSST used 633 and 32, with a quadratic algorithm.
- Independent checks exist: programs by G. Fijavž (under the guidance of B. Mohar) and Gonthier's Coq proof (2005).
- Steinberger (2010) found an unavoidable set of 2822 D-reducible configurations; RSST report that general C-reducibility gives 609 configurations but needs a complicated safety check, and adding block-count reducibility gives 591 at a high computing cost.
- Algebraic forms: Tait's 3-edge-colouring, Kauffman's cross product statement, and Bar-Natan's $\mathfrak{sl}(N)$ statement (by Penrose, $W_{\mathfrak{sl}(2)}$ is a nonzero multiple of the number of 3-edge-colourings); Kauffman's and Bar-Natan's statements are deduced from the theorem and give no new proof.

## Where to start

- [The four-colour theorem](https://thomas.math.gatech.edu/PAP/fc.pdf), N. Robertson, D. Sanders, P. Seymour, R. Thomas, 1997: Section 3 defines D-reducibility and contracts.
- [Reducibility in the Four-Color Theorem](https://arxiv.org/abs/1401.6481) and [Discharging cartwheels](https://arxiv.org/abs/1401.6485), same authors, 2014: the original programs and data.
- [A computer-checked proof of the Four Colour Theorem](https://www.cl.cam.ac.uk/~lp15/Pages/4colproof.pdf), G. Gonthier, 2005: how each computation was turned into a formal proof.

Prerequisites: plane triangulations, Euler's formula, Kempe chains, edge colourings of cubic graphs.

## References

- Robertson, Sanders, Seymour, Thomas, “The four-colour theorem,” Journal of Combinatorial Theory Series B 70 (1997) <https://doi.org/10.1006/jctb.1997.1750>
- Gonthier, “Formal proof—the four-color theorem,” Notices of the AMS 55 (2008)
- Appel, Haken, “Every planar map is four colorable,” Illinois Journal of Mathematics 21 (1977) <https://doi.org/10.1215/ijm/1256049011>

Further references:

- K. Appel, W. Haken, and J. Koch, “Every planar map is four colorable. Part II: Reducibility”, Illinois J. Math. 21 (1977), 491–567. <https://doi.org/10.1215/ijm/1256049012>
- N. Robertson, D. P. Sanders, P. Seymour, and R. Thomas, “Reducibility in the Four-Color Theorem” (2014). <https://arxiv.org/abs/1401.6481>
- N. Robertson, D. P. Sanders, P. Seymour, and R. Thomas, “Discharging cartwheels” (2014). <https://arxiv.org/abs/1401.6485>
- J. Steinberger, “An unavoidable set of D-reducible configurations”, Trans. Amer. Math. Soc. 362 (2010). <https://arxiv.org/abs/0905.0043>
- R. Thomas, “An update on the four-color theorem”, Notices Amer. Math. Soc. 45 (1998), 848–859. <https://thomas.math.gatech.edu/PAP/update.pdf>

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

Mathlib has `SimpleGraph.Colorable`, `SimpleGraph.chromaticNumber` and edge labellings (`Mathlib/Combinatorics/SimpleGraph/Coloring/EdgeLabeling.lean`). It has no planar graphs, triangulations, hypermaps, Kempe chains or discharging; the Lean statement defines its own topology from rectangles.

---

*Description and Desired outcome are the proposer's text. The other sections were written by the organizers from the literature.*
