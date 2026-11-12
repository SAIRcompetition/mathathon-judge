# 124 · Mutually unbiased bases in dimension 6, applied to a 6-dimensional quantum system

## From the proposer

- **Area:** Quantum information theory; linear algebra
- **Tracks:** Computaiton/Applied Math

### Description

In quantum mechanics, two orthonormal bases are mutually unbiased if measuring a state prepared in one basis yields every outcome in the other with equal probability. The dimension-six MUB problem asks for the maximum number of pairwise mutually unbiased bases in C^6. A recent computer-assisted proof claims this maximum is three: three such bases exist, but four do not.

### Desired outcome

Explain its quantum-information significance; Check pieces of the computational certificate; Distinguish the formally verified result from the stronger headline claim.

### References

https://github.com/openai/math/blob/main/preprints/The-maximum-number-of-mutually-unbiased-bases-in-dimension-six-September-24-2026/The-maximum-number-of-mutually-unbiased-bases-in-dimension-six-September-24-2026.pdf

### Reference links

- <https://github.com/openai/math/blob/main/preprints/The-maximum-number-of-mutually-unbiased-bases-in-dimension-six-September-24-2026/The-maximum-number-of-mutually-unbiased-bases-in-dimension-six-September-24-2026.pdf>

## AI-generated notes

<!-- status: Partly solved -->

- **Status:** Claimed by an OpenAI preprint dated 24 September 2026, which its repository describes as produced by an internal OpenAI model: $N(6)=3$, with a computer-assisted upper bound that depends on floating-point arithmetic and compiler conditions; only the weaker bound $N(6)\le5$, from a companion preprint, has a Lean proof, and neither is refereed.
- **Task:** Explain the quantum-information significance of mutually unbiased bases in dimension six, check pieces of the computational certificate, and separate the Lean-verified result from the headline claim.
- **Key reference:** [OpenAI, “The maximum number of mutually unbiased bases in dimension six”, preprint, 24 September 2026](https://github.com/openai/math/blob/main/preprints/The-maximum-number-of-mutually-unbiased-bases-in-dimension-six-September-24-2026/The-maximum-number-of-mutually-unbiased-bases-in-dimension-six-September-24-2026.pdf)
- **Lean:** No official statement.

### Notes

- The repository's [scope note](https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/docs/266.md) says the Lean formalization proves that every family of mutually unbiased bases in $\mathbb C^6$ has at most five members, plus a Fourier-vanishing theorem, and “does not establish the paper's upper bound of three”. Google DeepMind's formal-conjectures still lists dimension six as open, with $3\le N(6)\le5$.
- Theorem 1.1 holds “under the arithmetic and compiler conditions in Appendix A” (IEEE binary64, round to nearest, no fast-math or contraction). The current PDF relies on a complete run of 4 October 2026 and says an earlier run of 7 September was not authenticated; C++ sources, saved records and a Python checker were added on 26 October 2026. By its [instructions](https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/preprints/The-maximum-number-of-mutually-unbiased-bases-in-dimension-six-September-24-2026/verification/saved-run/VERIFY.md), the checker tests consistency and coverage of the saved records, not the C++ programs, compiler or hardware.
- No refereed version or independent re-verification of either preprint was found.

### The result

Orthonormal bases $B,C$ of $\mathbb C^d$ are mutually unbiased if $|\langle b,c\rangle|^2=1/d$ for all $b\in B$, $c\in C$; $N(d)$ is the largest number of pairwise mutually unbiased bases. If the first basis is the standard one, the second is the column basis of $H/\sqrt d$ for a complex Hadamard matrix $H$ ($|H_{ij}|=1$, $HH^*=dI$).

Known before 2026: $N(d)\le d+1$, with equality for prime powers $d$ (Ivanović 1981 for primes; Wootters–Fields 1989); $N(mn)\ge\min(N(m),N(n))$ by tensor products, so $N(6)\ge3$; and $N(d)\ne d$, so $N(d)=d+1$ or $N(d)\le d-1$ (Weiner 2013). Hence $3\le N(6)\le7$ and $N(6)\ne6$.

Claimed in 2026 (OpenAI preprints):
- An exact certificate in integer and rational arithmetic excludes seven bases in $\mathbb C^6$, so $N(6)\le5$ by Weiner's theorem; this, and the Fourier-vanishing conjecture of Matolcsi, Ruzsa and Weiner for order-6 Hadamard matrices not equivalent to Tao's matrix, are Lean-verified.
- Theorem 1.1 (computer-assisted): there are no four mutually unbiased bases in $\mathbb C^6$, so $N(6)=3$, as Zauner conjectured.

### How the known proof works

- Seed cover: dephase $H$; the first two rows and columns carry nine more phases, and symmetry reduction with necessary interval tests covers them by finitely many seed balls (249,878 centres in the recorded run).
- Stage A: in $2+4$ block form, the unknown $4\times4$ block, compressed between two 2-dimensional kernels, is close to $\sqrt6$ times a $2\times2$ unitary; a cover of $U(2)$ with Taylor bounds excludes cells or puts all exact completions into certified phase balls. Stage B refines these balls using approximate tangent directions and a verified bound on the normal displacement.
- Stage C covers the vectors unbiased to the first two bases by small balls, forming an “orthogonal” graph $O$ and an “unbiased” graph $U$; two more bases would need two disjoint 6-cliques in $O$ with all 36 cross edges in $U$, and a finite search excludes this.
- Every exclusion uses a one-sided bound with a safety margin valid under the binary64 contract; the recorded run (100 program invocations, about 75 minutes) left no unresolved record (Theorem 7.1).
- The exact certificate for $N(6)\le5$ instead combines moment identities for the matrix entries with products of character sums over several transition matrices.

### Background

- Durt et al. survey the applications: complete sets give optimal state tomography (Wootters–Fields), and mutually unbiased bases enter dense coding, teleportation, entanglement swapping and cloning. Complete sets are complex projective 2-designs (Klappenecker–Rötteler 2005), and the existence problem is linked to finite affine planes.
- For $d=6$, numerical searches (Butterley–Hall 2007; Brierley–Weigert 2008) found no four bases. Grassl (2004) showed that the standard–Fourier pair lies in no quadruple, and Jaming, Matolcsi, Móra, Szöllősi and Weiner (2009) the same for the standard basis with any member of the two-parameter Fourier family, by a certified discretization that the 2026 preprint calls its closest antecedent.

### Where to start

- [Mutually unbiased bases in composite dimensions – a review](https://doi.org/10.22331/q-2026-04-01-2051), D. McNulty, S. Weigert, Quantum 2026: fourteen equivalent formulations and the state of the art before the 2026 claims.
- [On mutually unbiased bases](https://arxiv.org/abs/1004.3348), T. Durt, B.-G. Englert, I. Bengtsson, K. Życzkowski, 2010: constructions, quantum-information applications, the link to Hadamard matrices.
- The OpenAI preprint, §1.2 (strategy) and §7 (execution), with the saved-run [instructions](https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/preprints/The-maximum-number-of-mutually-unbiased-bases-in-dimension-six-September-24-2026/verification/saved-run/VERIFY.md): where to check pieces of the certificate. The companion preprint (first further reference) gives the exact route to $N(6)\le5$.

Prerequisites: linear algebra over $\mathbb C$, complex Hadamard matrices, quantum measurement and tomography, floating-point error analysis (IEEE 754) and interval methods.

### References, with links

- OpenAI, “The maximum number of mutually unbiased bases in dimension six”, preprint, 24 September 2026. <https://github.com/openai/math/blob/main/preprints/The-maximum-number-of-mutually-unbiased-bases-in-dimension-six-September-24-2026/The-maximum-number-of-mutually-unbiased-bases-in-dimension-six-September-24-2026.pdf>

### Further references

- OpenAI, “Exact Fourier certificates for complex Hadamard matrices of order six”, preprint, 24 September 2026. <https://github.com/openai/math/blob/main/preprints/Exact-Fourier-certificates-for-complex-Hadamard-matrices-of-order-six-September-24-2026/Exact-Fourier-certificates-for-complex-Hadamard-matrices-of-order-six-September-24-2026.pdf>
- W. K. Wootters and B. D. Fields, “Optimal state-determination by mutually unbiased measurements”, Ann. Physics 191 (1989), 363–381. <https://doi.org/10.1016/0003-4916(89)90322-9>
- M. Weiner, “A gap for the maximum number of mutually unbiased bases”, Proc. Amer. Math. Soc. 141 (2013), 1963–1969. <https://doi.org/10.1090/S0002-9939-2013-11487-5>
- P. Jaming, M. Matolcsi, P. Móra, F. Szöllősi and M. Weiner, “A generalized Pauli problem and an infinite family of MUB-triplets in dimension 6”, J. Phys. A 42 (2009), 245305. <https://arxiv.org/abs/0902.0882>
- T. Durt, B.-G. Englert, I. Bengtsson and K. Życzkowski, “On mutually unbiased bases”, Int. J. Quantum Inf. 8 (2010), 535–640. <https://arxiv.org/abs/1004.3348>
- D. McNulty and S. Weigert, “Mutually unbiased bases in composite dimensions – a review”, Quantum 10 (2026), 2051. <https://doi.org/10.22331/q-2026-04-01-2051>

### Lean

#### Official statement

This problem has no official Lean statement. $N(6)$ can be stated with Mathlib's orthonormal bases of `EuclideanSpace ℂ (Fin 6)`, as formal-conjectures and openai/math do; nothing is missing.

#### Related Lean formalizations

- `OAI.MUB6.fourier_and_family_bound` in [`lean/ComparatorChallenges/MUBSix.lean`](https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/MUBSix.lean) (openai/math): the Fourier-vanishing theorem and at most five mutually unbiased bases in $\mathbb C^6$, with a Lean proof in [`OAI/Analysis/MutuallyUnbiased`](https://github.com/openai/math/tree/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Analysis/MutuallyUnbiased), including Weiner's completion theorem for $d=6$ (`six_extend_to_seven`).
- `OpenQuantumProblem13.mutuallyUnbiasedBases_dim6` in [formal-conjectures](https://github.com/google-deepmind/formal-conjectures/blob/a425ca3eb797fe927cb88c950565fdcbbbbada70/FormalConjectures/OpenQuantumProblems/13.lean): the value of $N(6)$ as an open problem, next to the bounds `mutuallyUnbiasedBases_dim6_bounds` ($3\le N(6)\le7$) and its variant `upper_five` ($N(6)\le5$) (statements only).
- [Finite quantum designs: mutually unbiased bases, SIC-POVMs, and the Welch and Gerzon bounds](https://palomar-registry.org/entry?id=PALOMAR-2026-10-16-000014&version=1), Palomar registry (Lean-checked, trust level high): J. D. Jones; $N(d)\le d+1$, complete sets in prime-power dimensions, three bases in every dimension, Weiner's gap for all $d$, and $3\le N(6)\le7$ with $N(6)\ne6$.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has complex Hadamard matrices (`Matrix.IsHadamard`, with the Kronecker construction `Matrix.IsHadamard.kronecker`), `Matrix.unitaryGroup`, `OrthonormalBasis` and `Matrix.kronecker`. It has no mutually unbiased bases and no certified floating-point or interval arithmetic for checking the numerical exclusion.
