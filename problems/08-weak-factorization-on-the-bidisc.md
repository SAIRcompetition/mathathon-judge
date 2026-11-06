# 8 · Weak factorization on the bidisc

**Tracks:** Analysis · **Area:** Analysis

## Description

H^p(T^2) consists of L^p functions on the 2-torus whose Fourier coefficients vanish for negative indices (analytic functions in both variables). H^2 ⊙ H^2 is the "weak product": all H^1 functions expressible as infinite sums h = Σ f_j g_j (f_j, g_j ∈ H^2) with Σ ||f_j||_2 ||g_j||_2 < ∞.

The open weak factorization problem for the bidisc is whether the converse norm inequality holds: Can every H^1 function on the bidisc be factored this way with a uniform bound? Equivalently, are H^1(T^2) and H^2(T^2) ⊙ H^2(T^2) equal as normed spaces?

Currently we know H^2 ⊙ H^2 sits inside H^1 contractively. The open problem asks whether this containment reverses - whether ‖h‖_{H^2⊙H^2} ≤ C‖h‖_{H^1} for some constant C. This is the dual formulation of the bidisc Nehari problem.

## Desired outcome

The answer to this problem and a new proof of the main theorem in the reference.

## References

- <https://link.springer.com/article/10.1007/BF02392840>

## Official Lean statement

`Mathathon.P08.WeakFactorization`, `Mathathon.P08.weak_factorization` in [`lean/MathathonProblems/P08_BidiscWeakFactorization.lean`](lean/MathathonProblems/P08_BidiscWeakFactorization.lean).

```lean
def WeakFactorization : Prop :=
  ∃ C : ℝ, ∀ h ∈ hardySpace 1, ∃ f g : ℕ → Lp ℂ 2 (volume : Measure (UnitAddTorus (Fin 2))),
    (∀ j, f j ∈ hardySpace 2 ∧ g j ∈ hardySpace 2) ∧
    HasSum (fun j => (f j • g j : Lp ℂ 1 (volume : Measure (UnitAddTorus (Fin 2))))) h ∧
    Summable (fun j => ‖f j‖ * ‖g j‖) ∧
    ∑' j, ‖f j‖ * ‖g j‖ ≤ C * ‖h‖
```

```lean
theorem weak_factorization : WeakFactorization
```

Source: written for Mathathon; not taken from an existing formalization.
