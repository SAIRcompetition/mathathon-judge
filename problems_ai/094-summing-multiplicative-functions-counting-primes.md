# 94 · Summing multiplicative functions/counting primes

## From the proposer

- **Area:** Computational number theory
- **Tracks:** Computation/Applied Math, Number Theory/Algebra

### Description

Fast algorithms to compute the cumulative sum of a multiplicative function and to count the number of primes less than or equal to a given n

### Desired outcome

A clear historical survey, efficient and readable implementations of the algorithms

### References

https://arxiv.org/abs/2212.09857

### Reference links

- <https://arxiv.org/abs/2212.09857>

## AI-generated notes

<!-- status: Not a single theorem -->

- **Status:** A survey and implementation task; the fastest known elementary algorithm counts primes up to $N$ in $\tilde O(\sqrt N)$ time (Hirsch, Kessler and Mendlovic, arXiv 2022, Math. Comp. 2025), the exponent of the analytic method of Lagarias and Odlyzko (1987).
- **Task:** A historical survey of algorithms for $\pi(N)$ and for summatory functions of multiplicative functions, with efficient and readable implementations.
- **Key reference:** [D. Hirsch, I. Kessler and U. Mendlovic, “Computing π(N): An elementary approach in Õ(√N) time”, Math. Comp. 94 (2025), 3043–3081](https://arxiv.org/abs/2212.09857)
- **Lean:** No official statement.

### Notes

- The proposer cites the arXiv version; the paper appeared in Mathematics of Computation 94 (2025), no. 356, 3043–3081.
- The best bound for $\pi(N)$ in that paper (Theorem 2) is for a randomized algorithm, in expectation. The space–time trade-off (Theorem 3) uses Lemma 25, whose proof is only sketched (Appendix A), and Theorem 9 (totient sums) has only a proof sketch.
- Asymptotic and practical speed differ. The record values $\pi(10^{27})$, $\pi(10^{28})$ and $\pi(10^{29})$ (K. Walisch and D. Baugh, 2015–2022) were computed with primecount, which implements combinatorial algorithms; the authors' own code reports timings up to $N=10^{14}$.

### The result

Let $P$ be the product of the primes $p\le\sqrt N$. Legendre's inclusion–exclusion identity
$$\pi(N)-\pi(\sqrt N)+1=\sum_{d\mid P}\mu(d)\Big\lfloor \frac Nd\Big\rfloor$$
is the starting point of the elementary ("combinatorial") methods. In Dirichlet-convolution form it says $\sum_{n\le N}(1*\mu_{\le\sqrt N})(n)=\pi(N)-\pi(\sqrt N)+1$, where $\mu_{\le\sqrt N}$ is the Möbius function restricted to $\sqrt N$-smooth numbers (Hirsch–Kessler–Mendlovic, Lemma 1). Known complexities:

- Meissel–Lehmer method, as refined and analysed by Lagarias, Miller and Odlyzko (1985): $O(x^{2/3+\varepsilon})$ operations and $O(x^{1/3+\varepsilon})$ space. Deléglise and Rivat (1996) and later work save logarithmic factors.
- Analytic method (Lagarias–Odlyzko 1987), via integrals of $\log\zeta(s)$: $O(x^{1/2+\varepsilon})$ time and $O(x^{1/4+\varepsilon})$ space. Platt (2015) gave the first rigorous implementation and computed $\pi(10^{24})$.
- Hirsch–Kessler–Mendlovic: $\pi(N)$ in expected time $O(\sqrt N\log N(\log\log N)^{3/2})$ and space $O(\sqrt N\log N)$; with memory $M$, $N^{2/9}<M<N^{1/2}$, in time $\tilde O(N^{3/5+\varepsilon}M^{-1/5})$, e.g. $\tilde O(N^{8/15})$ time in $\tilde O(N^{1/3})$ space.
- The same paper computes $\sum_{p\le N}h(p)$ for completely multiplicative $h$ whose partial sums take time $T$ in $\tilde O(T\sqrt N)$ (Theorem 4; e.g. $\sum_{p\le N}p^\ell$ and primes in residue classes), the Mertens function $M(N)=\sum_{n\le N}\mu(n)$ in $O(\sqrt N\log N\sqrt{\log\log N})$ (Theorem 7), the number of square-free $n\le N$ in $\tilde O(N^{1/3})$ (Theorem 8) and $\sum_{n\le N}\varphi(n)$ in $\tilde O(\sqrt N)$ (Theorem 9).
- Earlier elementary bounds for $M(x)$: about $x^{2/3}$ (Deléglise–Rivat 1996) and $O_\varepsilon(x^{3/5}(\log x)^{3/5+\varepsilon})$ (Helfgott–Thompson, 2023).

### How the known proof works

The algorithm of Hirsch, Kessler and Mendlovic:
- Sieve by all primes $p\le\sqrt N$ at once: $\mu_{\le\sqrt N}$ is the Dirichlet convolution of the functions $\mu_p=\delta_1-\delta_p$.
- Log-scale segmentation: sum each function over the intervals $[2^{k\Delta},2^{(k+1)\Delta})$. Dirichlet convolution then becomes, approximately, ordinary convolution of arrays of length $O(\log N/\Delta)$, done by FFT or by a number-theoretic transform in integer arithmetic.
- The array of $\mu_{\le\sqrt N}$ is built from the array of primes by Newton's identities for convolution powers (equation (8)), with $O(\log^2N)$ convolutions; Section 3 does this faster in Fourier space.
- Error correction: rounding to segments misplaces some products $d_1d_2$, all lying in a short interval $(N,N+S]$ with $S=O(\Delta N\log N)$ (Lemma 4). Sieving that interval and running over divisors removes the error. With $\Delta\approx N^{-1/2}$ both phases cost $\tilde O(\sqrt N)$. The analytic method has a similar correction step near $N$, and the authors suggest that theirs is an elementary version of it (Sections 1.3 and 7).

### Background

- Meissel computed $\pi(10^8)$ in 1871 and announced $\pi(10^9)$ in 1885 (too small by 56). Lehmer (1959) computed $\pi(10^{10})$ on an IBM 701 (too large by 1), and Bohman's 1972 value of $\pi(10^{13})$ was too small by 941. Lagarias, Miller and Odlyzko computed $\pi(4\times10^{16})$ (all as reported by Lagarias–Miller–Odlyzko).
- Mertens function: Helfgott and Thompson computed $M(10^n)$ for $n\le 23$; Mertens' conjecture $|M(x)|\le\sqrt x$ was disproved by Odlyzko and te Riele (1985).
- Programming blogs describe Lucy_Hedgehog's $O(x^{3/4})$ algorithm for sums over primes (first posted on the Project Euler forum) and hyperbola-method algorithms computing $M(x)$ and $\sum_{n\le x}\varphi(n)$ in about $x^{2/3}$ time; Brown (2025) adapts such a method to compute $\sum_{n\le 10^{19}}\varphi(n)$.

### Where to start

- [Computing π(N): An elementary approach in Õ(√N) time](https://arxiv.org/abs/2212.09857), D. Hirsch, I. Kessler, U. Mendlovic, 2022: Sections 1–2 give the basic algorithm in about ten pages; code in Python and C++ is at [PrimeCounting](https://github.com/PrimeCounting/PrimeCounting).
- [Computing π(x): the Meissel–Lehmer method](https://www-users.cse.umn.edu/~odlyzko/doc/arch/meissel.lehmer.pdf), J. C. Lagarias, V. S. Miller, A. M. Odlyzko, 1985: the history up to 1985 and the combinatorial method.
- [Summing Multiplicative Functions (Pt. 1)](https://gbroxey.github.io/blog/2023/04/30/mult-sum-1.html) and [Lucy's Algorithm + Fenwick Trees](https://gbroxey.github.io/blog/2023/04/09/lucy-fenwick.html), G. Macris, 2023: readable implementations of the hyperbola method and of Lucy's algorithm.
- [Summing μ(n): a faster elementary algorithm](https://arxiv.org/abs/2101.08773), H. A. Helfgott, L. Thompson, 2021: the Mertens function, with a clear account of earlier algorithms.

Prerequisites: Dirichlet convolution and Möbius inversion, the sieve of Eratosthenes, FFT and the number-theoretic transform, complexity analysis.

### References, with links

- D. Hirsch, I. Kessler and U. Mendlovic, “Computing π(N): An elementary approach in Õ(√N) time,” arXiv:2212.09857 (2022); Math. Comp. 94 (2025), no. 356, 3043–3081. <https://arxiv.org/abs/2212.09857> <https://doi.org/10.1090/mcom/4039>

### Further references

- J. C. Lagarias, V. S. Miller and A. M. Odlyzko, “Computing π(x): the Meissel–Lehmer method,” Math. Comp. 44 (1985), 537–560. <https://doi.org/10.1090/S0025-5718-1985-0777285-5>
- M. Deléglise and J. Rivat, “Computing π(x): the Meissel, Lehmer, Lagarias, Miller, Odlyzko method,” Math. Comp. 65 (1996), 235–245. <https://doi.org/10.1090/S0025-5718-96-00674-6>
- J. C. Lagarias and A. M. Odlyzko, “Computing π(x): an analytic method,” J. Algorithms 8 (1987), 173–191. <https://doi.org/10.1016/0196-6774(87)90037-X>
- D. J. Platt, “Computing π(x) analytically,” Math. Comp. 84 (2015), 1521–1535. <https://arxiv.org/abs/1203.5712>
- M. Deléglise and J. Rivat, “Computing the summation of the Möbius function,” Experiment. Math. 5 (1996), 291–295. <https://doi.org/10.1080/10586458.1996.10504594>
- H. A. Helfgott and L. Thompson, “Summing μ(n): a faster elementary algorithm,” Res. Number Theory 9 (2023), paper no. 6. <https://doi.org/10.1007/s40993-022-00408-8>
- K. Walisch, primecount (software, with records of $\pi(10^n)$). <https://github.com/kimwalisch/primecount>
- L. A. Brown, “Computation of the totient summatory function,” arXiv:2506.07386 (2025). <https://arxiv.org/abs/2506.07386>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for a historical survey and implementations, and the results it surveys are running-time and space bounds for arithmetic algorithms, some randomized, which need a cost model such as a word RAM; Mathlib counts time only as steps of Turing machines and other state-transition systems and has no such model.

#### Mathlib

Mathlib has `Nat.primeCounting`, `Nat.primesBelow`, arithmetic functions with Dirichlet convolution as multiplication (`ArithmeticFunction`), `ArithmeticFunction.moebius`, `ArithmeticFunction.IsMultiplicative`, Möbius inversion (`ArithmeticFunction.sum_eq_iff_sum_mul_moebius_eq`), `Nat.totient`, `Nat.smoothNumbers`, the Chebyshev functions `Chebyshev.theta` and `Chebyshev.psi`, and the discrete Fourier transform `ZMod.dft`. It has no Legendre or Meissel formula for $\pi$, no Mertens function as a named definition, and no running-time or space bounds beyond Turing-machine time (`Turing.TM2ComputableInTime`).
