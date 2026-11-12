# 38 · Understanding a Proposed Counterexample to Reduced Baum–Connes Injectivity

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/038-understanding-a-proposed-counterexample-to-reduced.md`](../problems_original/038-understanding-a-proposed-counterexample-to-reduced.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Understanding a Proposed Counterexample to Reduced Baum–Connes Injectivity

### Short description of problem (100 words or less)

The Baum–Connes conjecture predicts that the assembly map, which relates the topology of a group to the K-theory of its reduced group C*-algebra, is an isomorphism. A recent manuscript released by OpenAI claims to construct a finitely generated torsion-free group for which the coefficient-free reduced assembly map fails to be rationally injective, providing a counterexample to the conjecture. This project would examine the proposed proof, explain its main ideas and connection to index theory, and clarify the significance of the claimed counterexample.

### Submitted Area

Noncommutative geometry; operator algebras; K-theory and index theory; geometric group theory.

### Proposed Tracks

Algebra/Number Theory

### Reference/source material

1. “A torsion-free counterexample to reduced Baum–Connes injectivity,” manuscript dated September 23, 2026, released in OpenAI’s mathematics collection. This is the main text to be studied; its introduction states the claimed result and outlines the construction.

2. Paul Baum, Alain Connes, and Nigel Higson, “Classifying Space for Proper Actions and K-Theory of Group C*-algebras,” Contemporary Mathematics 167 (1994), especially Section 3. Background on the assembly map and the formulation of the Baum–Connes conjecture.

### Desired outcome

A clear and mathematically careful exposition of the proposed counterexample, aimed at graduate students with some background in operator algebras, topology, or index theory. Participants would explain the assembly map and the significance of injectivity, reconstruct the main steps of the proposed proof, and clarify how the geometric and analytic parts of the construction fit together.

The exposition should distinguish arguments that have been independently checked from steps that remain unresolved, and develop simpler or alternative explanations where possible. The final project could consist of expository notes and a presentation that make the manuscript more accessible and provide a useful basis for further examination of its claims.

## AI-generated notes

<!-- status: Disproved (preprint) -->

> Written by AI for the earlier problem list, where this was problem 38 (commit `1f49cd4`), and carried over unchanged.

- **Status:** A counterexample to rational injectivity of reduced coefficient-free assembly is claimed in an OpenAI preprint (September 2026), not yet refereed; the conjecture is due to Baum, Connes and Higson (1982–1994).
- **Task:** A careful exposition of the claimed counterexample for graduate students.
- **Key reference:** [A torsion-free counterexample to reduced Baum–Connes injectivity](https://github.com/openai/math/blob/main/preprints/A-Torsion-Free-Counterexample-to-Reduced-Baum-Connes-Injectivity-September-23-2026/paper.pdf), OpenAI, preprint, September 23, 2026.
- **Lean:** No official statement.

### Notes

- OpenAI's collection also contains separate preprints claiming an irrational-trace counterexample to reduced assembly (failure of surjectivity) and a torsion-free counterexample to the Kadison–Kaplansky projection conjecture; all are unrefereed.
- By the preprint, its group is finitely generated but not shown to be finitely presented or exact, and neither maximal rational injectivity nor the classical Novikov conjecture is disproved.

### The result

Baum–Connes–Higson (1994, Conjecture 3.15): for a discrete group $G$ the assembly map from the equivariant K-homology of the classifying space for proper actions to $K_*(C_r^*G)$ is an isomorphism. For torsion-free $G$ it reads
$$\mu_r\colon K_*(BG)\longrightarrow K_*(C_r^*G).$$
Claim (OpenAI, Theorem 1.1): there are a finitely generated torsion-free group $G$, an injective homomorphism $i\colon\mathbb Z^2\to G$ and $c\in H^2(BG;\mathbb Z)$ with $\langle (Bi)^*c,[T^2]\rangle=1$ and $i_*(\beta)=0$ in $K_0(C_r^*G)$, where $\beta$ is a rank-zero Bott generator of $K_0(C_r^*\mathbb Z^2)$. Then $h=(Bi)_*[D_{T^2}]$ has infinite order in $K_0(BG)$ and $\mu_r(h)=0$, so rational injectivity fails.

### How the known proof works

Structure as given in the preprint (Sections 1.3–1.4, Figure 1):
- Sections 2–4: a layered graph with a uniform expansion gap, labelled by interleaved finite streams so that long immersed words occur once; pruning removes short coherent returns (compare Osajda).
- Section 5: voltages in the integral Heisenberg group $H$; matrix-valued symbols spread the Bott class over spectral bands.
- Sections 6–7: a graphical group with embedded "sheets"; integral cycle decompositions give torsion-freeness and the class $c$ detecting the torus generated by $z,x\in H$.
- Section 8: rotations and rescalings on adjacent heights identify the even and odd families of Bott representatives, which forces the height-zero class to vanish; a finite witness passes to a finitely generated subgroup.
- Section 9 fixes the order of all parameter choices.

### Background

- Known cases: Higson–Kasparov (groups acting properly by affine isometries on Hilbert space, including amenable groups), Mineyev–Yu and Lafforgue (hyperbolic groups), Guentner–Higson–Weinberger (split injectivity for linear groups).
- Higson–Lafforgue–Skandalis (2002) gave counterexamples with coefficients and for groupoids; Osajda's graphical groups with Willett–Yu give further coefficient counterexamples.
- Hanke–Schick (2008): maximal assembly is rationally injective on classes dual to cohomology generated in degree at most 2, so maximal assembly still detects $h$.

### Where to start

- [The Baum–Connes conjecture: an extended survey](https://arxiv.org/abs/1905.10081), M. P. Gomez Aparicio, P. Julg, A. Valette, 2019: definitions, history and known cases.
- [Classifying space for proper actions and K-theory of group C*-algebras](https://doi.org/10.1090/conm/167/1292018), P. Baum, A. Connes, N. Higson, 1994: Section 3 defines the assembly map.
- [A torsion-free counterexample to reduced Baum–Connes injectivity](https://github.com/openai/math/blob/main/preprints/A-Torsion-Free-Counterexample-to-Reduced-Baum-Connes-Injectivity-September-23-2026/paper.pdf), OpenAI, 2026: Sections 1.1–1.4 compare the claim with earlier work and chart the dependencies.

Prerequisites: C*-algebras and K-theory, K-homology and index pairings, classifying spaces, expanders, small cancellation.

### References, with links

- “A torsion-free counterexample to reduced Baum–Connes injectivity,” manuscript dated September 23, 2026, released in OpenAI’s mathematics collection. This is the main text to be studied; its introduction states the claimed result and outlines the construction. <https://github.com/openai/math/blob/main/preprints/A-Torsion-Free-Counterexample-to-Reduced-Baum-Connes-Injectivity-September-23-2026/paper.pdf>
- Paul Baum, Alain Connes, and Nigel Higson, “Classifying Space for Proper Actions and K-Theory of Group C*-algebras,” Contemporary Mathematics 167 (1994), especially Section 3. Background on the assembly map and the formulation of the Baum–Connes conjecture. <https://doi.org/10.1090/conm/167/1292018>

### Further references

- N. Higson, V. Lafforgue, G. Skandalis, "Counterexamples to the Baum–Connes conjecture", Geom. Funct. Anal. 12 (2002), 330–354. <https://doi.org/10.1007/s00039-002-8249-5>
- B. Hanke, T. Schick, "The strong Novikov conjecture for low degree cohomology", Geom. Dedicata 135 (2008), 119–127. <https://arxiv.org/abs/0705.2578>
- M. P. Gomez Aparicio, P. Julg, A. Valette, "The Baum–Connes conjecture: an extended survey", in Advances in Noncommutative Geometry, Springer, 2019, 127–244. <https://arxiv.org/abs/1905.10081>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs group C*-algebras, their K-theory, and the Baum–Connes assembly map, which Mathlib does not have yet.

#### Mathlib

Mathlib has C*-algebras (`CStarAlgebra`), the GNS construction, projections, matrices over C*-algebras (`CStarMatrix`) and group algebras (`MonoidAlgebra`). It has no reduced group C*-algebra, operator K-theory, K-homology, classifying spaces $BG$ or assembly map.
