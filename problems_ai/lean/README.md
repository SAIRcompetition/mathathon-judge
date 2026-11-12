# Mathathon Round 1: official Lean statements

A Lean project for Lean v4.35.0 and Mathlib `v4.35.0` with the official Lean statements of the Round 1 problems: 94 files for 91 problems. Each file states the main claim of one problem as a theorem whose proof is `sorry`. The problem pages in [`../`](../) show each statement and its source.

**All statements were prepared by AI and may contain errors.** Each was either written for Mathathon or adapted from an existing formalization; the comment at the top of every file says which, and for adapted statements gives the source repository, the licence, a link pinned to a commit and what was changed. An adapted file also reproduces the copyright notice of its source file there, and [`NOTICE`](NOTICE) reproduces the `NOTICE` files of the two source repositories that have one. A statement can still differ from the problem in a detail, so read it as a reference alongside the proposer's text, and report a suspected mismatch to the organizers.

To check the statements, run `lake exe cache get` and then `lake build` in this folder.

## Statements

| Problem | File | Source |
|---|---|---|
| [2](../002-robertson-seymour-graph-minor-theorem.md) | [`P02_GraphMinorTheorem.lean`](MathathonProblems/P02_GraphMinorTheorem.lean) | written by AI |
| [3](../003-definability-of-the-turing-jump.md) | [`P03_TuringJumpDefinable.lean`](MathathonProblems/P03_TuringJumpDefinable.lean) | written by AI |
| [4](../004-unrepresentable-finite-lattice.md) | [`P04_UnrepresentableLattice.lean`](MathathonProblems/P04_UnrepresentableLattice.lean) | adapted from openai/math |
| [6](../006-abc-conjecture.md) | [`P06_ABC.lean`](MathathonProblems/P06_ABC.lean) | adapted from google-deepmind/formal-conjectures |
| [7](../007-np-completeness-of-hp-protein-folding-model.md) | [`P07_HPFoldingNPComplete.lean`](MathathonProblems/P07_HPFoldingNPComplete.lean) | written by AI |
| [8](../008-weak-factorization-for-the-biholomorphic-hardy-space.md) | [`P08_BidiscWeakFactorization.lean`](MathathonProblems/P08_BidiscWeakFactorization.lean) | written by AI |
| [9](../009-clustered-hadwigers-theorem.md) | [`P09_ClusteredHadwiger.lean`](MathathonProblems/P09_ClusteredHadwiger.lean) | written by AI |
| [10](../010-well-posedness-and-stability-of-landau-equation-vlasov.md) | [`P10_LandauFisherInformation.lean`](MathathonProblems/P10_LandauFisherInformation.lean) | written by AI |
| [11](../011-mazurs-collatz-paper.md) | [`P11_CollatzPositiveDensity.lean`](MathathonProblems/P11_CollatzPositiveDensity.lean) | adapted from Lech Mazur, ProofAtlas |
| [14](../014-positive-laurent-phenomenon.md) | [`P14_PositiveLaurentPhenomenon.lean`](MathathonProblems/P14_PositiveLaurentPhenomenon.lean) | written by AI |
| [15](../015-keplers-theorem.md) | [`P15_Kepler.lean`](MathathonProblems/P15_Kepler.lean) | adapted from thefundamentaltheor3m/Sphere-Packing-Lean |
| [16](../016-the-four-color-theorem.md) | [`P16_FourColorTheorem.lean`](MathathonProblems/P16_FourColorTheorem.lean) | adapted from RBarish-UTokyo/FourColorTheorem-Lean4 |
| [18](../018-positive-rates.md) | [`P18_PositiveRates.lean`](MathathonProblems/P18_PositiveRates.lean) | written by AI |
| [19](../019-beyond-endoscopy-for-gl-2-reconstruction-simplification-and.md) | [`P19_AltugBeyondEndoscopy.lean`](MathathonProblems/P19_AltugBeyondEndoscopy.lean) | written by AI |
| [21](../021-gaps-in-spectral-gap-literature.md) | [`P21_FriedmanSecondEigenvalue.lean`](MathathonProblems/P21_FriedmanSecondEigenvalue.lean) | written by AI |
| [23](../023-finite-time-blowup-for-the-forced-three-dimensional.md) | [`P23_NavierStokes.lean`](MathathonProblems/P23_NavierStokes.lean) | adapted from openai/NavierStokesAndEuler |
| [24](../024-proving-the-gaussian-correlation-inequality.md) | [`P24_GaussianCorrelation.lean`](MathathonProblems/P24_GaussianCorrelation.lean) | written by AI |
| [25](../025-planar-halving-lines.md) | [`P25_HalvingLines.lean`](MathathonProblems/P25_HalvingLines.lean) | adapted from openai/math |
| [27](../027-categorical-groups-and-homotopy-types.md) | [`P27_CrossedModulesCatOne.lean`](MathathonProblems/P27_CrossedModulesCatOne.lean) | written by AI |
| [33](../033-hadwiger-nelson-problem-the-euclidean-plane-is-not-five.md) | [`P33_EuclideanFiveColor.lean`](MathathonProblems/P33_EuclideanFiveColor.lean) | adapted from openai/math |
| [35](../035-asymptotic-growth-of-integer-partitions-into-powers.md) | [`P35_PartitionsIntoPowers.lean`](MathathonProblems/P35_PartitionsIntoPowers.lean) | written by AI |
| [36](../036-probabilistic-and-asymptotic-approaches-to-the-hook-length.md) | [`P36_HookLengthFormula.lean`](MathathonProblems/P36_HookLengthFormula.lean) | adapted from NoahW314/KostkaNumbers |
| [38](../038-understanding-a-proposed-counterexample-to-reduced.md) | [`P38_BaumConnesInjectivity.lean`](MathathonProblems/P38_BaumConnesInjectivity.lean) | written by AI |
| [39](../039-hyllands-random-dictatorship-theorem-for-cardinal.md) | [`P39_HyllandRandomDictatorship.lean`](MathathonProblems/P39_HyllandRandomDictatorship.lean) | written by AI |
| [40](../040-the-quasi-riemann-hypothesis.md) | [`P40_QuasiRiemannHypothesis.lean`](MathathonProblems/P40_QuasiRiemannHypothesis.lean) | adapted from openai/math |
| [41](../041-digesting-wiles-proof-of-fermats-last-theorem.md) | [`P41_FermatLastTheorem.lean`](MathathonProblems/P41_FermatLastTheorem.lean) | adapted from Mathlib v4.35.0 |
| [43](../043-gromovs-simplicial-volume-vanishing-conjecture.md) | [`P43_GromovSimplicialVolume.lean`](MathathonProblems/P43_GromovSimplicialVolume.lean) | written by AI |
| [44](../044-yaus-conjecture.md) | [`P44_SharpNodalLength.lean`](MathathonProblems/P44_SharpNodalLength.lean) | adapted from openai/math |
| [44](../044-yaus-conjecture.md) | [`P44_SmoothYau.lean`](MathathonProblems/P44_SmoothYau.lean) | adapted from openai/math |
| [45](../045-the-stable-bernstein-problem.md) | [`P45_StableBernstein.lean`](MathathonProblems/P45_StableBernstein.lean) | adapted from openai/math |
| [46](../046-the-power-saving-for-planar-unit-distances.md) | [`P46_PlanarUnitDistances.lean`](MathathonProblems/P46_PlanarUnitDistances.lean) | adapted from openai/math |
| [47](../047-sorting-networks-in-o-log-n-depth.md) | [`P47_AKSSortingNetwork.lean`](MathathonProblems/P47_AKSSortingNetwork.lean) | written by AI |
| [48](../048-rigidity-of-enumeration-degrees.md) | [`P48_EnumerationDegreeRigidity.lean`](MathathonProblems/P48_EnumerationDegreeRigidity.lean) | written by AI |
| [50](../050-hilberts-tenth-problem-over-the-rationals.md) | [`P50_HilbertTenthRationals.lean`](MathathonProblems/P50_HilbertTenthRationals.lean) | written by AI |
| [54](../054-dissecting-openais-counterexamples-to-the-auslander-reiten.md) | [`P54_AuslanderReiten.lean`](MathathonProblems/P54_AuslanderReiten.lean) | adapted from openai/math |
| [54](../054-dissecting-openais-counterexamples-to-the-auslander-reiten.md) | [`P54_Tachikawa.lean`](MathathonProblems/P54_Tachikawa.lean) | adapted from openai/math |
| [55](../055-a-simpler-counterexample-to-hadwigers-conjecture.md) | [`P55_HadwigerCounterexample.lean`](MathathonProblems/P55_HadwigerCounterexample.lean) | adapted from openai/math |
| [56](../056-simplifying-the-disproof-of-the-exponential-time-hypothesis.md) | [`P56_SubexponentialSAT.lean`](MathathonProblems/P56_SubexponentialSAT.lean) | adapted from openai/math |
| [57](../057-simplifying-the-proof-of-barnettes-conjecture.md) | [`P57_Barnette.lean`](MathathonProblems/P57_Barnette.lean) | adapted from openai/math |
| [58](../058-simplifying-the-proof-of-seymours-second-neighborhood.md) | [`P58_SeymourSecondNeighborhood.lean`](MathathonProblems/P58_SeymourSecondNeighborhood.lean) | adapted from openai/math |
| [59](../059-digesting-openais-claimed-proof-of-blochs-conjecture.md) | [`P59_BlochConjecture.lean`](MathathonProblems/P59_BlochConjecture.lean) | written by AI |
| [62](../062-infinite-two-generated-groups-of-bounded-exponent-burnside.md) | [`P62_TwoGeneratedBurnside.lean`](MathathonProblems/P62_TwoGeneratedBurnside.lean) | adapted from google-deepmind/formal-conjectures |
| [63](../063-construction-of-an-infinite-finitely-presented-nilsemigroup.md) | [`P63_FinitelyPresentedNilsemigroup.lean`](MathathonProblems/P63_FinitelyPresentedNilsemigroup.lean) | written by AI |
| [64](../064-polynomial-identities-and-the-specht-problem.md) | [`P64_Specht.lean`](MathathonProblems/P64_Specht.lean) | written by AI |
| [65](../065-subexponential-upper-bounds-for-the-nilpotency-index-of.md) | [`P65_NilpotencyIndexBound.lean`](MathathonProblems/P65_NilpotencyIndexBound.lean) | written by AI |
| [66](../066-invariant-subspace-problem-the-enfloread-counterexamples.md) | [`P66_ReadL1.lean`](MathathonProblems/P66_ReadL1.lean) | adapted from google-deepmind/formal-conjectures |
| [67](../067-monskys-theorem-and-steins-conjecture-on-equal-area.md) | [`P67_Monsky.lean`](MathathonProblems/P67_Monsky.lean) | adapted from dhyan-aranha/Monsky |
| [69](../069-a-systematic-study-of-inverse-galois-problem.md) | [`P69_InverseGalois.lean`](MathathonProblems/P69_InverseGalois.lean) | adapted from google-deepmind/formal-conjectures |
| [70](../070-monochromatic-triangles-in-the-plane.md) | [`P70_ConvexUnitDistances.lean`](MathathonProblems/P70_ConvexUnitDistances.lean) | adapted from google-deepmind/formal-conjectures |
| [71](../071-existence-of-the-core-in-approval-based-committee-elections.md) | [`P71_CoreExistence.lean`](MathathonProblems/P71_CoreExistence.lean) | adapted from DominikPeters/ABCVotingLean |
| [72](../072-cayleys-formula-a-proof-zoo.md) | [`P72_CayleyFormula.lean`](MathathonProblems/P72_CayleyFormula.lean) | adapted from ProofAtlas, Advameg, Inc. |
| [73](../073-lagrange-inversion-combinatorial-proofs.md) | [`P73_LagrangeInversion.lean`](MathathonProblems/P73_LagrangeInversion.lean) | adapted from manman4/mathlib4, head of the open Mathlib pull request #43871 |
| [74](../074-the-cap-set-problem-and-the-slice-rank-method.md) | [`P74_CapSet.lean`](MathathonProblems/P74_CapSet.lean) | adapted from lean-forward/cap_set_problem, Lean 3 |
| [75](../075-stanleys-poset-inequality.md) | [`P75_StanleyInequality.lean`](MathathonProblems/P75_StanleyInequality.lean) | written by AI |
| [76](../076-the-circulant-hadamard-conjecture.md) | [`P76_CirculantHadamard.lean`](MathathonProblems/P76_CirculantHadamard.lean) | adapted from openai/math |
| [78](../078-understanding-matrix-multiplication.md) | [`P78_MatrixMultiplication.lean`](MathathonProblems/P78_MatrixMultiplication.lean) | adapted from openai/math |
| [81](../081-chowlas-conjecture-for-two-point-correlations.md) | [`P81_TwoPointChowla.lean`](MathathonProblems/P81_TwoPointChowla.lean) | adapted from openai/math |
| [82](../082-kadisons-generator-problem.md) | [`P82_KadisonGenerator.lean`](MathathonProblems/P82_KadisonGenerator.lean) | adapted from openai/math |
| [83](../083-cannons-conjecture-and-friends.md) | [`P83_Cannon.lean`](MathathonProblems/P83_Cannon.lean) | adapted from openai/math |
| [86](../086-ulam-floating-problem-perimetral-density-1-3-1-4-1-5.md) | [`P86_UlamFloatingRigidity.lean`](MathathonProblems/P86_UlamFloatingRigidity.lean) | written by AI |
| [87](../087-towards-a-uniform-natural-proof-of-the-nonnesting.md) | [`P87_CharmedBijectionTypeB.lean`](MathathonProblems/P87_CharmedBijectionTypeB.lean) | written by AI |
| [91](../091-a-classification-of-finite-euclidean-ramsey-configurations.md) | [`P91_EuclideanRamsey.lean`](MathathonProblems/P91_EuclideanRamsey.lean) | adapted from openai/math |
| [92](../092-erdos-problem-173-monochromatic-congruent-triangles-in-2.md) | [`P92_Erdos173.lean`](MathathonProblems/P92_Erdos173.lean) | adapted from google-deepmind/formal-conjectures |
| [93](../093-an-improvement-towards-bounded-gaps-between-primes.md) | [`P93_PrimeGaps186.lean`](MathathonProblems/P93_PrimeGaps186.lean) | adapted from openai/PrimeGaps186 |
| [95](../095-quasi-orders-for-the-lefthanded-lovasz-local-lemma.md) | [`P95_LefthandedLocalLemma.lean`](MathathonProblems/P95_LefthandedLocalLemma.lean) | written by AI |
| [96](../096-counterexamples-to-polynomial-removal-for-ordered-binary.md) | [`P96_FourByFourRemoval.lean`](MathathonProblems/P96_FourByFourRemoval.lean) | adapted from openai/math |
| [97](../097-model-completeness-of-the-real-exponential-field.md) | [`P97_RealExpModelComplete.lean`](MathathonProblems/P97_RealExpModelComplete.lean) | adapted from google-deepmind/formal-conjectures |
| [98](../098-an-elementary-proof-of-the-delignesullivan-theorem-and.md) | [`P98_VirtuallyStablyParallelizable.lean`](MathathonProblems/P98_VirtuallyStablyParallelizable.lean) | written by AI |
| [99](../099-towards-a-combinatorial-proof-of-schur-positivity-for-llt.md) | [`P99_LLTSchurPositivity.lean`](MathathonProblems/P99_LLTSchurPositivity.lean) | written by AI |
| [100](../100-hironakas-resolution-of-singularity-understanding-the.md) | [`P100_ResolutionOfSingularities.lean`](MathathonProblems/P100_ResolutionOfSingularities.lean) | adapted from google-deepmind/formal-conjectures |
| [101](../101-unraveling-preiss-geometry-of-measures.md) | [`P101_PreissRectifiability.lean`](MathathonProblems/P101_PreissRectifiability.lean) | written by AI |
| [102](../102-log-sobolev-inequality-for-sine-gordon.md) | [`P102_SineGordonLogSobolev.lean`](MathathonProblems/P102_SineGordonLogSobolev.lean) | written by AI |
| [106](../106-game-theoretic-probability.md) | [`P106_GameTheoreticLIL.lean`](MathathonProblems/P106_GameTheoreticLIL.lean) | written by AI |
| [107](../107-why-regular-polygons-have-the-fewest-distances-an.md) | [`P107_AltmanDistinctDistances.lean`](MathathonProblems/P107_AltmanDistinctDistances.lean) | adapted from google-deepmind/formal-conjectures |
| [108](../108-generalizing-the-zeta-5-irrationality-argument.md) | [`P108_IrrationalZetaSeven.lean`](MathathonProblems/P108_IrrationalZetaSeven.lean) | adapted from google-deepmind/formal-conjectures |
| [110](../110-statistical-learning-theory-and-neural-network.md) | [`P110_SpectralMarginBound.lean`](MathathonProblems/P110_SpectralMarginBound.lean) | written by AI |
| [112](../112-quarter-pinching-sphere-theorem.md) | [`P112_QuarterPinchedSphere.lean`](MathathonProblems/P112_QuarterPinchedSphere.lean) | written by AI |
| [115](../115-exotic-spheres.md) | [`P115_ExoticSevenSphere.lean`](MathathonProblems/P115_ExoticSevenSphere.lean) | adapted from leanprover-community/mathlib4, tag v4.35.0 |
| [117](../117-parity-obstructions-behind-drurys-external-vertices.md) | [`P117_ExternalVertices.lean`](MathathonProblems/P117_ExternalVertices.lean) | written by AI |
| [118](../118-formalizing-the-aklt-spectral-gap.md) | [`P118_AKLTSpectralGap.lean`](MathathonProblems/P118_AKLTSpectralGap.lean) | written by AI |
| [119](../119-freedmans-disc-embedding-theorem-and-4d-poincare.md) | [`P119_Poincare4D.lean`](MathathonProblems/P119_Poincare4D.lean) | adapted from leanprover/lean-eval |
| [120](../120-characterizations-and-identities-for-probability.md) | [`P120_Dufresne.lean`](MathathonProblems/P120_Dufresne.lean) | written by AI |
| [120](../120-characterizations-and-identities-for-probability.md) | [`P120_Marcinkiewicz.lean`](MathathonProblems/P120_Marcinkiewicz.lean) | written by AI |
| [121](../121-carleson-theorem-on-convergence-of-fourier-series.md) | [`P121_Carleson.lean`](MathathonProblems/P121_Carleson.lean) | adapted from roos-j/lean-lt-carleson |
| [123](../123-schur-number-five.md) | [`P123_SchurNumberFive.lean`](MathathonProblems/P123_SchurNumberFive.lean) | written by AI |
| [124](../124-mutually-unbiased-bases-in-dimension-6-applied-to-a-6.md) | [`P124_MUBDimensionSix.lean`](MathathonProblems/P124_MUBDimensionSix.lean) | adapted from google-deepmind/formal-conjectures |
| [125](../125-enumeration-of-totally-symmetric-plane-partitions.md) | [`P125_TSPPEnumeration.lean`](MathathonProblems/P125_TSPPEnumeration.lean) | adapted from leanprover/lean-eval |
| [127](../127-rogers-ramanujan-identity.md) | [`P127_RogersRamanujan.lean`](MathathonProblems/P127_RogersRamanujan.lean) | written by AI |
| [128](../128-why-do-random-sorting-networks-draw-sine-curves.md) | [`P128_ArchimedeanTrajectoryLimit.lean`](MathathonProblems/P128_ArchimedeanTrajectoryLimit.lean) | written by AI |
| [130](../130-uniqueness-of-finite-quandale-colorings.md) | [`P130_AlexanderQuandleColourings.lean`](MathathonProblems/P130_AlexanderQuandleColourings.lean) | written by AI |
| [131](../131-irrationality-of-3-aperys-theorem.md) | [`P131_Zeta3Irrational.lean`](MathathonProblems/P131_Zeta3Irrational.lean) | adapted from ahhwuhu/zeta_3_irrational |
| [136](../136-the-aaronsonambainis-conjecture-from-influential-variables.md) | [`P136_AaronsonAmbainis.lean`](MathathonProblems/P136_AaronsonAmbainis.lean) | adapted from physical-superintelligence/aaronson-ambainis |
| [137](../137-tree-symmetries-and-the-p-adic-valuations-of-fusscatalan.md) | [`P137_FussCatalanValuation.lean`](MathathonProblems/P137_FussCatalanValuation.lean) | written by AI |
| [140](../140-a-combinatorial-proof-of-unimodality-for-1-q-1-q-2-1-q-n.md) | [`P140_SubsetSumUnimodality.lean`](MathathonProblems/P140_SubsetSumUnimodality.lean) | written by AI |
