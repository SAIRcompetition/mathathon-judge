# 70 · The inverse Galois problem

**Tracks:** Geometry · **Area:** Algebraic geometry

## Description

The classification of finite simple groups was a landmark achievement in group theory. A natural next milestone is to realize every finite simple group as a Galois group over Q. A concrete way to achieve this is to construct, for each group, an explicit polynomial over Q whose splitting field has that Galois group. AI gives a promising tool to accelerate progress toward this goal.

## Desired outcome

A systematic understanding of solved inverse Galois problems and exploring more unknown cases.

## References

- Inverse Galois Theory: <https://link.springer.com/book/10.1007/978-3-662-55420-3>
- The Mathieu group M23 is a Galois group over Q: <https://arxiv.org/abs/2608.08538>

## Official Lean statement

`InverseGalois.inverse_galois_problem` in [`lean/MathathonProblems/P70_InverseGalois.lean`](lean/MathathonProblems/P70_InverseGalois.lean).

```lean
theorem inverse_galois_problem {G : Type*} [Fintype G] [Group G] :
    IsRealizable ℚ G
```

Source: <https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjectures/Wikipedia/InverseGalois.lean> (adapted as described in the file header).

This statement is the open inverse Galois problem over ℚ. The problem asks for progress on cases of it.
