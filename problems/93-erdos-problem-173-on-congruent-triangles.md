# 93 · Erdős Problem #173 on congruent triangles

> Everything on this page except the section **From the proposer** is AI-generated and may contain errors.

## From the proposer

- **Title:** Erdős Problem #173: monochromatic congruent triangles in 2-colourings of the plane
- **Area:** Combinatorics / discrete geometry (Euclidean Ramsey theory)
- **Tracks:** Combinatorics

### Description

Erdős asked whether in every 2-colouring of the plane, every triangle with at most one exception has a monochromatic congruent copy. The conjectured exception is an equilateral triangle. In October 2026, Plasma AI released a claimed proof found by GPT-6 Astra and Claude Opus 5.5

### Desired outcome

- Human verification of the reduction to equilateral triangles and of the equilateral case.  
- A readable proof of a self-contained part, e.g. the collinear (degenerate) triangles.  
- Checking the dependence on the unrefereed OpenAI preprint: exactly what is used, and whether it holds.

### References

1. Plasma AI, Erdős Problem 173 (proof and Lean formalisation), October 2026: <https://github.com/plasma-ai/erdos-173>  
2. V. Jelínek, J. Kynčl, R. Stolař, T. Valla, “Monochromatic triangles in two-colored plane”, Combinatorica 29 (2009): <https://doi.org/10.1007/s00493-009-2291-y>  
3. P. Erdős et al., “Euclidean Ramsey theorems I”, J. Combin. Theory Ser. A 14 (1973): <https://doi.org/10.1016/0097-3165(73)90011-3>

## AI-generated notes

- **Status:** Proof claimed by Plasma AI in a public GitHub repository (October 2026), not refereed; the repository states that the AI models GPT-6 Astra and Claude Opus 5.5 found the proof, which uses results of an unrefereed OpenAI preprint. The conjecture is due to Erdős et al. (1973).
- **Task:** Human verification of the reduction to equilateral triangles and of the two-scale equilateral case, a readable proof of a self-contained part, and a precise account of what is used from the OpenAI preprint.
- **Key reference:** [Blueprint: monochromatic triangles in two-colorings of the plane](https://github.com/plasma-ai/erdos-173/blob/4a368a652753fab53272f7a747755876f04bc2cc/blueprint/proof.md), Plasma AI, GitHub repository plasma-ai/erdos-173, 2026
- **Lean:** Official statement; a Lean proof already exists.
- **See also:** [Problem 33](33-plane-is-not-5-colorable.md), [Problem 92](92-finite-euclidean-ramsey-configurations.md)

### Notes

- There is no paper: the argument appears only in the repository's README and blueprint. The README reports an internal review of the argument by GPT-6 Astra and no human review of the proof; erdosproblems.com/173 lists no proof claims.
- The proof uses Theorem 2.3 (extended from the algebraic numbers to the algebraic closure of $\mathbb Q(x)$), Lemma 3.4, Lemma 4.1 and Proposition 4.2 of OpenAI's unrefereed "The Euclidean plane is not five-colorable" (Problem 33), not the Ramsey classification of Problem 92.
- Collinear triples are not a separate case in this proof: Lemma 1.3 reduces them to the same two-scale statement (blueprint §9).
- The stronger form of Erdős and Graham (1979), in which one colour class contains every triangle except possibly one equilateral triangle, is not addressed.

### The result

A triangle here is any three distinct points, collinear ones included; a 2-colouring $c:\mathbb R^2\to\{1,2\}$ is arbitrary (no measurability). Erdős Problem #173: in every 2-colouring, all triangles except at most one (up to congruence) have a monochromatic congruent copy. Erdős et al. (1973, p. 347) conjectured that every non-equilateral triangle has one, and that a colouring with no monochromatic equilateral triangle of side $d$ has one of every side $d'\ne d$; alternating strips of width $\sqrt3/2$ avoid side 1 (p. 342). Lemma 1.3(i) of Jelínek et al., from Erdős et al.: a monochromatic $(a,a,a)$-triangle forces a monochromatic $(a,b,c)$-triangle whenever $a,b,c$ satisfy the (possibly degenerate) triangle inequality. Plasma AI claims that no 2-colouring avoids monochromatic equilateral triangles of two different sides; with Lemma 1.3(i), this answers #173.

### How the known proof works

- Reduction (blueprint §1–2): by Lemma 1.3 and rescaling, it suffices to exclude a colouring avoiding equilateral sides $1$ and $x\ne1$.
- Label model (§3–4): restrict to a countable dense field $L\ni x$ (the algebraic numbers, or the algebraic closure of $\mathbb Q(x)$ via a "template property", §8), take an invariant law on avoiding labelings and apply OpenAI's rigidity theorem: the sign correlation at distance $|z|$ is $\int J_0(|z||\xi|)\,d\nu(\xi)$, $\nu$ of mass at most 1.
- Far ratios (§5): three signs not all equal have pair products summing to $-1$, so both correlations are $-1/3$, impossible for $x\ge3/2$ or $x\le2/3$ since then $J_0(t)+J_0(xt)\ge-83/125$.
- Ratios near one (§6–7): thresholding the translation-continuous part of the sign gives a measurable colouring with almost no monochromatic equilateral triangles of sides 1 and $x$; an irrational apex angle, Lebesgue density and an irrational rotation on circles exclude it.

### Background

- Earlier cases: the 30°–60°–90° triangle (Erdős et al., 1973, Corollary 10) and further families (Euclidean Ramsey theorems III, 1975); right triangles (Shader, 1976); colourings by a closed and an open set, and polygonal colourings (Jelínek, Kynčl, Stolař and Valla, 2009); 3-term arithmetic progressions (Currier, Moore and Yip, 2024).

### Where to start

- [Blueprint: monochromatic triangles in two-colorings of the plane](https://github.com/plasma-ai/erdos-173/blob/4a368a652753fab53272f7a747755876f04bc2cc/blueprint/proof.md), Plasma AI, 2026: §1–2 (reduction and case split) and §9 (changes from the original write-up).
- [Monochromatic triangles in two-colored plane](https://arxiv.org/abs/math/0701940), V. Jelínek, J. Kynčl, R. Stolař, T. Valla, 2007: Lemma 1.3 with Figure 1, and Section 2.
- [Euclidean Ramsey theorems I](https://www.renyi.hu/~p_erdos/1973-08.pdf), P. Erdős et al., 1973: pp. 342 and 346–347 (strip colouring, Theorem 9, the conjecture).
- [The Euclidean plane is not five-colorable](https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/preprints/The-Euclidean-plane-is-not-five-colorable-September-23-2026/paper.pdf), OpenAI, 2026: Theorem 2.3, Lemmas 3.4 and 4.1, Proposition 4.2.

Prerequisites: the Lebesgue density theorem, the Bessel function $J_0$, invariant measures and Pontryagin duality, algebraic closures of fields.

### References, with links

- Plasma AI, Erdős Problem 173 (proof and Lean formalization), October 2026: <https://github.com/plasma-ai/erdos-173>
- V. Jelínek, J. Kynčl, R. Stolař, and T. Valla, “Monochromatic triangles in two-colored plane”, Combinatorica 29 (2009), 699–718. <https://doi.org/10.1007/s00493-009-2291-y>
- P. Erdős, R. L. Graham, P. Montgomery, B. L. Rothschild, J. Spencer, and E. G. Straus, “Euclidean Ramsey theorems I”, J. Combin. Theory Ser. A 14 (1973), 341–363. <https://doi.org/10.1016/0097-3165(73)90011-3>

### Further references

- P. Erdős, R. L. Graham, P. Montgomery, B. L. Rothschild, J. Spencer, and E. G. Straus, “Euclidean Ramsey theorems III”, in *Infinite and Finite Sets* (Keszthely, 1973), Colloq. Math. Soc. János Bolyai 10 (1975), 559–583.
- L. E. Shader, “All right triangles are Ramsey in $E^2$!”, J. Combin. Theory Ser. A 20 (1976), 385–389. <https://doi.org/10.1016/0097-3165(76)90036-4>
- G. Currier, K. Moore, and C. H. Yip, “Any two-coloring of the plane contains monochromatic 3-term arithmetic progressions”, Combinatorica 44 (2024), 1367–1380. <https://arxiv.org/abs/2402.14197>
- T. F. Bloom, Erdős Problem #173. <https://www.erdosproblems.com/173>

### Lean

#### Official statement

`Erdos173.erdos_173` in [`lean/MathathonProblems/P93_Erdos173.lean`](lean/MathathonProblems/P93_Erdos173.lean).

```lean
theorem erdos_173 : ∀ (c : ℝ² → Fin 2) (T₁ T₂ : Triangle ℝ ℝ²),
    ¬ HasMonochromaticCopy c T₁ → ¬ HasMonochromaticCopy c T₂ →
      ∃ σ : Equiv.Perm (Fin 3), T₁.points ∘ σ ≅ T₂.points
```

Source: <https://github.com/google-deepmind/formal-conjectures/blob/7db2ea3b91bfbd0ab620215163e6c488bbb916d5/FormalConjectures/ErdosProblems/173.lean>, <https://github.com/google-deepmind/formal-conjectures/blob/7db2ea3b91bfbd0ab620215163e6c488bbb916d5/FormalConjecturesForMathlib/Geometry/2d.lean> (adapted as described in the file header).

A Lean proof of this statement already exists: <https://github.com/plasma-ai/erdos-173/tree/4a368a652753fab53272f7a747755876f04bc2cc>. A Lean-verified claim must not use or copy it.

The statement uses `Affine.Triangle`, so it covers nondegenerate triangles only; the same repository also proves `Erdos173.erdos_173.variants.three_distinct_points`, which includes collinear triples. The Lean proof is registered in the Palomar registry, which re-checks it in Lean (trust level high): <https://palomar-registry.org/entry?id=PALOMAR-2026-10-19-000008&version=1>.

#### Mathlib

Mathlib has `EuclideanSpace ℝ (Fin 2)`, `Affine.Triangle`, `Congruent` (notation `≅`), `EuclideanGeometry.angle`, the Lebesgue density theorem (`Besicovitch.ae_tendsto_measure_inter_div`), `PontryaginDual`, `MeasureTheory.Measure.haarMeasure` and Bessel functions (`Complex.besselJ`). It has no notion of a monochromatic copy: the formal-conjectures statement defines `HasMonochromaticCopy` itself and states the problem with `Affine.Triangle`, which leaves out collinear triples.
