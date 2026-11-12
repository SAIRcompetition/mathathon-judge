# 12 · Topological group extensions and the cohomology of classifying spaces

## From the proposer

- **Area:** Algebraic topology
- **Tracks:** Algebra/Number Theory, Geometry

### Description

Let G be a group and A be a G-module. My team will work on the problems of

1) extending the classical correspondence between G-equivariant Yoneda extensions of A and the cohomology of BG to the context of topological groups, and

2) extending the correspondence between group extensions of G by A and the second cohomology of BG to the context of topological groups.

Partial progress was made towards these results in my Master's thesis, and the purpose of the project will be to improve the methods and generalize the results as a byproduct.

### Desired outcome

My team aims to provide a clean exposition of the problem in a way which reduces all the ideas down to undergraduate mathematics + elementary algebraic topology (e.g. Hatcher's book). We plan on making the final artefact easy to navigate at various levels of detail (from a summary for experts to a detailed exposition for advanced undergrads).

### References

Jain, P. (2025). Central Extensions of Topological Groups and the Cohomology of Classifying Spaces [Master's thesis, IISER, Pune]. IISER Pune Digital Repository. https://dr.iiserpune.ac.in/handle/123456789/10020
A copy can be downloaded here:
https://drive.google.com/file/d/1aLrZeLQ014gvvikD1G2gADeI3FxpJ5ea/view?usp=drivesdk

Jain, P., Joshi, R., Spallone, S. (2026). Central Extensions and Cohomology. arXiv preprint. arXiv:2307.14658

## AI-generated notes

<!-- status: Partly solved -->

- **Status:** For a discrete abelian group $A$, Joshi and Spallone (arXiv 2023; version 3 with Jain, 2026) proved that central extensions of a topological group $G$ that is a CW complex inject into $H^2(BG;A)$, bijectively in many cases; Jain's 2025 thesis treats non-discrete $A$ in part, and the version for Yoneda extensions is open.
- **Task:** Extend the correspondences between Yoneda extensions, group extensions and the cohomology of $BG$ to topological groups, with an exposition that needs only undergraduate algebra and Hatcher-level topology.
- **Key reference:** [P. Jain, Central Extensions of Topological Groups and the Cohomology of Classifying Spaces, BS-MS thesis, IISER Pune (2025)](https://dr.iiserpune.ac.in/handle/123456789/10020)
- **Lean:** No official statement.

### Notes

- Versions 1–2 of arXiv:2307.14658 (2023, 2024) are by R. Joshi and S. Spallone; version 3 (31 July 2026), which the page cites, adds P. Jain. According to the thesis (Chapter 8), the new version was to include material from its Chapter 5 that removes a prime-order hypothesis on $A$ in the semidirect-product case; version 3 states that case without it (Theorem 1.1).
- Both sources treat only central extensions ($G$ acting trivially on $A$). Item 2 of the description speaks of extensions of $G$ by a $G$-module $A$; for a nontrivial action the target would be cohomology of $BG$ with local coefficients.
- For non-discrete $A$ the thesis defines $H^n(BG,A)$ as $[BG,B^nA]_*$, using the $\Omega$-spectrum $A,BA,B^2A,\dots$ and the topology of $A$ (so it vanishes for $A=\mathbb R$; thesis, footnote 4), and $E(G,A)$ as the central extensions that are principal $A$-bundles. "The cohomology of $BG$" in the description has to be read in this sense.
- Jain, Joshi and Spallone write that the bijection $E(G,A)\cong H^2(BG,A)$ for discrete $A$ "was observed in the '70s" and is proved in Wigner (1973, Theorem 4) by comparing spectral sequences in simplicial sheaf cohomology. Wigner's paper, and the hypotheses of his theorem, were not checked for these notes.

### The result

For a discrete group $G$ and a $G$-module $A$, classically
$$H^n(G;A)=\operatorname{Ext}^n_{\mathbb ZG}(\mathbb Z,A)\cong H^n(BG;A)\quad\text{(local coefficients)},$$
where $\operatorname{Ext}^n$ is the group of Yoneda extensions $0\to A\to E_n\to\cdots\to E_1\to\mathbb Z\to0$ of $G$-modules under Baer sum, and $H^2(G;A)$ classifies the extensions of $G$ by $A$; for trivial action these form the group $E(G,A)$ of central extensions.

Now let $G$ be a Hausdorff topological group that is a CW complex (for example a Lie group) and $A$ a discrete abelian group, so that a central extension of $G$ by $A$ is an $A$-sheeted cover of $G$. Jain, Joshi and Spallone use Milgram–Steenrod classifying spaces to define a natural homomorphism
$$\alpha_G\colon E(G,A)\to H^2(BG;A),$$
equal to the classical bijection when $G$ is discrete. Theorems 1.1 and 11.8: $\alpha_G$ is injective, and it is bijective if $G$ is connected, if the identity component $G^\circ$ is simply connected, or if $G=G^\circ\rtimes\pi_0(G)$. The thesis (Theorem 8.0.6) adds the case $H^3(\pi_0(G);A)=0$. Theorem 1.2: a homomorphism $\varphi\colon G'\to G$ lifts to an extension $E$ if and only if $\varphi^*\alpha_G(E)=0$. For orthogonal representations this gives lifting criteria to $\widetilde{O}(V)$ and $\mathrm{Pin}^\pm(V)$ in terms of Stiefel–Whitney classes (Theorem 1.3).

For non-discrete $A$ (thesis), $\alpha$ is still defined but is in general neither injective nor surjective: the Heisenberg group is a nontrivial extension of $\mathbb R^2$ by $\mathbb R$, while $H^2(B\mathbb R^2,\mathbb R)=0$. Every extension in $\ker\alpha$ is a trivial $A$-bundle (Theorem 1.1.1), so $\ker\alpha$ lies in the continuous cohomology $H^2_c(G;A)$. A class there restricts to zero on the second filtration stage $B_2G$ if and only if it has a null-homotopic representative cocycle (Theorem 1.1.2). Maps $\alpha^n\colon H^n_c(G;A)\to H^n(BG;A)$ generalize the classical isomorphism, and their kernels are described assuming a conjecture on the cohomology of the Milgram–Steenrod filtration (Conjecture 1.2.1). The thesis leaves open whether Yoneda $n$-extensions of topological $G$-modules map naturally to $H^n(BG;A)$ extending $\alpha^n$, and whether Yoneda 2-extensions correspond to $E(G,A)$ (Questions 10.3.2–10.3.6).

### How the known proof works

Discrete $A$ (Jain–Joshi–Spallone):
- Applying the Milgram–Steenrod functor to $A\to E\to G$ gives a $BA$-bundle $BE\to BG$. Since $B(BA)$ is a $K(A,2)$, such bundles over $BG$ correspond to $[BG,K(A,2)]=H^2(BG;A)$; this defines $\alpha_G$ (§§6.4, 10, 11.1).
- Connected $G$: the homotopy exact sequence of $EG\to BG$ gives $\pi_2(BG)\cong\pi_1(G)$; Hurewicz and universal coefficients give $H^2(BG;A)\cong\operatorname{Hom}(\pi_1(G),A)$, which covering theory identifies with $E(G,A)$, and $\alpha_G$ is minus this bijection (§7, Proposition 11.7).
- Discrete $G$: $\pi_1$ of the total space recovers the extension, so $\alpha_G$ is injective, and matching cellular cochains of $BG$ with inhomogeneous cochains shows that $\alpha_G$ is the classical map (§§7.3, 11.3).
- General $G$: the exact sequences $0\to E(\pi_0,A)\to E(G,A)\to E(G^\circ,A)^{\pi_0}$ and $0\to H^2(B\pi_0;A)\to H^2(BG;A)\to H^2(BG^\circ;A)^{\pi_0}$ and the five lemma give injectivity, and bijectivity when restriction to $G^\circ$ is onto, as for semidirect products (§§3.4, 9, 11.5).

Non-discrete $A$ (thesis): $\alpha$ is computed on cocycles through the filtration $B_1G\subset B_2G\subset\cdots$ of $BG$, whose quotients are $B_nG/B_{n-1}G\cong\Sigma^nG^{\wedge n}$ (Chapters 5–7).

### Background

- A continuous 2-cocycle $G\times G\to A$ gives an extension that is a trivial $A$-bundle, and this identifies $H^2_c(G;A)$ with the topologically trivial extensions (thesis, §1.1). The thesis cites Wagemann and Wockel for the identification of all extensions that are principal bundles with locally continuous cohomology $H^2_{lc}(G;A)$.
- Stasheff (1978) surveys the cohomology theories of topological groups and their relation to classifying spaces. According to the thesis (§10.3), his §3 matches topologically trivial Yoneda extensions with $H^n_c(G;A)$, and Wigner (1973, Theorem 4) compares Yoneda extensions with the sheaf cohomology of $BG$ for discrete $A$ and Lie groups $G$.
- Wagemann and Wockel (2015) treat the different cohomology theories of topological and Lie groups, including locally continuous cochains, in one framework and compare them. Neeb, Wagemann and Wockel (2013) compute lifting obstructions for principal bundles from homotopy data; for connected $G$ their obstruction class essentially agrees with $\alpha_G$ (Jain–Joshi–Spallone, Introduction).

### Where to start

- [Central Extensions and Cohomology](https://arxiv.org/abs/2307.14658), P. Jain, R. Joshi, S. Spallone, 2026: the discrete case in 34 pages; §7 treats connected groups and §11 defines $\alpha_G$ and proves Theorem 11.8.
- [Central Extensions of Topological Groups and the Cohomology of Classifying Spaces](https://dr.iiserpune.ac.in/handle/123456789/10020), P. Jain, 2025: Chapter 1 summarizes the results, Chapter 10 lists the open questions, including the Yoneda version (§10.3).
- [Continuous cohomology of groups and classifying spaces](https://doi.org/10.1090/S0002-9904-1978-14488-7), J. D. Stasheff, 1978: survey of the older theories.
- [Algebraic Topology](https://pi.math.cornell.edu/~hatcher/AT/ATpage.html), A. Hatcher, 2002: the level the proposer aims for; §1.B ($K(G,1)$ spaces) and Theorem 4.57 ($H^n(X;A)=[X,K(A,n)]$) are the main tools.

Prerequisites: group cohomology and Ext (e.g. Brown, *Cohomology of Groups*, Chapters III–IV), covering spaces and Eilenberg–MacLane spaces, principal bundles and classifying spaces.

### References, with links

- P. Jain, Central Extensions of Topological Groups and the Cohomology of Classifying Spaces, Master's (BS-MS) thesis, IISER Pune (2025), IISER Pune Digital Repository. <https://dr.iiserpune.ac.in/handle/123456789/10020> (copy on Google Drive: <https://drive.google.com/file/d/1aLrZeLQ014gvvikD1G2gADeI3FxpJ5ea/view?usp=drivesdk>)
- P. Jain, R. Joshi, S. Spallone, Central Extensions and Cohomology, arXiv:2307.14658 (version 3, 2026). <https://arxiv.org/abs/2307.14658>

### Further references

- D. Wigner, "Algebraic cohomology of topological groups", Trans. Amer. Math. Soc. 178 (1973), 83–93. <https://doi.org/10.1090/S0002-9947-1973-0338132-7>
- J. D. Stasheff, "Continuous cohomology of groups and classifying spaces", Bull. Amer. Math. Soc. 84 (1978), 513–530. <https://doi.org/10.1090/S0002-9904-1978-14488-7>
- N. E. Steenrod, "Milgram's classifying space of a topological group", Topology 7 (1968), 349–368. <https://doi.org/10.1016/0040-9383(68)90012-8>
- K.-H. Neeb, F. Wagemann, C. Wockel, "Making lifting obstructions explicit", Proc. London Math. Soc. 106 (2013), 589–620. <https://arxiv.org/abs/1108.5853>
- F. Wagemann, C. Wockel, "A cocycle model for topological and Lie group cohomology", Trans. Amer. Math. Soc. 367 (2015), 1871–1909. <https://arxiv.org/abs/1110.3304>
- K. S. Brown, *Cohomology of Groups*, Graduate Texts in Mathematics 87, Springer (1982); Chapter IV, low-dimensional cohomology and group extensions. <https://doi.org/10.1007/978-1-4684-9327-6>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs classifying spaces of topological groups and a cohomology theory of spaces (singular cohomology, or the spectrum $B^nA$ for non-discrete $A$), which Mathlib does not have yet.

#### Related Lean formalizations

- [H2 obstruction to lifting discrete matrix representations](https://palomar-registry.org/entry?id=PALOMAR-2026-10-15-000010&version=1), Palomar registry (Lean-checked, trust level high): a discrete matrix representation lifts across a surjection of commutative rings with square-zero kernel exactly when an explicit second-cohomology obstruction vanishes; discrete groups only.

#### Mathlib

Mathlib has group cohomology of discrete groups (`groupCohomology`, with `groupCohomologyIsoExt` identifying $H^n(G,A)$ with $\operatorname{Ext}^n(k,A)$, and low-degree cocycles up to `groupCohomology.H2`), group extensions (`GroupExtension`), continuous cohomology of topological groups by homogeneous cochains (`continuousCohomology`), the simplicial universal cover of a discrete group (`classifyingSpaceUniversalCover`), covering maps (`IsCoveringMap`), fibre bundles (`FiberBundle`), homotopy groups (`HomotopyGroup`), singular homology (`singularHomologyFunctor`) and geometric realization (`SSet.toTop`). It has no classifying spaces of topological groups, no singular cohomology or Eilenberg–MacLane spaces, no principal bundles and no Yoneda description of $\operatorname{Ext}^n$; the relation between `H2` and group extensions is listed as a TODO even for discrete groups (`Mathlib/RepresentationTheory/Homological/GroupCohomology/LowDegree.lean`).
