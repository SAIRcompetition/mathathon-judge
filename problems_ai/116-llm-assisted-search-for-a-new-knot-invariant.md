# 116 · LLM-assisted search for a new knot invariant

## From the proposer

- **Area:** Knot theory, low-dimensional topology
- **Tracks:** Geometry

### Description

Use LLMs to help search for a new knot invariant and prove things with it. Try candidate constructions on examples, check whether they distinguish knots that familiar invariants miss, and use Lean to verify promising ideas. Build the knot theory library needed along the way.

### Desired outcome

Find a useful new knot invariant, prove that it really is invariant, and use it to distinguish knots or prove other results. Ideally check the proofs in Lean.

### References

Colin Adams, The Knot Book: An Elementary Introduction to the Mathematical Theory of Knots, AMS (2004).

Louis Kauffman, State models and the Jones polynomial, Topology 26 (1987), 395-407.
https://webhomes.maths.ed.ac.uk/~v1ranick/papers/kauffmanjones.pdf

## AI-generated notes

<!-- status: Not a single theorem -->

- **Status:** An open-ended research task with no specific target theorem; its model is Kauffman's state-sum proof that the bracket polynomial gives the Jones polynomial (Topology 1987), and machine learning has already suggested relations between knot invariants that were then proved (Davies et al., Nature 2021).
- **Task:** With LLM help, propose candidate knot invariants, test them on knot tables, prove invariance (ideally in Lean), and use a good one to distinguish knots or prove other results.
- **Key reference:** [L. H. Kauffman, “State models and the Jones polynomial”, Topology 26 (1987), 395–407](https://webhomes.maths.ed.ac.uk/~v1ranick/papers/kauffmanjones.pdf)
- **Lean:** No official statement.

### Notes

- Adams' *The Knot Book* has no link on the sheet; the AMS edition (2004) is a reprint of the 1994 W. H. Freeman edition.

### The problem

A knot invariant is a function of knot diagrams that is unchanged by the three Reidemeister moves, hence a function of the isotopy class of the knot. Kauffman's bracket is the model: for a diagram $K$ with $n$ crossings, sum over the $2^n$ states $S$ (choices of smoothing at each crossing),
$$\langle K\rangle=\sum_S A^{a(S)-b(S)}\,d^{|S|-1},\qquad d=-A^2-A^{-2},$$
where $a(S),b(S)$ count the two kinds of smoothings and $|S|$ the resulting circles (Proposition 2.2, with $B=A^{-1}$). It is invariant under moves II and III and is multiplied by $-A^{\pm3}$ under move I, so $f[K]=(-A)^{-3w(K)}\langle K\rangle$, with $w$ the writhe, is an invariant of oriented links (Theorem 2.6), and $V_K(t)=f[K](t^{-1/4})$ is the Jones polynomial (Theorem 2.8). Kauffman uses it to prove things: $f[K^!](A)=f[K](A^{-1})$ for the mirror image $K^!$ shows that the trefoil is chiral, and the span of $\langle K\rangle$ shows that all connected reduced alternating diagrams of a link have the same number of crossings (Theorem 2.10), a conjecture going back to Tait.

The proposer asks for an invariant that is new, provably invariant, and useful: it should distinguish knots that familiar invariants miss or prove other results. Whether the Jones polynomial detects the unknot is still open as far as I found; Khovanov homology, which categorifies it, does (Kronheimer–Mrowka 2011).

### Background

- Machine learning in knot theory: Davies et al. (2021) used it to find a relation between the signature and the cusp geometry of hyperbolic knots, later proved: $|2\sigma(K)-\mathrm{slope}(K)|\le c\,\mathrm{vol}(K)\,\mathrm{inj}(K)^{-3}$, where $\mathrm{slope}$ is a new "natural slope" invariant (Davies–Juhász–Lackenby–Tomašev, 2024). Applebaum et al. (2025) used reinforcement learning to study unknotting numbers and hard unknot diagrams.
- A recent invariant with simple, fast formulas: Bar-Natan and van der Veen's $\rho_1$, a quadratic expression in the entries of the inverse of a matrix whose determinant is the Alexander polynomial.
- Other families to draw on: quandle and Fox colourings, quantum invariants from braided categories, Khovanov and knot Floer homology, hyperbolic invariants of the complement.

### Where to start

- [State models and the Jones polynomial](https://webhomes.maths.ed.ac.uk/~v1ranick/papers/kauffmanjones.pdf), L. H. Kauffman, 1987: §2 is a short, complete invariance proof by Reidemeister moves, the template for a new state-sum invariant.
- [KnotInfo](https://knotinfo.org/): tables of knots up to 13 crossings with polynomial, homological, 4-dimensional and hyperbolic invariants, downloadable, for testing whether a candidate is new and distinguishes anything.
- [SnapPy](https://snappy.computop.org/), M. Culler, N. Dunfield, M. Goerner: Python software for link diagrams, knot invariants and hyperbolic structures.
- [Advancing mathematics by guiding human intuition with AI](https://doi.org/10.1038/s41586-021-04086-x), A. Davies et al., 2021: a worked example of machine-suggested conjectures in knot theory that were then proved.

Prerequisites: knot diagrams and Reidemeister moves, the Kauffman bracket and Jones polynomial, the Alexander polynomial and Seifert matrices; some programming.

### References, with links

- C. Adams, *The Knot Book: An Elementary Introduction to the Mathematical Theory of Knots*, American Mathematical Society (2004); first published by W. H. Freeman (1994). <https://openlibrary.org/books/OL3308051M>
- L. H. Kauffman, “State models and the Jones polynomial,” Topology 26 (1987), 395–407. <https://webhomes.maths.ed.ac.uk/~v1ranick/papers/kauffmanjones.pdf> <https://doi.org/10.1016/0040-9383(87)90009-7>

### Further references

- V. F. R. Jones, “A polynomial invariant for knots via von Neumann algebras,” Bull. Amer. Math. Soc. 12 (1985), 103–111. <https://doi.org/10.1090/S0273-0979-1985-15304-2>
- M. Khovanov, “A categorification of the Jones polynomial,” Duke Math. J. 101 (2000), 359–426. <https://doi.org/10.1215/S0012-7094-00-10131-7>
- P. B. Kronheimer and T. S. Mrowka, “Khovanov homology is an unknot-detector,” Publ. Math. IHÉS 113 (2011), 97–208. <https://doi.org/10.1007/s10240-010-0030-y>
- A. Davies et al., “Advancing mathematics by guiding human intuition with AI,” Nature 600 (2021), 70–74. <https://doi.org/10.1038/s41586-021-04086-x>
- A. Davies, A. Juhász, M. Lackenby and N. Tomašev, “The signature and cusp geometry of hyperbolic knots,” Geom. Topol. 28 (2024), 2313–2343. <https://doi.org/10.2140/gt.2024.28.2313>
- D. Bar-Natan and R. van der Veen, “A perturbed-Alexander invariant,” arXiv:2206.12298 (2022). <https://arxiv.org/abs/2206.12298>
- T. Applebaum et al., “The unknotting number, hard unknot diagrams, and reinforcement learning,” Experimental Mathematics (2025). <https://doi.org/10.1080/10586458.2025.2542174>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for a new knot invariant that is not yet specified, so there is no fixed claim to state (Mathlib also has no knots, knot diagrams or Reidemeister moves).

#### Related Lean formalizations

- The lean-eval benchmark defines [smooth knots, ambient isotopy and chirality](https://github.com/leanprover/lean-eval/blob/85a88c37f80170d9f08651dc63ce6b81a8a48cb9/LeanEval/KnotTheory/Prelude.lean) (a knot is a smooth $2\pi$-periodic injective immersion $\mathbb R\to\mathbb R^3$) and poses problems such as [`exists_nonisotopic_knots`](https://lean-lang.org/eval/problems/exists_nonisotopic_knots/) and `exists_chiral_knot`; its [results store](https://github.com/leanprover/lean-eval-submissions/tree/0548925a543c89eb9ff692af1a3592fdb86951bb/results) lists solutions of both accepted by its comparator in 2026.
- [nonisotopic-knots](https://github.com/kim-em/nonisotopic-knots/tree/ba894eb4ed5707c0de19df3ff5b7b4b314129833): L. Luccioli's lean-eval solution (produced with Harmonic's Aristotle) with interleaved informal prose; it shows that the round unknot and a trefoil are not ambient isotopic because one knot group is commutative and the other is not.
- [leanknot](https://github.com/shua/leanknot/tree/c58198cd1516ec965f314eedf1dd0b181daef738): an early-stage project on knot diagrams, Reidemeister equivalence, tangles and braids.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked. Outside Lean, the Isabelle [Knot Theory](https://www.isa-afp.org/entries/Knot_Theory.html) entry (T. V. H. Prathamesh, 2016) formalizes tangles and links and proves invariance of the Kauffman bracket.

#### Mathlib

Mathlib has racks and quandles (`Rack`, `Quandle`) with the dihedral quandles used for Fox colourings (`Quandle.Dihedral`), Laurent polynomials (`LaurentPolynomial`), braided monoidal categories (`CategoryTheory.BraidedCategory`), fundamental groups (`FundamentalGroup`) and determinants (`Matrix.det`). It has no knots, links or diagrams, no Reidemeister moves, no braid groups and no knot polynomials.
