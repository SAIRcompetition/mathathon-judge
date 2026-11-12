# 128 · Why Do Random Sorting Networks Draw Sine Curves?

## From the proposer

- **Area:** Probability, algebraic combinatorics
- **Tracks:** Computation/Applied Mathematics

### Description

Start with the numbers 1 through n in order, and choose uniformly at random among all shortest sequences of adjacent swaps that reverse their order. Track one randomly chosen number, scaling positions to [-1, 1] and time to [0, 1]. Dauvergne proved that its trajectory converges to a random sine curve by analyzing how particles cross candidate trajectories. Can we find a more direct proof by tracking a simpler quantity: how far apart the labels in each early swap were at the start?

### Desired outcome

We would like participants to develop a direct proof (or partial milestones toward one) of the short-time displacement bound that implies the sine-curve limit.

The starting point is a finite identity: whenever two labels swap, the sum of squared displacements of all labels from their starting positions increases by twice the gap between the swapped labels. Thus, it suffices to bound the expected sum of label gaps in the first m swaps, for n << m << n^2.

Participants can aim to create:
1. A combinatorial characterization (via the Edelman–Greene correspondence on staircase Young tableaux) of when two specified labels cross within the first m swaps, tested against exact counts for small m and n.
2. Bounds on expected label gaps showing which particles interact early.
3. The sharp bound of (pi^2 / 3) * (m^2 / n) on the expected sum of the first m label gaps, yielding an alternative proof of the sine-curve limit.

### References

1. Duncan Dauvergne, "The Archimedean Limit of Random Sorting Networks," Journal of the American Mathematical Society 35 (2022), 1215–1267 (arXiv:1802.08934). Sections 1.1 and 1.2 state the trajectory theorem, and Section 1.6 outlines the proof.

2. Mustazee Rahman, Bálint Virág, and Máté Vizer, "Geometry of Permutation Limits," Combinatorica 39 (2019), 933–960 (arXiv:1609.03891). Theorem 2 and Corollary 2.1 reduce the trajectory limit to a sharp short-time bound on mean-square displacement.

3. Omer Angel, Alexander Holroyd, Dan Romik, and Bálint Virág, "Random Sorting Networks," Advances in Mathematics 215 (2007), 839–868 (arXiv:math/0609538). Theorem 1 establishes time stationarity, and Section 4 describes the bijection with staircase standard Young tableaux.

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved by D. Dauvergne (arXiv 2018; J. Amer. Math. Soc. 2022), confirming conjectures of Angel, Holroyd, Romik and Virág (2007); his proof goes through particle flux, not through the short-time displacement bound that Rahman, Virág and Vizer (2019) showed is sufficient.
- **Task:** A direct proof, or milestones towards one, of the sharp short-time bound on the expected sum of label gaps, which would give a new proof of the sine-curve limit.
- **Key reference:** [D. Dauvergne, "The Archimedean limit of random sorting networks", J. Amer. Math. Soc. 35 (2022), 1215–1267](https://doi.org/10.1090/jams/993) (arXiv:1802.08934)
- **Lean:** Official statement.

### Notes

- The target constant may be off by a factor 2 (our reading, worth checking with the proposer). By the sheet's own identity, $\sum_i(\sigma_m(i)-i)^2=2\sum_{k\le m}g_k$, where $g_k$ is the label gap of the $k$-th swap. In these units RVV's condition (1.8) reads $\mathbb E\sum_i(\sigma_m(i)-i)^2\le(\pi^2/3+o(1))\,m^2/n$, so the expected gap sum must be at most $(\pi^2/6+o(1))\,m^2/n$; the sheet's $(\pi^2/3)\,m^2/n$ is the bound for squared displacements. A small exact-sampling simulation we ran ($n=150$, $m\approx N/10$, 20 networks) gave a mean gap sum about $1.05\cdot(\pi^2/6)m^2/n$, i.e. about half of $(\pi^2/3)m^2/n$.
- Only an upper bound is needed: RVV's Corollary 2.1 also assumes tightness and approximate stationarity, which hold for uniform sorting networks (AHRV, Theorems 1 and 3).

### The result

An $n$-element sorting network is a sequence of $N=\binom n2$ adjacent swaps taking $12\cdots n$ to $n\cdots21$; each swap exchanges the labels $a<b$ in two adjacent positions, with $a$ on the left, and its label gap is $g=b-a$. Let $\sigma(x,t)$ be the position of label $x$ after $\lfloor t\rfloor$ swaps and $\sigma_G(x,t)=2\sigma(x,Nt)/n-1$.

**Theorem (Dauvergne, Theorem 1).** For a uniform random sorting network $\sigma^n$ there are random $(A^n_i,\Theta^n_i)\in[0,1]\times[0,2\pi]$ such that for every $\varepsilon>0$
$$\mathbb P\Big(\max_{i}\max_{t\in[0,1]}\big|\sigma^n_G(i,t)-A^n_i\sin(\pi t+\Theta^n_i)\big|>\varepsilon\Big)\to0 .$$
The trajectory of a uniformly chosen label converges in law to $A(t)=X\cos\pi t+Z\sin\pi t$, where $(X,Z)$ has the Archimedean density $\frac{1}{2\pi\sqrt{1-x^2-z^2}}$ on the unit disc (Theorem 5); the permutation matrices converge to the corresponding Archimedean measures (Theorem 2).

**Energy criterion (RVV).** Among permuton processes with $X(1)=-X(0)$, $A$ uniquely minimizes $\mathcal E[X]=\sup_\Pi\sum_i\mathbb E|X(t_i)-X(t_{i-1})|^2/(t_i-t_{i-1})$, and $\mathcal E[A]=\pi^2/3$ (Theorem 2). Hence tight, approximately stationary random trajectories $X^n$ with
$$\limsup_{t\to0}\ \limsup_{n\to\infty}\ \mathbb E\big[(X^n(t)-X^n(0))^2\big]/t^2\le\pi^2/3$$
converge to $A$ (Corollary 2.1). With $m=\lfloor tN\rfloor$ this is the bound $\mathbb E\sum_{k\le m}g_k\le(\pi^2/6+o(1))\,m^2/n$ for $n\ll m\ll n^2$.

An elementary exact formula for testing: if $r(w)$ is the number of reduced words of a permutation $w$ and $w_0$ is the reversal, then $\mathbb P(\sigma_m=\pi)=r(\pi)\,r(\pi^{-1}w_0)/r(w_0)$ for $\ell(\pi)=m$, and $\sum_{k\le m}g_k=\sum(b-a)$ over the inversions $a<b$ of $\sigma_m$.

### How the known proof works

- Time stationarity (AHRV, Theorem 1): the swap sequence $(s_1,\dots,s_N)$ is stationary; Dauvergne uses it in the form $(K_1,\dots,K_N)\overset d=(n-K_N,K_1,\dots,K_{N-1})$. Subsequential limits of trajectories exist and are Lipschitz (Dauvergne–Virág).
- Particle flux (Section 3): every pair of labels swaps exactly once, while every particle must cross any curve $h$ with $h(0)=-h(1)$; so a limit trajectory minimizes a flux functional built from the a priori unknown local speed distribution $\mu$.
- Minimal flux paths (Sections 4–6): for each height there is a unique minimizer, unimodal and concave; their initial slopes are distributed as $\mu$ (particles move in straight lines on time scales $n\ll t\ll n^2$); the semicircle law for swap locations gives the maximum-height distribution; this yields an integral transform involving $\mu$.
- Injectivity of the transform identifies $\mu$ as the arcsine law on $[-\pi,\pi]$ (Theorem 7) and the minimizers as sine curves (Section 7). Since every pair swaps once, the many particles on sine curves force all particles onto sine curves (Section 8).

### Background

- Stanley (1984) showed there are $\binom n2!/\prod_{j=1}^{n-1}(2j-1)^{n-j}$ sorting networks, the number of staircase standard Young tableaux; Edelman and Greene (1987) gave a bijection. With the Greene–Nijenhuis–Wilf hook walk this gives exact uniform sampling.
- AHRV (2007) proved stationarity, a semicircle law for swap locations, Hölder-$\frac12$ bounds and octagon bounds, and conjectured the sine curves. Dauvergne and Virág (2020) proved that limits of the permutation matrices are supported in the conjectured ellipses. The local limit was found by Angel–Dauvergne–Holroyd–Virág (2019) and by Gorin–Rahman (2019).
- RVV's criterion combined with Kotowski's large deviation results proves the Archimedean limit for "relaxed" sorting networks.
- The sheet's milestones fit the formula above: which labels have crossed by time $m$ is the inversion set of $\sigma_m$, and Edelman–Greene insertion relates $r(w)$ to standard Young tableaux.

### Where to start

- [Geometry of permutation limits](https://arxiv.org/abs/1609.03891), M. Rahman, B. Virág, M. Vizer, 2016: §1.4 (Theorem 2, Corollary 2.1) and §4, the criterion to be verified.
- [Random sorting networks](https://arxiv.org/abs/math/0609538), O. Angel, A. E. Holroyd, D. Romik, B. Virág, 2006: §4, the Edelman–Greene bijection and the exact law of the first swap, for small-$n$ experiments.
- [The Archimedean limit of random sorting networks](https://arxiv.org/abs/1802.08934), D. Dauvergne, 2018: §1.3 (local speeds) and §5, which show why straight-line motion at intermediate scales gives the constant.

Prerequisites: reduced words in the symmetric group, standard Young tableaux and the hook-length formula, tightness and weak convergence of random paths.

### References, with links

- D. Dauvergne, "The Archimedean limit of random sorting networks", J. Amer. Math. Soc. 35 (2022), 1215–1267; arXiv:1802.08934. <https://doi.org/10.1090/jams/993> <https://arxiv.org/abs/1802.08934>
- M. Rahman, B. Virág, M. Vizer, "Geometry of permutation limits", Combinatorica 39 (2019), 933–960 (the sheet says Ann. Probab.); arXiv:1609.03891. <https://doi.org/10.1007/s00493-019-3817-6> <https://arxiv.org/abs/1609.03891>
- O. Angel, A. E. Holroyd, D. Romik, B. Virág, "Random sorting networks", Adv. Math. 215 (2007), 839–868; arXiv:math/0609538. <https://doi.org/10.1016/j.aim.2007.05.019> <https://arxiv.org/abs/math/0609538>

### Further references

- R. P. Stanley, "On the number of reduced decompositions of elements of Coxeter groups", European J. Combin. 5 (1984), 359–372. <https://doi.org/10.1016/S0195-6698(84)80039-6>
- P. Edelman and C. Greene, "Balanced tableaux", Adv. Math. 63 (1987), 42–99. <https://doi.org/10.1016/0001-8708(87)90063-6>
- C. Greene, A. Nijenhuis, H. S. Wilf, "A probabilistic proof of a formula for the number of Young tableaux of a given shape", Adv. Math. 31 (1979), 104–109. <https://doi.org/10.1016/0001-8708(79)90023-9>
- D. Dauvergne and B. Virág, "Circular support in random sorting networks", Trans. Amer. Math. Soc. 373 (2020), 1529–1553. <https://doi.org/10.1090/tran/7819>
- O. Angel, D. Dauvergne, A. E. Holroyd, B. Virág, "The local limit of random sorting networks", Ann. Inst. H. Poincaré Probab. Statist. 55 (2019), 412–440. <https://doi.org/10.1214/18-AIHP887>
- V. Gorin and M. Rahman, "Random sorting networks: local statistics via random matrix laws", Probab. Theory Related Fields 175 (2019), 45–96. <https://doi.org/10.1007/s00440-018-0886-1>

### Lean

#### Official statement

`Mathathon.P128.archimedean_trajectory_limit` in [`lean/MathathonProblems/P128_ArchimedeanTrajectoryLimit.lean`](lean/MathathonProblems/P128_ArchimedeanTrajectoryLimit.lean).

```lean
theorem archimedean_trajectory_limit (F : (unitInterval →ᵤ ℝ) →ᵇ ℝ) :
    Tendsto
      (fun n : ℕ => (∑ ω ∈ sortingNetworks n, ∑ x : Fin n, F (trajectory ω x)) /
        ((n : ℝ) * (sortingNetworks n).card))
      atTop
      (𝓝 (∫ u in (0 : ℝ)..1, ∫ v in (0 : ℝ)..1,
        F (sineCurve (Real.sqrt (1 - v ^ 2)) (2 * Real.pi * u))))
```

This is Dauvergne's Theorem 5, the sine-curve limit the problem wants to reprove: the rescaled trajectory $\sigma_G(x,t)=2\sigma(x,\lfloor Nt\rfloor)/n-1$ of a uniform particle in a uniform $n$-element sorting network converges in distribution, in the uniform norm, to the Archimedean path $A(t)=\sqrt{1-V^2}\sin(\pi t+2\pi U)$ with $U,V$ independent and uniform on $[0,1]$. The proposed route, a bound on the expected sum of label gaps that verifies criterion (1.8) of Rahman, Virág and Vizer, would prove this statement; the bound itself is not stated, since its form and constant are not fixed (see Notes).

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Mathlib

Mathlib has `Equiv.swap`, `Fin.revPerm` (the reversal), word length and geodesic words for a generating family (`Group.Generators.wordLength`, `Group.Generators.IsGeodesic`), Coxeter systems with length and reduced words (`CoxeterSystem.length`, `CoxeterSystem.IsReduced`, `CoxeterMatrix.Aₙ`), Young diagrams and semistandard tableaux (`YoungDiagram`, `SemistandardYoungTableau`) and uniform measures (`MeasureTheory.Measure.uniformOfFinset`). It does not identify `Equiv.Perm (Fin n)` with the Coxeter group of type $A_{n-1}$, and it has no standard Young tableaux, hook length formula, Edelman–Greene correspondence, permuton processes or Archimedean measure.
