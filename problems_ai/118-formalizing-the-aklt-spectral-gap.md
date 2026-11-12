# 118 · Formalizing the AKLT spectral gap

## From the proposer

- **Area:** Mathematical physics, quantum information
- **Tracks:** Computation/Applied mathematics

### Description

Formalize the proof that the AKLT quantum spin model on the hexagonal lattice has a nonzero spectral gap. The existing proofs combine mathematical arguments with numerical calculations. We want to check that whole chain in Lean, including rigorous bounds for the computational steps. This would give an important result in quantum many-body physics a fully checked foundation and build tools for similar proofs.

### Desired outcome

A Lean proof of the hexagonal AKLT spectral gap, including the numerical bounds the argument needs. Ideally make the tools useful for other quantum spin systems too.

### References

Pomata and Wei, Demonstrating the AKLT spectral gap on 2D degree-3 lattices: https://arxiv.org/abs/1911.01410

Lemm, Sandvik and Wang, Existence of a Spectral Gap in the Affleck-Kennedy-Lieb-Tasaki Model on the Hexagonal Lattice: https://arxiv.org/abs/1910.11810

## AI-generated notes

<!-- status: Proved (preprint) -->

- **Status:** Established with computer assistance, independently, by M. Lemm, A. W. Sandvik and L. Wang and by N. Pomata and T.-C. Wei (both Phys. Rev. Lett. 124, 2020); both arguments rely on floating-point eigenvalue computations whose accuracy is not rigorously certified. M. J. Kastoryano (arXiv:2609.27993, 23 September 2026, not yet refereed) claims an analytic proof of a uniform spectral gap, via boundary-state factorization.
- **Task:** A Lean proof of the spectral gap of the hexagonal AKLT model, with the numerical steps replaced by certified bounds, and tools reusable for other spin systems.
- **Key reference:** [M. Lemm, A. W. Sandvik and L. Wang, “Existence of a spectral gap in the Affleck-Kennedy-Lieb-Tasaki model on the hexagonal lattice”, Phys. Rev. Lett. 124 (2020), 177204](https://arxiv.org/abs/1910.11810)
- **Lean:** Official statement.

### Notes

- Lemm, Sandvik and Wang say that their main result “is not a rigorous mathematical theorem because it relies on numerical input from the DMRG algorithm”. Pomata and Wei call theirs a proof, but its honeycomb step computes an extreme eigenvalue with ARPACK in floating point and checks a residual.
- Pomata–Wei, arXiv v2: the final bound is $0.002660\ldots$ in eq. (25) but $0.002550\ldots$ in the conclusion.

### The result

On the hexagonal lattice wrapped on an $m_1\times m_2$ torus, put a spin $3/2$ ($\mathbb C^4$) at each vertex and let $H=\sum_{\text{edges }jk}P^{(3)}_{jk}$, where $P^{(3)}_{jk}$ projects onto total spin $3$ of the two spins at the ends of the edge. $H\ge0$ is frustration-free (the AKLT valence-bond state lies in its kernel); its gap is $\gamma=\inf(\operatorname{spec}H\setminus\{0\})$.

Lemm–Sandvik–Wang: $\gamma\ge0.00646$ for all $m_1,m_2\ge12$. This follows from the finite-size criterion, valid for every $a\ge1$,
$$\gamma\ \ge\ \frac{10+4a}{3a^2+2a+7}\Big(\gamma_F(a)-\frac{a^2-2a+3}{10+4a}\Big),$$
where $\gamma_F(a)$ is the gap of $\sum_{e\in F}w_eP^{(3)}_e$ on a fixed 36-site patch $F$ with open boundary ($w_e=a$ on marked edges, $1$ elsewhere), and from the numerical input $\gamma_F(1.4)>0.145$ (threshold $\approx0.138$).

Pomata–Wei obtain a bound of about $0.0027$ by another criterion, and gaps for the square-octagon, star and cross lattices and the singly decorated honeycomb and square lattices. Kennedy, Lieb and Tasaki (1988) proved that the infinite-volume ground state is unique.

### How the known proof works

- Since $H\ge0$ has a kernel, $\gamma\ge c$ if and only if $H^2\ge cH$.
- Lemm–Sandvik–Wang (Supplemental Material, §I): $H^2=H+Q+R$, with $Q$ the anticommutators $\{P_e,P_{e'}\}$ of edges sharing a vertex and $R\ge0$; comparing with the sum of $H_F^2\ge\gamma_FH_F$ over all translates of the patch gives the criterion (Knabe's method with edge weights).
- Their numerics: SU(2)-symmetric DMRG on the patch, whose $3^{12}$-fold degenerate ground space (12 dangling effective spin-1 boundary spins) is projected out exactly; the smallest gap, extrapolated to $0.14599$, is in the total-spin sector $J=13$.
- Pomata–Wei: replace edge terms by projections $\tilde H_i=1-\Pi_{\Gamma_i}$ onto the complements of the AKLT ground spaces of overlapping plaquette clusters $\Gamma_i$, show $H\ge\gamma_0\tilde H$ by diagonalizing smaller clusters, and bound $\{\tilde H_i,\tilde H_j\}\ge-\eta(\tilde H_i+\tilde H_j)$; with $z$ overlapping neighbours, $\tilde H^2\ge(1-z\eta)\tilde H$.
- Here $1\pm\eta$ are the extreme non-integer eigenvalues of $\tilde H_i+\tilde H_j$, computed after reduction to dimension $2^{26}$; for the honeycomb $z=6$ and $\eta=0.1445\ldots<1/6$.

### Background

- Affleck, Kennedy, Lieb and Tasaki (1987–88) introduced valence-bond-solid models, proved a gap for the spin-1 chain and conjectured one for the spin-3/2 hexagonal model, whose ground state is a universal resource for measurement-based quantum computation (Wei–Affleck–Raussendorf 2011).
- Finite-size criteria for frustration-free systems: Knabe (1988), Gosset–Mozgunov (2016), Lemm–Mozgunov (2019).
- An analytic gap proof exists for the hexagonal lattice with each edge decorated by a spin-1 AKLT chain of length $n\ge3$ (Abdul-Rahman, Lemm, Lucia, Nachtergaele, Young 2020); a chain of hexagons was treated by an explicitly verified finite-size criterion (Lemm–Sandvik–Yang 2019).

### Where to start

- [Existence of a spectral gap in the AKLT model on the hexagonal lattice](https://arxiv.org/abs/1910.11810), M. Lemm, A. W. Sandvik, L. Wang, 2019: the criterion with all constants, proved in the Supplemental Material, §I.
- [Demonstrating the AKLT spectral gap on 2D degree-3 lattices](https://arxiv.org/abs/1911.01410), N. Pomata, T.-C. Wei, 2019: its main computational step is one eigenvalue problem of dimension $2^{26}$, perhaps easier to certify.
- [A class of two-dimensional AKLT models with a gap](https://arxiv.org/abs/1901.09297), H. Abdul-Rahman et al., 2019: a gap proof without numerics, a natural first target for Lean tools.

Prerequisites: spectral theory of Hermitian matrices and operator inequalities, addition of angular momenta, tensor products, valence-bond (PEPS) states, interval or exact arithmetic.

### References, with links

- N. Pomata and T.-C. Wei, “Demonstrating the Affleck-Kennedy-Lieb-Tasaki spectral gap on 2D degree-3 lattices”, Phys. Rev. Lett. 124 (2020), 177203, doi:10.1103/PhysRevLett.124.177203. <https://arxiv.org/abs/1911.01410>
- M. Lemm, A. W. Sandvik and L. Wang, “Existence of a spectral gap in the Affleck-Kennedy-Lieb-Tasaki model on the hexagonal lattice”, Phys. Rev. Lett. 124 (2020), 177204, doi:10.1103/PhysRevLett.124.177204. <https://arxiv.org/abs/1910.11810>

### Further references

- M. J. Kastoryano, "Spectral Gap of the Hexagonal AKLT Model via Boundary-State Factorization", arXiv:2609.27993 (2026). <https://arxiv.org/abs/2609.27993>
- I. Affleck, T. Kennedy, E. H. Lieb and H. Tasaki, “Valence bond ground states in isotropic quantum antiferromagnets”, Comm. Math. Phys. 115 (1988), 477–528. <https://doi.org/10.1007/BF01218021>
- T. Kennedy, E. H. Lieb and H. Tasaki, “A two-dimensional isotropic quantum antiferromagnet with unique disordered ground state”, J. Stat. Phys. 53 (1988), 383–415. <https://doi.org/10.1007/BF01011563>
- S. Knabe, “Energy gaps and elementary excitations for certain VBS-quantum antiferromagnets”, J. Stat. Phys. 52 (1988), 627–638. <https://doi.org/10.1007/BF01019721>
- H. Abdul-Rahman, M. Lemm, A. Lucia, B. Nachtergaele and A. Young, “A class of two-dimensional AKLT models with a gap”, Contemp. Math. 741 (2020), 1–21. <https://arxiv.org/abs/1901.09297>
- T.-C. Wei, I. Affleck and R. Raussendorf, “Affleck-Kennedy-Lieb-Tasaki state on a honeycomb lattice is a universal quantum computational resource”, Phys. Rev. Lett. 106 (2011), 070501. <https://doi.org/10.1103/PhysRevLett.106.070501>

### Lean

#### Official statement

`Mathathon.P118.aklt_hexagonal_spectral_gap` in [`lean/MathathonProblems/P118_AKLTSpectralGap.lean`](lean/MathathonProblems/P118_AKLTSpectralGap.lean).

```lean
theorem aklt_hexagonal_spectral_gap :
    ∃ γ : ℝ, 0 < γ ∧ ∃ N : ℕ, ∀ m₁ m₂ : ℕ, N ≤ m₁ → N ≤ m₂ →
      ∀ r ∈ spectrum ℝ (akltHamiltonian m₁ m₂), r = 0 ∨ γ ≤ r
```

The AKLT Hamiltonian $\sum_{\text{edges }jk}P^{(3)}_{jk}$ on the hexagonal lattice wrapped on the $m_1\times m_2$ torus (the quotient by $m_1$ and $m_2$ times its two primitive translations) is a matrix indexed by spin-3/2 configurations, with $P^{(3)}$ written as a polynomial in the square of the total spin. The statement asks for a gap uniform in $m_1,m_2\ge N$ and fixes neither $\gamma$ nor $N$; Lemm–Sandvik–Wang report $\gamma\ge0.00646$ for $m_1,m_2\ge12$ on their tori.

The tori here are rhombic, while Lemm, Sandvik and Wang use rectangular ones, so this is not literally their theorem; their finite-size criterion is local and translation-invariant and is expected to apply to these tori once $N$ is large enough for the patch it uses to embed, but this has not been checked.

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Related Lean formalizations

- [TNLean](https://github.com/LionSR/TNLean), S. Lu et al.: a Lean 4 library on tensor networks. Its README lists the fundamental theorem of matrix product states, parent Hamiltonians with frustration-freeness and ground-state uniqueness, PEPS on finite graphs, and AKLT among its examples; it says that spectral-gap estimates are not yet done and that some files contain `sorry` or axioms.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has Hermitian matrices with the spectral theorem (`Matrix.IsHermitian.eigenvalues`, `Matrix.IsHermitian.spectral_theorem`), `Matrix.PosSemidef`, Kronecker products (`Matrix.kronecker`), `PiTensorProduct` and exact interval arithmetic (`Mathlib/Algebra/Order/Interval/Basic.lean`). It has no spin operators, quantum spin Hamiltonians or gap criteria, and no certified floating-point eigenvalue bounds; its floating-point file `Mathlib/Data/FP/Basic.lean` is not integrated with the rest of the library.
