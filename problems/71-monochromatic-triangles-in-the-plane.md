# 71 · Monochromatic triangles in the plane

**Tracks:** Geometry · **Area:** Discrete Geometry

## Description

The problem was to determine whether there is a universal constant C such that, for any n points in convex position, at most C·n pairs of points can be exactly distance 1 apart.

This problem has now been solved: no such constant exists.

## Desired outcome

The Mathathon homepage suggests explaining a proof through “an interactive game”, which is now very feasible with coding help from AI. The construction in the cited paper is a strong candidate for turning a recent result into a game.

The suggested outcome is a playable proof: a game that guides the player to invent or discover the ideas of the construction, so that they understand the full proof afterwards.

Using games well may still be difficult, and the result may be closer to an interactive walk-through of the proof with visuals. The aim is to explore how gameplay can make the proof easier or faster to understand; ideally, the game mechanics add to the experience.

The Godot game engine is recommended for building the application.

## References

- L. Kruer, J. Kohlmeyer, and L. Price, “Unit distances in convex polygons” (the proof exposition): <https://liamkruer.com/assets/work/erdos-96-97/96-97.pdf>

## Official Lean statement

`Erdos96.erdos_96` in [`lean/MathathonProblems/P71_ConvexUnitDistances.lean`](lean/MathathonProblems/P71_ConvexUnitDistances.lean).

```lean
theorem erdos_96 :
    ¬ (fun n => (maxConvexUnitDistances n : ℝ)) =O[atTop] fun n => (n : ℝ)
```

Source: <https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjectures/ErdosProblems/96.lean>, <https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjecturesForMathlib/Geometry/Metric.lean>, <https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjecturesForMathlib/Geometry/2d.lean> (adapted as described in the file header).
