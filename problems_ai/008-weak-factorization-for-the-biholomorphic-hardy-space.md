# 8 · Weak factorization for the biholomorphic Hardy space

## From the proposer

- **Area:** Analysis
- **Tracks:** Analysis

### Description

(Note: this is a shortened re-write of the original submission, which was long and mostly in LaTeX)

H^p(T^2) consists of L^p functions on the 2-torus whose Fourier coefficients vanish for negative indices (analytic functions in both variables). H^2 ⊙ H^2 is the "weak product": all H^1 functions expressible as infinite sums h = Σ f_j g_j (f_j, g_j ∈ H^2) with Σ ||f_j||_2 ||g_j||_2 < ∞.

The open weak factorization problem for the bidisc is whether the converse norm inequality holds: Can every H^1 function on the bidisc be factored this way with a uniform bound? Equivalently, are H^1(T^2) and H^2(T^2) ⊙ H^2(T^2) equal as normed spaces?

Currently we know H^2 ⊙ H^2 sits inside H^1 contractively. The open problem asks whether this containment reverses - whether ||h||{H^2⊙H^2} ≤ C||h||{H^1} for some constant C. This is the dual formulation of the bidisc Nehari problem.

### Desired outcome

The answer to this problem and a new proof of the main theorem in the reference

### References

https://link.springer.com/article/10.1007/BF02392840

### Reference links

- <https://link.springer.com/article/10.1007/BF02392840>

## From the judges

All I know for the moment is the Lacey Acta paper is wrong.

## AI-generated notes

<!-- status: Open -->

- **Status:** Open according to the proposer; S. H. Ferguson and M. T. Lacey (Acta Math. 2002), the page's own reference, claimed a proof, and a judge reports that their paper is wrong.
- **Task:** Decide whether weak factorization holds on the bidisc, and give a new proof of the main theorem of Ferguson–Lacey.
- **Key reference:** [S. H. Ferguson and M. T. Lacey, "A characterization of product BMO by commutators", Acta Math. 189 (2002), 143–160](https://arxiv.org/abs/math/0104144)
- **Lean:** Official statement.

### Notes

- Ferguson and Lacey's Corollary 1.3, with the remark after it, claims the answer yes. The proposer calls the problem open and asks for a new proof of their main theorem, and a judge reports that the paper is wrong (From the judges). We have not located the error, so the account of their argument below is unverified, and so are the later works that build on it.

### The claimed result

Ferguson and Lacey claimed that the norm of the iterated commutator $[[M_b,H_1],H_2]$ on $L^2(\mathbb R^2)$, with $H_j$ the Hilbert transform in the $j$-th variable, is equivalent to the Chang–Fefferman product BMO norm of $b$ (Theorem 1.2; the upper bound is due to Ferguson and Sadosky). By duality this would give weak factorization (Corollary 1.3): there is $C$ such that every $h\in H^1$ can be written

$$h=\sum_j f_j g_j,\qquad f_j,g_j\in H^2,\qquad \sum_j\Vert f_j\Vert_2\Vert g_j\Vert_2\le C\Vert h\Vert_1 .$$

The proof is on a product of half-planes; a remark transfers it to the bidisc. The dual form is a Nehari theorem: the little Hankel operator $\Gamma_b f=P_{-,-}(bf)$ on $H^2(\mathbb D^2)$ is bounded iff $b$ is in product BMO.

### How the claimed proof works

- Product BMO is characterized by wavelet coefficients over dyadic rectangles inside arbitrary open sets $U$ (Chang–Fefferman); the proof uses Meyer wavelets.
- Normalize $\Vert b\Vert_{BMO}=1$, fix an extremal $U$, and use the Ferguson–Sadosky bound to assume the rectangular BMO norm of $b$ is small.
- Split $b$ by rectangles inside $U$, inside a slight enlargement $V$ of $U$, and the rest; apply the commutator to the first piece.
- The main term is bounded below by an algebraic identity and John–Nirenberg; the $V$-term is small because $|V|$ is close to $|U|$.
- The remaining term is the hard part: a variant of Journé's lemma and a case analysis of wavelet tails control it.

### Background

- In one variable every $H^1$ function is a product of two $H^2$ functions. On polydiscs this fails: Rudin ($d\ge4$), Miles ($d\ge3$), Rosay ($d=2$, the factorable functions are of first category).
- An example of Carleson shows that the rectangular BMO norm is not comparable to the product BMO norm; the two-parameter structure of BMO is why the proof is harder than in one variable.
- Lacey and Terwilleger extended the claim to $\mathbb D^n$ by induction, and Lacey's lecture notes (2007) give a slower version of the argument in which some steps follow from paraproduct theory; whether the reported error affects them is not known here.

### Where to start

- [Lectures on Nehari's Theorem on the Polydisk](https://arxiv.org/abs/math/0601272), M. T. Lacey, 2006: background and a detailed version of the argument.
- [A characterization of product BMO by commutators](https://arxiv.org/abs/math/0104144), S. H. Ferguson and M. T. Lacey, 2001: the original argument (21 pages on arXiv).
- [Hankel operators in several complex variables and product BMO](https://arxiv.org/abs/math/0310348), M. T. Lacey and E. Terwilleger, 2003: the inductive argument for $\mathbb D^n$.

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

The statement asserts the answer yes, as Ferguson and Lacey claimed (Corollary 1.3 with the remark that transfers it to the bidisc). If the answer is no, the statement is false, and `¬ WeakFactorization` states the answer.

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Mathlib

Mathlib has `MeasureTheory.Lp`, `UnitAddTorus`, `mFourierCoeff` and the Hilbert basis `mFourierBasis` of $L^2(\mathbb T^d)$. It has no Hardy spaces, BMO, Hilbert transform or Hankel operators.
