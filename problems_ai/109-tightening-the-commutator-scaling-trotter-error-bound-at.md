# 109 · Tightening the commutator-scaling Trotter error bound at fourth order

## From the proposer

- **Area:** Quantum information & computation
- **Tracks:** Computation/Applied Mathematics

### Description

Product (Trotter–Suzuki) formulas simulate e^{−it(A+B)} by alternating evolutions under A and B. The standard error bound (Childs et al., 2021) scales as t^{p+1} times a sum of nested-commutator norms, with an explicit prefactor that every resource estimate for Hamiltonian simulation uses. In numerical tests the true error is often 10 to 1000 times smaller. The prefactor is inflated because the proof sums absolute values over many commutator terms that largely cancel. Problem: for two bounded terms and the fourth-order Suzuki formula, prove a rigorous finite-step-size bound with a strictly smaller prefactor, via the exact leading error term and a controlled remainder.

### Desired outcome

A self-contained proof in few pages, for H = A + B bounded and the fourth-order Suzuki formula, that (1) computes the exact leading t^5 error term in a Hall basis of nested commutators with exact rational coefficients, machine-checked; (2) bounds the t^6-and-higher remainder rigorously with explicit constants using one iterated Duhamel identity and the Suzuki recursion; (3) states the resulting finite-step-size bound and compares its prefactor against Schubert–Mendl’s and against the true error on an Ising-plus-transverse-field test Hamiltonian; and (4) connects the argument to the Descombes–Thalhammer representation, stating what is new. Success is a strictly smaller fourth-order prefactor; a publishable partial outcome is the exact leading-term coefficients plus numerical evidence of the gap. Deliverables: the proof, the repository with symbolic computation, numerics and comparison plot, and an explainer readable after a first course in quantum computing.

### References

A. M. Childs, Y. Su, M. C. Tran, N. Wiebe, S. Zhu, “Theory of Trotter Error with Commutator Scaling,” Phys. Rev. X 11, 011020 (2021); arXiv:1912.08854. The commutator-scaling bound (Sec. V) and the fourth-order two-term coefficients (Appendix M, Eq. (M13)).

## AI-generated notes

<!-- status: Open -->

- **Status:** Open as far as we found: the explicit two-term fourth-order bound of Childs, Su, Tran, Wiebe and Zhu (PRX 2021, Eq. (M13)) is reproduced by the general bound of Schubert and Mendl (PRB 2023) with their centred choice $s=6$ (they note that the choice $s=7$ makes some coefficients slightly larger and others slightly smaller); much tighter rigorous finite-step bounds have been claimed for special Hamiltonians such as one-dimensional local chains (Liu et al., preprint, October 2026).
- **Task:** For $H=A+B$ with bounded $A,B$ and the fourth-order Suzuki formula, prove a finite-step error bound with a strictly smaller prefactor, via the exact $t^5$ term and a controlled remainder.
- **Key reference:** [A. M. Childs, Y. Su, M. C. Tran, N. Wiebe, S. Zhu, “Theory of Trotter error with commutator scaling”, Phys. Rev. X 11 (2021), 011020](https://doi.org/10.1103/PhysRevX.11.011020)
- **Lean:** No official statement.

### Notes

- In the PRX version, Section V is "Error bounds with small prefactors"; the general commutator-scaling theorem (Theorem 6, Section III) is stated only up to a constant, which the paper does not evaluate. Eq. (M13) is Proposition M.1 in Appendix M; in arXiv v3, titled "A Theory of Trotter Error", it is Proposition J.1, Eq. (319).
- Childs et al. call their method for higher-order bounds with small prefactors heuristic, but state (M13) as a proposition. Schubert–Mendl's Theorem 1 gives a general bound of this type and, by their account, reproduces the coefficients of (M13) for two terms.
- The coefficients of $S_4$ involve $u_2=1/(4-4^{1/3})$, so the exact $t^5$ coefficients lie in $\mathbb Q(4^{1/3})$ and need not be rational; "exact rational coefficients" in the desired outcome should probably read "exact algebraic coefficients".
- "Strictly smaller prefactor" needs a convention, since (M13) has eight coefficients multiplying different commutator norms; a bound that is never larger than (M13) and smaller for some $A,B$ is too weak a target, because taking the smaller of Schubert and Mendl's bounds for $s=6$ and $s=7$ may already achieve it. A stronger option is a bound with every coefficient smaller than in (M13), or a bound smaller by a fixed factor on a stated class of Hamiltonians.

### The result

Let $S_2(t)=e^{-i\frac t2A}e^{-itB}e^{-i\frac t2A}$ and $S_4(t)=S_2(u_2t)^2S_2\big((1-4u_2)t\big)S_2(u_2t)^2$ with $u_2=1/(4-4^{1/3})$ (Suzuki). For Hermitian $A,B$, $H=A+B$ and $t\ge0$ (Childs et al., Proposition M.1):
$$\begin{aligned}\|S_4(t)-e^{-itH}\|\le t^5\big(&0.0047\,\|[A,[A,[A,[B,A]]]]\|+0.0057\,\|[A,[A,[B,[B,A]]]]\|+0.0046\,\|[A,[B,[A,[B,A]]]]\|\\&+0.0074\,\|[A,[B,[B,[B,A]]]]\|+0.0097\,\|[B,[A,[A,[B,A]]]]\|+0.0097\,\|[B,[A,[B,[B,A]]]]\|\\&+0.0173\,\|[B,[B,[A,[B,A]]]]\|+0.0284\,\|[B,[B,[B,[B,A]]]]\|\big).\end{aligned}$$
For comparison, the second-order bound $\|S_2(t)-e^{-itH}\|\le\frac{t^3}{12}\|[B,[B,A]]\|+\frac{t^3}{24}\|[A,[A,B]]\|$ (Eq. (L5)) is tight up to the triangle inequality. For a general $p$th-order formula for real-time evolution under Hermitian summands $H_\gamma$, Theorem 6 gives an error $O\big(\tilde\alpha_{\rm comm}t^{p+1}\big)$, $\tilde\alpha_{\rm comm}=\sum\|[H_{\gamma_{p+1}},\dots,[H_{\gamma_2},H_{\gamma_1}]]\|$.

### How the known proof works

- Expand $S_4$ into eleven exponentials $e^{-ita_6A}e^{-itb_5B}\cdots e^{-itb_1B}e^{-ita_1A}$ with explicit $a_k,b_k$.
- Differentiate in $t$: $\frac{d}{dt}S_4(t)=(-iH)S_4(t)+S_{4,\rm left}(t)\,T_4(t)\,S_{4,\rm right}(t)$, where $T_4$ is a sum of conjugated commutators; the variation-of-parameters formula then writes $S_4(t)-e^{-itH}$ as $\int_0^te^{-i(t-\tau)H}S_{4,\rm left}(\tau)T_4(\tau)S_{4,\rm right}(\tau)\,d\tau$, and the outer factors are unitary.
- Since $S_4(t)=e^{-itH}+O(t^5)$, $T_4(\tau)=O(\tau^4)$; Taylor-expanding each layer of conjugation and bounding the remainders by the triangle inequality leaves nested commutators with four layers, of which only eight are nonzero, with the coefficients of (M13).
- The looseness the proposer describes enters at this triangle inequality, which bounds term by term a sum whose terms largely cancel.

### Background

- Suzuki's recursion $S_{2k}(t)=S_{2k-2}(u_kt)^2S_{2k-2}((1-4u_k)t)S_{2k-2}(u_kt)^2$, $u_k=1/(4-4^{1/(2k-1)})$, gives formulas of every even order (Suzuki 1991).
- $S_4$ is symmetric, $S_4(t)S_4(-t)=I$, so for small $t$ its logarithm is odd in $t$: $S_4(t)=\exp\big(-itH+t^5E_5+O(t^7)\big)$, with $E_5$ in the degree-5 part of the free Lie algebra on $A,B$, which has dimension 6 (Lyndon words of length 5). Casas and Murua (2009) compute the Baker–Campbell–Hausdorff series exactly in any generalized Hall basis, which is the kind of computation the first step of the task needs.
- Descombes and Thalhammer (2010) give an exact local error representation for exponential operator splitting methods, a natural tool for the $t^6$ remainder.
- Numerical comparisons find that such bounds still overestimate the true error considerably (Schubert–Mendl; Liu et al.). Liu, Wei, Foss-Feig, Gorshkov and Childs (2026 preprint) give ordering-aware finite-step bounds for one-dimensional local chains that track exact errors closely; Maxwell et al. (2026 preprint) estimate Trotter error through a compact representation of the BCH error operator.

### Where to start

- [Theory of Trotter error with commutator scaling](https://arxiv.org/abs/1912.08854), Childs et al., 2021: Appendix L (the tight second-order bound) and Appendix M of the PRX version (Appendix J of arXiv v3) for the fourth-order derivation.
- [Trotter error with commutator scaling for the Fermi-Hubbard model](https://arxiv.org/abs/2306.10603), A. Schubert, C. B. Mendl, 2023: Theorem 1 and its proof in Appendix A, a general version of the same argument.
- [An exact local error representation of exponential operator splitting methods](https://doi.org/10.1007/s10543-010-0282-4), S. Descombes, M. Thalhammer, 2010: the representation the proposer wants to connect to.
- [An efficient algorithm for computing the Baker–Campbell–Hausdorff series](https://doi.org/10.1063/1.3078418), F. Casas, A. Murua, 2009: the BCH series in a generalized Hall basis, through degree 20.

Prerequisites: matrix exponentials and the variation-of-parameters (Duhamel) formula, the BCH formula and free Lie algebras, product formulas for Hamiltonian simulation.

### References, with links

- A. M. Childs, Y. Su, M. C. Tran, N. Wiebe, S. Zhu, “Theory of Trotter Error with Commutator Scaling,” Phys. Rev. X 11, 011020 (2021); arXiv:1912.08854. The commutator-scaling bound (Sec. V) and the fourth-order two-term coefficients (Appendix M, Eq. (M13)). <https://doi.org/10.1103/PhysRevX.11.011020> <https://arxiv.org/abs/1912.08854>

### Further references

- A. Schubert, C. B. Mendl, “Trotter error with commutator scaling for the Fermi-Hubbard model”, Phys. Rev. B 108 (2023), 195105. <https://doi.org/10.1103/PhysRevB.108.195105>
- S. Descombes, M. Thalhammer, “An exact local error representation of exponential operator splitting methods for evolutionary problems and applications to linear Schrödinger equations in the semi-classical regime”, BIT Numer. Math. 50 (2010), 729–749. <https://doi.org/10.1007/s10543-010-0282-4>
- M. Suzuki, “General theory of fractal path integrals with applications to many-body theories and statistical physics”, J. Math. Phys. 32 (1991), 400–407. <https://doi.org/10.1063/1.529425>
- F. Casas, A. Murua, “An efficient algorithm for computing the Baker–Campbell–Hausdorff series and some of its applications”, J. Math. Phys. 50 (2009), 033513. <https://doi.org/10.1063/1.3078418>
- Z. Liu, Z.-Y. Wei, M. Foss-Feig, A. V. Gorshkov, A. M. Childs, “Ordering-aware theory of Trotter error” (preprint, 2026). <https://arxiv.org/abs/2610.03672>
- W. Maxwell et al., “Practical estimation of Trotter error for Hamiltonian simulation” (preprint, 2026). <https://arxiv.org/abs/2606.30738>

### Lean

#### Official statement

This problem has no official Lean statement: it leaves the improved constant open. A bound with fixed constants could be stated with Mathlib's exponential, operator norm and commutator.

#### Related Lean formalizations

- [lie-trotter-lean](https://palomar-registry.org/entry?id=PALOMAR-2026-10-29-000016&version=1), Palomar registry (Lean-checked, trust level high), by Z. Blore: the Lie–Trotter product formula in a complete normed real algebra with norm-one unit, with the first-order commutator bound $\|(e^{A/n}e^{B/n})^n-e^{A+B}\|\le\frac{\|AB-BA\|}{2n}e^{\|A\|+\|B\|}$ (`LieTrotter.norm_trotter_sub_le_commutator`, `LieTrotter.trotter_product`).

#### Mathlib

Mathlib has the exponential in Banach algebras (`NormedSpace.exp`, `NormedSpace.exp_add_of_commute`, `hasDerivAt_exp_smul_const`), the unitary $e^{ia}$ of a self-adjoint element (`selfAdjoint.expUnitary`), commutators as Lie brackets (`Ring.lie_def`) and free Lie algebras (`FreeLieAlgebra`). It has no Baker–Campbell–Hausdorff formula, no Hall or Lyndon bases and no Trotter–Suzuki product formulas or error bounds.
