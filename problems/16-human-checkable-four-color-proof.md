# 16 · A human-checkable four color proof

**Tracks:** Combinatorics · **Area:** Combinatorics; graph theory

**See also:** [Problem 82](82-four-color-theorem-via-algebra.md)

## Description

An arbitrary map can be colored using four colors such that every two regions sharing a boundary receive distinct colors. In graph theory, it is equivalent to say every planar graph has a proper 4-coloring.

## Desired outcome

The current proofs reduce the problem to a finite case checking and then use computer assistance to finish the last steps. A preferable outcome would be a human-checkable proof, though it may still be hard even with AI-assistance. AI might be able to help find deep connections with other subjects such as algebra and topology. An illuminating alternative proof strategy will be very good.

## References

- K. Appel and W. Haken, *Every Planar Map Is Four Colorable*, Contemporary Mathematics 98, AMS (1989).
- N. Robertson, D. Sanders, P. Seymour, and R. Thomas, “The four-colour theorem,” J. Combin. Theory Ser. B 70 (1997), no. 1, 2–44.
- Robin Thomas's website: <https://thomas.math.gatech.edu/FC/fourcolor.html>
- A digestible overview: <https://projecteuclid.org/journals/illinois-journal-of-mathematics/volume-60/issue-1/Wolfgang-Haken-and-the-four-color-problem/10.1215/ijm/1498032028.pdf>
- The 1976 proof: <https://projecteuclid.org/journals/illinois-journal-of-mathematics/volume-21/issue-3/Every-planar-map-is-four-colorable-Part-I-Discharging/10.1215/ijm/1256049011.pdf>

## Official Lean statement

`FourColor.RealPlane.four_color` in [`lean/MathathonProblems/P16_FourColorTheorem.lean`](lean/MathathonProblems/P16_FourColorTheorem.lean).

```lean
theorem four_color (m : Map) (h : SimpleMap m) : ColorableWith 4 m
```

Source: <https://github.com/RBarish-UTokyo/FourColorTheorem-Lean4/blob/20fa34599f5189dd569d96dd22f306c94ab1c446/Challenge.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/RBarish-UTokyo/FourColorTheorem-Lean4/blob/20fa34599f5189dd569d96dd22f306c94ab1c446/Solution.lean>. A Lean-verified claim must not use or copy it.
