# 138 · Koszulness and higher syzygies of generalized matroid Chow rings

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/138-koszulness-and-higher-syzygies-of-generalized-matroid-chow.md`](../problems_original/138-koszulness-and-higher-syzygies-of-generalized-matroid-chow.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Koszulness and higher syzygies of generalized matroid Chow rings

### Short description of problem (100 words or less)

Generalized matroid Chow rings encode intersections in wonderful compactifications. Existing theorems establish Koszulness for important building sets, while the broader flag case remains conjectural. We would like to explain and extend the mechanisms behind these results by studying how building-set geometry controls higher syzygies. The goals are sharp combinatorial obstruction and repair criteria, a structural explanation of why natural recursive proofs fail, and hopefully a method for proving Koszulness or detecting its failure beyond known/established cases.

### Submitted Area

Algebraic combinatorics, commutative algebra, matroid theory, combinatorial Hodge theory.

### Proposed Tracks

Number Theory/Algebra

### Reference/source material

1. Basile Coron, https://arxiv.org/abs/2302.13072v3. Section 2.4 gives the standard-monomial framework and the Koszulness theorem. Section 3 develops the proof, Section 4 treats graphical applications, and Section 5.1 identifies more cycle cases.

2. Basile Coron, https://arxiv.org/abs/2604.04550v3. Sections 2 and 3 develop build matroids and flag building sets. Section 9.1, especially Conjecture 9.2, formulates the broader Koszulness problem and connects it with positivity questions.

3. Roberto Pagaria and Gian Marco Pezzoli, https://arxiv.org/abs/2105.04214v2. Section 4.2 describes annihilator quotients through truncation and restriction-contraction. These supply geometric and algebraic tools for investigating recursive proof strategies.

### Desired outcome

Develop a research exposition that reconstructs the existing Koszulness proofs and make their limitations into key structural questions. Explain how nested sets, standard monomials, and boundary geometry govern relations and higher syzygies. The main research setting could start by graphical cycle families, comparisons across bounded ranges of cycle lengths, and controlled enlargements of their building sets (to find arguments that extend uniformly).

Establish sharp combinatorial criteria for minimal generators of distinguished annihilators and the resulting nonlinear module syzygies. Identify which disconnected flat factorizations create these obstructions and which building-set additions remove them. All this to explain how such modifications change the ring and what homological information can be transferred between the original and modified rings.

This could be used to develop an all-degree method beyond known cases. It is also important to keep the distinction between linear generation of an annihilator, a linear module resolution, and Koszulness of the ring. Hopefully a finished contribution would provide a researcher recognize which configurations obstruct some argument and apply the resulting theorem to another building set.

## AI-generated notes

<!-- status: Open -->

> Written by Claude Opus 5.5 on 2026-11-11 from the proposer's text above.

- **Status:** Koszulness is proved for maximal building sets (M. Mastroeni and J. McCullough, 2023), for the minimal building set of the braid matroid (V. Dotsenko, 2022) and for supersolvable built lattices (B. Coron, 2025); B. Coron, L. Ferroni and S. Li conjecture it for all flag built matroids (2026 preprint), and it is open in general.
- **Task:** Explain how the known Koszulness proofs work and where they break, find combinatorial criteria for obstructions in the relations and syzygies, and develop a method to prove or refute Koszulness beyond the known cases.
- **Key reference:** [B. Coron, "Supersolvability of built lattices and Koszulness of generalized Chow rings", Compos. Math. 161 (2025), 1284–1312](https://arxiv.org/abs/2302.13072)
- **Lean:** No official statement.

### Notes

- Reference 2 (arXiv:2604.04550) is "Matroid analogues of Gal's conjecture" by B. Coron, L. Ferroni and S. Li, not by Coron alone. Its Section 9.1 states Conjecture 9.1 (complete built matroids) and Conjecture 9.2 (flag built matroids): in both cases the Chow ring should be Koszul. "Build matroids" in the sheet means built matroids.
- Reference 1, v3 (published in Compositio Math. 2025): §2.4 defines the Feichtner–Yuzvinsky rings, gives two presentations and recalls Feichtner–Yuzvinsky's Gröbner basis; the Koszulness theorems are Theorems 1.3–1.5, proved in §3; §4 treats chordal graphs and the extended modular operad; §5.1 discusses cycle graphs.

### The problem

A built lattice $(L,\mathcal G)$ is a geometric lattice $L$ (the lattice of flats of a simple matroid) with a building set $\mathcal G\subseteq L\setminus\{\hat0\}$: for every $x\in L$, $[\hat0,x]\cong\prod_{y\in\max\mathcal G_{\le x}}[\hat0,y]$. A subset $N\subseteq\mathcal G$ is nested if the join of any $k\ge2$ pairwise incomparable elements of $N$ is not in $\mathcal G$. The Feichtner–Yuzvinsky ring, or Chow ring, is
$$FY(L,\mathcal G)=\mathbb Z[x_G:G\in\mathcal G]\Big/\Big(\textstyle\sum_{G\ge H}x_G\ (H\text{ an atom}),\ \prod_{G\in X}x_G\ (X\text{ not nested})\Big).$$
For realizable $L$ it is the cohomology ring of the De Concini–Procesi wonderful compactification; for $\mathcal G=L\setminus\{\hat0\}$ it is the Chow ring of the matroid. A standard graded algebra $A$ over a field $k$ is Koszul if $k$ has a linear free resolution over $A$; Koszul algebras are quadratic, and a quadratic Gröbner basis implies Koszulness. A built matroid is *flag* if its nested set complex is a flag simplicial complex; then $FY(L,\mathcal G)$ is quadratic (Coron, §5.1).

Conjecture (Coron–Ferroni–Li, Conjecture 9.2): if $(M,\mathcal G)$ is a flag built matroid, its Chow ring is Koszul. Conjecture 9.1 asserts the same for their "complete" built matroids, a class containing all the known cases.

Known:

- Maximal building sets: Chow rings and augmented Chow rings of all matroids are Koszul (Mastroeni–McCullough 2023, answering Dotsenko).
- Braid matroids (complete graphs) with minimal building set, whose Chow rings are the cohomology rings of the moduli spaces $\overline{\mathcal M}_{0,n}$: Koszul (Dotsenko 2022, answering Manin).
- Supersolvable built lattices: $FY(L,\mathcal G)$ has a quadratic Gröbner basis (Coron, Theorem 1.3). This covers minimal building sets of supersolvable lattices, chordal graphs with their building sets of connected closed subgraphs, and the genus-0 components of Losev–Manin's extended modular operad (Theorems 1.4–1.5).
- Cycle graphs $C_n$ with the building set of connected closed subgraphs: Koszul for $n=4,5$; for $n\ge6$ the quadratic relations are not a Gröbner basis in Coron's order, and Koszulness of $C_6$ was open when Coron wrote (§5.1).
- Quadratic is not enough in general: there are quadratic Artinian Gorenstein algebras that are not Koszul (Matsuda 2018, cited by Mastroeni–McCullough).

### How the known proof works

- Gröbner route (Dotsenko; Coron): use the "wonderful" generators $h_G=\sum_{G'\ge G}x_{G'}$ and a suitable order on them, and show that the weight-2 relations form a Gröbner basis. The count matches the algebraic normal monomials with "operadic normal monomials" coming from the operadic structure on built lattices (Coron, Duke 2025); supersolvability is what makes the key Lemma 3.4 work. In the classical presentation by the $x_G$ there is often no quadratic Gröbner basis for any monomial order (Dotsenko's argument for complete graphs, adapted by Mastroeni–McCullough to matroid Chow rings and by Coron to $C_6$).
- Filtration route (Mastroeni–McCullough): build a Koszul filtration in the sense of Conca–Trung–Valla, a family of ideals generated by linear forms, closed under the colon operations needed for induction. In $CH(M)$, $(0:x_E)$ is generated by the hyperplane variables with quotient the Chow ring of the truncation of $M$, and $(0:x_H)$ gives the Chow ring of the restriction $M|_H$. A "total coatom ordering" of the lattice of flats, similar to shellability, keeps the colon ideals linear.
- For arbitrary building sets, Pagaria–Pezzoli (§4.2) compute the annihilators $\mathrm{Ann}(x_g)$ and $\mathrm{Ann}(\sigma_g)$ in terms of the Chow rings of truncation, restriction and contraction: the ingredients a filtration argument would need beyond the maximal case.

### Background

- Feichtner and Yuzvinsky (2004) defined these rings for atomic lattices and gave a Gröbner basis that is rarely quadratic. Adiprasito–Huh–Katz (maximal building sets) and Pagaria–Pezzoli (all building sets, also for polymatroids) proved the Kähler package.
- Koszulness of the cohomology of a formal space gives its rational homotopy Lie algebra by Koszul duality (Berglund), the motivation in Dotsenko's and Coron's papers.
- Coron, Ferroni and Li prove γ-positivity of Chow polynomials for complete and for flag built matroids. They ask (Question 9.3) what makes a Koszul Artinian Gorenstein ring γ-positive; if Koszulness and the Kähler package sufficed, Conjectures 9.1–9.2 would recover their γ-positivity results.

### Where to start

- [Supersolvability of built lattices and Koszulness of generalized Chow rings](https://arxiv.org/abs/2302.13072), B. Coron, 2023: §2.4 (presentations), §3 (the Gröbner basis), §5.1 (cycles and quadraticity).
- [Chow rings of matroids are Koszul](https://arxiv.org/abs/2111.00393), M. Mastroeni, J. McCullough, 2021: §4 (the Koszul filtration and the colon ideals).
- [Matroid analogues of Gal's conjecture](https://arxiv.org/abs/2604.04550), B. Coron, L. Ferroni, S. Li, 2026: §§2–3 (built matroids, complete and flag building sets) and §9.1.
- [Homotopy invariants for $\overline{\mathcal M}_{0,n}$ via Koszul duality](https://arxiv.org/abs/1902.06318), V. Dotsenko, 2019: the original operadic Gröbner argument.

Prerequisites: matroids and geometric lattices, building sets and nested set complexes, Gröbner bases, Koszul algebras (Tor, linear resolutions, Koszul filtrations), basic operads for the Gröbner route.

### References, with links

1. B. Coron, "Supersolvability of built lattices and Koszulness of generalized Chow rings", arXiv:2302.13072v3 (2023); Compos. Math. 161 (2025), no. 6, 1284–1312. <https://arxiv.org/abs/2302.13072v3>, <https://doi.org/10.1112/S0010437X25007493>
2. B. Coron, L. Ferroni and S. Li, "Matroid analogues of Gal's conjecture", arXiv:2604.04550v3 (2026). <https://arxiv.org/abs/2604.04550v3>
3. R. Pagaria and G. M. Pezzoli, "Hodge theory for polymatroids", arXiv:2105.04214v2; Int. Math. Res. Not. IMRN 2023, no. 23, 20118–20168. <https://arxiv.org/abs/2105.04214v2>, <https://doi.org/10.1093/imrn/rnad001>

### Further references

- M. Mastroeni and J. McCullough, "Chow rings of matroids are Koszul", Math. Ann. 387 (2023), 1819–1851. <https://doi.org/10.1007/s00208-022-02506-5>
- V. Dotsenko, "Homotopy invariants for $\overline{\mathcal M}_{0,n}$ via Koszul duality", Invent. Math. 228 (2022), 77–106. <https://doi.org/10.1007/s00222-021-01081-x>
- B. Coron, "Matroids, Feynman categories, and Koszul duality", Duke Math. J. 174 (2025), 2303–2381. <https://arxiv.org/abs/2211.12370>
- E. M. Feichtner and S. Yuzvinsky, "Chow rings of toric varieties defined by atomic lattices", Invent. Math. 155 (2004), 515–536. <https://doi.org/10.1007/s00222-003-0327-2>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs building sets, nested set complexes, Feichtner–Yuzvinsky rings and the Koszul property, which Mathlib does not have yet.

#### Mathlib

Mathlib has matroids and their flats (`Matroid`, `Matroid.IsFlat`), multivariate polynomials and quotient rings, graded algebras (`GradedAlgebra`), monomial orders with a division algorithm (`MonomialOrder`, `MonomialOrder.div`), abstract simplicial complexes (`AbstractSimplicialComplex`) and Tor functors in monoidal categories (`CategoryTheory.Tor`). It has no building sets or nested sets, no Chow rings of matroids, no notion of Gröbner basis or Koszul algebra (Koszul regular sequences are listed as a TODO), and no flag complexes.
