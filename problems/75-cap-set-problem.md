# 75 · The cap set problem

**Tracks:** Combinatorics · **Area:** Additive combinatorics, algebraic combinatorics, polynomial method

## Description

In 2016, Ellenberg and Gijswijt, building on Croot-Lev-Pach, proved that a cap set in F_3^n has size O(2.756^n). The proof is strikingly short, using polynomials and what Tao later named the “slice rank” of a function. Yet it remains unclear why this approach succeeds where Fourier methods stalled, how robust it is, and which other patterns, fields, and geometric or colouring problems it can reach.

## Desired outcome

Teams should build a clear, verifiable understanding of the slice rank method, starting from its cap set origins and then testing how far it extends. Possible deliverables include a formalization (for example in Lean) of the slice rank lemma and the Ellenberg-Gijswijt bound, an exposition or interactive tool for visualizing slice rank on small examples, or an analysis of which assumptions in the method are essential and which can be relaxed. Teams could also explore how the technique carries over to related avoidance problems, including settings where the functions are not strictly polynomial or the forbidden configuration is geometric rather than purely additive.

The topic has a short, accessible core proof and a lot of room around it. Teams can start from pure formalization or exposition and, if time allows, push toward new applications. Several adjacent results (e.g., Naslund’s geometric application) show the method’s reach beyond the original setting, so there is room for original work as well as consolidation.

## References

- J. S. Ellenberg and D. Gijswijt, “On large subsets of F_q^n with no three-term arithmetic progression,” Annals of Mathematics 185 (2017), 339-343.
- E. Croot, V. Lev, and P. P. Pach, “Progression-free sets in Z_4^n are exponentially small,” Annals of Mathematics 185 (2017), 331-337.
- E. Naslund, “Monochromatic equilateral triangles in the unit distance graph,” Bulletin of the London Mathematical Society 52 (2020).

## Official Lean statement

`Mathathon.P75.cap_set_problem_specific` in [`lean/MathathonProblems/P75_CapSet.lean`](lean/MathathonProblems/P75_CapSet.lean).

```lean
theorem cap_set_problem_specific (n : ℕ) {A : Finset (Fin n → ZMod 3)}
    (hxyz : ∀ x y z : Fin n → ZMod 3, x ∈ A → y ∈ A → z ∈ A → x + y + z = 0 → x = y ∧ x = z) :
    (A.card : ℝ) ≤ 3 * ((((3 : ℝ) / 8) ^ 3 * (207 + 33 * Real.sqrt 33)) ^ (1 / 3 : ℝ)) ^ n
```

Source: <https://github.com/lean-forward/cap_set_problem/blob/095a2f18f81c551a0053f2e65806de751e438fc4/src/section_13b.lean> (adapted as described in the file header).

A Lean proof of this statement already exists: <https://github.com/lean-forward/cap_set_problem/blob/095a2f18f81c551a0053f2e65806de751e438fc4/src/section_13b.lean>. A Lean-verified claim must not use or copy it.
