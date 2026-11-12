# 135 · The Theorem That Secretly Needed Choice

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/135-the-theorem-that-secretly-needed-choice.md`](../problems_original/135-the-theorem-that-secretly-needed-choice.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

The Theorem That Secretly Needed Choice

### Short description of problem (100 words or less)

Every first course in category theory proves: a fully faithful, essentially surjective functor is an equivalence. Surprise: over ZF this theorem is equivalent to the Axiom of Choice. Inverting one innocent functor, from the "Vitali groupoid" (reals, with x ≅ y iff x − y is rational) to the set R/Q, is the same as building a non-measurable Vitali set. Yet in homotopy type theory, in Rezk's complete Segal spaces, and in the Rzk proof assistant the same theorem holds with no choice at all. Find exactly where the choice hides, explain why changing what "equal" means makes it disappear, and check both sides by computer.

The classical proof (Mac Lane, Categories for the Working Mathematician, IV.4) uses global choice without comment. Makkai (1996) changed the notion of functor to avoid it. Univalent foundations and Rezk's completeness condition (2001) change the notion of equality instead, which makes the choice unique and therefore free.

### Submitted Area

Category Theory

### Proposed Tracks

Number Theory/Algebra

### Reference/source material

Mac Lane (CWM IV.4); Makkai, JPAA 108 (1996); HoTT Book, Ch. 9; Ahrens–Kapulkin–Shulman, MSCS 25 (2015); Rezk, Trans. AMS 353 (2001); Rasekh, arXiv:1805.03131 and ICERM School Notes "Complete Segal Spaces" (2026); Riehl–Shulman, Higher Structures 1 (2017); Freyd (1976); Blanc (1978).

### Desired outcome

Lean 4: a choice-free reduction "theorem ⇒ AC", plus a #print axioms audit
of mathlib's Functor.inv. A "Two Nerves" visualizer. The univalent
choice-free proof, explained.

## AI-generated notes

<!-- status: Proved -->

> Written by Claude Opus 5.5 on 2026-11-11 from the proposer's text above.

- **Status:** Known: over ZF, "every fully faithful, essentially surjective functor is an equivalence" is equivalent to the axiom of choice (folklore, recorded in the HoTT Book, 2013), while for univalent categories it holds without choice (HoTT Book, Lemma 9.4.7; Ahrens, Kapulkin and Shulman, 2015).
- **Task:** Locate the use of choice in the classical theorem, explain why univalence (or Rezk completeness) removes it, and check both sides by computer, in Lean and in Rzk.
- **Key reference:** [The Univalent Foundations Program, *Homotopy Type Theory: Univalent Foundations of Mathematics*, 2013, Chapter 9](https://homotopytypetheory.org/book/)
- **Lean:** No official statement.

### Notes

- The choice-free theorem in homotopy type theory needs the domain to be a univalent category. The introduction to Chapter 9 of the HoTT Book says that for strict categories (objects form a set) the statement is still equivalent to the axiom of choice, and that for precategories no consistent axiom of choice makes it true.
- Rezk's paper works in ordinary set-theoretic homotopy theory; reading his completeness result as "choice-free" is an analogy, not a statement in the paper.
- No proof was found in Rzk's sHoTT library that a fully faithful, essentially surjective functor between Rezk types is an equivalence; the library proves the converse direction ("equivalences are fully faithful").
- The "ICERM School Notes 'Complete Segal Spaces' (2026)" could not be located. ICERM held a workshop "Teaching Higher Category Theory with Computers" (17–21 August 2026) organized by Rasekh, Riehl and Weinberger, and arXiv:1805.03131 was substantially revised in June 2026 (v2).

### The result

A functor $F:C\to D$ is an equivalence if there are $G:D\to C$ and natural isomorphisms $GF\cong 1_C$, $FG\cong 1_D$. Every equivalence is fully faithful and essentially surjective: for each $d$ there exist $c$ and an isomorphism $Fc\cong d$. Over ZF, the converse for all functors between small categories is equivalent to the axiom of choice:

- Choice gives the converse: choose $c_d$ and $Fc_d\cong d$ for every $d$; fullness and faithfulness then define $G$ on morphisms uniquely (Mac Lane, CWM IV.4).
- Conversely, for a surjection $p:X\to Y$ let $X_p$ have objects $X$ and exactly one arrow $x\to x'$ whenever $p(x)=p(x')$. Then $p:X_p\to Y$, with $Y$ discrete, is fully faithful and essentially surjective, and any quasi-inverse $G$ satisfies $p(G(y))=y$, so $p$ has a section.
- For $p:\mathbb R\to\mathbb R/\mathbb Q$ a section is a Vitali set. Solovay (1970) built, from an inaccessible cardinal, a model of ZF + DC in which every set of reals is Lebesgue measurable; there this functor has no quasi-inverse.

In univalent foundations a precategory has a type of objects and hom-sets; it is a (univalent) category if $(a=b)\to(a\cong b)$ is an equivalence. HoTT Book Lemma 9.4.5: $F$ is an equivalence iff it is fully faithful and *split* essentially surjective (a chosen $a$ with $Fa\cong b$ for each $b$). Lemma 9.4.7: if $F:A\to B$ is fully faithful and $A$ is a category, then $\sum_{a:A}(Fa\cong b)$ is a mere proposition for every $b$, so essential surjectivity (mere existence) already gives the splitting, and $F$ is an equivalence without any choice axiom.

For complete Segal spaces, Rezk (2001, Proposition 7.6) proves that a map is a Dwyer–Kan equivalence (an equivalence on homotopy categories and a weak equivalence on mapping spaces) iff it is a levelwise (Reedy) weak equivalence.

### How the known proof works

- Classically, the only non-constructive step is choosing one preimage object $c_d$ for each $d$; everything else is forced.
- In HoTT, given $(a,f)$ and $(a',f')$ with $f:Fa\cong b$, $f':Fa'\cong b$, fullness and faithfulness give a unique $g:a\cong a'$ with $Fg=f'^{-1}f$; univalence turns $g$ into a path $a=a'$ that transports $f$ to $f'$. So the type of preimages has at most one element, and a merely existing element of a proposition can be used as data ("unique choice").
- Rezk's Proposition 7.6 runs the same argument with spaces: completeness identifies the space of objects with the space of homotopy equivalences, so a bijection on equivalence classes of objects plus equivalences of mapping spaces gives a weak equivalence of object spaces.
- Makkai (1996) keeps set-level categories but replaces functors by anafunctors (functors given by spans), for which fully faithful and essentially surjective functors are equivalences without choice.

### Background

- Freyd (1976) and Blanc (1978) characterized the properties of categories that are invariant under equivalence as those expressible without equality of objects; Makkai's FOLDS develops the same idea with dependent sorts (HoTT Book, notes to Chapter 9, which also trace univalent categories to Hofmann and Streicher, 1998).
- Ahrens, Kapulkin and Shulman (2015) construct the Rezk completion, a universal fully faithful, essentially surjective functor from a precategory to a category; the arXiv version has Coq formalizations as ancillary files.
- Riehl and Shulman (2017) define Segal and Rezk types in a type theory for synthetic $(\infty,1)$-categories; Rzk is an experimental proof assistant for this theory, with the sHoTT library.

### Where to start

- [HoTT Book](https://homotopytypetheory.org/book/), 2013: the introduction to Chapter 9 (the three cases), §9.1 and §9.4 (Lemmas 9.4.5 and 9.4.7).
- [Univalent categories and the Rezk completion](https://arxiv.org/abs/1303.0584), B. Ahrens, K. Kapulkin, M. Shulman, 2013: the same results in article form, with Coq files.
- [A model for the homotopy theory of homotopy theory](https://arxiv.org/abs/math/9811037), C. Rezk, 1998: §3 (classifying diagram and discrete nerve of a category), Proposition 7.6 and Remark 7.8.
- [nLab: equivalence of categories](https://ncatlab.org/nlab/show/equivalence+of+categories): which notions of equivalence need choice.

Prerequisites: basic category theory, ZF and the axiom of choice, dependent type theory with identity types (HoTT Book, Chapters 1–3); simplicial sets for the complete Segal space part.

### References, with links

- S. Mac Lane, *Categories for the Working Mathematician*, Graduate Texts in Math. 5, Springer (1971; 2nd ed. 1998), §IV.4. <https://doi.org/10.1007/978-1-4757-4721-8>
- M. Makkai, "Avoiding the axiom of choice in general category theory", J. Pure Appl. Algebra 108 (1996), 109–173. <https://doi.org/10.1016/0022-4049(95)00029-1>
- The Univalent Foundations Program, *Homotopy Type Theory: Univalent Foundations of Mathematics*, Institute for Advanced Study (2013), Chapter 9. <https://homotopytypetheory.org/book/>
- B. Ahrens, K. Kapulkin and M. Shulman, "Univalent categories and the Rezk completion", Math. Structures Comput. Sci. 25 (2015), 1010–1039. <https://doi.org/10.1017/S0960129514000486> (arXiv: <https://arxiv.org/abs/1303.0584>)
- C. Rezk, "A model for the homotopy theory of homotopy theory", Trans. Amer. Math. Soc. 353 (2001), 973–1007. <https://doi.org/10.1090/S0002-9947-00-02653-2>
- N. Rasekh, "Introduction to complete Segal spaces", arXiv:1805.03131 (2018; v2, 2026). <https://arxiv.org/abs/1805.03131>
- N. Rasekh, ICERM School Notes "Complete Segal Spaces" (2026) (not verified).
- E. Riehl and M. Shulman, "A type theory for synthetic ∞-categories", Higher Structures 1 (2017), 147–224. <https://arxiv.org/abs/1705.07442>
- P. Freyd, "Properties invariant within equivalence types of categories", in *Algebra, Topology, and Category Theory* (papers in honor of S. Eilenberg), Academic Press (1976), 55–61. <https://doi.org/10.1016/B978-0-12-339050-9.50010-9>
- G. Blanc, "Équivalence naturelle et formules logiques en théorie des catégories", Arch. Math. Logik Grundlag. 19 (1978), 131–137. <https://doi.org/10.1007/BF02011874>

### Further references

- R. M. Solovay, "A model of set-theory in which every set of reals is Lebesgue measurable", Ann. of Math. 92 (1970), 1–56. <https://doi.org/10.2307/1970696>
- Rzk proof assistant and the sHoTT library. <https://github.com/rzk-lang/rzk>, <https://github.com/rzk-lang/sHoTT>

### Lean

#### Official statement

This problem has no official Lean statement. Lean's logic includes the axiom `Classical.choice`, so the equivalence with the axiom of choice can only be expressed as an implication whose proof is checked with `#print axioms` not to use it; Mathlib has the category theory this needs.

#### Mathlib

Mathlib defines `CategoryTheory.Functor.IsEquivalence` as the Prop-valued class "faithful, full and essentially surjective" (`Functor.Faithful`, `Functor.Full`, `Functor.EssSurj`), so the theorem holds there by definition. The choice sits in the noncomputable `Functor.inv` and `Functor.asEquivalence` (a bundled `CategoryTheory.Equivalence`, notation `C ≌ D`): they are built from `Functor.objPreimage` and `Functor.preimage`, which use `Exists.choose` and `Classical.choice` (via `Functor.essImage.witness` and `Functor.essImage.getIso`). Mathlib also has `Functor.IsEquivalence.mk'` (from an explicit inverse), `Function.surjInv` and `Function.Surjective.hasRightInverse`. It has no univalent categories or complete Segal spaces, and Vitali sets appear only in docstrings.
