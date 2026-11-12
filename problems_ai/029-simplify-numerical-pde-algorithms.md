# 29 · Simplify Numerical PDE Algorithms

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/029-simplify-numerical-pde-algorithms.md`](../problems_original/029-simplify-numerical-pde-algorithms.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Simplify Numerical PDE Algorithms

### Short description of problem (100 words or less)

Many effective algorithms in numerical PDEs are high complicated such as the Fast Multipole Method, Fast Direct Solvers, and Butterfly Algorithms. Can AI make these more understandable or make simpler yet effective versions of these algorithms?

### Submitted Area

Numerical PDE

### Proposed Tracks

Computation/Applied Math, Analysis

### Reference/source material

Cheng, Hongwei, et al. "A wideband fast multipole method for the Helmholtz equation in three dimensions." Journal of Computational Physics 216.1 (2006): 300-325. 

Sushnikova, Daria, et al. "FMM-LU: A fast direct solver for multiscale boundary integral equations in three dimensions." Multiscale Modeling & Simulation 21.4 (2023): 1570-1601.

Li, Yingzhou, et al. "Butterfly factorization." Multiscale Modeling & Simulation 13.2 (2015): 714-732.

### Desired outcome

A easy to understand explanation, or an easier to understand version of the algorithm

## AI-generated notes

<!-- status: Not a single theorem -->

> Written by AI for the earlier problem list, where this was problem 29 (commit `1f49cd4`), and carried over unchanged.

- **Status:** The three algorithms are established and implemented; the proposer asks for clearer explanations or simpler variants.
- **Task:** An easy explanation, or a simpler but effective version, of one algorithm.
- **Key reference:** [H. Cheng et al., *A wideband fast multipole method for the Helmholtz equation in three dimensions*, J. Comput. Phys. 216 (2006), 300–325](https://doi.org/10.1016/j.jcp.2005.12.001)
- **Lean:** No official statement.

### Notes

- The page names three different algorithm families (fast multipole method, fast direct solver, butterfly). Each reference is a separate starting point; all three are built on a hierarchical tree decomposition of the points.

### The result

The objects are fast algorithms for dense $N\times N$ matrices that come from integral equations, such as $U_k=\sum_{j\ne k}s_j\,h_0(\omega\|x_k-x_j\|)$ with $h_0(z)=e^{iz}/(iz)$.
- The wideband FMM (Cheng et al., 2006) uses one octree for all frequencies. Low-frequency boxes use partial-wave expansions (numerically low-rank blocks), high-frequency boxes use diagonal plane-wave translation operators. Cost: $O(N)$ when low-frequency work dominates, $O(N\log N)$ otherwise.
- FMM-LU (Sushnikova–Greengard–O'Neil–Rachh, 2023) builds an LU-like hierarchical factorization by recursive strong skeletonization, with $O(n)$ factorization and solve for surface problems that are not highly oscillatory.
- The butterfly factorization (Li–Yang–Martin–Ho–Ying, 2015) writes a complementary low-rank matrix as a product of $O(\log N)$ sparse factors with $O(N)$ nonzeros each, applied in $O(N\log N)$.

### Background

- The FMM goes back to Greengard–Rokhlin (J. Comput. Phys. 1987). The high-frequency Helmholtz FMM rests on Rokhlin's diagonal forms of translation operators (1993); rank-based expansions fail at high frequency and diagonal forms are unstable at low frequency, which is why the wideband scheme switches between them.
- Variants with fewer analytic ingredients exist: the kernel-independent FMM of Ying–Biros–Zorin (2004) and the black-box FMM of Fong–Darve (2009).
- Direct solvers: recursive skeletonization (Martinsson–Rokhlin 2005; Ho–Greengard 2012) is close to optimal in 2D. In 3D, weak-admissibility (HSS/HODLR) formats cost $O(n^{3/2})$ to factor; strong skeletonization (Minden–Ho–Damle–Ying 2017), which FMM-LU extends, avoids this. Martinsson's book (SIAM 2019) is a textbook account.
- Butterfly algorithms start with Michielssen–Boag (1996) and O'Neil–Woolfe–Rokhlin (2010). Candès–Demanet–Ying (2009) use Chebyshev interpolation for Fourier integral operators; the butterfly factorization compresses such schemes further, with $O(N^{3/2})$ construction cost.

### Where to start

- [A short course on fast multipole methods](https://math.nyu.edu/~greengar/shortcourse_fmm.pdf), R. Beatson, L. Greengard: lecture notes on the analytic and algorithmic basis of the FMM, starting from particle sums.
- [FMM-LU](https://arxiv.org/abs/2201.07325), D. Sushnikova, L. Greengard, M. O'Neil, M. Rachh, 2022: §4 explains strong skeletonization and proxy surfaces step by step.
- [Butterfly factorization](https://arxiv.org/abs/1502.01379), Y. Li, H. Yang, E. Martin, K. Ho, L. Ying, 2015: §1 explains complementary low-rank matrices with the Fourier matrix as example.

Prerequisites: numerical linear algebra (SVD, interpolative decomposition, LU), multipole and plane-wave expansions of the Laplace and Helmholtz kernels, tree data structures.

### References, with links

- Cheng, Hongwei, et al. "A wideband fast multipole method for the Helmholtz equation in three dimensions." Journal of Computational Physics 216.1 (2006): 300-325. <https://doi.org/10.1016/j.jcp.2005.12.001>
- Sushnikova, Daria, et al. "FMM-LU: A fast direct solver for multiscale boundary integral equations in three dimensions." Multiscale Modeling & Simulation 21.4 (2023): 1570-1601. <https://doi.org/10.1137/22M1514040>
- Li, Yingzhou, et al. "Butterfly factorization." Multiscale Modeling & Simulation 13.2 (2015): 714-732. <https://doi.org/10.1137/15M1007173>

### Further references

- L. Greengard and V. Rokhlin, "A fast algorithm for particle simulations," J. Comput. Phys. 73(2) (1987), 325–348. <https://doi.org/10.1016/0021-9991(87)90140-9>
- P.-G. Martinsson, *Fast Direct Solvers for Elliptic PDEs*, SIAM (2019). <https://doi.org/10.1137/1.9781611976045>
- V. Minden, K. L. Ho, A. Damle, and L. Ying, "A recursive skeletonization factorization based on strong admissibility," Multiscale Model. Simul. 15(2) (2017), 768–796. <https://doi.org/10.1137/16M1095949>
- L. Ying, G. Biros, and D. Zorin, "A kernel-independent adaptive fast multipole algorithm in two and three dimensions," J. Comput. Phys. 196(2) (2004), 591–626. <https://doi.org/10.1016/j.jcp.2003.11.021>
- W. Fong and E. Darve, "The black-box fast multipole method," J. Comput. Phys. 228(23) (2009), 8712–8725. <https://doi.org/10.1016/j.jcp.2009.08.031>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for simpler numerical algorithms, not for the proof of one theorem.

#### Mathlib

Mathlib has the linear algebra these algorithms use (`Matrix.rank`, `LinearMap.singularValues`, `Polynomial.Chebyshev.T`) and `Complex.besselJ`. It has no spherical Hankel functions, multipole or plane-wave expansions, hierarchical matrices or complexity statements for numerical algorithms.
