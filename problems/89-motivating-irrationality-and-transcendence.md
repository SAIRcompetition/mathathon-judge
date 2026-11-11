# 89 · Motivating irrationality and transcendence proofs

> Everything on this page except the section **From the proposer** is AI-generated and may contain errors.

## From the proposer

- **Title:** A general survey of irrationality and transcendence - how such proofs were motivated.
- **Area:** Transcendental Number Theory and Analysis
- **Tracks:** Number Theory/Algebra, Analysis

### Description

Many proofs of irrationality/transcendentality of numbers like pi, e, zeta(3), and that of the Lindemann-Weierstrass theorem itself, seem mysteriously motivated and rely on unmotivated integrals, polynomials, or infinite sums. We aim to find patterns and motivations for different constructions to further understand how it links to other areas of mathematics.

### Desired outcome

To find a high-level strategy to prove a number, represented by an infinite series or integral, is irrational or transcendental. Hopefully come up with new theories and definitions which preserve structure and elicit irrationality/transcendentality or are useful for studying the nature of numbers in general.

### References

- Transcendental Number Theory - Alan Baker
- The irrationality exponent of pi is 2 - OpenAI

## AI-generated notes

- **Status:** Expository. The classical results (Hermite 1873, Lindemann 1882, Gelfond–Schneider 1934, Baker 1966, Apéry 1978) are established; the cited claim that the irrationality exponent of $\pi$ is 2 is in an OpenAI preprint dated 24 September 2026, which its repository describes as produced by an internal OpenAI model; not yet refereed.
- **Task:** A high-level account of how irrationality and transcendence proofs are designed, ideally with new unifying structures or definitions.
- **Key reference:** [Transcendental Number Theory](https://doi.org/10.1017/CBO9780511565977), A. Baker, Cambridge University Press, 1975.
- **Lean:** No official statement.

### Notes

- Baker's book (1975) covers transcendence (linear forms in logarithms, the exponential function, Siegel–Shidlovsky, algebraic independence) and predates Apéry's proof for $\zeta(3)$; the surveys under "Where to start" cover later constructions.
- The claim $\mu(\pi)=2$ is unrefereed and its threshold $Q(\nu)$ is ineffective; before 2026 the best bound was $7.103205\ldots$ (Zeilberger–Zudilin 2020). OpenAI has also released a 42-page [summary of the model's reasoning](https://github.com/openai/math/blob/main/reasoning_traces/irrationality-exponent-of-pi.pdf).

### The result

For irrational $x$, $\mu(x)=\sup\{\nu:0<|x-p/q|<q^{-\nu}$ for infinitely many $p/q\}$; always $\mu(x)\ge2$ (Dirichlet), $\mu(\alpha)=2$ for algebraic irrational $\alpha$ (Roth 1955), $\mu=\infty$ for Liouville numbers. Sample theorems:
- Hermite–Lindemann: $e^{\beta}$ is transcendental for algebraic $\beta\ne0$, so $e$ and $\pi$ are. Lindemann–Weierstrass: if algebraic $\beta_1,\dots,\beta_n$ are linearly independent over $\mathbb Q$, then $e^{\beta_1},\dots,e^{\beta_n}$ are algebraically independent.
- Gelfond–Schneider: $\alpha^\beta$ is transcendental for algebraic $\alpha\ne0,1$ and algebraic irrational $\beta$. Baker: $\beta_1\log\alpha_1+\dots+\beta_n\log\alpha_n$ ($\alpha_i,\beta_i$ algebraic, $\alpha_i\ne0$) is zero or transcendental.
- $\zeta(3)\notin\mathbb Q$ (Apéry); infinitely many $\zeta(2k+1)$ are irrational (Rivoal, Ball–Rivoal); one of $\zeta(5),\zeta(7),\zeta(9),\zeta(11)$ is irrational (Zudilin).
- $\mu(\pi)\le42$ (Mahler 1953), $\le7.103205334137\ldots$ (Zeilberger–Zudilin 2020); 2026 preprints claim $\mu(\pi)<7.101862832357$ (Bai) and $\mu(\pi)=2$ (OpenAI, Theorem 1.1).

### How the known proof works

Common patterns in the classical proofs and in the OpenAI preprint:
- Small nonzero numbers: Niven's $I_n=\frac1{2\,n!}\int_0^\pi x^n(\pi-x)^n\sin x\,dx\in\mathbb Z[\pi]$ has degree $\le n$ and $0<I_n\le\pi^{2n+1}/n!$, impossible if $\pi=p/q$. The "blueprint" $0<|\alpha-p_n/q_n|<\epsilon_n/q_n$, $\epsilon_n\to0$, gives $e\notin\mathbb Q$, and its rates give irrationality measures (Beukers).
- Hermite's method: Padé approximants to $e^z$ and Hermite's integral identity give the small linear forms behind Hermite–Lindemann and Lindemann–Weierstrass (Waldschmidt, Sections 1.5 and 2.1).
- Gelfond–Schneider and Baker: an auxiliary function from Siegel's lemma (Dirichlet's box principle) and zero estimates; Laurent's interpolation determinants are a later variant.
- OpenAI's $\mu(\pi)=2$ uses a determinant: an interpolation theorem (Theorem 2.1) turns hypothetical good approximations to $\pi$ into a nonzero minor, whose arithmetic lower bound (Lemma 3.1) contradicts an analytic upper bound (Proposition 3.4).

### Background

- Lambert and Euler (18th century) gave the first irrationality proofs for $\pi$ and $e$, Fourier (1815) a short one for $e$; Liouville (1844) constructed the first transcendental numbers. Gelfond and Schneider solved Hilbert's seventh problem (1934); Baker's method (1966) has many applications to Diophantine equations.
- Apéry (1978) used recurrences, Beukers (1979) integrals; hypergeometric series give both Apéry's and Rivoal's theorems (Fischler).
- General frameworks: Siegel's E- and G-functions (1929) and, recently, conservative matrix fields (Leibtag et al., 2026 preprint, also claiming $\mu(\zeta(3))<5.4197$). Catalan's constant, open in Waldschmidt (2004), is claimed irrational in a 2026 OpenAI preprint.

### Where to start

- [A rational approach to π](https://www.nieuwarchief.nl/serie5/pdf/naw5-2000-01-4-372.pdf), F. Beukers, 2000: Niven's proof, the irrationality "blueprint", irrationality measures and Hata's construction in 8 pages.
- [Introduction to Diophantine methods: irrationality and transcendence](https://webusers.imj-prg.fr/~michel.waldschmidt/articles/pdf/IntroductionDiophantineMethods.pdf), M. Waldschmidt, course notes (2019): Sections 1.4–1.5 and 2.1 (Padé approximation, Hermite's identity), 2.2 (history).
- [Irrationalité de valeurs de zêta](https://www.numdam.org/item/SB_2002-2003__45__27_0/), S. Fischler, Séminaire Bourbaki 2002/03: views of Apéry's proof and Rivoal's theorem.
- [New Directions in Irrationality](https://arxiv.org/abs/2610.27799), E. Leibtag et al., 2026: a common structure for these constructions.

Prerequisites: real and complex analysis, algebraic numbers and field extensions, continued fractions; for transcendence, Siegel's lemma and Padé approximation.

### References, with links

- A. Baker, *Transcendental Number Theory*, Cambridge University Press, 1975. <https://doi.org/10.1017/CBO9780511565977>
- OpenAI, “The irrationality exponent of π is 2”, preprint, 24 September 2026. <https://github.com/openai/math/blob/main/preprints/The-irrationality-exponent-of-pi-is-2-September-24-2026/paper.pdf>

### Further references

- F. Beukers, “A rational approach to π”, Nieuw Arch. Wisk. (5) 1 (2000), no. 4, 372–379. <https://www.nieuwarchief.nl/serie5/pdf/naw5-2000-01-4-372.pdf>
- M. Waldschmidt, *Introduction to Diophantine methods: irrationality and transcendence*, course notes, updated 2019. <https://webusers.imj-prg.fr/~michel.waldschmidt/articles/pdf/IntroductionDiophantineMethods.pdf>
- M. Waldschmidt, “Open Diophantine problems”, Moscow Math. J. 4 (2004), 245–305. <https://webusers.imj-prg.fr/~michel.waldschmidt/articles/pdf/odp.pdf>
- S. Fischler, “Irrationalité de valeurs de zêta [d'après Apéry, Rivoal, …]”, Séminaire Bourbaki 2002/2003, exp. 910, Astérisque 294 (2004), 27–62. <https://www.numdam.org/item/SB_2002-2003__45__27_0/>
- D. Zeilberger and W. Zudilin, “The irrationality measure of π is at most 7.103205334137…”, Moscow J. Comb. Number Theory 9 (2020), 407–419. <https://doi.org/10.2140/moscow.2020.9.407>
- E. Leibtag, H. Barkan, R. Kalisch, S. Weinbaum, M. Shalyt, I. Kaminer, “New Directions in Irrationality” (2026). <https://arxiv.org/abs/2610.27799>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for a survey of proof strategies, not for the proof of one theorem.

#### Related Lean formalizations

- `OAI.PiExponent.main` in [`ComparatorChallenges/PiExponent.lean`](https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/PiExponent.lean) (openai/math): the irrationality exponent of π is 2, with a Lean proof in [`OAI/NumberTheory/PiExponent`](https://github.com/openai/math/tree/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/NumberTheory/PiExponent).
- `lindemann` and `lindemann_weierstrass` in [lean-eval](https://github.com/leanprover/lean-eval/tree/85a88c37f80170d9f08651dc63ce6b81a8a48cb9): Lean statements of the transcendence of e and π and of the Lindemann–Weierstrass theorem (statements only).

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `Irrational` and `irrational_pi` (`Mathlib/Analysis/Real/Pi/Irrational.lean`), `Transcendental`, `AlgebraicIndependent`, Liouville numbers (`Liouville`, `Liouville.transcendental`, `LiouvilleWith p x` for approximation to exponent $p$), Dirichlet's approximation theorem (`Real.infinite_rat_abs_sub_lt_one_div_den_sq_of_irrational`), Siegel's lemma (`Int.Matrix.exists_ne_zero_int_vec_norm_le`), the analytic part of the Lindemann–Weierstrass proof (`Mathlib/NumberTheory/Transcendental/Lindemann/AnalyticalPart.lean`) and `riemannZeta_two`. It lacks the irrationality of $e$ and of $\zeta(3)$, the transcendence of $e$ and $\pi$, the Lindemann–Weierstrass, Gelfond–Schneider, Baker and Roth theorems, and Padé approximants.
