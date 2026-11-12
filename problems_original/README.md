# Mathathon Round 1 problems: the problem sheet, verbatim

This folder is an exact copy of the Mathathon Round 1 problem sheet. Nothing here is AI-generated and nothing has been edited. The same problems with AI-written notes and the official Lean statements are in [`../problems_ai/`](../problems_ai/).

## Source

- Sheet: <https://docs.google.com/spreadsheets/d/1_X8j34wC5WKiL7xiJkCM0JWBMHtM72GAgNe78hhoxQQ/edit?gid=0>
- Exported on 2026-11-11 at about 21:00 PST. The sheet has one tab and 140 problems, with Problem IDs 1 to 140.

## Contents

- [`source/`](source/): the sheet as Google exports it, unchanged.
  - `mathathon-problem-sheet.csv` (SHA-256 `ab2a6775…`): the cell text.
  - `mathathon-problem-sheet.xlsx` (SHA-256 `88ba9eca…`): the cell text, column settings and the hyperlinks attached to cells.
  - `mathathon-problem-sheet-html.zip` (SHA-256 `43094fba…`): the HTML export, which shows which text each hyperlink is attached to.
  - `split_sheet.py`: the script that wrote the problem files below.
- `NNN-<title>.md`: one file per problem, named by its Problem ID and its title.

## What each problem file contains

Each file has one heading per column of the sheet, named exactly as the column header:

1. Problem ID
2. Title/name of problem
3. Short description of problem (100 words or less)
4. Submitted Area
5. Proposed Tracks
6. Reference/source material
7. Desired outcome

The text under each heading is the cell text, byte for byte: no spelling, wording, punctuation, spacing or line breaks were changed. Three things were added around the cells, and none of them changes a cell:

- a first line `# Problem N` and a one-line note saying that the file is a verbatim copy;
- the column headers as section headings;
- for the 31 cells that have a hyperlink attached, a final section **Links in the sheet** that lists the link target. When the link is attached to only part of the cell text, that part is quoted. A plain-text copy of the cell would not show these links.

The column **Short description of problem (100 words or less)** is hidden in the sheet's normal view, so it does not appear in the HTML export; its text is in the CSV and XLSX exports and is copied here like the other columns.

Markdown viewers may join single line breaks into one paragraph and may treat characters such as `*`, `_` and `$` as formatting. The files in `source/` are the reference copies.

## Checking and regenerating

`python3 problems_original/source/split_sheet.py` (Python 3 standard library only) rewrites all 140 problem files from the exports in `source/`. It takes the text from the CSV, takes the links from the HTML export and checks them against the XLSX export, then reads every file back and checks that each field equals its CSV cell exactly. It stops with an error if any check fails.

To pick up later changes to the sheet, download the three exports again into `source/` (File → Download in Google Sheets, or the URLs `…/export?format=csv&gid=0`, `…/export?format=xlsx` and `…/export?format=zip`) and run the script.

## Problems

Titles in this list have line breaks and repeated spaces collapsed; the files keep them as in the sheet.

1. [Iskovskikh classification of 3-folds](001-iskovskikh-classification-of-3-folds.md)
2. [Robertson-Seymour Graph Minor Theorem](002-robertson-seymour-graph-minor-theorem.md)
3. [Definability of the Turing jump](003-definability-of-the-turing-jump.md)
4. [Unrepresentable finite lattice](004-unrepresentable-finite-lattice.md)
5. [Classification of finite simple groups](005-classification-of-finite-simple-groups.md)
6. [abc conjecture](006-abc-conjecture.md)
7. [NP-completeness of HP protein folding model](007-np-completeness-of-hp-protein-folding-model.md)
8. [Weak factorization for the biholomorphic Hardy space](008-weak-factorization-for-the-biholomorphic-hardy-space.md)
9. [Clustered Hadwiger's theorem](009-clustered-hadwigers-theorem.md)
10. [well-posedness and stability of Landau equation, Vlasov-Landau equations and Boltzmann equation.](010-well-posedness-and-stability-of-landau-equation-vlasov.md)
11. [Mazur's Collatz Paper](011-mazurs-collatz-paper.md)
12. [Topological group extensions and the cohomology of classifying spaces](012-topological-group-extensions-and-the-cohomology-of.md)
13. [Hassett divisors and the lattice-theoretic picture of cubic fourfold rationality](013-hassett-divisors-and-the-lattice-theoretic-picture-of-cubic.md)
14. [Positive Laurent phenomenon](014-positive-laurent-phenomenon.md)
15. [Kepler’s Theorem](015-keplers-theorem.md)
16. [The Four-Color Theorem](016-the-four-color-theorem.md)
17. [Hodge Modules](017-hodge-modules.md)
18. [Positive rates](018-positive-rates.md)
19. [Beyond Endoscopy for GL_2: Reconstruction, Simplification, and Verification of Existing Proofs](019-beyond-endoscopy-for-gl-2-reconstruction-simplification-and.md)
20. [Hoeffding's D Statistic](020-hoeffdings-d-statistic.md)
21. [Gaps in Spectral Gap Literature](021-gaps-in-spectral-gap-literature.md)
22. [Compression as a Framework for Undecidability and Computational Complexity](022-compression-as-a-framework-for-undecidability-and.md)
23. [Finite-time blowup for the forced three-dimensional incompressible Navier–Stokes equations](023-finite-time-blowup-for-the-forced-three-dimensional.md)
24. [Proving the Gaussian correlation inequality](024-proving-the-gaussian-correlation-inequality.md)
25. [Planar Halving Lines](025-planar-halving-lines.md)
26. [Kuroda’s Class Number Formula and Correcting the Computation of Unit Indices](026-kurodas-class-number-formula-and-correcting-the-computation.md)
27. [Categorical groups and homotopy types](027-categorical-groups-and-homotopy-types.md)
28. [Singularity Expansion of Scattered Waves](028-singularity-expansion-of-scattered-waves.md)
29. [Simplify Numerical PDE Algorithms](029-simplify-numerical-pde-algorithms.md)
30. [Jacquet-Langlands correspondence for GL(2)](030-jacquet-langlands-correspondence-for-gl-2.md)
31. [Quantitative Onset and Nonlinear Evolution of Tollmien–Schlichting Instabilities in Navier–Stokes Flows](031-quantitative-onset-and-nonlinear-evolution-of.md)
32. [Low-memory structure of Nesterov-like acceleration (I made this title)](032-low-memory-structure-of-nesterov-like-acceleration-i-made.md)
33. [Hadwiger-Nelson Problem - The Euclidean plane is not five-colorable](033-hadwiger-nelson-problem-the-euclidean-plane-is-not-five.md)
34. [Monstrous moonshine](034-monstrous-moonshine.md)
35. [Asymptotic Growth of Integer Partitions into Powers](035-asymptotic-growth-of-integer-partitions-into-powers.md)
36. [Probabilistic and Asymptotic Approaches to the Hook-Length Formula for Young Tableaux](036-probabilistic-and-asymptotic-approaches-to-the-hook-length.md)
37. [SLn P=W Conjecture via endoscopy](037-sln-p-w-conjecture-via-endoscopy.md)
38. [Understanding a Proposed Counterexample to Reduced Baum–Connes Injectivity](038-understanding-a-proposed-counterexample-to-reduced.md)
39. [Hylland's random dictatorship theorem for cardinal preferences](039-hyllands-random-dictatorship-theorem-for-cardinal.md)
40. [The Quasi-Riemann Hypothesis](040-the-quasi-riemann-hypothesis.md)
41. [Digesting Wiles’ proof of Fermat’s Last Theorem](041-digesting-wiles-proof-of-fermats-last-theorem.md)
42. [Selmer Groups and Euler Systems](042-selmer-groups-and-euler-systems.md)
43. [Gromov's Simplicial Volume Vanishing Conjecture](043-gromovs-simplicial-volume-vanishing-conjecture.md)
44. [Yau's conjecture](044-yaus-conjecture.md)
45. [The stable Bernstein problem](045-the-stable-bernstein-problem.md)
46. [The power saving for planar unit distances](046-the-power-saving-for-planar-unit-distances.md)
47. [Sorting Networks in O(log(n)) Depth](047-sorting-networks-in-o-log-n-depth.md)
48. [Rigidity of enumeration degrees](048-rigidity-of-enumeration-degrees.md)
49. [Tight Dimension Dependence for Convex Bandits](049-tight-dimension-dependence-for-convex-bandits.md)
50. [Hilbert’s tenth problem over the rationals](050-hilberts-tenth-problem-over-the-rationals.md)
51. [Non-uniqueness or uniqueness of Glimm-Lax solutions](051-non-uniqueness-or-uniqueness-of-glimm-lax-solutions.md)
52. [Inviscid limit for 1-d compressible MHD](052-inviscid-limit-for-1-d-compressible-mhd.md)
53. [Taxonomizing mathematics: an exploration with minimal surfaces](053-taxonomizing-mathematics-an-exploration-with-minimal.md)
54. [Dissecting OpenAI’s counterexamples to the Auslander-Reiten and Second Tachikawa conjecture for finite-dimensional algebras](054-dissecting-openais-counterexamples-to-the-auslander-reiten.md)
55. [A Simpler Counterexample to Hadwiger's Conjecture](055-a-simpler-counterexample-to-hadwigers-conjecture.md)
56. [Simplifying the Disproof of the Exponential Time Hypothesis](056-simplifying-the-disproof-of-the-exponential-time-hypothesis.md)
57. [Simplifying the Proof of Barnette's Conjecture](057-simplifying-the-proof-of-barnettes-conjecture.md)
58. [Simplifying the Proof of Seymour's Second-Neighborhood Conjecture](058-simplifying-the-proof-of-seymours-second-neighborhood.md)
59. [Digesting openAI's claimed proof of Bloch's conjecture](059-digesting-openais-claimed-proof-of-blochs-conjecture.md)
60. [Gigli’s characterization of Alexandrov curvature](060-giglis-characterization-of-alexandrov-curvature.md)
61. [Extended table for knotted surfaces](061-extended-table-for-knotted-surfaces.md)
62. [Infinite Two-Generated Groups of Bounded Exponent (Burnside Problem)](062-infinite-two-generated-groups-of-bounded-exponent-burnside.md)
63. [Construction of an Infinite Finitely Presented Nilsemigroup](063-construction-of-an-infinite-finitely-presented-nilsemigroup.md)
64. [Polynomial Identities and the Specht Problem](064-polynomial-identities-and-the-specht-problem.md)
65. [Subexponential Upper Bounds for the Nilpotency Index of Associative Algebras](065-subexponential-upper-bounds-for-the-nilpotency-index-of.md)
66. [Invariant subspace problem: the Enflo–Read counterexamples](066-invariant-subspace-problem-the-enfloread-counterexamples.md)
67. [Monsky's theorem and Stein's conjecture on equal-area dissections](067-monskys-theorem-and-steins-conjecture-on-equal-area.md)
68. [Non-parametric Bernstein von-Mises theorems](068-non-parametric-bernstein-von-mises-theorems.md)
69. [A Systematic Study of Inverse Galois Problem](069-a-systematic-study-of-inverse-galois-problem.md)
70. [Monochromatic Triangles in the Plane](070-monochromatic-triangles-in-the-plane.md)
71. [Existence of the Core in Approval-Based Committee Elections](071-existence-of-the-core-in-approval-based-committee-elections.md)
72. [Cayley’s Formula: A Proof Zoo](072-cayleys-formula-a-proof-zoo.md)
73. [Lagrange Inversion: Combinatorial Proofs](073-lagrange-inversion-combinatorial-proofs.md)
74. [The Cap Set Problem and the Slice Rank Method](074-the-cap-set-problem-and-the-slice-rank-method.md)
75. [Stanley's poset inequality](075-stanleys-poset-inequality.md)
76. [The circulant Hadamard conjecture](076-the-circulant-hadamard-conjecture.md)
77. [Topological Drinfeld homomorphism and the strong Macdonald conjecture](077-topological-drinfeld-homomorphism-and-the-strong-macdonald.md)
78. [Understanding Matrix Multiplication](078-understanding-matrix-multiplication.md)
79. [The Painlevé paradox](079-the-painleve-paradox.md)
80. [Surface intersection with correct topology](080-surface-intersection-with-correct-topology.md)
81. [Chowla’s conjecture for two-point correlations](081-chowlas-conjecture-for-two-point-correlations.md)
82. [Kadison's generator problem](082-kadisons-generator-problem.md)
83. [Cannon's conjecture and friends](083-cannons-conjecture-and-friends.md)
84. [Exotic hyperbolic groups from 2-complexes](084-exotic-hyperbolic-groups-from-2-complexes.md)
85. [Different Effective Equation with shared Brownian Limit](085-different-effective-equation-with-shared-brownian-limit.md)
86. [Ulam Floating Problem perimetral density 1/3,1/4,1/5](086-ulam-floating-problem-perimetral-density-1-3-1-4-1-5.md)
87. [Towards a uniform natural proof of the nonnesting-noncrossing correspondence, starting with type B](087-towards-a-uniform-natural-proof-of-the-nonnesting.md)
88. [Classification of minimal cones.](088-classification-of-minimal-cones.md)
89. [Projectivity of Gieseker Moduli on the Projective Plane without GIT](089-projectivity-of-gieseker-moduli-on-the-projective-plane.md)
90. [Gittins Index Optimality for Scheduling with Time-Varying Holding Costs](090-gittins-index-optimality-for-scheduling-with-time-varying.md)
91. [A classification of finite Euclidean Ramsey configurations](091-a-classification-of-finite-euclidean-ramsey-configurations.md)
92. [Erdős Problem #173: monochromatic congruent triangles in 2-colourings of the plane](092-erdos-problem-173-monochromatic-congruent-triangles-in-2.md)
93. [An improvement towards bounded gaps between primes](093-an-improvement-towards-bounded-gaps-between-primes.md)
94. [Summing multiplicative functions/counting primes](094-summing-multiplicative-functions-counting-primes.md)
95. [Quasi-Orders For the Lefthanded Lovász Local Lemma](095-quasi-orders-for-the-lefthanded-lovasz-local-lemma.md)
96. [Counterexamples to polynomial removal for ordered binary matrices](096-counterexamples-to-polynomial-removal-for-ordered-binary.md)
97. [Model Completeness of the Real Exponential Field](097-model-completeness-of-the-real-exponential-field.md)
98. [An Elementary Proof of the Deligne–Sullivan Theorem and Virtual Stable Parallelizability of Compact Hyperbolic Manifolds](098-an-elementary-proof-of-the-delignesullivan-theorem-and.md)
99. [Towards a combinatorial proof of Schur positivity for LLT polynomials of unit interval graphs](099-towards-a-combinatorial-proof-of-schur-positivity-for-llt.md)
100. [Hironaka’s Resolution of Singularity: Understanding the Algorithm and Its Later Simplifications](100-hironakas-resolution-of-singularity-understanding-the.md)
101. [Unraveling Preiss' Geometry of Measures](101-unraveling-preiss-geometry-of-measures.md)
102. [Log Sobolev inequality for sine Gordon](102-log-sobolev-inequality-for-sine-gordon.md)
103. [Rethinking Special Relativity: Axiomatizations and Underlying Mathematical Structures](103-rethinking-special-relativity-axiomatizations-and.md)
104. [Hairer blackbox theorem](104-hairer-blackbox-theorem.md)
105. [Where is the topology hiding, which is missing from a Newton polygon?](105-where-is-the-topology-hiding-which-is-missing-from-a-newton.md)
106. [Game-theoretic probability](106-game-theoretic-probability.md)
107. [Why regular polygons have the fewest distances: an illustrated guide to Altman's theorem](107-why-regular-polygons-have-the-fewest-distances-an.md)
108. [Generalizing the zeta(5) irrationality argument](108-generalizing-the-zeta-5-irrationality-argument.md)
109. [Tightening the commutator-scaling Trotter error bound at fourth order](109-tightening-the-commutator-scaling-trotter-error-bound-at.md)
110. [Statistical learning theory and neural network generalization bounds](110-statistical-learning-theory-and-neural-network.md)
111. [Kervaire invariant one theorem](111-kervaire-invariant-one-theorem.md)
112. [Quarter-pinching sphere theorem](112-quarter-pinching-sphere-theorem.md)
113. [Understanding sporadic curves in Mcduff-Shlenk staircase](113-understanding-sporadic-curves-in-mcduff-shlenk-staircase.md)
114. [Obstruction theory in Lean](114-obstruction-theory-in-lean.md)
115. [Exotic spheres](115-exotic-spheres.md)
116. [LLM-assisted search for a new knot invariant](116-llm-assisted-search-for-a-new-knot-invariant.md)
117. [Parity obstructions behind Drury’s external vertices conjecture: from n = 4 to n = 5](117-parity-obstructions-behind-drurys-external-vertices.md)
118. [Formalizing the AKLT spectral gap](118-formalizing-the-aklt-spectral-gap.md)
119. [Freedman's disc embedding theorem and 4D Poincare](119-freedmans-disc-embedding-theorem-and-4d-poincare.md)
120. [Characterizations and identities for probability distributions](120-characterizations-and-identities-for-probability.md)
121. [Carleson' Theorem on convergence of Fourier series](121-carleson-theorem-on-convergence-of-fourier-series.md)
122. [Efficient Verification of Lean Proofs via Interaction](122-efficient-verification-of-lean-proofs-via-interaction.md)
123. [Schur Number Five](123-schur-number-five.md)
124. [Mutually unbiased bases in dimension 6, applied to a 6-dimensional quantum system](124-mutually-unbiased-bases-in-dimension-6-applied-to-a-6.md)
125. [Enumeration of totally symmetric plane partitions](125-enumeration-of-totally-symmetric-plane-partitions.md)
126. [Creative Mathematical Thought Partners](126-creative-mathematical-thought-partners.md)
127. [Rogers Ramanujan Identity](127-rogers-ramanujan-identity.md)
128. [Why Do Random Sorting Networks Draw Sine Curves?](128-why-do-random-sorting-networks-draw-sine-curves.md)
129. [Termination of flips for fourfolds](129-termination-of-flips-for-fourfolds.md)
130. [Uniqueness of Finite Quandale Colorings](130-uniqueness-of-finite-quandale-colorings.md)
131. [Irrationality of ζ(3) (Apery's Theorem)](131-irrationality-of-3-aperys-theorem.md)
132. [An Interactive Computational Laboratory for Spatial Stochastic Processes and Scaling Limits](132-an-interactive-computational-laboratory-for-spatial.md)
133. [Simpson's conjecture](133-simpsons-conjecture.md)
134. [Understanding of the relation between Spin structure and K-theory and possible generalization to higher height.](134-understanding-of-the-relation-between-spin-structure-and-k.md)
135. [The Theorem That Secretly Needed Choice](135-the-theorem-that-secretly-needed-choice.md)
136. [The Aaronson–Ambainis Conjecture: From Influential Variables to Quantum Simulation](136-the-aaronsonambainis-conjecture-from-influential-variables.md)
137. [Tree Symmetries and the p-Adic Valuations of Fuss–Catalan Numbers](137-tree-symmetries-and-the-p-adic-valuations-of-fusscatalan.md)
138. [Koszulness and higher syzygies of generalized matroid Chow rings](138-koszulness-and-higher-syzygies-of-generalized-matroid-chow.md)
139. [Critical scales in periodic transport homogenization](139-critical-scales-in-periodic-transport-homogenization.md)
140. [A combinatorial proof of unimodality for (1+q)(1+q^2)...(1+q^n)](140-a-combinatorial-proof-of-unimodality-for-1-q-1-q-2-1-q-n.md)
