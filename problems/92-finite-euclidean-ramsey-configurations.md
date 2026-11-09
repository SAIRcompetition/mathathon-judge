# 92 · Finite Euclidean Ramsey configurations

- **Status:** Classification claimed in an OpenAI preprint dated 23 September 2026 (released 6 October 2026; the repository states that its manuscripts were produced by an internal OpenAI model), not refereed. The question goes back to Erdős et al. (1973) and is Erdős Problem #174.
- **Task:** An independent check and geometric reading of the tensor criterion, a self-contained proof of a special case, and an explicit Ramsey cyclic quadrilateral that is not subtransitive.
- **Tracks:** Combinatorics · **Area:** Combinatorics / discrete geometry (Euclidean Ramsey theory)
- **Key reference:** [A classification of finite Euclidean Ramsey configurations](https://github.com/openai/math/blob/main/preprints/A-classification-of-finite-Euclidean-Ramsey-configurations-September-23-2026/paper.pdf), OpenAI, preprint, 2026
- **Lean:** Official statement; a Lean proof already exists.
- **See also:** [Problem 93](93-erdos-problem-173-on-congruent-triangles.md)

## Notes

- The 26-page preprint is available only in the OpenAI repository, not on arXiv.
- Leader, Russell and Walters (2011) proved that the kites $K_a$ are not subtransitive; the new claim is that they are Ramsey, which uses the hard direction of Theorem 1.1.

## Description

A finite set X ⊂ ℝⁿ is Ramsey if for every r, every r-colouring of ℝᵐ (m large) contains a monochromatic congruent copy of X. Erdős et al. (1973) showed Ramsey sets are spherical. Graham conjectured the converse, and Leader, Russell and Walters (2012) conjectured that Ramsey sets are exactly the subtransitive ones. OpenAI's publication claims a complete classification via a tensor condition over the coordinate fields. It follows that every subtransitive set and every set of at most five concyclic points is Ramsey, and that some Ramsey cyclic quadrilaterals are not subtransitive.

## Desired outcome

- Independent human verification of the tensor criterion, with an explanation of its geometric meaning.
- A readable, self-contained proof of a special case, e.g. that every cyclic quadrilateral is Ramsey.
- An explicit check of the counterexample: a concrete Ramsey cyclic quadrilateral that is not subtransitive, with a proof that it is not.
- Possibly a Lean formalization.

## The result

A finite set $A$ in a Euclidean space is Ramsey if for every $r\ge2$ there is $D$ such that every map $c:\mathbb R^D\to\{1,\dots,r\}$, with no regularity assumed, is constant on some congruent copy of $A$ (same distances, same scale). Let $A=\{a_1,\dots,a_s\}\subset\mathbb R^d$, $s\ge2$, affinely span $\mathbb R^d$; put $p_i=(1,a_i)^{\mathsf T}$, let $F\subset\mathbb R$ be the field generated over $\mathbb Q$ by all coordinates, $B=F\otimes_{\mathbb Q}F$, and $m_F(x\otimes y)=xy$. Theorem 1.1: $A$ is Ramsey if and only if some $P\in\mathrm{Mat}_{d+1}(B)$, indexed by $0,\dots,d$, satisfies
$$(p_i\otimes1)^{\mathsf T}P\,(1\otimes p_i)=0\quad(1\le i\le s),\qquad m_F(P_{\alpha\beta})=\delta_{\alpha\beta}\quad(1\le\alpha,\beta\le d).$$
Applying $m_F$ to the first equations gives a sphere through the $a_i$ (Corollary 7.1). Consequences: subsets of finite transitive sets are Ramsey (Corollary 7.2), and so is every set of at most five concyclic points (Corollary 7.4); for transcendental $a\in(-1,1)$ the kite $K_a=\{(\pm1,0),(a,\pm\sqrt{1-a^2})\}$ is Ramsey and not subtransitive (Corollary 7.5), against the "only if" part of the Leader–Russell–Walters conjecture; nine circle points with algebraically independent parameters are not Ramsey (Proposition 7.6).

## How the known proof works

- Necessity (Section 2): the criterion is equivalent to a rational tensor condition on affine functions on $\mathbb R^d$ (Proposition 2.1); if it fails, a $\mathbb Q$-linear functional gives one finite colouring avoiding $A$ in every dimension (Proposition 2.4).
- Sufficiency (Sections 3–6): a lattice identity and Gaussian smoothing give, for arbitrarily small $q>0$, vectors $f_i,g_i$ with $\|f_i-f_j\|=\|a_i-a_j\|$, $\|g_i-g_j\|^2=q\|a_i-a_j\|^2$ and each $g_i$ a coordinate permutation of $f_i$ (Lemma 4.1). Permutation averaging turns them into two products of scaled copies of $A$ in a free group with equal endpoints and arbitrarily small weight ratio (Proposition 6.4), which force the Ramsey property via ultrafilters and the Hales–Jewett theorem (Proposition 5.1).

## Background

- Erdős et al. (1973, Theorem 13) proved that Ramsey sets are spherical; Graham (1994) conjectured the converse. Known Ramsey sets include bricks, simplices (Frankl–Rödl), sets with a soluble transitive symmetry group (Kříž) and regular polytopes (Cantwell).
- Leader, Russell and Walters (2012, Conjecture A) proposed "Ramsey if and only if subtransitive"; in 2011 they conjectured that the kites $K_a$ are not Ramsey.
- Pálvölgyi (arXiv, 2026; written by ChatGPT according to the paper, appendix unchecked by the author) gives a counterexample to Graham's conjecture: $\{(0,0)\}\cup\{(j,\pm\sqrt{j(2r-j)}):j=1,3,4\}$ is not Ramsey for transcendental $r>2$ (Theorem 1), via a derivation of $\mathbb R$ and Rado's theorem.

## Where to start

- [A classification of finite Euclidean Ramsey configurations](https://github.com/openai/math/blob/main/preprints/A-classification-of-finite-Euclidean-Ramsey-configurations-September-23-2026/paper.pdf), OpenAI, 2026: Section 1 (criterion and outline) and Section 7 (examples).
- [Transitive sets in Euclidean Ramsey theory](https://arxiv.org/abs/1012.1350), I. Leader, P. A. Russell, M. Walters, 2010: Conjecture A and the Hales–Jewett formulations behind Section 5.
- [Transitive sets and cyclic quadrilaterals](https://arxiv.org/abs/1012.5468), I. Leader, P. A. Russell, M. Walters, 2010: the five-page proof that the kites are not subtransitive.
- [A cyclic non-Ramsey heptagon](https://arxiv.org/abs/2609.23327), D. Pálvölgyi, 2026: Theorem 1 (pp. 1–3), the derivation obstruction in its simplest form.

Prerequisites: tensor products of fields, transcendence bases and derivations, the Hales–Jewett theorem, ultrafilters.

## References

- OpenAI, “A classification of finite Euclidean Ramsey configurations”, preprint, 23 September 2026: <https://github.com/openai/math/tree/main/preprints/A-classification-of-finite-Euclidean-Ramsey-configurations-September-23-2026>
- P. Erdős, R. L. Graham, P. Montgomery, B. L. Rothschild, J. Spencer, and E. G. Straus, “Euclidean Ramsey theorems I”, J. Combin. Theory Ser. A 14 (1973), 341–363. <https://doi.org/10.1016/0097-3165(73)90011-3>
- I. Leader, P. A. Russell, and M. Walters, “Transitive sets in Euclidean Ramsey theory”, J. Combin. Theory Ser. A 119 (2012), 382–396. <https://doi.org/10.1016/j.jcta.2011.09.005>

Further references:

- I. Leader, P. A. Russell, and M. Walters, “Transitive sets and cyclic quadrilaterals”, J. Comb. 2 (2011), 457–462. <https://arxiv.org/abs/1012.5468>
- P. Frankl and V. Rödl, “A partition property of simplices in Euclidean space”, J. Amer. Math. Soc. 3 (1990), 1–7. <https://doi.org/10.1090/S0894-0347-1990-1020148-2>
- I. Kříž, “Permutation groups in Euclidean Ramsey theory”, Proc. Amer. Math. Soc. 112 (1991), 899–907. <https://doi.org/10.1090/S0002-9939-1991-1065087-9>
- K. Cantwell, “All regular polytopes are Ramsey”, J. Combin. Theory Ser. A 114 (2007), 555–562. <https://doi.org/10.1016/j.jcta.2006.08.001>
- T. F. Bloom, Erdős Problem #174. <https://www.erdosproblems.com/174>

## Lean

### Official statement

`OAI.EuclideanRamsey.classification` in [`lean/MathathonProblems/P92_EuclideanRamsey.lean`](lean/MathathonProblems/P92_EuclideanRamsey.lean).

```lean
theorem classification {s d : ℕ} (a : Fin s → Space d)
    (hs : 2 ≤ s) (hd : 1 ≤ d) (ha : Function.Injective a)
    (hspan : affineSpan ℝ (Set.range a) = ⊤) :
    Ramsey a ↔ FieldCriterion a
```

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/EuclideanRamsey.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Combinatorics/EuclideanRamsey/Main.lean>. A Lean-verified claim must not use or copy it.

### Related Lean formalizations

- [`ErdosProblems/174.lean`](https://github.com/google-deepmind/formal-conjectures/blob/006a2ab1b05ba271125efb8dfdc3ad32e9d4cca1/FormalConjectures/ErdosProblems/174.lean) in Formal Conjectures: Lean statements of Erdős Problem #174 and of Graham's and Leader–Russell–Walters' conjectures (statements only).

Projects outside the Palomar registry are described as their authors describe them; the organizers have not checked their proofs.

### Mathlib

Mathlib has `EuclideanSpace`, `affineSpan`, `EuclideanGeometry.Cospherical`, `Congruent`, `IntermediateField.adjoin`, tensor products of algebras with the multiplication map `Algebra.TensorProduct.lmul'`, the Hales–Jewett theorem (`Combinatorics.Line.exists_mono_in_high_dimension`) and Hindman's theorem via idempotent ultrafilters (`Hindman.FP_partition_regular`). It has no notion of a Ramsey configuration or of subtransitive sets; the OpenAI statement defines `Ramsey` and `FieldCriterion` in a few lines, and it compiles against Mathlib v4.35.0.

---

*Description and Desired outcome are the proposer's text. The other sections were written by the organizers from the literature.*
