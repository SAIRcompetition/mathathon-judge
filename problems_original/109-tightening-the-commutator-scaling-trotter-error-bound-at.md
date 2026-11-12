# Problem 109

> Verbatim copy of one row of the Mathathon problem sheet. The text under each heading is the cell text, unchanged. See [README.md](README.md).

## Problem ID

109

## Title/name of problem

Tightening the commutator-scaling Trotter error bound at fourth order

## Short description of problem (100 words or less)

Product (Trotter–Suzuki) formulas simulate e^{−it(A+B)} by alternating evolutions under A and B. The standard error bound (Childs et al., 2021) scales as t^{p+1} times a sum of nested-commutator norms, with an explicit prefactor that every resource estimate for Hamiltonian simulation uses. In numerical tests the true error is often 10 to 1000 times smaller. The prefactor is inflated because the proof sums absolute values over many commutator terms that largely cancel. Problem: for two bounded terms and the fourth-order Suzuki formula, prove a rigorous finite-step-size bound with a strictly smaller prefactor, via the exact leading error term and a controlled remainder.

## Submitted Area

Quantum information & computation

## Proposed Tracks

Computation/Applied Mathematics

## Reference/source material

A. M. Childs, Y. Su, M. C. Tran, N. Wiebe, S. Zhu, “Theory of Trotter Error with Commutator Scaling,” Phys. Rev. X 11, 011020 (2021); arXiv:1912.08854. The commutator-scaling bound (Sec. V) and the fourth-order two-term coefficients (Appendix M, Eq. (M13)).

## Desired outcome

A self-contained proof in few pages, for H = A + B bounded and the fourth-order Suzuki formula, that (1) computes the exact leading t^5 error term in a Hall basis of nested commutators with exact rational coefficients, machine-checked; (2) bounds the t^6-and-higher remainder rigorously with explicit constants using one iterated Duhamel identity and the Suzuki recursion; (3) states the resulting finite-step-size bound and compares its prefactor against Schubert–Mendl’s and against the true error on an Ising-plus-transverse-field test Hamiltonian; and (4) connects the argument to the Descombes–Thalhammer representation, stating what is new. Success is a strictly smaller fourth-order prefactor; a publishable partial outcome is the exact leading-term coefficients plus numerical evidence of the gap. Deliverables: the proof, the repository with symbolic computation, numerics and comparison plot, and an explainer readable after a first course in quantum computing.
