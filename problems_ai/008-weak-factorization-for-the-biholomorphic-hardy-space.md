# 8 · Weak factorization for the biholomorphic Hardy space

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/008-weak-factorization-for-the-biholomorphic-hardy-space.md`](../problems_original/008-weak-factorization-for-the-biholomorphic-hardy-space.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Weak factorization for the biholomorphic Hardy space

### Short description of problem (100 words or less)

(Note: this is a shorted re-write of the original submission, which was long and mostly in LaTeX)

H^p(T^2) consists of L^p functions on the 2-torus whose Fourier coefficients vanish for negative indices (analytic functions in both variables). H^2 ⊙ H^2 is the "weak product": all H^1 functions expressible as infinite sums h = Σ f_j g_j (f_j, g_j ∈ H^2) with Σ ||f_j||_2 ||g_j||_2 < ∞.

The open weak factorization problem for the bidisc is whether the converse norm inequality holds: Can every H^1 function on the bidisc be factored this way with a uniform bound? Equivalently, are H^1(T^2) and H^2(T^2) ⊙ H^2(T^2) equal as normed spaces?

Currently we know H^2 ⊙ H^2 sits inside H^1 contractively. The open problem asks whether this containment reverses - whether ||h||{H^2⊙H^2} ≤ C||h||{H^1} for some constant C. This is the dual formulation of the bidisc Nehari problem.

### Submitted Area

Analysis

### Proposed Tracks

Analysis

### Reference/source material

https://link.springer.com/article/10.1007/BF02392840

### Desired outcome

The answer to this problem and a new proof of the main theorem in the reference

### Links in the sheet

These hyperlinks are attached to cells of this row in the sheet. They are listed here because a plain-text copy of the cells does not show them.

- Reference/source material: <https://link.springer.com/article/10.1007/BF02392840>

## AI-generated notes

<!-- status: Proved -->

> Written by AI for the earlier problem list, where this was problem 8 ([`problems/08-weak-factorization-on-the-bidisc.md`](../problems/08-weak-factorization-on-the-bidisc.md)), and carried over unchanged.

- **Status:** Proved by S. H. Ferguson and M. T. Lacey (Acta Math. 2002), the page's own reference.
- **Task:** A new proof of the Ferguson–Lacey weak factorization on the bidisc.
- **Key reference:** [S. H. Ferguson and M. T. Lacey, "A characterization of product BMO by commutators", Acta Math. 189 (2002), 143–160](https://arxiv.org/abs/math/0104144)
- **Lean:** Official statement.

### Notes

- The Description calls the problem open, but the page's reference proves it (Corollary 1.3 and the remark after it), so the answer asked for is yes.

### The result

Ferguson and Lacey proved that the norm of the iterated commutator $[[M_b,H_1],H_2]$ on $L^2(\mathbb R^2)$, with $H_j$ the Hilbert transform in the $j$-th variable, is equivalent to the Chang–Fefferman product BMO norm of $b$ (Theorem 1.2; the upper bound is due to Ferguson and Sadosky). By duality this gives weak factorization (Corollary 1.3): there is $C$ such that every $h\in H^1$ can be written
$$h=\sum_j f_j g_j,\qquad f_j,g_j\in H^2,\qquad \sum_j\|f_j\|_2\|g_j\|_2\le C\|h\|_1 .$$
The proof is on a product of half-planes; a remark transfers it to the bidisc. The dual form is a Nehari theorem: the little Hankel operator $\Gamma_b f=P_{-,-}(bf)$ on $H^2(\mathbb D^2)$ is bounded iff $b$ is in product BMO.

### How the known proof works

- Product BMO is characterized by wavelet coefficients over dyadic rectangles inside arbitrary open sets $U$ (Chang–Fefferman); the proof uses Meyer wavelets.
- Normalize $\|b\|_{BMO}=1$, fix an extremal $U$, and use the Ferguson–Sadosky bound to assume the rectangular BMO norm of $b$ is small.
- Split $b$ by rectangles inside $U$, inside a slight enlargement $V$ of $U$, and the rest; apply the commutator to the first piece.
- The main term is bounded below by an algebraic identity and John–Nirenberg; the $V$-term is small because $|V|$ is close to $|U|$.
- The remaining term is the hard part: a variant of Journé's lemma and a case analysis of wavelet tails control it.

### Background

- In one variable every $H^1$ function is a product of two $H^2$ functions. On polydiscs this fails: Rudin ($d\ge4$), Miles ($d\ge3$), Rosay ($d=2$, the factorable functions are of first category).
- An example of Carleson shows that the rectangular BMO norm is not comparable to the product BMO norm; the two-parameter structure of BMO is why the proof is harder than in one variable.
- Lacey and Terwilleger extended the theorem to $\mathbb D^n$ by induction; Lacey's lecture notes (2007) give a slower proof in which some steps follow from paraproduct theory.

### Where to start

- [Lectures on Nehari's Theorem on the Polydisk](https://arxiv.org/abs/math/0601272), M. T. Lacey, 2006: background and a detailed proof.
- [A characterization of product BMO by commutators](https://arxiv.org/abs/math/0104144), S. H. Ferguson and M. T. Lacey, 2001: the original proof (21 pages on arXiv).
- [Hankel operators in several complex variables and product BMO](https://arxiv.org/abs/math/0310348), M. T. Lacey and E. Terwilleger, 2003: the inductive proof for $\mathbb D^n$.

Prerequisites: one-variable Hardy spaces and BMO, $H^1$–BMO duality, Hilbert transform, wavelets and Littlewood–Paley theory.

### Further references

- M. T. Lacey, "Lectures on Nehari's theorem on the polydisk", Topics in harmonic analysis and ergodic theory, Contemp. Math. 444 (2007), 185–213. <https://arxiv.org/abs/math/0601272>
- M. T. Lacey and E. Terwilleger, "Hankel operators in several complex variables and product BMO", Houston J. Math. 35 (2009), no. 1, 159–183. <https://arxiv.org/abs/math/0310348>
- S. H. Ferguson and C. Sadosky, "Characterizations of bounded mean oscillation on the polydisk in terms of Hankel operators and Carleson measures", J. Anal. Math. 81 (2000), 239–267. <https://doi.org/10.1007/BF02788991>

### Lean

#### Official statement

`Mathathon.P08.WeakFactorization`, `Mathathon.P08.weak_factorization` in [`lean/MathathonProblems/P08_BidiscWeakFactorization.lean`](lean/MathathonProblems/P08_BidiscWeakFactorization.lean).

```lean
def WeakFactorization : Prop :=
  ∃ C : ℝ, ∀ h ∈ hardySpace 1, ∃ f g : ℕ → Lp ℂ 2 (volume : Measure (UnitAddTorus (Fin 2))),
    (∀ j, f j ∈ hardySpace 2 ∧ g j ∈ hardySpace 2) ∧
    HasSum (fun j => (f j • g j : Lp ℂ 1 (volume : Measure (UnitAddTorus (Fin 2))))) h ∧
    Summable (fun j => ‖f j‖ * ‖g j‖) ∧
    ∑' j, ‖f j‖ * ‖g j‖ ≤ C * ‖h‖
```

```lean
theorem weak_factorization : WeakFactorization
```

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Mathlib

Mathlib has `MeasureTheory.Lp`, `UnitAddTorus`, `mFourierCoeff` and the Hilbert basis `mFourierBasis` of $L^2(\mathbb T^d)$. It has no Hardy spaces, BMO, Hilbert transform or Hankel operators.
