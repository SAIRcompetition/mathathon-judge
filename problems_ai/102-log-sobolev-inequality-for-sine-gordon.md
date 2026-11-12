# 102 · Log Sobolev inequality for sine Gordon

## From the proposer

- **Area:** Probability Theory
- **Tracks:** Analysis

### Description

Log sobolev inequality is a certain inequality that can be derived for certain classes of probability measures in statistical field theory, for sine Gordon for beta^2 < 6pi this was proven by Bauerschmidt, recently a preprint solving it for the subcritical regime has been uploaded, which, however was complete AI slop, in need of human understanding. 

### Desired outcome

A good understanding of the proof, which has been also longstanding for several years. 

### References

https://arxiv.org/abs/2611.01403

### Reference links

- <https://arxiv.org/abs/2611.01403>

## AI-generated notes

<!-- status: Proved (preprint) -->

- **Status:** Proved for $\beta<6\pi$ by R. Bauerschmidt and T. Bodineau (CPAM 2021); the whole subcritical range $0<\beta<8\pi$ is claimed in an unrefereed preprint by A. F. Radu (arXiv, 1 November 2026).
- **Task:** Understand and explain the proof of the log-Sobolev inequality for sine-Gordon in the full subcritical regime.
- **Key reference:** [A. F. Radu, “Log-Sobolev inequality for the sine-Gordon model in the subcritical regime”, arXiv:2611.01403 (2026)](https://arxiv.org/abs/2611.01403)
- **Lean:** Official statement.

### Notes

- Both papers write the interaction as $\cos(\sqrt\beta\,\varphi)$, so their "$\beta<6\pi$" is the proposer's "$\beta^2<6\pi$"; the subcritical regime is $\beta<8\pi$.
- The proposer calls the preprint "AI slop". Its declaration of AI use says the paper was written by the author and that OpenAI Codex was used only for a first check of calculations from handwritten notes and for literature checks. We found no independent assessment of the argument.
- The preprint treats Glauber dynamics only; Bauerschmidt–Bodineau also prove a Kawasaki (conserved) version for $\beta<6\pi$. In both papers the bound uniform in the volume needs a small dimensionless coupling $|z|m^{-2+\beta/4\pi}$.

### The result

Let $\Omega_{\varepsilon,L}=L\mathbb T^2\cap\varepsilon\mathbb Z^2$ and let $\nu_{\varepsilon,L}$ be the probability measure on $\mathbb R^{\Omega_{\varepsilon,L}}$ with density proportional to $e^{-H_{\varepsilon,L}}$,
$$H_{\varepsilon,L}(\varphi)=\varepsilon^2\sum_{x}\Big(\tfrac12\varphi_x(-\Delta^\varepsilon\varphi)_x+\tfrac12m^2\varphi_x^2+2z\,\varepsilon^{-\beta/4\pi}\cos(\sqrt\beta\,\varphi_x)\Big),\qquad m>0,\ z\in\mathbb R .$$
Let $\gamma_{\varepsilon,L}$ be the best constant in
$$\mathrm{Ent}_{\nu_{\varepsilon,L}}(F)\le\frac{2}{\gamma_{\varepsilon,L}}\;\varepsilon^{-2}\sum_x\mathbb E_{\nu_{\varepsilon,L}}\big[(\partial_{\varphi_x}\sqrt F)^2\big]\qquad(F\ge0);$$
for $z=0$ (the massive free field) $\gamma_{\varepsilon,L}=m^2$.

- Bauerschmidt–Bodineau (Theorem 1.6): for $\beta<6\pi$ and fixed $L,m,z$, $\gamma_{\varepsilon,L}\ge\gamma(\beta,z,m,L)>0$ for all $\varepsilon$; if $Lm\ge1$ and $|z|m^{-2+\beta/4\pi}\le\delta_\beta$, then $\gamma\ge m^2-O_\beta(m^{\beta/4\pi}|z|)$ uniformly in $L$. Theorem 1.7 is the Kawasaki analogue.
- Radu (Theorem 1.1, claimed): for $0<\beta<8\pi$ and fixed $m,L>0$, $z\in\mathbb R$, $\inf_\varepsilon\gamma_{\varepsilon,L}>0$; with $\alpha=2-\beta/4\pi$, if $|z|m^{-\alpha}\le c_\beta$ then $\gamma_{\varepsilon,L}\ge m^2e^{-C_\beta|z|m^{-\alpha}}$, with constants independent of $L,m,z,\varepsilon$.

So the Glauber (Langevin) dynamics, a lattice regularisation of the dynamical sine-Gordon equation, relaxes in entropy at a rate bounded below uniformly in the cutoff.

### How the known proof works

- Polchinski flow: with $\dot C_t=e^{-tA}$, $C_t=\int_0^t\dot C_s\,ds$ and $e^{-V_t(\varphi)}=\mathbb E_{C_t}e^{-V_0(\varphi+\zeta)}$, the renormalised potential solves $\partial_tV_t=\frac12\Delta_{\dot C_t}V_t-\frac12(\nabla V_t)^2_{\dot C_t}$.
- Multiscale Bakry–Émery criterion (Bauerschmidt–Bodineau, Theorem 1.2): if $Q_t\,\mathrm{Hess}\,V_t\,Q_t\ge\dot\mu_t$ with $Q_t=e^{-tA/2}$, then the LSI holds with $\frac1\gamma=\int_0^\infty e^{-\lambda t-2\mu_t}\,dt$, $\mu_t=\int_0^t\dot\mu_s\,ds$, $\lambda$ the smallest eigenvalue of $A$. The $V_t$ stay non-convex; the heat-kernel smoothing is what matters for $\beta>4\pi$.
- For sine-Gordon they bound $\mu_t$ uniformly in $\varepsilon$ through a Mayer (Brydges–Kennedy) expansion of $V_t$ (Proposition 3.1), first for $\beta<4\pi$, then up to $6\pi$ by treating the terms of order 2–4 more carefully. Radu notes that their pair estimate already works up to $8\pi$, since $\int_0^1r^{3-\beta/2\pi}dr<\infty\iff\beta<8\pi$, while their higher-order estimates use a first spatial moment and stop at $6\pi$.
- Radu runs the flow only up to a physical length $r_*\le c_\beta\min(m^{-1},L)$ and uses the finite-time transport criterion of Bauerschmidt–Bodineau–Dagallier: $\gamma_{\varepsilon,L}\ge\varepsilon^{-2}\gamma(\mu_{t_*})\exp\big(-\int_0^{t_*}\|\mathrm{Hess}[V_s(Q_s\cdot)]\|\,ds\big)$.
- At that scale he writes $V_{t_*}(Q_{t_*}\cdot)=N+R$, with $N$ invariant under constant field shifts and curvature bounded by $C|z|r_*^{\alpha}$ times the gradient energy, and $R$ of bounded oscillation; Bakry–Émery and Holley–Stroock then give the bound (Proposition 2.1).
- These estimates are carried from scale $\ell$ to $M\ell$. The new steps: compare Gaussian averaging with an average in which the cosine phase fluctuates independently, whose error carries a second spatial difference and is integrable for every $\beta<8\pi$ (Lemma 3.4); and bound first derivatives at a midpoint scale (Lemma 3.6), where the incoming coefficient grows like $M^{3\alpha/2}$ against an allowed $M^{2\alpha}$, which closes the induction.

### Background

- For $0<\beta<8\pi$ (on a torus, with $m>0$ and small $z$) the lattice measures have a non-Gaussian continuum limit; constructions include Nicolò–Renn–Steinmann (1986) and Dimock–Hurd (1993). For $\beta<4\pi$ the limit is absolutely continuous with respect to the free field in finite volume; for $4\pi\le\beta<8\pi$ the partition function (not the normalised measure) picks up new divergences at $\beta=8\pi(1-\frac1{2n})$, so $4\pi,6\pi,\dots$ are thresholds.
- Bauerschmidt–Bodineau write: "It remains a very interesting problem to extend our results to the optimal regime $\beta<8\pi$." Other recent analyses of the field also stop at $6\pi$: Bauerschmidt–Hofstetter (maximum of the field) and Gubinelli–Meyer (an FBSDE approach).
- The dynamical sine-Gordon equation is locally well-posed in the full subcritical regime (Chandra–Hairer–Shen, preprint 2018). The same method recently gave an LSI for sinh-Gordon (Abdelghani–Bauerschmidt–Bodineau–Dagallier, preprint 2026).
- Tools: Gross's Gaussian LSI (1975), the Bakry–Émery criterion (1985), the Holley–Stroock perturbation lemma (1987).

### Where to start

- [Stochastic dynamics and the Polchinski equation: an introduction](https://arxiv.org/abs/2307.07619), R. Bauerschmidt, T. Bodineau, B. Dagallier, 2024: the method in one place, including the finite-time criterion Radu uses (Theorem 5.4).
- [Log-Sobolev inequality for the continuum sine-Gordon model](https://arxiv.org/abs/1907.12308), R. Bauerschmidt, T. Bodineau, 2021: Theorem 1.2 and Section 3, the proof up to $6\pi$.
- [Log-Sobolev inequality for the sine-Gordon model in the subcritical regime](https://arxiv.org/abs/2611.01403), A. F. Radu, 2026: Section 2 (reduction), then Lemmas 3.4 and 3.6.

Prerequisites: Gaussian measures and Wick ordering, log-Sobolev inequalities (Bakry–Émery, Holley–Stroock), Brascamp–Lieb inequalities, the Polchinski equation.

### References, with links

- A. F. Radu, “Log-Sobolev inequality for the sine-Gordon model in the subcritical regime”, arXiv:2611.01403 (2026). <https://arxiv.org/abs/2611.01403>

### Further references

- R. Bauerschmidt, T. Bodineau, “Log-Sobolev inequality for the continuum sine-Gordon model”, Comm. Pure Appl. Math. 74 (2021), 2064–2113. <https://doi.org/10.1002/cpa.21926>
- R. Bauerschmidt, T. Bodineau, B. Dagallier, “Stochastic dynamics and the Polchinski equation: an introduction”, Probab. Surv. 21 (2024), 200–290. <https://doi.org/10.1214/24-PS27>
- R. Bauerschmidt, M. Hofstetter, “Maximum and coupling of the sine-Gordon field”, Ann. Probab. 50 (2022), 455–508. <https://arxiv.org/abs/2009.09664>
- M. Gubinelli, S.-J. Meyer, “The FBSDE approach to sine-Gordon up to $6\pi$” (preprint, 2024). <https://arxiv.org/abs/2401.13648>
- O. Abdelghani, R. Bauerschmidt, T. Bodineau, B. Dagallier, “Log-Sobolev inequality for the sinh-Gordon model” (preprint, 2026). <https://arxiv.org/abs/2609.28091>
- A. Chandra, M. Hairer, H. Shen, “The dynamical sine-Gordon model in the full subcritical regime” (preprint, 2018). <https://arxiv.org/abs/1808.02594>
- F. Nicolò, J. Renn, A. Steinmann, “On the massive sine-Gordon equation in all regions of collapse”, Comm. Math. Phys. 105 (1986), 291–326. <https://doi.org/10.1007/BF01211104>
- J. Dimock, T. R. Hurd, “Construction of the two-dimensional sine-Gordon model for $\beta<8\pi$”, Comm. Math. Phys. 156 (1993), 547–580. <https://doi.org/10.1007/BF02096863>
- L. Gross, “Logarithmic Sobolev inequalities”, Amer. J. Math. 97 (1975), 1061–1083. <https://doi.org/10.2307/2373688>
- D. Bakry, M. Émery, “Diffusions hypercontractives”, Séminaire de Probabilités XIX, LNM 1123 (1985), 177–206. <https://doi.org/10.1007/BFb0075847>
- R. Holley, D. Stroock, “Logarithmic Sobolev inequalities and stochastic Ising models”, J. Stat. Phys. 46 (1987), 1159–1194. <https://doi.org/10.1007/BF01011161>

### Lean

#### Official statement

`Mathathon.P102.sineGordon_logSobolev` in [`lean/MathathonProblems/P102_SineGordonLogSobolev.lean`](lean/MathathonProblems/P102_SineGordonLogSobolev.lean).

```lean
theorem sineGordon_logSobolev (β : ℝ) (hβ₀ : 0 < β) (hβ : β < 8 * π) :
    (∀ m L z : ℝ, 0 < m → 0 < L →
      ∃ γ > 0, ∀ (N : ℕ) [NeZero N],
        LogSobolev (L / N) (sineGordon (N := N) β m z (L / N)) γ) ∧
    (∃ c C : ℝ, 0 < c ∧ 0 < C ∧ ∀ m L z : ℝ, 0 < m → 0 < L → |z| * m ^ (-(2 - β / (4 * π))) ≤ c →
      ∀ (N : ℕ) [NeZero N],
        LogSobolev (L / N) (sineGordon (N := N) β m z (L / N))
          (m ^ 2 * exp (-(C * |z| * m ^ (-(2 - β / (4 * π)))))))
```

This is Theorem 1.1 of Radu's preprint, both parts, with its lattice normalisation: the measure on $\mathbb R^\Lambda$, $\Lambda=(\mathbb Z/N\mathbb Z)^2$, $\varepsilon=L/N$, has density proportional to $e^{-\frac12(\varphi,A\varphi)-V_0(\varphi)}$, and `LogSobolev ε ν γ` is $\mathrm{Ent}_\nu F\le\frac2\gamma\,\varepsilon^{-2}\sum_x\mathbb E_\nu[(\partial_x\sqrt F)^2]$. Instead of the best constant $\gamma_{\varepsilon,L}$ the statement asserts the inequality with the given constants, for smooth $F$ bounded above and away from zero with bounded first derivatives.

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Related Lean formalizations

- [Gaussian logarithmic Sobolev inequality on ℝ^ι](https://prove2.me/theorems/e4a25958-6209-420f-a407-6bf7c0ba59cd), Prove2Me (`GaussianMatrix.gaussian_logsobolev`): Gross's inequality for the standard Gaussian measure on $\mathbb R^\iota$, $\iota$ finite, for $C^1$ functions; marked proved there.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has Gaussian measures (`ProbabilityTheory.gaussianReal`, `ProbabilityTheory.multivariateGaussian`, `ProbabilityTheory.IsGaussian`), the Kullback–Leibler divergence (`InformationTheory.klDiv`), `Real.negMulLog` and Jensen's inequality (`ConvexOn.map_integral_le`). It has no log-Sobolev or Poincaré inequalities, no Bakry–Émery or Holley–Stroock theory, no Brascamp–Lieb inequality and no Polchinski or renormalisation-group flow.
