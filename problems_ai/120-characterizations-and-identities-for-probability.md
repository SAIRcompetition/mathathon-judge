# 120 · Characterizations and identities for probability distributions

## From the proposer

- **Area:** Probability theory, statistics, stochastic processes
- **Tracks:** Analysis

### Description

Formalize results that characterize probability distributions or identify the laws of interesting random variables. Two possible targets are Marcinkiewicz's theorem, which says a polynomial characteristic exponent forces a Gaussian or a point mass, and Dufresne's identity, which gives an inverse-gamma law for an integral of geometric Brownian motion. Other directions could include stable distributions, gamma characterizations, Polya-Gamma mixture identities, or distinct densities with the same moments. The idea is to pick a concrete theorem and check its proof and assumptions in Lean.

### Desired outcome

A Lean proof of one or more of these results, ideally Marcinkiewicz's theorem or Dufresne's identity. Include the concrete distribution formula or characterization and its hypotheses, and build reusable tools for related examples.

### References

Quantitative Marcinkiewicz's theorem and central limit theorems: applications to spin systems and point processes: https://arxiv.org/abs/2107.08469

Perpetual integral functionals as hitting and occupation times (includes Dufresne's identity): https://arxiv.org/abs/math/0403069

A direct approach to the stable distributions: https://arxiv.org/abs/1604.07350

## AI-generated notes

<!-- status: Not a single theorem -->

- **Status:** A formalization task with several possible targets; the two named ones are classical theorems, Marcinkiewicz's theorem (J. Marcinkiewicz, 1939) and Dufresne's identity (D. Dufresne, 1990).
- **Task:** A Lean proof of a characterization or distributional identity, ideally Marcinkiewicz's theorem or Dufresne's identity, with tools reusable for related examples.
- **Key reference:** [J. Marcinkiewicz, “Sur une propriété de la loi de Gauß”, Math. Z. 44 (1939), 612–618](https://doi.org/10.1007/BF01210677)
- **Lean:** Official statement.

### Notes

- The first reference was retitled in its version 3 (September 2025) as “Gaussian fluctuations for spin systems and point processes: near-optimal rates via quantitative Marcinkiewicz's theorem”; the sheet gives the title of versions 1–2.
- The second reference recalls Dufresne's identity (its eq. (3)) without proving it; it proves by time change the companion identity (2)/(19) with a Bessel hitting time. A proof of the identity itself is Theorem 6.2 of Matsumoto–Yor (2005).

### The result

Marcinkiewicz (1939): if the characteristic function of a real random variable has the form $\varphi(t)=\mathbb E\thinspace e^{itX}=e^{P(t)}$ with $P$ a polynomial, then $\deg P\le2$, so $X$ is Gaussian or constant.

Dufresne (1990), as stated in Matsumoto–Yor, Theorem 6.2: for $\mu\gt0$ and a standard Brownian motion $B$,

$$\int_0^\infty e^{2(B_s-\mu s)}\thinspace ds\ \overset{d}{=}\ \frac1{2\gamma_\mu},$$

where $\gamma_\mu$ has density $x^{\mu-1}e^{-x}/\Gamma(\mu)$ on $(0,\infty)$; so the perpetuity has an inverse gamma law. By scaling, $\int_0^\infty e^{aB_s-bs}\thinspace ds\overset{d}{=}2/(a^2\gamma_{2b/a^2})$ for $a,b\gt0$.

One example for each other direction the proposer names:
- Stable laws: E. J. G. and J. Pitman derive the characteristic function of a stable law from its functional equation and regular variation, without the Lévy–Khintchine formula.
- Gamma (Lukacs 1955): if $X,Y\gt0$ are independent and non-degenerate and $X+Y$ is independent of $X/(X+Y)$, then $X,Y$ are gamma with a common scale.
- Pólya–Gamma (Polson–Scott–Windle 2013, Theorem 1): for $b\gt0$, $(e^\psi)^a/(1+e^\psi)^b=2^{-b}e^{\kappa\psi}\thinspace\mathbb E\thinspace e^{-\omega\psi^2/2}$, where $\kappa=a-b/2$ and $\omega\sim\mathrm{PG}(b,0)$.
- Same moments (Heyde 1963): the lognormal density $f$ and $f(x)\big(1+\varepsilon\sin(2\pi\log x)\big)$, $|\varepsilon|\le1$, have the same moments.

### How the known proof works

- Marcinkiewicz: a characteristic function that agrees near $0$ with an analytic function is analytic in a strip and equals $\mathbb E\thinspace e^{izX}$ there (see Lukacs, *Characteristic Functions*). As $e^P$ is entire, $\mathbb E\thinspace e^{sX}\lt\infty$ for all real $s$ and $|\varphi(t+is)|\le\varphi(is)$, so $\mathop{\mathrm{Re}}P(re^{i\theta})\le P(ir\sin\theta)$ for all $r,\theta$.
- If $\deg P=n\ge3$, compare leading terms at one of the $n$ directions where $\mathop{\mathrm{Re}}(a_ne^{in\theta})=|a_n|$ and $|\sin\theta|\lt1$: contradiction. Hence $P(t)=imt-\sigma^2t^2/2$.
- Dufresne, structure (Lamperti): $e^{B_t-\mu t}$ is a Bessel process of index $-\mu$ started at $1$, time-changed by $A_t=\int_0^te^{2(B_s-\mu s)}ds$; so $A_\infty$ is the time that Bessel process hits $0$ (Matsumoto–Yor (2.1); Salminen–Yor (2)).
- Dufresne, analytic proof (Matsumoto–Yor, Theorem 6.2): a Laplace transform of the perpetuity solves an ODE that becomes the modified Bessel equation, giving $\mathbb E\exp(-\tfrac{\alpha^2}{2}A_\infty)=\frac{2}{\Gamma(\mu)}(\alpha/2)^\mu K_\mu(\alpha)$; an integral formula for $K_\mu$ identifies the law of $1/(2\gamma_\mu)$.

### Background

- Cramér (1936): if $X,Y$ are independent and $X+Y$ is Gaussian, so are $X$ and $Y$; the usual proof uses Hadamard factorization of entire functions.
- Dinh, Ghosh, Tran and Tran bound the Kolmogorov distance to a Gaussian when the characteristic function is only known to be non-vanishing on a bounded disk, and apply this to spin systems (via Lee–Yang zeros) and $\alpha$-determinantal point processes.
- Dufresne's perpetuity arose as a limit of discrete perpetuities in risk theory; exponential functionals of Brownian motion also appear in mathematical finance (Asian options).

### Where to start

- [Exponential functionals of Brownian motion, I](https://arxiv.org/abs/math/0511517), H. Matsumoto, M. Yor, 2005: §2 (Lamperti's representation) and a one-page analytic proof of Dufresne's identity (Theorem 6.2).
- [Quantitative Marcinkiewicz's theorem and central limit theorems](https://arxiv.org/abs/2107.08469v1), T.-C. Dinh, S. Ghosh, H.-S. Tran, M.-H. Tran, 2021: the classical theorem and its quantitative extension.
- [A direct approach to the stable distributions](https://arxiv.org/abs/1604.07350), E. J. G. Pitman, J. Pitman, 2016: a self-contained derivation and a well-delimited formalization target.

Prerequisites: characteristic functions (uniqueness, analyticity), entire functions, Brownian motion and Itô calculus, Bessel processes, Laplace transforms and modified Bessel functions.

### References, with links

- T.-C. Dinh, S. Ghosh, H.-S. Tran and M.-H. Tran, “Quantitative Marcinkiewicz's theorem and central limit theorems: applications to spin systems and point processes”, arXiv:2107.08469 (2021; retitled in v3, 2025). <https://arxiv.org/abs/2107.08469>
- P. Salminen and M. Yor, “Perpetual integral functionals as hitting and occupation times”, Electron. J. Probab. 10 (2005), 371–419. <https://doi.org/10.1214/EJP.v10-256> (arXiv: <https://arxiv.org/abs/math/0403069>)
- E. J. G. Pitman and J. Pitman, “A direct approach to the stable distributions”, Adv. Appl. Probab. 48(A) (2016), 261–282, doi:10.1017/apr.2016.55. <https://arxiv.org/abs/1604.07350>

### Further references

- D. Dufresne, “The distribution of a perpetuity, with applications to risk theory and pension funding”, Scand. Actuar. J. 1990, 39–79. <https://doi.org/10.1080/03461238.1990.10413872>
- H. Matsumoto and M. Yor, “Exponential functionals of Brownian motion, I: Probability laws at fixed time”, Probab. Surveys 2 (2005), 312–347. <https://doi.org/10.1214/154957805100000159>
- E. Lukacs, *Characteristic Functions*, 2nd ed., Griffin, London, 1970.
- E. Lukacs, “A characterization of the gamma distribution”, Ann. Math. Statist. 26 (1955), 319–324. <https://doi.org/10.1214/aoms/1177728549>
- N. G. Polson, J. G. Scott and J. Windle, “Bayesian inference for logistic models using Pólya–Gamma latent variables”, J. Amer. Statist. Assoc. 108 (2013), 1339–1349. <https://arxiv.org/abs/1205.0310>
- C. C. Heyde, “On a property of the lognormal distribution”, J. R. Stat. Soc. B 25 (1963), 392–393. <https://doi.org/10.1111/j.2517-6161.1963.tb00521.x>

### Lean

#### Official statement

`Mathathon.P120.marcinkiewicz` in [`lean/MathathonProblems/P120_Marcinkiewicz.lean`](lean/MathathonProblems/P120_Marcinkiewicz.lean).

```lean
theorem marcinkiewicz (μ : Measure ℝ) [IsProbabilityMeasure μ] (P : Polynomial ℂ)
    (hP : ∀ t : ℝ, charFun μ t = Complex.exp (P.eval (t : ℂ))) :
    IsGaussian μ
```

`Mathathon.P120.dufresne` in [`lean/MathathonProblems/P120_Dufresne.lean`](lean/MathathonProblems/P120_Dufresne.lean).

```lean
theorem dufresne {Ω : Type*} [MeasurableSpace Ω] (P : Measure Ω) [IsProbabilityMeasure P]
    (B : ℝ≥0 → Ω → ℝ) (hB : IsBrownianReal B P) (μ : ℝ) (hμ : 0 < μ) :
    HasLaw (fun ω => ∫ s in Set.Ioi (0 : ℝ), Real.exp (2 * (B s.toNNReal ω - μ * s)))
      ((gammaMeasure μ 1).map fun x => (2 * x)⁻¹) P
```

The problem lets participants choose a result and names these two as the ideal targets; the other directions it lists have no official statement. Mathlib's `IsGaussian` includes point masses, so the first conclusion reads "Gaussian or a point mass"; the second says that $\int_0^\infty e^{2(B_s-\mu s)}\thinspace ds$ has the law of $1/(2\gamma_\mu)$ (Matsumoto–Yor, Theorem 6.2), with Mathlib's Brownian motion `IsBrownianReal` and gamma law `gammaMeasure μ 1`.

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Related Lean formalizations

- [Lean formalization of Brownian motion and stochastic integrals](https://github.com/RemyDegenne/brownian-motion), R. Degenne et al.: its README says the construction of Brownian motion (Kolmogorov extension, Kolmogorov–Chentsov) is complete and being moved to Mathlib, and that stochastic integrals and Itô's lemma are in progress ([arXiv:2511.20118](https://arxiv.org/abs/2511.20118)).

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `MeasureTheory.charFun` with uniqueness (`MeasureTheory.Measure.ext_of_charFun`), Gaussian laws with a characteristic-function criterion that includes point masses (`ProbabilityTheory.isGaussian_iff_gaussian_charFun`), the complex moment generating function, analytic on its strip of integrability and equal to `charFun` on the imaginary axis (`ProbabilityTheory.analyticOnNhd_complexMGF`, `ProbabilityTheory.complexMGF_id_mul_I`), `ProbabilityTheory.gammaMeasure`, the i.i.d. central limit theorem (`ProbabilityTheory.tendstoInDistribution_inv_sqrt_mul_sum`) and the predicate `ProbabilityTheory.IsBrownianReal`. It lacks the converse (an analytic characteristic function gives exponential moments), Hadamard factorization, stable and inverse gamma laws, an existence theorem for Brownian motion, stochastic integrals and Bessel processes.
