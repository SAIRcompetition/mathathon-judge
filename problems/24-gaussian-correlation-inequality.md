# 24 · Gaussian correlation inequality

**Tracks:** Analysis · **Area:** Mathematical Statistics

## Description

The Gaussian correlation inequality is a famous inequality in mathematical statistics. The inequality was conjectured in 1955 and proved in 2014.

## Desired outcome

The first proof was constructed using probabilistic arguments, but perhaps it is possible to construct a more intuitive and concise geometric proof of the inequality. As this Quanta article shows, the inequality has a nice geometric interpretation: <https://www.quantamagazine.org/statistician-proves-gaussian-correlation-inequality-20170328/>

## References

- <https://arxiv.org/abs/1512.08776>

## Official Lean statement

`Mathathon.P24.gaussian_correlation_inequality` in [`lean/MathathonProblems/P24_GaussianCorrelation.lean`](lean/MathathonProblems/P24_GaussianCorrelation.lean).

```lean
theorem gaussian_correlation_inequality {d : ℕ} (μ : Measure (EuclideanSpace ℝ (Fin d)))
    [IsGaussian μ] (hμ : ∫ x, x ∂μ = 0) {K L : Set (EuclideanSpace ℝ (Fin d))}
    (hK_convex : Convex ℝ K) (hK_closed : IsClosed K) (hK_symm : ∀ x ∈ K, -x ∈ K)
    (hL_convex : Convex ℝ L) (hL_closed : IsClosed L) (hL_symm : ∀ x ∈ L, -x ∈ L) :
    μ K * μ L ≤ μ (K ∩ L)
```

Source: written for Mathathon; not taken from an existing formalization.
