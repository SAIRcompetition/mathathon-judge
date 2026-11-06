# 37 · P = W for SL(n) via endoscopy

- **Status:** Prime rank: de Cataldo–Maulik–Shen (2022) with the GLₙ theorem; composite rank: OpenAI preprint (September 2026), not yet refereed.
- **Task:** An SLₙ P=W proof via global Springer theory and endoscopy.
- **Tracks:** Geometry · **Area:** Algebraic geometry
- **Key reference:** [D. Maulik and J. Shen, “Endoscopic decompositions and the Hausel–Thaddeus conjecture”, Forum Math. Pi 9 (2021), e8](https://arxiv.org/abs/2008.08520)
- **Lean:** No official statement.

## Notes

- The OpenAI preprint is dated September 24, 2026, not October 2026 as the Description says.
- The SLₙ statement was already known for prime $n$ (de Cataldo–Maulik–Shen, Selecta 2022, combined with the GLₙ theorem); the OpenAI preprint treats composite $n\ge 4$.

## Description

The celebrated P=W Conjecture is one of the deepest conjectures in Non Abelian Hodge Theory. Since 2022, it has been proved in three ways: by Maulik-Shen, by Hausel-Mellit-Minets-Schiffmann, and by Maulik-Shen-Yin. The P=W Conjecture has an SLn variant, which is proved by OpenAI in Oct 2026. OpenAI's proof builds via HMMS's approach. The goal of this project is to give a proof of the SLn P=W Conjecture via MS's approach, which may be easier for a geometer to understand.

## Desired outcome

A proof of the SLn P=W Conjecture without using $\mathcal{H}_2$. Instead, it should use global Springer theory and endoscopic decomposition.

## The result

Let $C$ be a smooth projective curve of genus $g\ge 2$, $\gcd(n,d)=1$, $L\in\operatorname{Pic}^d(C)$. Let $M_{\rm Dol}$ be the moduli of stable rank-$n$ Higgs bundles with $\det E\simeq L$, $\operatorname{tr}\theta=0$, and $M_B$ the twisted $\mathrm{SL}_n$ character variety; nonabelian Hodge theory identifies their cohomology. P = W states that the perverse filtration $P$ of the Hitchin map equals the weight filtration $W$ of $M_B$:
$$P_kH^m(M_B,\mathbb Q)=W_{2k}H^m=W_{2k+1}H^m\quad\text{for all }m,k,$$
including the variant part (nontrivial characters of $\Gamma=\operatorname{Pic}^0(C)[n]$). For $\mathrm{GL}_n$ it was proved by Maulik–Shen (Annals 2024), Hausel–Mellit–Minets–Schiffmann (arXiv 2022) and Maulik–Shen–Yin (Acta 2025).

## How the known proof works

- Maulik–Shen route for GLₙ: a strong perversity bound for tautological classes, proved with vanishing-cycle functors, Yun's global Springer theory and a parabolic support theorem, plus Mellit's curious hard Lefschetz.
- Endoscopy (Maulik–Shen 2021): for each character $\kappa$, a surjective operator $p_\kappa$ from the cohomology of GLᵣ Higgs moduli on a degree-$m$ cyclic cover $C'\to C$ ($n=mr$) onto the part $H^*_\kappa$, shifting perverse filtrations by a fixed amount (Theorem 5.4); this reproves the Hausel–Thaddeus conjecture.
- The missing step on this route is Maulik–Shen's Question 5.5: whether the Betti version of $p_\kappa$ maps weight filtrations onto weight filtrations; a yes, with GLᵣ P = W, gives SLₙ P = W.
- Prime rank: de Cataldo–Maulik–Shen compute both filtrations on the variant part, using Gröchenig–Wyss–Ziegler's proof of topological mirror symmetry, and reduce SLₚ to GLₚ.
- The OpenAI composite-rank proof instead builds one degree $-2$ operator $f$ on the full cohomology with $fP_k\subset P_{k-2}$, $fW_j\subset W_{j-4}$, $[[f,e],e]=-2e$, following the sl₂ and flag-correspondence methods of Hausel–Mellit–Minets–Schiffmann; it answers Question 5.5 as Corollary 9.2.

## Background

- De Cataldo–Hausel–Migliorini formulated P = W and proved it in rank 2 (Annals 2012); de Cataldo–Maulik–Shen proved GLₙ in genus 2 (JAMS 2022).
- Expositions of the GLₙ proofs: V. Hoskins, Séminaire Bourbaki Exposé 1213 (Astérisque, 2025); Oberwolfach Arbeitsgemeinschaft report 2024.
- Maulik–Shen–Yin give a third GLₙ proof by Fourier transforms on compactified Jacobian fibrations.

## Where to start

- [Endoscopic decompositions and the Hausel–Thaddeus conjecture](https://arxiv.org/abs/2008.08520), D. Maulik, J. Shen, 2020: the endoscopic operators, Theorem 5.4 and Question 5.5.
- [The P=W conjecture for GLₙ](https://arxiv.org/abs/2209.02568), D. Maulik, J. Shen, 2022: the global Springer argument to adapt.
- [On the P=W conjecture for SLₙ](https://arxiv.org/abs/2002.03336), M. A. de Cataldo, D. Maulik, J. Shen, 2020: the prime-rank case and the variant cohomology.
Prerequisites: perverse sheaves and the decomposition theorem, Hitchin fibrations, mixed Hodge structures, nonabelian Hodge theory.

## References

- Maulik, Davesh, and Junliang Shen. "The P=W conjecture for GL_n." Annals of Mathematics 200, no. 2 (2024): 529-556. <https://doi.org/10.4007/annals.2024.200.2.3>
- Hausel, Tamas, Anton Mellit, Alexandre Minets, and Olivier Schiffmann. "$P=W$ via $\mathcal{H}_2$." arXiv preprint arXiv:2209.05429 (2022). <https://arxiv.org/abs/2209.05429>
- OpenAI. "P=W in composite rank for fixed determinant." OpenAI Math Release preprint (2026). <https://github.com/openai/math/tree/main/preprints/P-equals-W-in-composite-rank-for-fixed-determinant-September-24-2026>.

Further references:

- D. Maulik and J. Shen, “Endoscopic decompositions and the Hausel–Thaddeus conjecture,” Forum Math. Pi 9 (2021), e8. <https://doi.org/10.1017/fmp.2021.7>
- M. A. de Cataldo, D. Maulik, J. Shen, “On the P=W conjecture for SLₙ,” Selecta Math. 28 (2022), 90. <https://arxiv.org/abs/2002.03336>
- M. A. de Cataldo, T. Hausel, L. Migliorini, “Topology of Hitchin systems and Hodge theory of character varieties: the case A₁,” Ann. of Math. 175 (2012), 1329–1407. <https://arxiv.org/abs/1004.1420>
- D. Maulik, J. Shen, Q. Yin, “Perverse filtrations and Fourier transforms,” Acta Math. 234 (2025), 1–69. <https://arxiv.org/abs/2308.13160>
- V. Hoskins, “Exposé Bourbaki 1213: Two proofs of the P = W conjecture (after Maulik–Shen, Hausel–Mellit–Minets–Schiffmann),” Astérisque (2025). <https://doi.org/10.24033/ast.1230>

## Lean

### Official statement

This problem has no official Lean statement: a faithful statement needs Higgs bundles, character varieties, and their cohomology, which Mathlib does not have yet.

### Mathlib

Mathlib has the special linear group (`Matrix.SpecialLinearGroup`), derived categories and t-structures (`DerivedCategory`, `CategoryTheory.Triangulated.TStructure`). It has no vector bundles on curves, Higgs bundles, moduli spaces, character varieties, perverse sheaves or mixed Hodge structures.

---

*Description and Desired outcome are the proposer's text. The other sections were written by the organizers from the literature.*
