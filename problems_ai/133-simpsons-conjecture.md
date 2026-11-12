# 133 · Simpson's conjecture

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/133-simpsons-conjecture.md`](../problems_original/133-simpsons-conjecture.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Simpson's conjecture

### Short description of problem (100 words or less)

Omega-categories are in some ways the most abstract object that we have created in modern mathematics. Weak omega categories are critical objects of study in category theory. We suspect that these are equivalent to strict omega-categories, except for the unit laws. Proving this would allow for a massive simplification of categorical understanding, reducing our characterization of these structures to their simplest form.

### Submitted Area

Category theory

### Proposed Tracks

Number Theory/Algebra

### Reference/source material

https://ncatlab.org/nlab/show/Simpson's+conjecture
https://arxiv.org/abs/1807.02627

### Desired outcome

We want to prove the equivalence in Simpson's conjecture. Immediate applications follow as a result of Simon Henry's work, which would allow for a concrete modeling of homotopy types, which provides tools for analyzing higher-dimensional rewriting systems and polygraphs.

### Links in the sheet

These hyperlinks are attached to cells of this row in the sheet. They are listed here because a plain-text copy of the cells does not show them.

- Reference/source material, on the text “https://arxiv.org/abs/1807.02627”: <https://arxiv.org/abs/1807.02627>

## AI-generated notes

<!-- status: Partly solved -->

> Written by Claude Opus 5.5 on 2026-11-11 from the proposer's text above.

- **Status:** Versions are proved for one-object 3-groupoids (A. Joyal and J. Kock, 2007) and, in a "regular" form, for ∞-groupoids (S. Henry, 2018 preprint); C. Chanavat and A. Hadzihasanovic claim a semi-strictification of $(\infty,n)$-categories in new models (2025 preprint, not yet refereed); Henry's "general" version is open.
- **Task:** Prove Simpson's conjecture: every weak ω-category is equivalent to one that is strict except for the unit laws.
- **Key reference:** [S. Henry, "Regular polygraphs and the Simpson conjecture", arXiv:1807.02627 (2018)](https://arxiv.org/abs/1807.02627)
- **Lean:** No official statement.

### Notes

- The conjecture is not a precise statement. Simpson (1998) states it in words; Henry shows that "non-unital ∞-category" can be made precise in inequivalent ways and gives two versions for ∞-groupoids, and Chanavat and Hadzihasanovic call the conjecture a programmatic "vision". A solution must first fix a precise form.
- The nLab page (first reference) lists only the 3-dimensional result of Joyal and Kock. Henry's paper (second reference) already proves the "regular" version for ∞-groupoids and leaves the "general" version open (§6.4.1); the "Desired outcome" seems to treat Henry's work as an application of the conjecture rather than a partial proof of it.
- Chanavat and Hadzihasanovic prove their theorem for their own model of $(\infty,n)$-categories. They prove that this model agrees with the classical homotopy types for $n=0$; equivalence with other models for $n>0$ is listed as open in their introduction.

### The result

A strict ω-category is a globular set with compositions $\#_k$ and identities satisfying associativity, unit and interchange laws on the nose. Kapranov and Voevodsky (1991) claimed that strict ω-categories in which every cell is weakly invertible model all homotopy types. Simpson (1998) showed that for $n\ge3$ no strict $n$-groupoid realizes the homotopy $n$-type of $S^2$, for any realization functor compatible with homotopy groups, and proposed that composition, associativity and interchange can be kept strict if only the units are weak. Known cases:

- Joyal–Kock (2007): every braided monoidal category arises as $\mathrm{End}(I)$ for a weak unit $I$ in an otherwise strict monoidal 2-category. Hence one-object 3-groupoids that are strict except for weak identity arrows on the object model all connected, simply connected homotopy 3-types.
- Henry (2018), regular version for ∞-groupoids: a regular ∞-category is a globular set in which every "regular" pasting diagram (one shaped like a ball with spherical boundary) has a composite, these compositions being strictly associative and compatible, with no units. Henry builds a weak model structure whose fibrant objects have weak units and weak inverses and proves that it presents the classical homotopy types (§6.2–6.3, Theorem 6.3.8). The general version, in which all compositions, including whiskerings, are strict, is his Conjecture 6.4.1.
- Chanavat–Hadzihasanovic (2025), Theorem 4.43: for each $n\in\mathbb N\cup\{\infty\}$, a Quillen equivalence of weak model categories between their weak $(\infty,n)$-categories and "merge-$n$-categories", which have algebraic units and strictly associative and interchanging composition of round pasting diagrams; globular composites are obtained from units and round composition.

### How the known proof works

- Henry (2019): in non-unital strict ∞-categories the pasting diagrams ("positive polyplexes") form a well-behaved class, and non-unital polygraphs form a presheaf category, which repairs one failure of Kapranov–Voevodsky's argument.
- Some of these pasting diagrams have non-contractible geometric realization, so Kapranov–Voevodsky's contractibility argument still fails in general; this is what blocks the general version.
- Henry therefore keeps only regular pasting diagrams. The hard part (Sections 4–5) is to show that regular polygraphs are stable under composition and under the Gray tensor product, using a new counting function on polygraphs inspired by Makkai.
- Weak model structures on regular polygraphs and regular ∞-categories are Quillen equivalent (§6.1–6.2), and regular polygraphs are compared with simplicial models of spaces along the lines of Kapranov–Voevodsky (§6.3).
- Joyal–Kock's 3-dimensional proof uses string diagrams and configuration spaces.

### Background

- Every bicategory is biequivalent to a strict 2-category. Tricategories do not strictify, but every tricategory is triequivalent to a Gray-category, in which only interchange is weak (Gordon–Power–Street 1995). Simpson's proposal weakens the units instead; Henry compares the obstruction for strict ∞-groupoids with the Eckmann–Hilton argument.
- Kock (2006) gave a precise $n$-categorical formulation through "fair categories", simplicial structures with weak degeneracies. Paoli (2009) found semi-strict representatives for path-connected homotopy $n$-types (weakly globular cat$^n$-groups). Hadzihasanovic (2019) proved a semi-strictification theorem for representable merge-bicategories, the 2-dimensional prototype of the 2025 proof.

### Where to start

- [Homotopy types of strict 3-groupoids](https://arxiv.org/abs/math/9810059), C. Simpson, 1998: the $S^2$ obstruction and, at the end, the original proposal.
- [Regular polygraphs and the Simpson conjecture](https://arxiv.org/abs/1807.02627), S. Henry, 2018: §1 for the two precise versions, §6.4 for the open conjectures and the extension to $(\infty,n)$-categories.
- [Weak units and homotopy 3-types](https://arxiv.org/abs/math/0602084), A. Joyal, J. Kock, 2006: the 3-dimensional case.
- [Semi-strictification of $(\infty,n)$-categories](https://arxiv.org/abs/2507.00146), C. Chanavat, A. Hadzihasanovic, 2025: the introduction surveys the state of the art.

Prerequisites: strict ω-categories, polygraphs (computads) and pasting diagrams, model categories, the homotopy hypothesis.

### References, with links

- nLab, "Simpson's conjecture". <https://ncatlab.org/nlab/show/Simpson's+conjecture>
- S. Henry, "Regular polygraphs and the Simpson conjecture", preprint, arXiv:1807.02627 (2018). <https://arxiv.org/abs/1807.02627>

### Further references

- C. Simpson, "Homotopy types of strict 3-groupoids", arXiv:math/9810059 (1998). <https://arxiv.org/abs/math/9810059>
- M. M. Kapranov and V. A. Voevodsky, "∞-groupoids and homotopy types", Cahiers Topologie Géom. Différentielle Catég. 32 (1991), 29–46. <https://www.numdam.org/item/CTGDC_1991__32_1_29_0/>
- J. Kock, "Weak identity arrows in higher categories", Int. Math. Res. Pap. (2006), 69163. <https://arxiv.org/abs/math/0507116>
- A. Joyal and J. Kock, "Weak units and homotopy 3-types", in *Categories in Algebra, Geometry and Mathematical Physics*, Contemp. Math. 431 (2007), 257–276. <https://doi.org/10.1090/conm/431/08277>
- S. Henry, "Non-unital polygraphs form a presheaf category", Higher Structures 3 (2019), 248–291. <https://arxiv.org/abs/1711.00744>
- C. Chanavat and A. Hadzihasanovic, "Semi-strictification of $(\infty,n)$-categories", preprint, arXiv:2507.00146 (2025). <https://arxiv.org/abs/2507.00146>
- S. Paoli, "Weakly globular cat$^n$-groups and Tamsamani's model", Adv. Math. 222 (2009), 621–727. <https://doi.org/10.1016/j.aim.2009.05.013>
- A. Hadzihasanovic, "Weak units, universal cells, and coherence via universality for bicategories", Theory Appl. Categ. 34 (2019), 883–960. <https://arxiv.org/abs/1803.06086>
- R. Gordon, A. J. Power and R. Street, "Coherence for tricategories", Mem. Amer. Math. Soc. 117 (1995), no. 558. <https://doi.org/10.1090/memo/0558>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs strict ω-categories, polygraphs and a homotopy theory of non-unital higher categories, which Mathlib does not have yet.

#### Mathlib

Mathlib has bicategories (`CategoryTheory.Bicategory`, strict ones as `CategoryTheory.Bicategory.Strict`), pseudofunctors (`CategoryTheory.Pseudofunctor`), braided monoidal categories (`CategoryTheory.BraidedCategory`), groupoids (`CategoryTheory.Groupoid`), Kan complexes (`SSet.KanComplex`), quasicategories (`SSet.Quasicategory`) and abstract model categories (`HomotopicalAlgebra.ModelCategory`). The Kan–Quillen model structure on simplicial sets is still marked TODO (`SSet.modelCategoryQuillen` defines only its cofibrations and fibrations). Mathlib has no globular sets, strict ω-categories, polygraphs or weak $n$-categories for $n\ge3$.
