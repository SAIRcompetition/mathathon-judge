# 117 · Parity obstructions behind Drury’s external vertices conjecture: from n = 4 to n = 5

## From the proposer

- **Area:** Linear algebra
- **Tracks:** Combinatorics

### Description

The Marcus–de Oliveira conjecture places det(A+B), for normal A, B, in the convex hull of the vertex points v(σ) = ∏(a_i − b_σ(i)). Drury’s external vertices conjecture (1996): if all Re v(σ) ≥ 1, then Re v − 1 is a nonnegative combination of the indicators P_IJ(σ) = [σ(I) = J]. It yields the determinantal conjecture for every half-plane excluding the origin. Drury proved n = 4 in 2004 by analysing 210 roots. A new unpublised two-page proof sent to the organization shows the n = 4 case is a parity obstruction: positivity confines the phases of 57 root monomials to (−π/2, π/2), and an odd multiplicative relation whose double is a sum of flat relations cannot exist.

### Desired outcome

(1) Reformulate the two-page proof as an invariant: define the lattice L of multiplicative relations among the root monomials, its sign character χ, and the flat sublattice F forced by the half-plane hypothesis; prove that nontriviality of χ on the 2-torsion of L/F implies the facet inequality; recompute the n = 4 case in this language, recovering the dodecagon, the minimality of twelve, and the order-three symmetry as structural facts rather than search results. (2) Implement the pipeline for general n: facets of Γ_n, positivity implications of each facet, L, F, χ, torsion search. (3) Run it at n = 5. The target is either a proof of EVC(5), which would be new, or the first facet where the obstruction vanishes, followed by a linear-programming search for a counterexample at that facet. (4) State precisely which half-planes EVC(n) controls and what region of the plane the full conjecture still has to exclude. Deliverables: an explainer readable after a first linear-algebra course, and a repository with the exact-arithmetic verification of the n = 4 proof and the n = 5 computation. No claim about the full n = 4 determinantal conjecture is expected.

### References

S. W. Drury, “The determinantal conjecture and Hadamard type inequalities,” Linear Algebra Appl. 246, 279–297 (1996). Sec. 3: the space D_n, the cone Γ, and External Vertices Conjectures I and II; Sec. 4: why EVC implies the determinantal conjecture for half-planes not containing the origin.
S. W. Drury, “The external vertices conjecture in case n = 4,” Electron. J. Linear Algebra 11, 180–191 (2004). The original proof.

## AI-generated notes

<!-- status: Open -->

- **Status:** Open: Drury's external vertices conjecture (1996) is known for $n\le3$ and, by a computer-assisted proof, for $n=4$ (Drury, 2004); no result for $n=5$ was found, so it appears to be open, as is the Marcus–de Oliveira determinantal conjecture in general.
- **Task:** Recast an unpublished two-page proof of the case $n=4$ as a parity (2-torsion) invariant of the multiplicative relations among root monomials, implement it for general $n$, and run it at $n=5$ to prove the conjecture there or find the first facet where the obstruction vanishes.
- **Key reference:** [S. W. Drury, “The external vertices conjecture in case n = 4”, Electron. J. Linear Algebra 11 (2004), 180–191](https://doi.org/10.13001/1081-3810.1131)
- **Lean:** No official statement.

### Notes

- The two-page proof the proposer relies on is unpublished and not public, so its claims (the dodecagon, the minimality of twelve, the order-three symmetry) could not be checked. The numbers on the sheet that come from Drury (2004) do match it: 210 roots for $n=4$, 57 root monomials, phases in $(-\pi/2,\pi/2)$.
- Sign convention: the sheet pairs $\det(A+B)$ with $v(\sigma)=\prod(a_i-b_{\sigma(i)})$. The conjecture pairs $\det(A+B)$ with $\prod(a_i+b_{\sigma(i)})$, or, as in Drury, $\det(A-B)$ with $\prod(a_i-b_{\sigma(i)})$; replace $B$ by $-B$.
- I could not access Drury (1996) to check the section contents described on the sheet; the statement of the conjecture below is the one restated in Drury (2004).

### The problem

Let $A,B$ be normal $n\times n$ matrices with eigenvalues $\alpha_1,\dots,\alpha_n$ and $\beta_1,\dots,\beta_n$, and define the vertices $v(\sigma)=\prod_{j=1}^n(\alpha_j-\beta_{\sigma(j)})$ for $\sigma\in S_n$. The **Marcus–de Oliveira conjecture** says
$$\det(A-B)\in\operatorname{co}\{v(\sigma):\sigma\in S_n\}.$$
It holds for Hermitian matrices (Fiedler, 1971) and for $n\le3$ (Bebiano, Merikoski and da Providência, 1987).

For $I,J\subseteq\{1,\dots,n\}$ with $|I|=|J|$ let $P_{IJ}(\sigma)=1$ if $\sigma(I)=J$ and $0$ otherwise. **External vertices conjecture** (Drury): if $\mathrm{Re}\,v(\sigma)\ge1$ for all $\sigma$, there are $t_{IJ}\ge0$ with
$$\mathrm{Re}\,v(\sigma)=1+\sum_{I,J}t_{IJ}P_{IJ}(\sigma)\qquad\text{for all }\sigma\in S_n.$$
It is known for $n\le3$ and for real $\alpha,\beta$ (Ambikkumar–Drury), and Drury (2004, Theorem 1.1) proves it for $n=4$. Through Merikoski and Virtanen's formula $\det(A-B)=\sum_\sigma s_U(\sigma)v(\sigma)$, with real coefficients $s_U(\sigma)$ satisfying $\sum_\sigma s_U(\sigma)P_{IJ}(\sigma)=|u_{IJ}|^2$, it gives the determinantal conjecture for half-planes not containing $0$: for $n=4$, if $0\notin\operatorname{co}\{v(\sigma)\}$ then $\det(A-B)\in\operatorname{co}\{rv(\sigma):\sigma\in S_4,\ r\ge1\}$ (Corollary 1.2).

### How the known proof works

Drury (2004), $n=4$:
- The functions $P_{IJ}$ span the space $\mathrm{Saxl}_n$ of functions on $S_n$ whose Fourier transform lives on two-row representations; it has dimension the Catalan number $C_n$ ($14$ for $n=4$) and contains every vertex function $v$. The conjecture says $\mathrm{Re}\,v-1$ lies in the cone $\Gamma$ spanned by the $P_{IJ}$.
- Proposition 4.1 (computer, gift-wrapping in exact arithmetic): the facets of $\Gamma$ are $f(\sigma)\ge0$ and $u(f_{\rho_1,\rho_2})\ge0$ for a single explicit functional $u$ and $\rho_1,\rho_2\in S_4$. Since relabelling gives new vertex functions, everything reduces to $u(v)\ge1$ (Proposition 4.2).
- The 210 "roots" $\prod_j(\alpha_{\mu(2j-1)}-\alpha_{\mu(2j)})$, with $\alpha_{4+j}=\beta_j$, are the 24 vertices, their negatives, and 162 roots of level 0. Linear programming shows that if Proposition 4.2 fails, then $\mathrm{Re}\,v(\mu_j)>0$ for 57 explicit roots: 33 of level 0 and the 24 vertices.
- Proposition 5.1 rules this out: put $\theta_j=\arg v(\mu_j)\in(-\pi/2,\pi/2)$. Multiplicative relations among the roots give linear relations $\sum\pm\theta_j=0$ ("type one", spanning a space of dimension 20) and $\sum\pm\theta_j=\pm\pi$ ("type two"; 16 independent modulo type one). Of the $2^{16}$ sign patterns, consistency leaves 1872, linear programming 408, and sign conditions from cross-ratios of four of the points remove the rest.

The odd multiples of $\pi$ in the type-two relations are where the proposer's parity obstruction enters.

### Background

- Marcus (1973) and de Oliveira (1982) proposed the conjecture independently, after Fiedler's Hermitian result. In Merikoski and Virtanen's formula the coefficients $s_U(\sigma)$ come from a unitary $U$, and Drury's $u_{IJ}$ are cofactors of $U$.
- Surveys: Huang (2019); Bebiano–da Providência (2025), who call the conjecture an open problem and review related results.
- For $n=5$ the space $\mathrm{Saxl}_5$ has dimension $C_5=42$, against $C_4=14$ for $n=4$, and $S_5$ has 120 vertices, so the facet computation alone is much larger.

### Where to start

- [The external vertices conjecture in case n = 4](https://doi.org/10.13001/1081-3810.1131), S. W. Drury, 2004 (open access): §2 for Saxl functions and roots, §4 for the facet reduction, §§5–6 for the 57 roots and the sign patterns; this is the computation to recast.
- [The determinantal conjecture and Hadamard type inequalities](https://doi.org/10.1016/0024-3795(94)00361-0), S. W. Drury, 1996: where the conjecture and the cone come from.
- [Revisiting the Marcus–de Oliveira conjecture](https://doi.org/10.3390/math13050711), N. Bebiano, J. P. da Providência, 2025 (open access): survey of what is known.

Prerequisites: normal and unitary matrices, convex cones and their facets, linear programming duality, representations of $S_n$ indexed by two-row diagrams, arguments of complex numbers; exact rational arithmetic.

### References, with links

- S. W. Drury, “The determinantal conjecture and Hadamard type inequalities,” Linear Algebra Appl. 246 (1996), 279–297. <https://doi.org/10.1016/0024-3795(94)00361-0>
- S. W. Drury, “The external vertices conjecture in case n = 4,” Electron. J. Linear Algebra 11 (2004), 180–191. <https://doi.org/10.13001/1081-3810.1131>

### Further references

- M. Fiedler, “Bounds for the determinant of the sum of Hermitian matrices,” Proc. Amer. Math. Soc. 30 (1971), 27–31. <https://doi.org/10.1090/S0002-9939-1971-0286814-1>
- M. Marcus, “Derivations, Plücker relations and the numerical range,” Indiana Univ. Math. J. 22 (1973), 1137–1149. <https://doi.org/10.1512/iumj.1973.22.22094>
- G. N. de Oliveira, “Research problem: normal matrices,” Linear Multilinear Algebra 12 (1982), 153–154. <https://doi.org/10.1080/03081087.1982.11882087>
- N. Bebiano, J. K. Merikoski and J. da Providência, “On a conjecture of G. N. de Oliveira on determinants,” Linear Multilinear Algebra 20 (1987), 167–170. <https://doi.org/10.1080/03081088708817750>
- J. K. Merikoski and A. Virtanen, “Some notes on de Oliveira's determinantal conjecture,” Linear Algebra Appl. 121 (1989), 345–352. <https://doi.org/10.1016/0024-3795(89)90709-X>
- S. Ambikkumar and S. W. Drury, “A reverse Hadamard inequality,” Linear Algebra Appl. 247 (1996), 83–95. <https://doi.org/10.1016/0024-3795(96)89196-8>
- H. Huang, “A survey of the Marcus–de Oliveira conjecture,” Springer Proc. Math. Stat. (2019), 169–181. <https://doi.org/10.1007/978-3-030-11521-0_8>
- N. Bebiano and J. P. da Providência, “Revisiting the Marcus–de Oliveira conjecture,” Mathematics 13 (2025), no. 5, 711. <https://doi.org/10.3390/math13050711>

### Lean

#### Official statement

This problem has no official Lean statement. For a fixed $n$ the external vertices conjecture needs only complex numbers, permutations and finite sums, and the determinantal conjecture also needs normal and unitary matrices; Mathlib has all of these.

#### Mathlib

Mathlib has the Leibniz formula for determinants (`Matrix.det_apply`), permutations (`Equiv.Perm`), unitary matrices (`Matrix.unitaryGroup`), normal elements (`IsStarNormal`), the spectral theorem for Hermitian matrices (`Matrix.IsHermitian.spectral_theorem`), convex hulls (`convexHull`), Birkhoff's theorem (`doublyStochastic_eq_convexHull_permMatrix`), permanents (`Matrix.permanent`) and a Farkas lemma for cones (`ProperCone.hyperplane_separation`); the `linarith` tactic finds Farkas certificates with a simplex-algorithm oracle (`Linarith.CertificateOracle.simplexAlgorithmSparse`), which suits exact verification of the linear-programming steps. It has no spectral theorem for normal matrices (the lean-eval benchmark's `normal_spectral_theorem` has accepted solutions) and nothing on the Marcus–de Oliveira conjecture.
