# 132 · An Interactive Computational Laboratory for Spatial Stochastic Processes and Scaling Limits

## From the proposer

- **Area:** Probability, statistical mechanics, and scientific computing
- **Tracks:** Computation/Applied Math, Analysis

### Description

Modern research in probability studies discrete stochastic systems—such as critical percolation, KPZ random growth models, and determinantal point processes—and their universal continuum scaling limits. However, exploring these systems computationally typically requires writing bespoke simulation code for each model and observable. How can we design a unified, mathematically rigorous web platform where researchers can configure discrete spatial processes, vary parameters and scaling regimes, and interactively inspect both individual trajectories and empirical Monte Carlo distributions of key observables (such as crossing probabilities, height fluctuations, and pair correlation functions)?

### Desired outcome

We would like participants to build a modular, browser-based simulation and statistical analysis platform tailored for probability researchers. The platform should support three core model families—percolation (e.g., site/bond percolation on planar lattices), random growth (e.g., TASEP, corner growth, Eden/last-passage percolation), and spatial point processes (e.g., Poisson, Ginibre, and sine-kernel determinantal processes)—with a unified workflow:

1. Model & Parameter Configuration: Users select a process, lattice/domain geometry, boundary conditions, model parameters (e.g., occupation probability p, jump rates, kernel parameters), and observation scale n (including mesoscopic and macroscopic rescalings such as KPZ n^(1/3) fluctuation scaling).

2. Dual Execution Modes:
   - Single-Realization Mode: Real-time visualization of spatial configurations, cluster geometry, interfaces, or space-time trajectories.
   - Ensemble (Monte Carlo) Mode: Batch execution of N independent realizations using efficient exact algorithms (e.g., Newman–Ziff union-find for percolation, spectral projection for DPPs).

3. Observable & Statistical Inspection: Users select functional observables—such as box-crossing probabilities, largest-cluster volume, interface height profiles, radial pair correlation functions g(r), or nearest-neighbor spacing—and inspect empirical histograms, sample moments, finite-size scaling curves, and overlays against known asymptotic distributions (e.g., Tracy–Widom, Gaussian, or Cardy's formula).

### References

1. Geoffrey Grimmett, "Percolation," 2nd ed., Grundlehren der mathematischen Wissenschaften 321, Springer (1999), Chapters 1–2 and 11; alongside M. E. J. Newman and R. M. Ziff, "Fast Monte Carlo algorithm for site or bond percolation," Physical Review E 64 (2001), 016706 (Sections II–III specify the O(N) union-find algorithm for computing crossing probabilities and cluster-size observables across all p simultaneously).

2. Ivan Corwin, "The Kardar–Parisi–Zhang Equation and Universality Class," Random Matrices: Theory and Applications 1 (2012), 1130001 (arXiv:1106.1596). Section 1.1 and Section 2 define corner growth, TASEP, and PNG droplet dynamics, the 1:2:3 KPZ scaling exponents, and limit fluctuation statistics.

3. J. Ben Hough, Manjunath Krishnapur, Yuval Peres, and Bálint Virág, "Determinantal Processes and Independence," Probability Surveys 3 (2006), 206–229 (arXiv:math/0503110). Sections 1–4 establish the spectral projection algorithm for exact sampling of determinantal point processes and define intensity and k-point correlation observables.

## AI-generated notes

<!-- status: Not a single theorem -->

- **Status:** Not a single theorem: a software-design task; the reference curves the platform should overlay come from proved limit theorems (Kesten 1980 and Smirnov 2001 for percolation, Baik–Deift–Johansson 1999 and Johansson 2000 for KPZ growth, Ginibre 1965 and Hough–Krishnapur–Peres–Virág 2006 for determinantal processes).
- **Task:** A browser-based platform to simulate percolation, random growth and spatial point processes, with single-sample views and Monte Carlo statistics compared against known limit laws.
- **Key reference:** [M. E. J. Newman and R. M. Ziff, "Fast Monte Carlo algorithm for site or bond percolation", Phys. Rev. E 64 (2001), 016706](https://doi.org/10.1103/PhysRevE.64.016706) (arXiv:cond-mat/0101295)
- **Lean:** No official statement.

### Notes

- Several suggested overlays are theorems only for specific lattices or weights. Cardy's formula is proved for site percolation on the triangular lattice (Smirnov), not for bond or site percolation on $\mathbb Z^2$. Tracy–Widom limits are proved for exactly solvable models (last-passage percolation with exponential or geometric weights, TASEP, PNG, longest increasing subsequences); for the Eden model and for general weights they are, as far as we know, conjectural. The platform should label overlays accordingly.
- Finite-size corrections are large for KPZ statistics (fluctuations live on the scale $N^{1/3}$), so comparisons with $F_2$ need moderately large systems or explicit corrections.

### The result

Reference statements the platform can overlay:
- **Percolation.** $p_c=\tfrac12$ for bond percolation on $\mathbb Z^2$ (Kesten 1980) and for site percolation on the triangular lattice. For the latter at $p=\tfrac12$, crossing probabilities of conformal rectangles converge to Cardy's formula (Smirnov 2001). In Carleson's form: in an equilateral triangle $ABC$, the probability of an open crossing from $CA$ to the segment $BX\subset BC$ tends to $|BX|/|BC|$.
- **KPZ growth.** For last-passage percolation with i.i.d. exponential(1) weights, equivalently corner growth or TASEP from step initial data,

    $$\frac{G(N,N)-4N}{2^{4/3}N^{1/3}}\Rightarrow F_2$$

  (Johansson 2000), where $F_2$ is the GUE Tracy–Widom law (Tracy–Widom 1994). For a uniform random permutation of size $N$ (Poissonized: the PNG droplet), the longest increasing subsequence satisfies $(\ell_N-2\sqrt N)/N^{1/6}\Rightarrow F_2$ (Baik–Deift–Johansson 1999; Prähofer–Spohn 2000 for PNG). The exponents $1/3$ (fluctuations) and $2/3$ (transversal correlations) are the KPZ "1:2:3" scaling.
- **Point processes.** The Poisson process has pair correlation $g\equiv1$. The eigenvalues of an $N\times N$ matrix with i.i.d. standard complex Gaussian entries form a determinantal process with kernel $K_N(z,w)=\frac1\pi e^{-(|z|^2+|w|^2)/2}\sum_{k\lt N}\frac{(z\bar w)^k}{k!}$ (Ginibre 1965); its $N\to\infty$ limit has intensity $1/\pi$ and $g(r)=1-e^{-r^2}$. The sine process (GUE bulk at unit density) has kernel $\frac{\sin\pi(x-y)}{\pi(x-y)}$ and $g(r)=1-\big(\frac{\sin\pi r}{\pi r}\big)^2$. A determinantal process with a $\text{rank-}n$ projection kernel has exactly $n$ points and can be sampled exactly by the HKPV sequential algorithm.

### Background

- Exact or efficient algorithms exist for each family: Newman–Ziff add sites or bonds one at a time with union–find and obtain any observable for all $p$ at once by binomial convolution, in time linear in system size; last-passage times follow from $G(i,j)=w_{ij}+\max\lbrace G(i-1,j),G(i,j-1)\rbrace$; Ginibre samples are eigenvalues of random matrices; projection DPPs use the HKPV algorithm, which the Python library DPPy implements.
- Overlaying $F_2$ requires evaluating a Fredholm determinant of the Airy kernel; Bornemann's quadrature method computes such distribution functions to high accuracy.
- Grimmett's book is the standard reference for the rigorous theory of percolation (the sheet cites chapters 1–2 and 11); Corwin's survey defines corner growth, TASEP and PNG and lists their exact limit laws.

### Where to start

- [A fast Monte Carlo algorithm for site or bond percolation](https://arxiv.org/abs/cond-mat/0101295), M. E. J. Newman and R. M. Ziff, 2001: the union–find algorithm that gives crossing probabilities and cluster statistics for all $p$ in one sweep.
- [Determinantal processes and independence](https://arxiv.org/abs/math/0503110), J. B. Hough, M. Krishnapur, Y. Peres, B. Virág, 2005: definitions, examples (Ginibre, sine) and the exact sampling algorithm; [DPPy](https://arxiv.org/abs/1809.07258) (Gautier, Polito, Bardenet, Valko) is a reference implementation.
- [The Kardar–Parisi–Zhang equation and universality class](https://arxiv.org/abs/1106.1596), I. Corwin, 2011: §1.1 and §2 for the growth models, scaling exponents and limit laws.
- [On the numerical evaluation of Fredholm determinants](https://arxiv.org/abs/0804.2543), F. Bornemann, 2008: how to compute Tracy–Widom and related distributions for overlays.

Prerequisites: Monte Carlo methods and union–find, basic random matrix theory (GUE, Ginibre, Tracy–Widom), spatial statistics (pair correlation estimators), browser computing (Web Workers or WebAssembly, WebGL).

### References, with links

- G. Grimmett, *Percolation*, 2nd ed., Grundlehren der mathematischen Wissenschaften 321, Springer, 1999. <https://doi.org/10.1007/978-3-662-03981-6>
- M. E. J. Newman and R. M. Ziff, "Fast Monte Carlo algorithm for site or bond percolation", Phys. Rev. E 64 (2001), 016706. <https://doi.org/10.1103/PhysRevE.64.016706> <https://arxiv.org/abs/cond-mat/0101295>
- I. Corwin, "The Kardar–Parisi–Zhang equation and universality class", Random Matrices Theory Appl. 1 (2012), 1130001; arXiv:1106.1596. <https://doi.org/10.1142/S2010326311300014> <https://arxiv.org/abs/1106.1596>
- J. B. Hough, M. Krishnapur, Y. Peres, B. Virág, "Determinantal processes and independence", Probab. Surveys 3 (2006), 206–229; arXiv:math/0503110. <https://doi.org/10.1214/154957806000000078> <https://arxiv.org/abs/math/0503110>

### Further references

- H. Kesten, "The critical probability of bond percolation on the square lattice equals 1/2", Comm. Math. Phys. 74 (1980), 41–59. <https://doi.org/10.1007/BF01197577>
- S. Smirnov, "Critical percolation in the plane: conformal invariance, Cardy's formula, scaling limits", C. R. Acad. Sci. Paris Sér. I Math. 333 (2001), 239–244. <https://doi.org/10.1016/S0764-4442(01)01991-7>
- J. Baik, P. Deift, K. Johansson, "On the distribution of the length of the longest increasing subsequence of random permutations", J. Amer. Math. Soc. 12 (1999), 1119–1178. <https://doi.org/10.1090/S0894-0347-99-00307-0>
- K. Johansson, "Shape fluctuations and random matrices", Comm. Math. Phys. 209 (2000), 437–476. <https://doi.org/10.1007/s002200050027>
- M. Prähofer and H. Spohn, "Universal distributions for growth processes in 1+1 dimensions and random matrices", Phys. Rev. Lett. 84 (2000), 4882–4885. <https://doi.org/10.1103/PhysRevLett.84.4882>
- C. A. Tracy and H. Widom, "Level-spacing distributions and the Airy kernel", Comm. Math. Phys. 159 (1994), 151–174. <https://doi.org/10.1007/BF02100489>
- J. Ginibre, "Statistical ensembles of complex, quaternion, and real matrices", J. Math. Phys. 6 (1965), 440–449. <https://doi.org/10.1063/1.1704292>
- F. Bornemann, "On the numerical evaluation of Fredholm determinants", Math. Comp. 79 (2010), 871–915. <https://doi.org/10.1090/S0025-5718-09-02280-7>
- G. Gautier, G. Polito, R. Bardenet, M. Valko, "DPPy: Sampling DPPs with Python", J. Mach. Learn. Res. 20 (2019). <https://arxiv.org/abs/1809.07258>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for software (a simulation and statistics platform), not for the proof of a theorem, and the limit laws it would display (Cardy's formula, Tracy–Widom laws, determinantal point processes) rest on lattice percolation, Fredholm determinants and point processes, which Mathlib does not have.

#### Mathlib

Mathlib has product Bernoulli measures on subsets (`ProbabilityTheory.setBernoulli`, i.e. site percolation configurations on any index set), the binomial random graph `SimpleGraph.binomialRandom` (bond percolation on a complete graph), the FKG inequality `fkg`, the Poisson distribution `ProbabilityTheory.poissonMeasure`, Gaussian laws `ProbabilityTheory.gaussianReal`, eigenvalues of Hermitian matrices `Matrix.IsHermitian.eigenvalues`, and the central limit theorem `ProbabilityTheory.tendstoInDistribution_inv_sqrt_mul_sum`. It has no lattice percolation or crossing events, Poisson or determinantal point processes, Fredholm determinants, Airy kernel or Tracy–Widom laws, exclusion processes or last-passage percolation.
