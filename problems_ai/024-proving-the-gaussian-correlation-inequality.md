# 24 · Proving the Gaussian correlation inequality

## From the proposer

- **Area:** Mathematical Statistics
- **Tracks:** Analysis

### Description

The Gaussian correlation inequality is a famous inequality in mathematical statistics. The inequality was conjectured in 1955 and proved in 2014. 

### Desired outcome

The first proof was constructed using probabilistic arguments, but perhaps it is possible to construct a more intuitive and concise geometric proof of the inequality. As this Quanta article below shows, it has a nice geometric interpretation.
https://www.quantamagazine.org/statistician-proves-gaussian-correlation-inequality-20170328/

### References

https://arxiv.org/abs/1512.08776

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved by T. Royen (2014); the general conjecture was formulated by S. Das Gupta et al. (1972).
- **Task:** A more intuitive and concise geometric proof.
- **Key reference:** [R. Latała and D. Matlak, "Royen's proof of the Gaussian correlation inequality", GAFA Seminar 2014–2016, Lecture Notes in Math. 2169 (2017), 265–275](https://arxiv.org/abs/1512.08776)
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- A second proof already exists: E. Milman (arXiv 2025, to appear in Probab. Theory Related Fields) derives the inequality from a symmetric inverse Brascamp–Lieb inequality for even log-concave functions; his argument works unchanged with any two even log-concave functions in place of the indicators, while Royen's covers more general gamma distributions.

### The result

Gaussian correlation inequality: for every centered Gaussian measure $\mu$ on $\mathbb R^d$ and all closed convex sets $K,L$ symmetric about the origin,
$$\mu(K\cap L)\ \ge\ \mu(K)\,\mu(L).$$
Royen proved it in 2014 (arXiv 1408.1028; Far East J. Theor. Stat. 48 (2014), 139–145) for multivariate gamma distributions, the Gaussian case being the case of one degree of freedom; Latała and Matlak wrote a self-contained Gaussian version. Since a closed symmetric convex set is a countable intersection of symmetric strips, it suffices to show, for a centered Gaussian vector $X$ in $\mathbb R^{n_1+n_2}$, $\mathbb P(|X_i|\le t_i\ \forall i)\ge\mathbb P(|X_i|\le t_i\ \forall i\le n_1)\,\mathbb P(|X_i|\le t_i\ \forall i>n_1)$.

### How the known proof works

- Write the covariance in blocks and interpolate $C(\tau)$, multiplying the off-diagonal blocks by $\tau\in[0,1]$; it suffices that $\tau\mapsto\mathbb P(X_i(\tau)^2/2\le s_i\ \forall i)$ is nondecreasing.
- The Laplace transform of $Z(\tau)=X(\tau)^2/2$ is $|I+\Lambda C(\tau)|^{-1/2}$; each principal minor $|C(\tau)_J|$ in its expansion is nonincreasing in $\tau$ (a Schur-complement eigenvalue bound).
- Hence $\partial_\tau$ of the density of $Z(\tau)$ is a nonnegative combination of mixed partial derivatives of a multivariate gamma density, whose integrals over a box are nonnegative.
- The whole proof takes nine pages in Latała–Matlak, who call the method "rather simple and elementary".

### Background

- Earlier cases: Pitt (1977) for $d=2$; Khatri and Šidák (1967) when one set is a symmetric slab; Hargé (1999) when one is a symmetric ellipsoid; partial results by Borell and by Schechtman, Schlumprecht and Zinn.
- Other attempts (Memarian; Guan) are long and hard to check; the first version of Memarian's contained an error.
- Building on Milman's observation, Nakamura and Tsuji (2025) extended the inequality to convex sets with the same barycenter and characterized equality.
- Y. Huang (arXiv 2026) reinterprets Royen's proof as a supersymmetric dimensional reduction, which explains where the gamma densities come from.

### Where to start

- [Royen's proof of the Gaussian correlation inequality](https://arxiv.org/abs/1512.08776), R. Latała and D. Matlak, 2015: the complete proof in nine pages.
- [Gaussian Correlation via Inverse Brascamp–Lieb](https://arxiv.org/abs/2501.11018), E. Milman, 2025: the second proof, with a section comparing it with Royen's.
- [A simple proof of the Gaussian correlation conjecture extended to multivariate gamma distributions](https://arxiv.org/abs/1408.1028), T. Royen, 2014: the original paper.

Prerequisites: Gaussian vectors and covariance matrices, Laplace transforms, determinants and Schur complements.

### Further references

- T. Royen, "A simple proof of the Gaussian correlation conjecture extended to some multivariate gamma distributions", Far East J. Theor. Stat. 48 (2014), 139–145. <https://arxiv.org/abs/1408.1028>
- E. Milman, "Gaussian correlation via inverse Brascamp–Lieb" (2025). <https://arxiv.org/abs/2501.11018>
- S. Nakamura and H. Tsuji, "The Gaussian correlation inequality for centered convex sets and the case of equality" (2025). <https://arxiv.org/abs/2504.04337>
- Y. Huang, "Royen's proof of the Gaussian correlation inequality as a supersymmetric dimensional reduction" (2026). <https://arxiv.org/abs/2605.00533>

### Lean

#### Official statement

`Mathathon.P24.gaussian_correlation_inequality` in [`lean/MathathonProblems/P24_GaussianCorrelation.lean`](lean/MathathonProblems/P24_GaussianCorrelation.lean).

```lean
theorem gaussian_correlation_inequality {d : ℕ} (μ : Measure (EuclideanSpace ℝ (Fin d)))
    [IsGaussian μ] (hμ : ∫ x, x ∂μ = 0) {K L : Set (EuclideanSpace ℝ (Fin d))}
    (hK_convex : Convex ℝ K) (hK_closed : IsClosed K) (hK_symm : ∀ x ∈ K, -x ∈ K)
    (hL_convex : Convex ℝ L) (hL_closed : IsClosed L) (hL_symm : ∀ x ∈ L, -x ∈ L) :
    μ K * μ L ≤ μ (K ∩ L)
```

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Existing Lean proofs

- OpenAI's `linear_image_closed_convex_correlation` in [`OAI/Analysis/Steinitz/Correlation.lean`](https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Analysis/Steinitz/Correlation.lean) (openai/math, Apache License 2.0) proves the inequality for the image of the standard Gaussian measure under any continuous linear map, that is, for every centered Gaussian measure. Prove2Me lists it as [Royen's Gaussian correlation inequality](https://prove2.me/theorems/188a9364-3c82-4492-8b33-d7f333f3b043). A Lean-verified claim must not use or copy it.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `ProbabilityTheory.IsGaussian`, `multivariateGaussian`, `stdGaussian`, `Convex` and the one-dimensional `gammaMeasure`. It has no multivariate gamma distributions, Brascamp–Lieb inequalities or log-concave functions.
