# 28 · Singularity Expansion of Scattered Waves

## From the proposer

- **Area:** PDE theory
- **Tracks:** Analysis

### Description

Find a more understandable / elementary proof the expansion of the time domain field scattered from an obstacle. 

### Desired outcome

A more understandable / elementary proof. Something easy enough to practitioners to know how this applies. 

### References

The mathematical theory of scattering resonances by Zworski and Dyatlov. Chapter 7

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved for non-trapping obstacles in odd dimensions (Dyatlov–Zworski Theorem 4.44, by Vainberg's method); a weaker expansion under strong trapping is due to Burq and Zworski (2001).
- **Task:** A more elementary proof that practitioners can follow and apply.
- **Key reference:** [S. Dyatlov and M. Zworski, *Mathematical Theory of Scattering Resonances*, AMS Grad. Stud. Math. 200 (2019)](https://math.mit.edu/~dyatlov/res/res_final.pdf)
- **Lean:** No official statement.

### Notes

- Chapter 7 of the book ("Resonances and trapping") proves expansions under strong trapping in §7.5 for $-\Delta_g$ and states that they extend to black-box problems, obstacles included. The non-trapping obstacle expansion is Theorem 4.44 in Chapter 4.
- "Singularity expansion" is the engineering name (singularity expansion method, C. E. Baum) for what the book calls resonance expansions of scattered waves.

### The result

Let $P$ be a non-trapping black-box Hamiltonian on $\mathbb R^n$, $n$ odd, e.g. the Dirichlet Laplacian outside a non-trapping obstacle. If $(\partial_t^2+P)w=0$ with compactly supported data, then for every $A>0$, locally in space,
$$w(t)=\sum_{\operatorname{Im}\lambda_j>-A}\ \sum_{\ell=0}^{m_R(\lambda_j)-1}t^\ell e^{-i\lambda_j t}f_{j,\ell}+E_A(t),\qquad \|E_A(t)\|\le C e^{-At}\ (t\ge T).$$
The sum is finite, the $\lambda_j$ are the resonances (poles of the continued resolvent $R(\lambda)=(P-\lambda^2)^{-1}$), and the $f_{j,\ell}$ are residues of $R(\lambda)$ applied to the data (Dyatlov–Zworski, Theorem 4.44). Under strong trapping (Theorem 7.20) the sum is truncated at $|\operatorname{Re}\lambda|<c(t)\sim t^{\varepsilon}$ and the remainder is only $O(t^{-\varepsilon(L-K_0)})$ for data in $H^L$.

### How the known proof works

- Write $w(t)$ with the spectral theorem and Stone's formula as $\frac1{2\pi}\int_{\mathbb R}e^{-i\lambda t}(R(\lambda)-R(-\lambda))\,d\lambda$ applied to the data (proof of Theorem 2.9).
- Continue the cut-off resolvent $\chi R(\lambda)\chi$ meromorphically to $\mathbb C$ (§4.2).
- The deep step (Theorem 4.43): $\|\chi R(\lambda)\chi\|\le C|\lambda|^{-1}e^{T(\operatorname{Im}\lambda)_-}$ for $\operatorname{Im}\lambda>-M\log|\lambda|$, deduced by Vainberg's method from non-trapping, which for obstacles rests on propagation of singularities for boundary problems.
- Deform the contour to $\operatorname{Im}\lambda=-A-\delta\log\langle\lambda\rangle$, collect the residues crossed, and bound the remainder by the resolvent estimate.
- Under trapping (Theorem 7.20) the resolvent is only $O(e^{A|\zeta|^n\log|\zeta|})$ off resonances, so the contours are placed using resonance-counting bounds.

### Background

- Decay of waves outside obstacles goes back to Lax–Phillips (1968), Morawetz and Ralston; Vainberg (1973) gave the direct route from propagation of singularities to resonance-free regions used in the book.
- Simpler cases are proved in the book: one-dimensional potentials (Theorem 2.9) and compactly supported potentials in odd dimensions (Theorem 3.11), where the resolvent bound comes from a Neumann series.
- The resonance-free region depends on the geometry: logarithmic regions for smooth non-trapping obstacles, a strip for several convex obstacles, an exponentially thin region (Burq) in general (Zworski's survey, §2.4).
- Trapping expansions: Tang–Zworski (Comm. Pure Appl. Math. 2000) and Burq–Zworski (Comm. Math. Phys. 2001), the source of §7.5.

### Where to start

- [Mathematical Study of Scattering Resonances](https://arxiv.org/abs/1609.03550), M. Zworski, 2016: §2.5 proves the expansion for a potential in $\mathbb R^3$ in a few pages; §2.4 lists obstacle results.
- [Mathematical Theory of Scattering Resonances](https://math.mit.edu/~dyatlov/res/res_final.pdf), S. Dyatlov, M. Zworski, 2019: §2.3 (Theorem 2.9) is the template, then §4.6 and §7.5.

Prerequisites: spectral theorem and Stone's formula, Fourier–Laplace transform, residues, Sobolev spaces; for obstacles, propagation of singularities.

### References, with links

- S. Dyatlov and M. Zworski, *Mathematical Theory of Scattering Resonances*, Chapter 7. <https://doi.org/10.1090/gsm/200>

### Further references

- M. Zworski, "Mathematical study of scattering resonances," Bull. Math. Sci. 7(1) (2017), 1–85. <https://arxiv.org/abs/1609.03550>
- S.-H. Tang and M. Zworski, "Resonance expansions of scattered waves," Comm. Pure Appl. Math. 53(10) (2000), 1305–1334. <https://doi.org/10.1002/1097-0312(200010)53:10%3C1305::AID-CPA4%3E3.0.CO;2-%23>
- N. Burq and M. Zworski, "Resonance expansions in semi-classical propagation," Comm. Math. Phys. 223(1) (2001), 1–12. <https://doi.org/10.1007/s002200100473>
- C. E. Baum, "The singularity expansion method: background and developments," Electromagnetics 1(4) (1981), 351–360. <https://doi.org/10.1080/02726348108915140>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs time-domain scattering theory for the wave equation, which Mathlib does not have yet.

#### Mathlib

Mathlib has meromorphic functions and their orders (`MeromorphicAt`, `meromorphicOrderAt`), contour integrals (`circleIntegral`), the Fourier transform (`VectorFourier.fourierIntegral`, notation `𝓕`), Sobolev spaces (`TemperedDistribution.MemSobolev`), unbounded self-adjoint operators (`LinearPMap`, `IsSelfAdjoint`), the spectral theorem for compact self-adjoint operators and the continuous functional calculus `cfc` for bounded ones. It lacks the functional calculus for unbounded operators, the wave equation, resolvent continuation and propagation of singularities.
