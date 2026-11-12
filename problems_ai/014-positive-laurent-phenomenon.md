# 14 · Positive Laurent phenomenon

## From the proposer

- **Area:** Representation theory, algebraic combinatorics, mirror symmetry
- **Tracks:** Algebra/Number Theory

### Description

The notion of cluster algebras was motivated by understanding Lusztig's canonical basis (Item 1). This has led to spectacular mathematics, including Fomin and Zelevinsky's classification of cluster algebras by root systems (Item 2) and Gross-Hacking-Keel-Kontsevich's proof of positive structure constants for theta functions (Item 3) in cluster algebras. All three items come with quite sophisticated ideas and proofs, which most researchers that I know in the area are happy to assume without knowing too much about. I'd like to explore these

### Desired outcome

For the classification of cluster algebras: I'd like to see a more streamlined construction which explains why root systems enter and how the proof works
For scattering diagrams: I'd like to understand the rather difficult "induction on rank" argument that allows to reduce the general problem to the rank 2 problem

### References

Fomin-Zelevinsky: cluster algebras II, Inventiones Mathematicae (2003)
Gross-Hacking-Keel-Kontsevich: canonical bases for cluster algebras, JAMS (2018)

## AI-generated notes

<!-- status: Proved -->

- **Status:** Finite type classification proved by Fomin and Zelevinsky (2003); positivity proved by Lee and Schiffler (skew-symmetric case, 2015) and Gross, Hacking, Keel and Kontsevich (2018).
- **Task:** A streamlined finite type classification; understanding GHKK's reduction to rank 2.
- **Key reference:** [Canonical bases for cluster algebras](https://arxiv.org/abs/1411.1394), M. Gross, P. Hacking, S. Keel, M. Kontsevich, J. Amer. Math. Soc. 31 (2018), 497–608.
- **Lean:** Official statement.

### Notes

- The Description refers to Items 1–3, but the References list only Items 2 and 3 (none for Lusztig's canonical basis).
- The title concerns positivity of the Laurent phenomenon (GHKK, Corollary 0.4), while the Desired outcome asks about the finite type classification and the rank reduction in GHKK's scattering diagram argument.

### The result

Fomin–Zelevinsky (Invent. Math. 154, 2003): a cluster algebra has finitely many seeds if and only if some seed has an exchange matrix $B$ whose Cartan counterpart $A(B)$ ($a_{ii}=2$, $a_{ij}=-|b_{ij}|$) is of finite type; equivalently $|b_{xy}b_{yx}|\le3$ in every seed. Finite types match Cartan–Killing types, cluster variables match almost positive roots, and the cluster complex is the dual complex of a generalized associahedron. GHKK (Corollary 0.4): every cluster variable $u$ of a skew-symmetrizable cluster algebra of geometric type is a Laurent polynomial with nonnegative integer coefficients in the variables $x_1,\dots,x_N$ of any seed,
$$u\in\mathbb Z_{\ge0}[x_1^{\pm1},\dots,x_N^{\pm1}].$$

### How the known proof works

- FZ, sufficiency (Theorem 1.5, Sections 2–4): for bipartite $B$, the generalized associahedron gives a pseudomanifold on the almost positive roots, and a criterion (Proposition 2.3) gives finite type.
- FZ, necessity (Theorem 1.6, Sections 7–9): finite type forces every exchange matrix to be "2-finite", and 2-finite diagrams are mutation equivalent to Dynkin diagrams (Theorem 8.6).
- GHKK: cluster monomials are theta functions (sums over broken lines), so Theorem 1.13, that all walls of the scattering diagram $\mathfrak D_s$ can be taken as $(1+z^m)^c$ with $c>0$, gives positivity (Theorem 4.10).
- Appendix C: $\mathfrak D_s$ is built order by order by adding walls at joints (Theorem 1.28). At a joint, $M=\Lambda_{\mathfrak j}\oplus M'$ with $\mathrm{rk}\,M'=2$, and a change-of-monoid trick, a perturbation trick and induction reduce to the simplest diagram, Example 1.14 (Proposition C.13).

### Background

- Lee and Schiffler (2015) proved positivity for all skew-symmetric cluster algebras by an entirely different argument.
- GHKK's methods also show that the Fock–Goncharov cluster complex is a fan and that $c$-vectors are sign-coherent.
- Expositions of finite type: Fomin–Williams–Zelevinsky, Chapter 5; Fomin–Reading. Barot–Geiss–Zelevinsky (2006) give another criterion.
- The two-dimensional step follows Kontsevich–Soibelman; Gross (*Tropical geometry and mirror symmetry*, 2011, Theorem 6.38) gives an exposition.

### Where to start

- [Introduction to Cluster Algebras. Chapters 4–5](https://arxiv.org/abs/1707.07190), S. Fomin, L. Williams, A. Zelevinsky, 2017: Chapter 5, the classification in textbook form.
- [Root systems and generalized associahedra](https://arxiv.org/abs/math/0505518), S. Fomin, N. Reading, 2005: root systems and clusters at lecture-note level.
- [Canonical bases for cluster algebras](https://arxiv.org/abs/1411.1394), M. Gross, P. Hacking, S. Keel, M. Kontsevich, 2014: Section 1 (Theorem 1.13, Example 1.14) and Appendix C.

Prerequisites: root systems and Cartan matrices, matrix mutation, Laurent polynomials; for scattering diagrams, basic toric geometry.

### References, with links

- Fomin-Zelevinsky: cluster algebras II, Inventiones Mathematicae (2003) <https://arxiv.org/abs/math/0208229>
- Gross-Hacking-Keel-Kontsevich: canonical bases for cluster algebras, JAMS (2018) <https://arxiv.org/abs/1411.1394>

### Further references

- K. Lee, R. Schiffler, "Positivity for cluster algebras", Ann. of Math. 182 (2015), 73–125. <https://arxiv.org/abs/1306.2415>
- S. Fomin, L. Williams, A. Zelevinsky, "Introduction to Cluster Algebras. Chapters 4–5", preprint, 2017. <https://arxiv.org/abs/1707.07190>
- S. Fomin, N. Reading, "Root systems and generalized associahedra", in Geometric Combinatorics, IAS/Park City Math. Ser. 13 (2007), 63–131. <https://arxiv.org/abs/math/0505518>
- M. Barot, C. Geiss, A. Zelevinsky, "Cluster algebras of finite type and positive symmetrizable matrices", J. London Math. Soc. 73 (2006), 545–564. <https://arxiv.org/abs/math/0411341>

### Lean

#### Official statement

`Mathathon.P14.positive_laurent_phenomenon` in [`lean/MathathonProblems/P14_PositiveLaurentPhenomenon.lean`](lean/MathathonProblems/P14_PositiveLaurentPhenomenon.lean).

```lean
theorem positive_laurent_phenomenon {n f : ℕ} (B : Matrix (Idx n f) (Fin n) ℤ)
    (hB : IsSkewSymmetrizable (B.submatrix Sum.inl id)) (z : AmbientField n f)
    (hz : IsClusterVariable B z) : IsPositiveLaurentPolynomial z
```

This is positivity of the Laurent phenomenon (GHKK, Corollary 0.4), the subject of the title; the finite type classification and the rank reduction asked about in the Desired outcome are not stated.

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Related Lean formalizations

- [AxiomMath/ClusterAlgebras](https://github.com/AxiomMath/ClusterAlgebras/tree/39b9ed03deb3e29effe1ec7fc026847e4593fadf): a Lean proof of the Fomin–Zelevinsky classification of cluster algebras of finite type, with some classical facts taken as hypotheses. It does not cover positivity.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `MvPolynomial`, `LaurentPolynomial`, `FractionRing`, root pairings and root systems (`RootPairing`, `RootPairing.IsRootSystem`) with Cartan matrices of a base (`RootPairing.Base.cartanMatrix`). It has no seeds, mutation, cluster algebras or scattering diagrams; the official Lean file defines seeds and mutation itself.
