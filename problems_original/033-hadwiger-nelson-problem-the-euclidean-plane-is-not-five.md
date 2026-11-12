# Problem 33

> Verbatim copy of one row of the Mathathon problem sheet. The text under each heading is the cell text, unchanged. See [README.md](README.md).

## Problem ID

33

## Title/name of problem

Hadwiger-Nelson Problem - The Euclidean plane is not five-colorable


## Short description of problem (100 words or less)

The Hadwiger–Nelson problem asks how many colors are needed to color the plane so that points at unit distance have different colors. Since 1950 it has been known to be 4, 5, 6 or 7. De Grey (2018) showed it is at least 5. OpenAI recently proved that five colors are insufficient, leaving six or seven as possibilities. An unexpected ingredient is a transfer theorem: a proper k-coloring exists if and only if a measurable k-coloring exists that avoids monochromatic unit-distance pairs almost everywhere. We propose exploring this surprising connection and seeking simpler proofs or explanations of the result.

## Submitted Area

Combinatorics, discrete geometry, measure theory

## Proposed Tracks

Combinatorics

## Reference/source material

https://arxiv.org/pdf/2610.05291
https://github.com/openai/math/blob/main/preprints/The-Euclidean-plane-is-not-five-colorable-September-23-2026/paper.pdf (The Lean formalisation is at lean/docs/158.md in the same repository but it only has "sorry".)
A. D. N. J. de Grey, “The chromatic number of the plane is at least 5”, Geombinatorics 28 (2018), 18–31, arXiv:1804.02385.
A. Soifer, The New Mathematical Coloring Book: Mathematics of Coloring and the Colorful Life of Its Creators, 2nd ed., Springer, New York, 2024. https://doi.org/10.1007/978-1-0716-3597-1

## Desired outcome

- An independent human check of the proof’s key lemmas, with any gaps identified.
- A shorter or more conceptual proof, especially an explanation of the transfer theorem connecting arbitrary and measurable colorings
- They don't have Lean formalization (unless we count ""sorry"" instead of the whole theorem as the formalization) so that could be done.
- Maybe try to find an explicit finite 6-chromatic unit-distance graph. By de Bruijn–Erdős one must exist if the theorem is true. Though that would be a more computerized proof and less comprehensible proof that OpenAI's, so idk :D"

## Links in the sheet

These hyperlinks are attached to cells of this row in the sheet. They are listed here because a plain-text copy of the cells does not show them.

- Reference/source material, on the text “https://github.com/openai/math/blob/main/preprints/The-Euclidean-plane-is-not-five-colorable-September-23-2026/paper.pdf”: <https://github.com/openai/math/blob/main/preprints/The-Euclidean-plane-is-not-five-colorable-September-23-2026/paper.pdf>
