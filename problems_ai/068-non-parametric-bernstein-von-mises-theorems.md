# 68 · Non-parametric Bernstein von-Mises theorems

## From the proposer

- **Area:** Non-parametric Bayesian statistics
- **Tracks:** Analysis

### Description

The Bernstein von-Mises theorem states that the posterior mean centred at the ground truth is a Gaussian distribution, under suitable assumptions. Several proofs of this theorem exist in infinite dimensional settings with slightly different hypotheses. Each proof is incredibly long (50 pages) and involves many tedious optimisations of constants. The goal of this project is to unify and simplify these existing proofs in literature to provide a definitive reference BvM theorem for statisticians and formalise it in lean.

### Desired outcome

A Bernstein-von Mises theorem whose hypotheses are more general that all of the non-parametric Bernstein-von Mises theorems appearing in literature. Either a new proof that unifies these statements, or the existing proof structure with all constants optimised in each of the cases covered by the hypotheses. 
A formalisation of the above theorem +proof in lean.

### References

This problem was proposed jointly by my PhD supervisor Richard Nickl
[1] BvM for parabolic PDE setting https://arxiv.org/abs/2407.14781
[2]  BvM for white noise model https://projecteuclid.org/journals/annals-of-statistics/volume-42/issue-5/On-the-Bernsteinvon-Mises-phenomenon-for-nonparametric-Bayes-procedures/10.1214/14-AOS1246.full
[3] Chapter 12 in Ghosal, S. and van der Vaart, A. W. (2017). Fundamentals of Nonparametric Bayesian Inference. Cambridge University Press.

## AI-generated notes

<!-- status: Not a single theorem -->

- **Status:** Nonparametric BvM theorems are proved model by model (Castillo–Nickl 2013, 2014; Nickl 2020, 2024).
- **Task:** One BvM theorem whose hypotheses cover the known nonparametric ones.
- **Key reference:** [I. Castillo and R. Nickl, "On the Bernstein–von Mises phenomenon for nonparametric Bayes procedures", Ann. Statist. 42 (2014), 1941–1969](https://arxiv.org/abs/1310.2484)
- **Lean:** No official statement.

### Notes

- The Description describes BvM via "the posterior mean centred at the ground truth". In the literature it concerns the whole posterior: centred at an efficient estimator (e.g. the posterior mean) and rescaled by $\sqrt n$, it is close to a fixed Gaussian law. In infinite dimensions this can fail (Freedman 1999).
- The reference labelled "BvM for the white noise model" also covers i.i.d. density estimation; the white-noise-only paper is Castillo–Nickl 2013.

### The result

Castillo and Nickl observe $dX^{(n)}=f\,dt+n^{-1/2}dW$ on $[0,1]$, or i.i.d. samples from a density $f$. Let $\tilde\Pi_n$ be the posterior law of $\sqrt n(f-T_n)$. The weak BvM phenomenon (their Definition 2) is
$$\beta_{\mathcal M_0(w)}\big(\tilde\Pi_n,\mathcal N\big)\to0\quad\text{in }P_{f_0}\text{-probability},$$
with $\beta$ the bounded-Lipschitz metric on a multiscale space $\mathcal M_0(w)$ of wavelet coefficients ($w_l/\sqrt l\uparrow\infty$) and $\mathcal N$ the law of white noise or of the $P_0$-Brownian bridge. Theorem 2 proves it in white noise for product wavelet priors with $T_n=X^{(n)}$ or the posterior mean. Nickl (2024 preprint) proves a Wasserstein BvM in sup-norm for non-linear parabolic PDE models. The proposer wants one theorem covering such results.

### How the known proof works

- Choose weights so that the Gaussian limit is a tight Borel measure on $\mathcal M_0(w)$.
- Tightness criterion (Proposition 6): it suffices to prove BvM for projections onto finitely many scales and a posterior moment bound in a slightly stronger norm.
- The finite-dimensional part is, by Cramér–Wold, a semiparametric BvM for fixed linear functionals.
- High frequencies are controlled through posterior Laplace transforms of wavelet coefficients; in the sampling model the posterior is first localized near $f_0$.
- Nickl (2024) follows the same pattern, adding the inversion of a Fisher information operator.

### Background

- BvM for regular parametric models is classical (van der Vaart, Asymptotic Statistics); Freedman's (1999) failure example is a Gaussian conjugate $\ell^2$ model.
- Castillo and Nickl (2013) proved BvM for white noise in a topology weaker than $\ell^2$; Castillo and Rousseau (2015) treated smooth functionals in semiparametric models.
- Nickl (2020) proved a BvM theorem for a Schrödinger-equation inverse problem; his 2023 Zurich lectures treat Bayesian non-linear inverse problems, and Ghosal–van der Vaart (2017, Chapter 12) is a textbook account of infinite-dimensional BvM.

### Where to start

- [On the Bernstein–von Mises phenomenon for nonparametric Bayes procedures](https://arxiv.org/abs/1310.2484), I. Castillo and R. Nickl, 2013: Sections 2–3 define the spaces and the weak BvM; Section 5 has the proofs.
- [Nonparametric Bernstein–von Mises theorems in Gaussian white noise](https://arxiv.org/abs/1208.3862), I. Castillo and R. Nickl, 2012: the Hilbert-space version.
- [Bernstein–von Mises theorems for time evolution equations](https://arxiv.org/abs/2407.14781), R. Nickl, 2024: Section 2.2 runs the same steps for a non-linear PDE.

Prerequisites: parametric BvM and local asymptotic normality, Gaussian measures on Banach spaces, weak convergence, wavelets, posterior contraction.

### References, with links

- BvM for the parabolic PDE setting: <https://arxiv.org/abs/2407.14781>
- BvM for the white noise model: <https://projecteuclid.org/journals/annals-of-statistics/volume-42/issue-5/On-the-Bernsteinvon-Mises-phenomenon-for-nonparametric-Bayes-procedures/10.1214/14-AOS1246.full>
- S. Ghosal and A. W. van der Vaart, *Fundamentals of Nonparametric Bayesian Inference*, Cambridge University Press (2017), Chapter 12. <https://doi.org/10.1017/9781139029834.013>

### Further references

- I. Castillo and R. Nickl, "Nonparametric Bernstein–von Mises theorems in Gaussian white noise", Ann. Statist. 41 (2013), 1999–2028. <https://arxiv.org/abs/1208.3862>
- D. Freedman, "On the Bernstein–von Mises theorem with infinite-dimensional parameters", Ann. Statist. 27 (1999), 1119–1141. <https://doi.org/10.1214/aos/1017938917>
- I. Castillo and J. Rousseau, "A Bernstein–von Mises theorem for smooth functionals in semiparametric models", Ann. Statist. 43 (2015), 2353–2383. <https://doi.org/10.1214/15-AOS1336>
- R. Nickl, "Bernstein–von Mises theorems for statistical inverse problems I: Schrödinger equation", J. Eur. Math. Soc. 22 (2020), 2697–2750. <https://arxiv.org/abs/1707.01764>
- R. Nickl, Bayesian Non-linear Statistical Inverse Problems, Zurich Lectures in Advanced Mathematics, EMS Press (2023). <https://doi.org/10.4171/ZLAM/30>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs the nonparametric statistical models of Bernstein–von Mises theorems, which Mathlib does not have yet.

#### Mathlib

Mathlib has `ProbabilityTheory.posterior`, `ProbabilityTheory.IsGaussian` and `MeasureTheory.levyProkhorovDist`. It has no white noise or nonparametric regression models, no wavelets or multiscale spaces, no Wasserstein or bounded-Lipschitz metric and no BvM theorem.
