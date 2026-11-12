# 121 · Carleson's Theorem on convergence of Fourier series

## From the proposer

- **Area:** Fourier/Harmonic analysis
- **Tracks:** Analysis

### Description

Fourier series and transform are commonly used objects in analysis and beyond. One of the famous problems since invention of Fourier series is determining for which functions its Fourier series converges pointwise. Kolmogorov constructed integrable function with almost everywhere divergent Fourier series. Carleson famously showed that if a function is square-integrable then its Fourier series converges almost everywhere.

### Desired outcome

The main goal would be to find a simpler or conceptually different proof of Carleson’s theorem. Another nice outcome would be a clear exposition of Carleson’s original proof, explaining the guiding ideas, the motivation behind the main decompositions, and how one might arrive at the argument. Although several proofs are known, they remain difficult and technically demanding.

### References

Lennart Carleson, “On convergence and growth of partial sums of Fourier series,” Acta Mathematica 116 (1966), 135–157.
DOI: 10.1007/BF02392815.

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved by L. Carleson (Acta Math., 1966) for $L^2$ and extended to $L^p$, $p\gt1$, by R. A. Hunt (1968); other proofs are due to C. Fefferman (1973) and M. Lacey and C. Thiele (2000), and the theorem has been formalized in Lean.
- **Task:** A simpler or conceptually different proof of Carleson's theorem, or a clear exposition of Carleson's original proof that explains its main decompositions and how one might find them.
- **Key reference:** [L. Carleson, “On convergence and growth of partial sums of Fourier series”, Acta Math. 116 (1966), 135–157](https://doi.org/10.1007/BF02392815)
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- The second goal overlaps with J. Arias de Reyna's book *Pointwise Convergence of Fourier Series* (LNM 1785, 2002), which expounds the Carleson–Hunt theorem along the lines of Carleson's proof; its zbMATH review says it explains the motivation of each step and includes a flow diagram of the proof. A new exposition should say what it adds.

### The result

For $f\in L^1(\mathbb T)$, $\mathbb T=\mathbb R/2\pi\mathbb Z$, let $\hat f(n)=\frac1{2\pi}\int_0^{2\pi}f(x)e^{-inx}\thinspace dx$ and $S_Nf(x)=\sum_{|n|\le N}\hat f(n)e^{inx}$.

- Carleson (1966): if $f\in L^2(\mathbb T)$, then $S_Nf(x)\to f(x)$ for almost every $x$. The same paper gives growth bounds: $S_Nf(x)=o(\log\log\log N)$ a.e. for $f\in L^p$, $1\lt p\lt2$, and $o(\log\log N)$ a.e. if $\int|f|(\log^+|f|)^{1+\delta}\lt\infty$.
- Hunt (1968): the maximal operator $S^{\ast}f=\sup_N|S_Nf|$ is bounded on $L^p$, $1\lt p\lt\infty$, so convergence holds a.e. for $f\in L^p$, $p\gt1$, and also for $f\in L(\log L)^2$. Sjölin and Antonov extended this to $L\log L\log\log L$ and $L\log L\log\log\log L$.
- In the other direction, Kolmogorov (1923) constructed $f\in L^1$ whose Fourier series diverges a.e., and later (1926) one that diverges everywhere.

### How the known proof works

- Reduction (all proofs): $S_Nf\to f$ for trigonometric polynomials, which are dense in $L^2$, so it suffices to prove the weak-type bound $|\lbrace S^{\ast}f\gt\lambda\rbrace|\le C\lambda^{-2}\Vert f\Vert_2^2$. Up to bounded errors $S_Nf$ is a combination of modulated Hilbert transforms, so one bounds the Carleson operator $Cf(x)=\sup_N\big|\mathrm{p.v.}\int f(x-y)e^{iNy}\thinspace\frac{dy}{y}\big|$.
- Lacey–Thiele (2000), as in Lacey's survey: linearize $N=N(x)$ and decompose the operator into a sum over tiles, dyadic rectangles of area one in the time–frequency plane, each carrying a wave packet.
- Tiles are grouped into trees. The Tree Lemma bounds the sum over a tree $T$ by $|I_T|\cdot\mathrm{size}(T)\cdot\mathrm{dense}(T)$, where $I_T$ is the top interval, the size is a local $L^2$ energy of $f$, and the density measures how much of the set where $N(x)$ points into the tiles lies under them.
- The Density Lemma and the Size Lemma (the latter an orthogonality, Bessel-type argument) split any collection of tiles into trees of controlled total length $\sum|I_T|$ plus a remainder of half the density or size; iterating them and summing gives the bound.
- Fefferman (1973) introduced the tiles, their partial order and early forms of the Density and Tree Lemmas (Lacey's Remark 8.2). Carleson's own argument is organized differently; Sjölin and Arias de Reyna used proofs along its lines to get the best known distributional estimate for $C\mathbf 1_E$ (Lacey, §7).

### Background

- Luzin conjectured in 1913 that every $L^2$ function has an a.e. convergent Fourier series. On the divergence side, Konyagin (1999) gave everywhere divergent Fourier series in $L\varphi(L)$ for every $\varphi(t)=o\big((\log t/\log\log t)^{1/2}\big)$; Lacey's survey (§§9.2–9.3) discusses the gap between this and Antonov's class.
- The time–frequency method of the Lacey–Thiele proof grew out of their bounds for the bilinear Hilbert transform. Becker, van Doorn, Jamneshan, Srivastava and Thiele (2025) prove a version of Carleson's theorem on doubling metric measure spaces, which the Carleson project formalized.

### Where to start

- [Carleson's theorem: proof, complements, variations](https://arxiv.org/abs/math/0307008), M. Lacey, Publ. Mat. 2004: a complete Lacey–Thiele proof (§§2–6), with history and variants.
- [Pointwise Convergence of Fourier Series](https://doi.org/10.1007/b83346), J. Arias de Reyna, LNM 1785, 2002: the Carleson–Hunt theorem along Carleson's lines, with the motivation for each step.
- [A blueprint for the formalization of Carleson's theorem](https://arxiv.org/abs/2405.06423), L. Becker et al., 2024: a fully detailed proof of a generalization, with every step written out.

Prerequisites: Lebesgue integration and $L^p$ spaces, the Hilbert transform and Calderón–Zygmund theory, Hardy–Littlewood maximal function, interpolation of operators.

### References, with links

- L. Carleson, “On convergence and growth of partial sums of Fourier series”, Acta Math. 116 (1966), 135–157, doi:10.1007/BF02392815. <https://doi.org/10.1007/BF02392815>

### Further references

- R. A. Hunt, “On the convergence of Fourier series”, in *Orthogonal Expansions and their Continuous Analogues* (Edwardsville, 1967), Southern Illinois Univ. Press, 1968, 235–255.
- C. Fefferman, “Pointwise convergence of Fourier series”, Ann. of Math. 98 (1973), 551–571. <https://doi.org/10.2307/1970917>
- M. Lacey and C. Thiele, “A proof of boundedness of the Carleson operator”, Math. Res. Lett. 7 (2000), 361–370. <https://doi.org/10.4310/MRL.2000.v7.n4.a1>
- A. Kolmogoroff, “Une série de Fourier–Lebesgue divergente presque partout”, Fund. Math. 4 (1923), 324–328. <https://doi.org/10.4064/fm-4-1-324-328>
- L. Becker, F. van Doorn, A. Jamneshan, R. Srivastava and C. Thiele, “Carleson operators on doubling metric measure spaces” (2025). <https://arxiv.org/abs/2508.05563>

### Lean

#### Official statement

`classical_carleson` in [`lean/MathathonProblems/P121_Carleson.lean`](lean/MathathonProblems/P121_Carleson.lean).

```lean
theorem classical_carleson (f : ℝ → ℂ) (hper : Periodic f (2 * π))
    (hf : MemLp f 2 (volume.restrict (Ico 0 (2 * π)))) :
    ∀ᵐ x, Tendsto (fun N ↦ fourierPartialSum f N x) atTop (𝓝 (f x))
```

`CarlesonLT.fourierPartialSum f N x` is the partial sum $S_Nf(x)=\sum_{|n|\le N}\hat f(n)e^{inx}$, with Mathlib's Fourier coefficients `fourierCoeffOn` on $[0,2\pi]$. The problem asks for a new proof or an exposition of Carleson's theorem; this is the theorem in the $L^2$ form stated by the proposer.

Source: <https://github.com/roos-j/lean-lt-carleson/blob/8dc5aac6926c9a8692e8790d1ef6008ed4d6b2a0/CarlesonLT/Theorems.lean>, <https://github.com/roos-j/lean-lt-carleson/blob/8dc5aac6926c9a8692e8790d1ef6008ed4d6b2a0/CarlesonLT/Defs.lean> (Apache-2.0). Adapted: `classical_carleson` and `CarlesonLT.fourierPartialSum` are copied unchanged, with the proof replaced by `sorry`. The same repository contains a complete Lean proof (`Auto.classical_carleson` in [`CarlesonLT/Auto/ClassicalCarleson.lean`](https://github.com/roos-j/lean-lt-carleson/blob/8dc5aac6926c9a8692e8790d1ef6008ed4d6b2a0/CarlesonLT/Auto/ClassicalCarleson.lean)); it was not checked here. A Lean-verified claim must not use or copy it.

#### Related Lean formalizations

- [Carleson](https://palomar-registry.org/entry?id=PALOMAR-2026-11-10-000006&version=1), Palomar registry (Lean-checked, trust level high): the Carleson project ([fpvandoorn/carleson](https://github.com/fpvandoorn/carleson)), L. Becker, F. van Doorn et al.; a metric-space Carleson theorem, its linearized version, a.e. convergence of the Fourier series of continuous $2\pi$-periodic functions, and the Carleson–Hunt theorem: a.e. convergence for periodic $L^p$ functions with $p\gt1$, including $L^2$ (`carleson_hunt_two_pi` and related theorems in `Carleson/Classical/CarlesonHunt.lean`).
- [Formalization of Carleson's theorem via the Lacey-Thiele approach](https://palomar-registry.org/entry?id=PALOMAR-2026-10-12-000008&version=2), Palomar registry (Lean-checked, trust level high): J. Roos ([roos-j/lean-lt-carleson](https://github.com/roos-j/lean-lt-carleson)), Theorem 1.1 of his paper on anisotropic Carleson operators (J. Fourier Anal. Appl. 2019), which generalizes the Lacey–Thiele proof, and Carleson's theorem for $2\pi$-periodic $L^2$ functions as a special case.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has Fourier coefficients on the circle (`fourierCoeff`, `fourierCoeffOn`), $L^2$ convergence of Fourier series (`hasSum_fourier_series_L2`), Parseval's identity (`tsum_sq_fourierCoeff`), convergence for summable coefficients (`hasSum_fourier_series_of_summable`), the Riemann–Lebesgue lemma (`tendsto_integral_exp_inner_smul_cocompact`), doubling measures (`IsUnifLocDoublingMeasure`) and the Lebesgue differentiation theorem (`VitaliFamily.ae_tendsto_average_norm_sub`). It has no Fourier partial sums or Dirichlet kernel, no Hilbert transform, no Hardy–Littlewood maximal operator, no Marcinkiewicz interpolation and no pointwise convergence theorem for Fourier series.
