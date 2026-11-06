# 82 · The four color theorem via algebra

**Tracks:** Combinatorics · **Area:** Graph theory / computational combinatorics

**See also:** [Problem 16](16-human-checkable-four-color-proof.md)

## Description

The Appel-Haken proof and later Robertson-Sanders-Seymour-Thomas proof rely on large computer-assisted case checks, and Gonthier formalized it in Coq (2005). Understanding and exposition remain hard. Is there a more conceptual route, for example via Kauffman’s or Tait-edge-coloring algebra, or a visualizable reducibility check? The goals of this problem differ from those of Problem 16.

## Desired outcome

A readable tour of the unavoidable-set and reducibility machinery with interactive tools, or an independent verification of selected components.

## References

- Robertson, Sanders, Seymour, Thomas, “The four-colour theorem,” Journal of Combinatorial Theory Series B 70 (1997)
- Gonthier, “Formal proof—the four-color theorem,” Notices of the AMS 55 (2008)
- Appel, Haken, “Every planar map is four colorable,” Illinois Journal of Mathematics 21 (1977)

## Official Lean statement

`FourColor.RealPlane.four_color` in [`lean/MathathonProblems/P16_FourColorTheorem.lean`](lean/MathathonProblems/P16_FourColorTheorem.lean).

```lean
theorem four_color (m : Map) (h : SimpleMap m) : ColorableWith 4 m
```

Source: <https://github.com/RBarish-UTokyo/FourColorTheorem-Lean4/blob/20fa34599f5189dd569d96dd22f306c94ab1c446/Challenge.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/RBarish-UTokyo/FourColorTheorem-Lean4/blob/20fa34599f5189dd569d96dd22f306c94ab1c446/Solution.lean>. A Lean-verified claim must not use or copy it.
