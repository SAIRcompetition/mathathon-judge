# 104 · Hairer blackbox theorem

## From the proposer

- **Area:** Stochastic PDEs, probability, analysis
- **Tracks:** Analysis

### Description

Formalize Hairer's blackbox theorem for singular stochastic PDEs in Lean. The motivation is that people can invoke the result without working through its difficult proof themselves. Formalizing it would make the reasoning explicit and machine-checked, giving the results that rely on it a stronger foundation.

### Desired outcome

A Lean proof that checks the details inside the black box and makes the assumptions clear. Useful intermediate lemmas would also be good progress.

### References

Martin Hairer, A theory of regularity structures.
https://www.hairer.org/papers/Structure.pdf

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved: the general "black box" local well-posedness theorem is Theorem 2.21 of Y. Bruned, A. Chandra, I. Chevyrev and M. Hairer (JEMS 2021), built on Hairer's theory (Invent. Math. 2014), Bruned–Hairer–Zambotti (Invent. Math. 2019) and Chandra–Hairer (arXiv 2016).
- **Task:** Formalize Hairer's black-box theorem for singular SPDEs in Lean, making its assumptions explicit; useful intermediate lemmas count as progress.
- **Key reference:** [Y. Bruned, A. Chandra, I. Chevyrev, M. Hairer, “Renormalising SPDEs in regularity structures”, J. Eur. Math. Soc. 23 (2021), 869–947](https://doi.org/10.4171/jems/1025)
- **Lean:** No official statement.

### Notes

- The proposer cites only Hairer (2014), which builds the theory and proves convergence for specific equations (e.g. Theorems 1.11 and 1.15). The general statement, and the phrase "black box", come from Bruned–Chandra–Chevyrev–Hairer; its Theorem 2.21 is Theorem 2.22 in arXiv v4.
- The analytic input, convergence of BPHZ-renormalised models, is Chandra–Hairer, arXiv:1612.08138, for which arXiv lists no journal reference; for noise with a spectral gap (as in the Gaussian case) Hairer–Steele (ARMA 2024) give a published alternative proof.
- arXiv v4 of Bruned–Chandra–Chevyrev–Hairer corrects an error in the published version about the topology on spaces of functions with blow-up (Remark 2.20); a formalization should follow v4.

### The result

Bruned–Chandra–Chevyrev–Hairer consider systems on $\mathbb R_+\times\mathbb T^d$
$$\partial_t\varphi_{\mathfrak t}=\mathscr L_{\mathfrak t}\varphi_{\mathfrak t}+F^0_{\mathfrak t}(\varphi)+\sum_{\mathfrak l}F^{\mathfrak l}_{\mathfrak t}(\varphi)\,\xi_{\mathfrak l},$$
with differential operators $\mathscr L_{\mathfrak t}$, nonlinearities depending on $\varphi$ and finitely many derivatives, and jointly Gaussian, stationary, centred noises $\xi_{\mathfrak l}$ with covariance bounds. For a mollifier $\rho$ and $\xi^{(\rho,\varepsilon)}=\xi*\rho_\varepsilon$, the renormalised equation is
$$\partial_t\varphi_{\mathfrak t,\varepsilon}=\mathscr L_{\mathfrak t}\varphi_{\mathfrak t,\varepsilon}+F^0_{\mathfrak t}(\varphi_\varepsilon)+\sum_{\mathfrak l}F^{\mathfrak l}_{\mathfrak t}(\varphi_\varepsilon)\,\xi^{(\rho,\varepsilon)}_{\mathfrak l}+\sum_{\tau}c^{\rho,\varepsilon}_\tau\,\frac{\Upsilon^F_{\mathfrak t}[\tau](\varphi_\varepsilon)}{S(\tau)},$$
summed over trees $\tau$ of negative degree, with explicit local functions $\Upsilon^F[\tau]$ and symmetry factors $S(\tau)$.

Theorem 2.22 (arXiv v4), informally: if the system is locally subcritical and satisfies Assumptions 2.6, 2.8, 2.13, 2.15 and 2.16 (which exclude, among other things, stochastic objects with divergent variance), there are constants $c^{\rho,\varepsilon}_\tau$, for instance the BPHZ choice, such that the classical solutions converge in probability as $\varepsilon\to0$, up to a random blow-up time, to a limit independent of $\rho$. The solution is split into an explicit distribution-valued part and a function-valued remainder, which gives a notion of maximal solution.

Example (Hairer 2014, Theorem 1.15): on $\mathbb T^3$ with space-time white noise $\xi$, the solutions of $\partial_tu_\varepsilon=\Delta u_\varepsilon+C_\varepsilon u_\varepsilon-u_\varepsilon^3+\xi_\varepsilon$ with initial data in $\mathcal C^\alpha$, $\alpha\in(-\frac23,-\frac12)$, converge for suitable $C_\varepsilon=\frac{C_1}\varepsilon+C_2\log\varepsilon+C_3$, up to a possible blow-up time, to a limit independent of the mollifier.

### How the known proof works

- Regularity structures (Hairer 2014): a graded space of abstract symbols with a structure group, models $(\Pi_x,\Gamma_{xy})$ that realise symbols as distributions near each point, and spaces $\mathcal D^\gamma$ of modelled distributions, i.e. local expansions of order $\gamma$.
- Reconstruction (Theorem 3.10): for $\gamma>0$ there is a unique continuous map $\mathcal R\colon\mathcal D^\gamma\to\mathcal C^\alpha$ with $\mathcal Rf$ close to $\Pi_xf(x)$ to order $\gamma$ near $x$. With multiplication (Theorem 4.7), composition with smooth functions and the multilevel Schauder estimate (Theorem 5.12), the equation becomes a fixed-point problem in $\mathcal D^\gamma$, solved locally, with a solution map continuous in the model.
- Algebra (Bruned–Hairer–Zambotti): for any subcritical system, the regularity structure is built from decorated trees and a renormalisation group acts on models; the BPHZ choice of renormalisation is canonical given a cutoff of the kernel.
- Analysis (Chandra–Hairer; Hairer–Steele for noise with a spectral gap): the BPHZ-renormalised models of the mollified noise converge as $\varepsilon\to0$.
- Identification (Bruned–Chandra–Chevyrev–Hairer, Theorems 3.25 and 5.7): reconstructing the abstract solution built on the renormalised model gives the classical solution of the equation with counterterms $\sum_\tau c_\tau\Upsilon^F[\tau]/S(\tau)$; a Da Prato–Debussche-type splitting handles initial data and maximal solutions.

### Background

- Other solution theories for parts of this class: paracontrolled distributions (Gubinelli–Imkeller–Perkowski), Kupiainen's renormalisation group, Otto–Weber; where several apply they give the same solutions.
- Short proofs of the analytic core: Caravenna–Zambotti state and prove the reconstruction theorem for germs of distributions without regularity structures; Hoshino (preprint 2023) proves reconstruction and the multilevel Schauder estimate with semigroup methods.
- The black box gives only local (maximal) solutions; global existence, invariant measures and the like are proved equation by equation.

### Where to start

- [Hairer's reconstruction theorem without regularity structures](https://doi.org/10.4171/emss/39), F. Caravenna, L. Zambotti, 2020: the reconstruction theorem as a self-contained statement about germs of distributions, a natural first target.
- [A Course on Rough Paths](https://www.hairer.org/notes/RoughPaths.pdf), P. Friz, M. Hairer, 2nd ed., 2020: Chapters 13–15 introduce regularity structures and treat KPZ.
- [RegularityStructures](https://github.com/scottnarmstrong/RegularityStructures), S. Armstrong, 2026: an existing Lean library for the dynamical $\Phi^4_3$ model to build on.
- [Renormalising SPDEs in regularity structures](https://arxiv.org/abs/1711.10239), Bruned, Chandra, Chevyrev, Hairer, v4: Section 2 states the theorem and its assumptions without the machinery.

Prerequisites: Hölder–Besov spaces and wavelets or heat-kernel estimates, Gaussian chaos and Wick products, Hopf algebras of decorated trees, parabolic PDE.

### References, with links

- Martin Hairer, A theory of regularity structures. Invent. Math. 198 (2014), 269–504. <https://www.hairer.org/papers/Structure.pdf> <https://doi.org/10.1007/s00222-014-0505-4>

### Further references

- Y. Bruned, A. Chandra, I. Chevyrev, M. Hairer, “Renormalising SPDEs in regularity structures”, J. Eur. Math. Soc. 23 (2021), 869–947; corrected arXiv v4. <https://doi.org/10.4171/jems/1025> <https://arxiv.org/abs/1711.10239>
- Y. Bruned, M. Hairer, L. Zambotti, “Algebraic renormalisation of regularity structures”, Invent. Math. 215 (2019), 1039–1156. <https://doi.org/10.1007/s00222-018-0841-x>
- A. Chandra, M. Hairer, “An analytic BPHZ theorem for regularity structures” (preprint, 2016). <https://arxiv.org/abs/1612.08138>
- M. Hairer, R. Steele, “The BPHZ theorem for regularity structures via the spectral gap inequality”, Arch. Ration. Mech. Anal. 248 (2024), article 9. <https://doi.org/10.1007/s00205-023-01946-w>
- F. Caravenna, L. Zambotti, “Hairer's reconstruction theorem without regularity structures”, EMS Surv. Math. Sci. 7 (2020), 207–251. <https://doi.org/10.4171/emss/39>
- M. Hoshino, “A semigroup approach to the reconstruction theorem and the multilevel Schauder estimate” (preprint, 2023). <https://arxiv.org/abs/2310.07396>
- M. Hairer, “Introduction to regularity structures”, Braz. J. Probab. Stat. 29 (2015), 175–210. <https://doi.org/10.1214/14-BJPS241>
- P. K. Friz, M. Hairer, *A Course on Rough Paths, with an Introduction to Regularity Structures*, 2nd ed., Springer (2020). <https://www.hairer.org/notes/RoughPaths.pdf>

### Lean

#### Official statement

This problem has no official Lean statement: the black-box theorem (Bruned–Chandra–Chevyrev–Hairer, Theorem 2.21) is about general locally subcritical systems, with counterterms indexed by decorated trees and several technical assumptions, and stating it needs regularity structures, the algebra of decorated trees, Gaussian noises and negative-regularity Hölder–Besov spaces, which Mathlib lacks and which cannot be defined faithfully in a short file; the existing Lean formalization covers only the $\Phi^4_3$ equation, a single instance.

#### Related Lean formalizations

- [Regularity structures and dynamical Phi^4_3](https://palomar-registry.org/entry?id=PALOMAR-2026-10-27-000014&version=1), Palomar registry (Lean-checked, trust level high), from [scottnarmstrong/RegularityStructures](https://github.com/scottnarmstrong/RegularityStructures): convergence of the renormalised dynamical $\Phi^4_3$ model after Hairer's Theorem 1.15, for smooth initial data, with a standalone library containing the reconstruction theorem, the multilevel Schauder estimate, maximal solutions and Malliavin calculus for white noise. Its README says the proofs were written by AI coding agents under Armstrong's supervision, and that general decorated-tree regularity structures, Hairer's wavelet analysis and the general BPHZ theorem are not formalized.

#### Mathlib

Mathlib has Schwartz functions and tempered distributions (`SchwartzMap`, `TemperedDistribution`), distributions on open sets (`Distribution`), Sobolev spaces of tempered distributions (`TemperedDistribution.MemSobolev`), Hölder functions (`HolderWith`, `MemHolder`), Gaussian measures (`ProbabilityTheory.IsGaussian`), Fernique's theorem and real Brownian motion (`ProbabilityTheory.IsBrownianReal`). It has no white noise, no Besov or negative-regularity Hölder spaces, no heat-kernel or Schauder estimates and no regularity structures.
