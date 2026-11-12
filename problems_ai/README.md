# Mathathon Round 1 problems, with AI-generated notes

One page per problem of the Mathathon Round 1 problem sheet (140 problems). Each page has two parts:

- **From the proposer**: the proposer's title, area, tracks, description, desired outcome and references, taken from the sheet without any change to the wording (only the spacing of the title, area and tracks lines is tidied), followed by any hyperlinks attached to the sheet's cells under **Reference links**. [`../problems_original/`](../problems_original/) has the exact copy of the sheet.
- **AI-generated notes**: what is known, how the known proofs work, background, where to start, references with links, and the Lean status.

**Everything under "AI-generated notes" was written by AI and may contain errors.** So were the Status and Lean columns of the table below and the official Lean statements in [`lean/`](lean/). Use them as a reference; the proposer's text is authoritative.

## Where the notes come from

- **Carried over** from the earlier problem list (94 problems, in `problems/` at commit `1f49cd4`, 2026-11-10; that folder is no longer tracked): problems 1–93 except those listed below (85 problems). In 81 of them the notes are unchanged; in problems 33, 91, 92 and 93 only links that depend on the problem numbering were updated. For these problems the sheet text differs from the earlier list's copy at most in typo-level details (single characters, escaping, angle brackets around links), so the notes still apply.
- **Revised** by Claude Opus 5.5 on 2026-11-11 because the sheet text differs substantially from the earlier list's copy: problems 2, 9, 34, 40, 54, 56 and 70.
- **New**, written by Claude Opus 5.5 on 2026-11-11: problems 12 and 94–140.

The links in the revised and new notes were checked on 2026-11-11. Three could not be reached by the automated check: an Oxford University Press book page that refuses automated access, and the ECCC and Kyungpook Mathematical Journal sites, which did not respond.

## Changes from the earlier problem list

- Problems 1–88 keep their numbers. Earlier problem 89 (motivating irrationality and transcendence proofs) is not in the sheet and has no page here. Earlier problems 90–94 are now problems 89–93. Problems 94–140 are new.
- Problem 12 was withheld in the earlier list; the sheet now gives its text.
- The sheet text of problems 2, 9, 34, 40, 54, 56 and 70 differs substantially from the earlier list's copy (problem 40 also has a new title).
- Page titles are now the proposers' titles from the sheet rather than shortened titles.

## Lean

[`lean/`](lean/) is a Lean project for Lean v4.35.0 and Mathlib `v4.35.0` with the official Lean statements, copied from the earlier list's `problems/lean/` (commit `1f49cd4`). The only changes are the renumbering of three files, `P92_EuclideanRamsey.lean` → `P91_…`, `P93_Erdos173.lean` → `P92_…` and `P94_PrimeGaps186.lean` → `P93_…`, and the problem number in their first comment line; namespaces and declarations are unchanged. The statements were written by AI for the earlier problem list; no statements have been written for the new problems. Problems marked ✓ in the table have an official statement. For problem 56 the official statement (OpenAI's running-time bound with polynomial space) is stronger than what the revised problem asks for; its page explains the difference. The statements of the other revised problems still match their text.

To check the statements, run `lake exe cache get` and then `lake build` in `lean/`. On 2026-11-11 the build completed without errors; every statement is stated with `sorry`, as intended.

## Updating after the sheet changes

1. Download the sheet exports into `problems_original/source/` and run `python3 problems_original/split_sheet.py` (see [`../problems_original/README.md`](../problems_original/README.md)).
2. Run `python3 problems_ai/refresh_proposer_text.py`. It rewrites the title line and the **From the proposer** section of every page from `../problems_original/`, checks them against the sheet text, adds a placeholder page for any new problem and rebuilds the table below. It never changes the notes.
3. Review the notes of every problem whose text changed, and write notes for the placeholders.

## Problems

Status (AI-generated): Proved, Proved (preprint), Disproved, Disproved (preprint), Open, Partly solved, or Not a single theorem (the problem asks for an exposition, a simplification or a programme rather than one theorem). "(preprint)" means the decisive work has not yet appeared in a refereed venue.

<!-- problem-index:start -->
| ID | Problem | Tracks | Status | Lean |
|---|---|---|---|---|
| 1 | [Iskovskikh classification of 3-folds](001-iskovskikh-classification-of-3-folds.md) | Geometry | Proved | — |
| 2 | [Robertson-Seymour Graph Minor Theorem](002-robertson-seymour-graph-minor-theorem.md) | Combinatorics | Proved | ✓ |
| 3 | [Definability of the Turing jump](003-definability-of-the-turing-jump.md) | Computation/Applied Math | Proved | ✓ |
| 4 | [Unrepresentable finite lattice](004-unrepresentable-finite-lattice.md) | Algebra/Number Theory | Open | ✓ |
| 5 | [Classification of finite simple groups](005-classification-of-finite-simple-groups.md) | Algebra/Number Theory | Proved | — |
| 6 | [abc conjecture](006-abc-conjecture.md) | Algebra/Number Theory | Open | ✓ |
| 7 | [NP-completeness of HP protein folding model](007-np-completeness-of-hp-protein-folding-model.md) | Computation/Applied Math | Proved | ✓ |
| 8 | [Weak factorization for the biholomorphic Hardy space](008-weak-factorization-for-the-biholomorphic-hardy-space.md) | Analysis | Proved | ✓ |
| 9 | [Clustered Hadwiger's theorem](009-clustered-hadwigers-theorem.md) | Combinatorics | Proved | ✓ |
| 10 | [well-posedness and stability of Landau equation, Vlasov-Landau equations and Boltzmann equation.](010-well-posedness-and-stability-of-landau-equation-vlasov.md) | Computation/Applied Math, Analysis | Not a single theorem | — |
| 11 | [Mazur's Collatz Paper](011-mazurs-collatz-paper.md) | Algebra/Number Theory, Analysis | Proved (preprint) | ✓ |
| 12 | [Topological group extensions and the cohomology of classifying spaces](012-topological-group-extensions-and-the-cohomology-of.md) | Algebra/Number Theory, Geometry | Partly solved | — |
| 13 | [Hassett divisors and the lattice-theoretic picture of cubic fourfold rationality](013-hassett-divisors-and-the-lattice-theoretic-picture-of-cubic.md) | Geometry | Not a single theorem | — |
| 14 | [Positive Laurent phenomenon](014-positive-laurent-phenomenon.md) | Algebra/Number Theory | Proved | ✓ |
| 15 | [Kepler’s Theorem](015-keplers-theorem.md) | Algebra/Number Theory, Geometry | Proved | ✓ |
| 16 | [The Four-Color Theorem](016-the-four-color-theorem.md) | Combinatorics | Proved | ✓ |
| 17 | [Hodge Modules](017-hodge-modules.md) | Geometry | Proved | — |
| 18 | [Positive rates](018-positive-rates.md) | Analysis | Disproved | ✓ |
| 19 | [Beyond Endoscopy for GL_2: Reconstruction, Simplification, and Verification of Existing Proofs](019-beyond-endoscopy-for-gl-2-reconstruction-simplification-and.md) | Algebra/Number Theory | Not a single theorem | — |
| 20 | [Hoeffding's D Statistic](020-hoeffdings-d-statistic.md) | Computation/Applied Math, Analysis | Not a single theorem | — |
| 21 | [Gaps in Spectral Gap Literature](021-gaps-in-spectral-gap-literature.md) | Combinatorics, Analysis | Proved | ✓ |
| 22 | [Compression as a Framework for Undecidability and Computational Complexity](022-compression-as-a-framework-for-undecidability-and.md) | Computation/Applied Math | Not a single theorem | — |
| 23 | [Finite-time blowup for the forced three-dimensional incompressible Navier–Stokes equations](023-finite-time-blowup-for-the-forced-three-dimensional.md) | Analysis, Computation/Applied Math | Proved (preprint) | ✓ |
| 24 | [Proving the Gaussian correlation inequality](024-proving-the-gaussian-correlation-inequality.md) | Analysis | Proved | ✓ |
| 25 | [Planar Halving Lines](025-planar-halving-lines.md) | Geometry | Proved (preprint) | ✓ |
| 26 | [Kuroda’s Class Number Formula and Correcting the Computation of Unit Indices](026-kurodas-class-number-formula-and-correcting-the-computation.md) | Algebra/Number Theory | Not a single theorem | — |
| 27 | [Categorical groups and homotopy types](027-categorical-groups-and-homotopy-types.md) | Algebra/Number Theory, Geometry | Proved | ✓ |
| 28 | [Singularity Expansion of Scattered Waves](028-singularity-expansion-of-scattered-waves.md) | Analysis | Proved | — |
| 29 | [Simplify Numerical PDE Algorithms](029-simplify-numerical-pde-algorithms.md) | Computation/Applied Math, Analysis | Not a single theorem | — |
| 30 | [Jacquet-Langlands correspondence for GL(2)](030-jacquet-langlands-correspondence-for-gl-2.md) | Algebra/Number Theory | Proved | — |
| 31 | [Quantitative Onset and Nonlinear Evolution of Tollmien–Schlichting Instabilities in Navier–Stokes Flows](031-quantitative-onset-and-nonlinear-evolution-of.md) | Computation/Applied Math, Analysis | Not a single theorem | — |
| 32 | [Low-memory structure of Nesterov-like acceleration (I made this title)](032-low-memory-structure-of-nesterov-like-acceleration-i-made.md) | Computation/Applied Math, Analysis | Open | — |
| 33 | [Hadwiger-Nelson Problem - The Euclidean plane is not five-colorable](033-hadwiger-nelson-problem-the-euclidean-plane-is-not-five.md) | Combinatorics | Proved (preprint) | ✓ |
| 34 | [Monstrous moonshine](034-monstrous-moonshine.md) | Algebra/Number Theory, Computation/Applied Math | Proved | — |
| 35 | [Asymptotic Growth of Integer Partitions into Powers](035-asymptotic-growth-of-integer-partitions-into-powers.md) | Combinatorics, Algebra/Number Theory | Partly solved | — |
| 36 | [Probabilistic and Asymptotic Approaches to the Hook-Length Formula for Young Tableaux](036-probabilistic-and-asymptotic-approaches-to-the-hook-length.md) | Combinatorics, Analysis | Proved | ✓ |
| 37 | [SLn P=W Conjecture via endoscopy](037-sln-p-w-conjecture-via-endoscopy.md) | Geometry | Proved (preprint) | — |
| 38 | [Understanding a Proposed Counterexample to Reduced Baum–Connes Injectivity](038-understanding-a-proposed-counterexample-to-reduced.md) | Algebra/Number Theory | Disproved (preprint) | — |
| 39 | [Hylland's random dictatorship theorem for cardinal preferences](039-hyllands-random-dictatorship-theorem-for-cardinal.md) | Computation/Applied Math | Proved | ✓ |
| 40 | [The Quasi-Riemann Hypothesis](040-the-quasi-riemann-hypothesis.md) | Algebra/Number Theory | Proved (preprint) | ✓ |
| 41 | [Digesting Wiles’ proof of Fermat’s Last Theorem](041-digesting-wiles-proof-of-fermats-last-theorem.md) | Algebra/Number Theory | Proved | ✓ |
| 42 | [Selmer Groups and Euler Systems](042-selmer-groups-and-euler-systems.md) | Algebra/Number Theory | Not a single theorem | — |
| 43 | [Gromov's Simplicial Volume Vanishing Conjecture](043-gromovs-simplicial-volume-vanishing-conjecture.md) | Geometry | Proved (preprint) | — |
| 44 | [Yau's conjecture](044-yaus-conjecture.md) | Analysis, Geometry | Disproved (preprint) | ✓ |
| 45 | [The stable Bernstein problem](045-the-stable-bernstein-problem.md) | Geometry | Proved (preprint) | — |
| 46 | [The power saving for planar unit distances](046-the-power-saving-for-planar-unit-distances.md) | Combinatorics, Geometry | Proved (preprint) | ✓ |
| 47 | [Sorting Networks in O(log(n)) Depth](047-sorting-networks-in-o-log-n-depth.md) | Computation/Applied Math | Proved | ✓ |
| 48 | [Rigidity of enumeration degrees](048-rigidity-of-enumeration-degrees.md) | Computation/Applied Math | Proved (preprint) | ✓ |
| 49 | [Tight Dimension Dependence for Convex Bandits](049-tight-dimension-dependence-for-convex-bandits.md) | Computation/Applied Math, Analysis | Open | — |
| 50 | [Hilbert’s tenth problem over the rationals](050-hilberts-tenth-problem-over-the-rationals.md) | Algebra/Number Theory | Proved (preprint) | ✓ |
| 51 | [Non-uniqueness or uniqueness of Glimm-Lax solutions](051-non-uniqueness-or-uniqueness-of-glimm-lax-solutions.md) | Computation/Applied Math, Analysis | Partly solved | — |
| 52 | [Inviscid limit for 1-d compressible MHD](052-inviscid-limit-for-1-d-compressible-mhd.md) | Computation/Applied Math, Analysis | Open | — |
| 53 | [Taxonomizing mathematics: an exploration with minimal surfaces](053-taxonomizing-mathematics-an-exploration-with-minimal.md) | Geometry | Not a single theorem | — |
| 54 | [Dissecting OpenAI’s counterexamples to the Auslander-Reiten and Second Tachikawa conjecture for finite-dimensional algebras](054-dissecting-openais-counterexamples-to-the-auslander-reiten.md) | Algebra/Number Theory | Disproved (preprint) | ✓ |
| 55 | [A Simpler Counterexample to Hadwiger's Conjecture](055-a-simpler-counterexample-to-hadwigers-conjecture.md) | Combinatorics | Disproved (preprint) | ✓ |
| 56 | [Simplifying the Disproof of the Exponential Time Hypothesis](056-simplifying-the-disproof-of-the-exponential-time-hypothesis.md) | Computation/Applied Math | Disproved (preprint) | ✓ |
| 57 | [Simplifying the Proof of Barnette's Conjecture](057-simplifying-the-proof-of-barnettes-conjecture.md) | Combinatorics | Proved (preprint) | ✓ |
| 58 | [Simplifying the Proof of Seymour's Second-Neighborhood Conjecture](058-simplifying-the-proof-of-seymours-second-neighborhood.md) | Combinatorics | Proved (preprint) | ✓ |
| 59 | [Digesting openAI's claimed proof of Bloch's conjecture](059-digesting-openais-claimed-proof-of-blochs-conjecture.md) | Geometry | Proved (preprint) | — |
| 60 | [Gigli’s characterization of Alexandrov curvature](060-giglis-characterization-of-alexandrov-curvature.md) | Geometry | Proved (preprint) | — |
| 61 | [Extended table for knotted surfaces](061-extended-table-for-knotted-surfaces.md) | Algebra/Number Theory, Geometry | Not a single theorem | — |
| 62 | [Infinite Two-Generated Groups of Bounded Exponent (Burnside Problem)](062-infinite-two-generated-groups-of-bounded-exponent-burnside.md) | Algebra/Number Theory | Proved | ✓ |
| 63 | [Construction of an Infinite Finitely Presented Nilsemigroup](063-construction-of-an-infinite-finitely-presented-nilsemigroup.md) | Algebra/Number Theory | Proved | ✓ |
| 64 | [Polynomial Identities and the Specht Problem](064-polynomial-identities-and-the-specht-problem.md) | Algebra/Number Theory | Proved | ✓ |
| 65 | [Subexponential Upper Bounds for the Nilpotency Index of Associative Algebras](065-subexponential-upper-bounds-for-the-nilpotency-index-of.md) | Algebra/Number Theory | Proved | ✓ |
| 66 | [Invariant subspace problem: the Enflo–Read counterexamples](066-invariant-subspace-problem-the-enfloread-counterexamples.md) | Analysis | Disproved | ✓ |
| 67 | [Monsky's theorem and Stein's conjecture on equal-area dissections](067-monskys-theorem-and-steins-conjecture-on-equal-area.md) | Combinatorics, Geometry | Partly solved | ✓ |
| 68 | [Non-parametric Bernstein von-Mises theorems](068-non-parametric-bernstein-von-mises-theorems.md) | Analysis | Not a single theorem | — |
| 69 | [A Systematic Study of Inverse Galois Problem](069-a-systematic-study-of-inverse-galois-problem.md) | Geometry | Open | ✓ |
| 70 | [Monochromatic Triangles in the Plane](070-monochromatic-triangles-in-the-plane.md) | Geometry | Disproved (preprint) | ✓ |
| 71 | [Existence of the Core in Approval-Based Committee Elections](071-existence-of-the-core-in-approval-based-committee-elections.md) | Computation/Applied Math | Proved (preprint) | ✓ |
| 72 | [Cayley’s Formula: A Proof Zoo](072-cayleys-formula-a-proof-zoo.md) | Combinatorics | Proved | ✓ |
| 73 | [Lagrange Inversion: Combinatorial Proofs](073-lagrange-inversion-combinatorial-proofs.md) | Combinatorics | Proved | ✓ |
| 74 | [The Cap Set Problem and the Slice Rank Method](074-the-cap-set-problem-and-the-slice-rank-method.md) | Combinatorics | Proved | ✓ |
| 75 | [Stanley's poset inequality](075-stanleys-poset-inequality.md) | Combinatorics, Computation/Applied Math, Geometry | Proved | ✓ |
| 76 | [The circulant Hadamard conjecture](076-the-circulant-hadamard-conjecture.md) | Combinatorics, Algebra/Number Theory | Proved (preprint) | ✓ |
| 77 | [Topological Drinfeld homomorphism and the strong Macdonald conjecture](077-topological-drinfeld-homomorphism-and-the-strong-macdonald.md) | Algebra/Number Theory, Geometry | Proved | — |
| 78 | [Understanding Matrix Multiplication](078-understanding-matrix-multiplication.md) | Computation/Applied Math | Proved (preprint) | ✓ |
| 79 | [The Painlevé paradox](079-the-painleve-paradox.md) | Analysis, Computation/Applied Math | Not a single theorem | — |
| 80 | [Surface intersection with correct topology](080-surface-intersection-with-correct-topology.md) | Geometry, Computation/Applied Math | Not a single theorem | — |
| 81 | [Chowla’s conjecture for two-point correlations](081-chowlas-conjecture-for-two-point-correlations.md) | Number Theory/Algebra | Proved (preprint) | ✓ |
| 82 | [Kadison's generator problem](082-kadisons-generator-problem.md) | Number Theory/Algebra | Proved (preprint) | ✓ |
| 83 | [Cannon's conjecture and friends](083-cannons-conjecture-and-friends.md) | Geometry | Proved (preprint) | ✓ |
| 84 | [Exotic hyperbolic groups from 2-complexes](084-exotic-hyperbolic-groups-from-2-complexes.md) | Number Theory/Algebra, Geometry | Not a single theorem | — |
| 85 | [Different Effective Equation with shared Brownian Limit](085-different-effective-equation-with-shared-brownian-limit.md) | Analysis | Not a single theorem | — |
| 86 | [Ulam Floating Problem perimetral density 1/3,1/4,1/5](086-ulam-floating-problem-perimetral-density-1-3-1-4-1-5.md) | Analysis, Geometry | Partly solved | — |
| 87 | [Towards a uniform natural proof of the nonnesting-noncrossing correspondence, starting with type B](087-towards-a-uniform-natural-proof-of-the-nonnesting.md) | Combinatorics | Partly solved | — |
| 88 | [Classification of minimal cones.](088-classification-of-minimal-cones.md) | Analysis | Open | — |
| 89 | [Projectivity of Gieseker Moduli on the Projective Plane without GIT](089-projectivity-of-gieseker-moduli-on-the-projective-plane.md) | Geometry, Number Theory/Algebra | Proved | — |
| 90 | [Gittins Index Optimality for Scheduling with Time-Varying Holding Costs](090-gittins-index-optimality-for-scheduling-with-time-varying.md) | Computation/Applied Math | Partly solved | — |
| 91 | [A classification of finite Euclidean Ramsey configurations](091-a-classification-of-finite-euclidean-ramsey-configurations.md) | Combinatorics | Proved (preprint) | ✓ |
| 92 | [Erdős Problem #173: monochromatic congruent triangles in 2-colourings of the plane](092-erdos-problem-173-monochromatic-congruent-triangles-in-2.md) | Combinatorics | Proved (preprint) | ✓ |
| 93 | [An improvement towards bounded gaps between primes](093-an-improvement-towards-bounded-gaps-between-primes.md) | Numer Theory/Algebra | Proved (preprint) | ✓ |
| 94 | [Summing multiplicative functions/counting primes](094-summing-multiplicative-functions-counting-primes.md) | Computation/Applied Math, Number Theory/Algebra | Not a single theorem | — |
| 95 | [Quasi-Orders For the Lefthanded Lovász Local Lemma](095-quasi-orders-for-the-lefthanded-lovasz-local-lemma.md) | Combinatorics | Not a single theorem | — |
| 96 | [Counterexamples to polynomial removal for ordered binary matrices](096-counterexamples-to-polynomial-removal-for-ordered-binary.md) | Combinatorics | Disproved (preprint) | — |
| 97 | [Model Completeness of the Real Exponential Field](097-model-completeness-of-the-real-exponential-field.md) | ????? | Proved | — |
| 98 | [An Elementary Proof of the Deligne–Sullivan Theorem and Virtual Stable Parallelizability of Compact Hyperbolic Manifolds](098-an-elementary-proof-of-the-delignesullivan-theorem-and.md) | Geometry | Proved | — |
| 99 | [Towards a combinatorial proof of Schur positivity for LLT polynomials of unit interval graphs](099-towards-a-combinatorial-proof-of-schur-positivity-for-llt.md) | Combinatorics | Partly solved | — |
| 100 | [Hironaka’s Resolution of Singularity: Understanding the Algorithm and Its Later Simplifications](100-hironakas-resolution-of-singularity-understanding-the.md) | Number Theory/Algebra, Geometry | Proved | — |
| 101 | [Unraveling Preiss' Geometry of Measures](101-unraveling-preiss-geometry-of-measures.md) | Geometry, Analysis | Proved | — |
| 102 | [Log Sobolev inequality for sine Gordon](102-log-sobolev-inequality-for-sine-gordon.md) | Analysis | Proved (preprint) | — |
| 103 | [Rethinking Special Relativity: Axiomatizations and Underlying Mathematical Structures](103-rethinking-special-relativity-axiomatizations-and.md) | Computation/Applied Math | Not a single theorem | — |
| 104 | [Hairer blackbox theorem](104-hairer-blackbox-theorem.md) | Analysis | Proved | — |
| 105 | [Where is the topology hiding, which is missing from a Newton polygon?](105-where-is-the-topology-hiding-which-is-missing-from-a-newton.md) | Geometry | Proved | — |
| 106 | [Game-theoretic probability](106-game-theoretic-probability.md) | Computation/Applied Math, Analysis | Proved | — |
| 107 | [Why regular polygons have the fewest distances: an illustrated guide to Altman's theorem](107-why-regular-polygons-have-the-fewest-distances-an.md) | Geometry, Combinatorics | Proved | — |
| 108 | [Generalizing the zeta(5) irrationality argument](108-generalizing-the-zeta-5-irrationality-argument.md) | Number Theory/Algebra | Open | — |
| 109 | [Tightening the commutator-scaling Trotter error bound at fourth order](109-tightening-the-commutator-scaling-trotter-error-bound-at.md) | Computation/Applied Mathematics | Open | — |
| 110 | [Statistical learning theory and neural network generalization bounds](110-statistical-learning-theory-and-neural-network.md) | Analysis, Computation/Applied Math | Proved | — |
| 111 | [Kervaire invariant one theorem](111-kervaire-invariant-one-theorem.md) | Geometry | Proved | — |
| 112 | [Quarter-pinching sphere theorem](112-quarter-pinching-sphere-theorem.md) | Geometry | Proved | — |
| 113 | [Understanding sporadic curves in Mcduff-Shlenk staircase](113-understanding-sporadic-curves-in-mcduff-shlenk-staircase.md) | Geometry | Not a single theorem | — |
| 114 | [Obstruction theory in Lean](114-obstruction-theory-in-lean.md) | Geometry | Proved | — |
| 115 | [Exotic spheres](115-exotic-spheres.md) | Geometry | Proved | — |
| 116 | [LLM-assisted search for a new knot invariant](116-llm-assisted-search-for-a-new-knot-invariant.md) | Geometry | Not a single theorem | — |
| 117 | [Parity obstructions behind Drury’s external vertices conjecture: from n = 4 to n = 5](117-parity-obstructions-behind-drurys-external-vertices.md) | Combinatorics | Open | — |
| 118 | [Formalizing the AKLT spectral gap](118-formalizing-the-aklt-spectral-gap.md) | Computation/Applied mathematics | Partly solved | — |
| 119 | [Freedman's disc embedding theorem and 4D Poincare](119-freedmans-disc-embedding-theorem-and-4d-poincare.md) | Geometry | Proved | — |
| 120 | [Characterizations and identities for probability distributions](120-characterizations-and-identities-for-probability.md) | Analysis | Not a single theorem | — |
| 121 | [Carleson' Theorem on convergence of Fourier series](121-carleson-theorem-on-convergence-of-fourier-series.md) | Analysis | Proved | — |
| 122 | [Efficient Verification of Lean Proofs via Interaction](122-efficient-verification-of-lean-proofs-via-interaction.md) | Computation/Applied Mathematics | Not a single theorem | — |
| 123 | [Schur Number Five](123-schur-number-five.md) | Combinatorics | Proved | — |
| 124 | [Mutually unbiased bases in dimension 6, applied to a 6-dimensional quantum system](124-mutually-unbiased-bases-in-dimension-6-applied-to-a-6.md) | Computaiton/Applied Math | Partly solved | — |
| 125 | [Enumeration of totally symmetric plane partitions](125-enumeration-of-totally-symmetric-plane-partitions.md) | Combinatorics | Proved | — |
| 126 | [Creative Mathematical Thought Partners](126-creative-mathematical-thought-partners.md) | Computation/Applied Mathematics | Not a single theorem | — |
| 127 | [Rogers Ramanujan Identity](127-rogers-ramanujan-identity.md) | Combinatorics | Proved | — |
| 128 | [Why Do Random Sorting Networks Draw Sine Curves?](128-why-do-random-sorting-networks-draw-sine-curves.md) | Computation/Applied Mathematics | Proved | — |
| 129 | [Termination of flips for fourfolds](129-termination-of-flips-for-fourfolds.md) | Geometry | Proved (preprint) | — |
| 130 | [Uniqueness of Finite Quandale Colorings](130-uniqueness-of-finite-quandale-colorings.md) | Geometry | Partly solved | — |
| 131 | [Irrationality of ζ(3) (Apery's Theorem)](131-irrationality-of-3-aperys-theorem.md) | Number Theory/Algebra | Proved | — |
| 132 | [An Interactive Computational Laboratory for Spatial Stochastic Processes and Scaling Limits](132-an-interactive-computational-laboratory-for-spatial.md) | Computation/Applied Mathematics, Analysis | Not a single theorem | — |
| 133 | [Simpson's conjecture](133-simpsons-conjecture.md) | Number Theory/Algebra | Partly solved | — |
| 134 | [Understanding of the relation between Spin structure and K-theory and possible generalization to higher height.](134-understanding-of-the-relation-between-spin-structure-and-k.md) | Computation/Applied Mathematics | Not a single theorem | — |
| 135 | [The Theorem That Secretly Needed Choice](135-the-theorem-that-secretly-needed-choice.md) | Number Theory/Algebra | Proved | — |
| 136 | [The Aaronson–Ambainis Conjecture: From Influential Variables to Quantum Simulation](136-the-aaronsonambainis-conjecture-from-influential-variables.md) | Computation/Applied Mathematics | Proved (preprint) | — |
| 137 | [Tree Symmetries and the p-Adic Valuations of Fuss–Catalan Numbers](137-tree-symmetries-and-the-p-adic-valuations-of-fusscatalan.md) | Combinatorics, Number Theory/Algebra | Open | — |
| 138 | [Koszulness and higher syzygies of generalized matroid Chow rings](138-koszulness-and-higher-syzygies-of-generalized-matroid-chow.md) | Number Theory/Algebra | Open | — |
| 139 | [Critical scales in periodic transport homogenization](139-critical-scales-in-periodic-transport-homogenization.md) | Geometry, Analysis | Not a single theorem | — |
| 140 | [A combinatorial proof of unimodality for (1+q)(1+q^2)...(1+q^n)](140-a-combinatorial-proof-of-unimodality-for-1-q-1-q-2-1-q-n.md) | Combinatorics | Open | — |
<!-- problem-index:end -->
