# 33 · Hadwiger-Nelson Problem - The Euclidean plane is not five-colorable

## From the proposer

- **Area:** Combinatorics, discrete geometry, measure theory
- **Tracks:** Combinatorics

### Description

The Hadwiger–Nelson problem asks how many colors are needed to color the plane so that points at unit distance have different colors. Since 1950 it has been known to be 4, 5, 6 or 7. De Grey (2018) showed it is at least 5. OpenAI recently proved that five colors are insufficient, leaving six or seven as possibilities. An unexpected ingredient is a transfer theorem: a proper k-coloring exists if and only if a measurable k-coloring exists that avoids monochromatic unit-distance pairs almost everywhere. We propose exploring this surprising connection and seeking simpler proofs or explanations of the result.

### Desired outcome

- An independent human check of the proof’s key lemmas, with any gaps identified.
- A shorter or more conceptual proof, especially an explanation of the transfer theorem connecting arbitrary and measurable colorings
- They don't have Lean formalization (unless we count ""sorry"" instead of the whole theorem as the formalization) so that could be done.
- Maybe try to find an explicit finite 6-chromatic unit-distance graph. By de Bruijn–Erdős one must exist if the theorem is true. Though that would be a more computerized proof and less comprehensible proof than OpenAI's, so idk :D"

### References

https://arxiv.org/pdf/2610.05291
https://github.com/openai/math/blob/main/preprints/The-Euclidean-plane-is-not-five-colorable-September-23-2026/paper.pdf (The Lean formalisation is at lean/docs/158.md in the same repository but it only has "sorry".)
A. D. N. J. de Grey, “The chromatic number of the plane is at least 5”, Geombinatorics 28 (2018), 18–31, arXiv:1804.02385.
A. Soifer, The New Mathematical Coloring Book: Mathematics of Coloring and the Colorful Life of Its Creators, 2nd ed., Springer, New York, 2024. https://doi.org/10.1007/978-1-0716-3597-1

### Reference links

- <https://github.com/openai/math/blob/main/preprints/The-Euclidean-plane-is-not-five-colorable-September-23-2026/paper.pdf>

## AI-generated notes

<!-- status: Proved (preprint) -->

- **Status:** Proved in an OpenAI preprint dated 23 September 2026 (released 6 October 2026), not yet refereed; the problem goes back to E. Nelson (1950).
- **Task:** A simpler, more conceptual proof of the transfer theorem and main result, or an independent check of the key lemmas.
- **Key reference:** [OpenAI, "The Euclidean plane is not five-colorable", preprint, 23 September 2026](https://github.com/openai/math/blob/main/preprints/The-Euclidean-plane-is-not-five-colorable-September-23-2026/paper.pdf)
- **Lean:** Official statement; a Lean proof already exists.
- **See also:** [Problem 92](092-erdos-problem-173-monochromatic-congruent-triangles-in-2.md)

### Notes

- The result is a preprint, available only in the OpenAI repository (not on arXiv), and has not been refereed.
- By de Bruijn–Erdős compactness, some finite unit-distance graph is not 5-colourable; the preprint obtains it only existentially (proof of Corollary 1.5).

### The result

Theorem 1.1: every colouring of the plane with five colours has two points at distance 1 with the same colour, with no regularity assumption on the colour classes; hence $6 \le \chi(\mathbb{R}^2) \le 7$. It combines two results. Theorem 1.3 (transfer): for every $k$, a proper $k$-colouring of the plane exists if and only if a weak measurable $k$-colouring exists, that is, a measurable colouring with classes $A_1,\dots,A_k$ such that, for every $R\gt0$,

$$\sum_{i=1}^{k}\int_{B(0,R)}\int_{S^1} 1_{A_i}(x)\thinspace1_{A_i}(x+u)\thinspace d\sigma(u)\thinspace dx = 0.$$

Theorem 1.4: there is no weak measurable five-colouring. The official Lean statement `no_proper_five_coloring` is Theorem 1.1.

### How the known proof works

- Transfer: restrict a proper colouring to the countable algebraic plane $E$ and average translates and rotations, giving an invariant probability law on proper labellings of $E$.
- Rigidity (Theorem 2.3): a probability on the character group of $E$, invariant under algebraic rotations, with no mass on continuous characters is Haar measure; the proof uses a Furstenberg–Zimmer compact-extension tower and a number-field argument.
- Projecting onto continuous characters then keeps unit-distance correlations zero and gives measurable fields (Section 4); the converse uses density points and compactness.
- Five colours (Sections 5–7): almost every angular "palette" has at most two labels, and a planar covering argument gives compact connected sets through one point, each excluding its two labels from the points whose distances to the set straddle 1.
- Section 8 excludes label cycles of length 5, 4, 3, the last via a Moser spindle and a rational certificate; the transfer (Sections 2–4) fills pages 5–26 of 62.

### Background

- Nelson found the lower bound 4 and Isbell the upper bound 7; de Grey (2018) proved $\chi(\mathbb{R}^2)\ge 5$ with a 1581-vertex graph, later reduced by Heule and Parts, and Parts gave a human-verifiable proof.
- Falconer (1981) proved $\chi_m(\mathbb{R}^2)\ge 5$ for the measurable chromatic number $\chi_m$ (colour classes Lebesgue measurable).
- Davies (arXiv, October 2026) proved $\chi(\mathbb{R}^d)=\chi_m(\mathbb{R}^d)$ for $d\ge 4$ and conjectures $\chi(\mathbb{R}^2)=6$.
- Koshelev, Kupavskii and Voronov (arXiv, October 2026) used the OpenAI rigidity theorem to get $\chi(\mathbb{R}^3)=\chi_m(\mathbb{R}^3)$, and note that Theorem 1.3 with their completion lemma gives $\chi(\mathbb{R}^2)=\chi_m(\mathbb{R}^2)$.

### Where to start

- [The Euclidean plane is not five-colorable](https://github.com/openai/math/blob/main/preprints/The-Euclidean-plane-is-not-five-colorable-September-23-2026/paper.pdf), OpenAI, 2026: Section 1.1 and Figure 1 give the architecture.
- [Ordinary and measurable colorings of Euclidean three-space](https://arxiv.org/abs/2610.18907), M. Koshelev, A. Kupavskii, V. Voronov, 2026: a short sketch of the transfer method.
- [Measurable obstructions for unmeasurable colourings](https://arxiv.org/abs/2610.12301), J. Davies, 2026: another transfer method, in dimension at least 4.

Prerequisites: Lebesgue density theorem, Pontryagin duality, basic ergodic theory, de Bruijn–Erdős compactness.

### References, with links

- OpenAI, “The Euclidean plane is not five-colorable,” preprint dated 23 September 2026. <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/preprints/The-Euclidean-plane-is-not-five-colorable-September-23-2026/paper.pdf>
- A. D. N. J. de Grey, “The chromatic number of the plane is at least 5,” Geombinatorics 28 (2018), 18–31. <https://arxiv.org/abs/1804.02385>
- A. Soifer, *The New Mathematical Coloring Book: Mathematics of Coloring and the Colorful Life of Its Creators*, 2nd ed., Springer, New York (2024). <https://doi.org/10.1007/978-1-0716-3597-1>

### Further references

- K. J. Falconer, “The realization of distances in measurable subsets covering $\mathbb{R}^n$”, J. Combin. Theory Ser. A 31 (1981), 184–189. <https://doi.org/10.1016/0097-3165(81)90014-5>
- J. Parts, “The chromatic number of the plane is at least 5 – a human-verifiable proof”, Geombinatorics 30 (2020), 77–102. <https://arxiv.org/abs/2010.12661>
- J. Davies, “Measurable obstructions for unmeasurable colourings” (2026). <https://arxiv.org/abs/2610.12301>
- M. Koshelev, A. Kupavskii, V. Voronov, “Ordinary and measurable colorings of Euclidean three-space” (2026). <https://arxiv.org/abs/2610.18907>

### Lean

#### Official statement

`OAI.EuclideanFiveColor.no_proper_five_coloring` in [`lean/MathathonProblems/P33_EuclideanFiveColor.lean`](lean/MathathonProblems/P33_EuclideanFiveColor.lean).

```lean
theorem no_proper_five_coloring : ¬ ∃ coloring : ℂ → Fin 5, ProperColoring 5 coloring
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/EuclideanFiveColor.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Geometry/PlaneColoring/Five.lean>. A Lean-verified claim must not use or copy it.

#### Related Lean formalizations

- [HadwigerNelson](https://github.com/vasnesterov/HadwigerNelson/tree/ad7843546da5f4db4fcf9827e0951f34295ad7cc): a Lean proof that the plane is not 4-colourable, checking a SAT certificate.
- [hadwiger-nelson-bounds-lean](https://github.com/lyfar/hadwiger-nelson-bounds-lean/tree/bb51ae0d3f821438b844e4f10b89bbb71f756126): a Lean proof of the bounds 5 ≤ χ(ℝ²) ≤ 7.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has Lebesgue measure, the density theorem (`Besicovitch.ae_tendsto_measure_inter_div`), `PontryaginDual`, Følner sets (`IsFoelner`, with `IsFoelner.amenable` giving an invariant finitely additive probability measure), `Finset.rado_selection` (compactness) and `SimpleGraph.UnitDistEmbedding`. It lacks the chromatic number of the plane and Furstenberg–Zimmer theory.
