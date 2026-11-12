# 108 · Generalizing the zeta(5) irrationality argument

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/108-generalizing-the-zeta-5-irrationality-argument.md`](../problems_original/108-generalizing-the-zeta-5-irrationality-argument.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Generalizing the zeta(5) irrationality argument

### Short description of problem (100 words or less)

Explore whether the argument for irrationality of zeta(5) can be generalized to other odd zeta values, starting with zeta(7). Which parts of the determinant construction and estimates extend, and what is special about 5? The idea is to use the existing argument as a starting point for new results, with Lean helping check any proposed extensions.

### Submitted Area

Number theory, Diophantine approximation

### Proposed Tracks

Number Theory/Algebra

### Reference/source material

Chun Wing Lai, On Fauzan's Proof that zeta(5) is Irrational (2026).
https://ai.vixra.org/pdf/2609.0080v1.pdf

### Desired outcome

An extension to another odd zeta value, or a general criterion showing when this method works. Ideally a Lean-checked proof; a precise account of the obstacles and which estimates need improving would also be useful.

## AI-generated notes

<!-- status: Open -->

> Written by Claude Opus 5.5 on 2026-11-11 from the proposer's text above.

- **Status:** Open for $\zeta(7)$: the irrationality of $\zeta(5)$ was proved by A. Fauzan (Zenodo preprint, 17 September 2026, not refereed) and has been formalized in Lean, while an attempted extension of his method to $\zeta(7)$ (P. Anand, Zenodo, September 2026) is marked by its author as containing an error.
- **Task:** Find out which parts of Fauzan's Hankel-determinant argument extend to $\zeta(7)$ and other odd zeta values, or give a criterion for when the method works.
- **Key reference:** [A. Fauzan, “ζ(5) is irrational”, Zenodo preprint (17 September 2026)](https://doi.org/10.5281/zenodo.22826419)
- **Lean:** No official statement.

### Notes

- The proposer's reference (Chun Wing Lai, ai.vixra.org, 29 September 2026) is a corrected and expanded exposition of Fauzan's preprint, not an independent proof. It supplies omitted derivations and corrects a typographical error in an auxiliary functional, four decimal-point typos in the final constants and two expository defects, which it says do not affect the conclusion. ai.vixra.org describes itself as an AI-assisted e-print repository.
- Not to be confused with Li Lai, whose arXiv paper (October 2026) uses Fauzan's method to prove that $1,\zeta(3),\zeta(4)$ are linearly independent over $\mathbb Q$.
- On the $\zeta(7)$ attempt: an audit by C. Toledo (a machine-derived working document, not peer reviewed) reports that its final numerical inequality fails ($A_{200}+U\approx+4.86$, where the proof needs a value below $-11$). A search also returned a ResearchGate item, “ζ(7) is Irrational: A Proof Based on Prince Anand's Framework”, which we could not open (not verified).

### The result

Irrationality criterion (Lai, Lemma 3.1): if for some $d\in\mathbb N$, $c>0$ and all large $n$ there are $Q_n\in\mathbb Z[X]$ of degree at most $dn$ with $0<|Q_n(\xi)|<e^{-cn^2}$, then $\xi\notin\mathbb Q$, since for $\xi=a/b$ the number $b^{dn}Q_n(a/b)$ would be a nonzero integer of absolute value less than 1.

Fauzan (2026): such $Q_n$ exist for $\xi=\zeta(5)$ with $d=37$ and $c=139/5$, so $\zeta(5)\notin\mathbb Q$; moreover $|\zeta(5)-a/b|>b^{-260}$ for all large $b$.

Earlier results: $\zeta(3)\notin\mathbb Q$ (Apéry 1978); infinitely many $\zeta(2k+1)$ are irrational (Rivoal 2000, Ball–Rivoal 2001); at least one of $\zeta(5),\zeta(7),\zeta(9),\zeta(11)$ is irrational (Zudilin 2001). The open question is whether $\zeta(7)$, or any odd zeta value beyond $\zeta(5)$, is irrational, and whether a Fauzan-type construction exists for it.

### How the known proof works

Following Lai's exposition:

- A positive weight: $w(y)=\frac{(2\pi)^4y^5}{12}\sum_{\ell\ge1}\ell^4e^{-2\pi\ell y}$ has rational even moments, $\int_0^\infty y^{2e}w(y)\,dy=\frac{(-1)^eB_{2e+2}(2e+3)(2e+4)(2e+5)}{24}$ (Euler's formula for $\zeta(2e+2)$), while a Hurwitz-zeta integral gives $\int_0^\infty\frac{w(y)}{y^2+j^2}\,dy=j^4\big(\zeta(5)-H^{(5)}_j\big)-\frac14+\frac1{2j}$, with $H^{(5)}_j=\sum_{v\le j}v^{-5}$.
- Hence a functional $\mu_X$ on rational functions with simple poles at $t=-j^2$, defined by these formulas with $X$ in place of $\zeta(5)$, takes values in $\mathbb Q[X]$, and $\mu_{\zeta(5)}(R)=\int_0^\infty R(y^2)\,w(y)\,dy$.
- With $D_m(t)=\prod_{j\le m}(t+j^2)$ and $K=40n$, $N=3n$, $h=37n$, the Hankel matrix $G_K(X)=\big[\mu_X\big(D_N(t)^6t^{i+j}/D_K(t)\big)\big]_{0\le i,j<h}$ has a determinant $\Delta_K(X)$ of degree $h$ with nonzero integer leading coefficient, and $G_K(\zeta(5))$ is positive definite, so $\Delta_K(\zeta(5))>0$.
- Arithmetic: an explicit normaliser $S_K$ makes $S_K\Delta_K\in\mathbb Z[X]$; $p$-adic estimates for each prime and the prime number theorem control $S_K$. Li Lai's summary of the key point: the determinant has much larger $p$-adic valuation than its entries suggest.
- Size: the Andréief identity writes $\Delta_K(\zeta(5))$ as an $h$-fold integral, bounded by a logarithmic-energy estimate against a comparison measure made of sixteen arcsine pieces. Combined with the arithmetic bound, a final numerical inequality gives $0<S_K\Delta_K(\zeta(5))<e^{-cn^2}$; this is the step that fails in the $\zeta(7)$ attempt.

### Background

- Before Fauzan, the closest results (as Li Lai lists them) were Zudilin's "one of four" theorem, proved with hypergeometric linear forms, and Brown–Zudilin's rational approximations to $\zeta(5)$; Fischler–Sprang–Zudilin (2019) show that many odd zeta values are irrational.
- Follow-up preprints appeared within weeks, for instance on the 2-adic value $\zeta_2(7)$ (Kilani, Zenodo); we have not checked them.
- A Lean-checked proof that at least one of $\zeta(7),\zeta(9),\dots,\zeta(21)$ is irrational is registered in Palomar (Devincenzis, 2026); it uses Zudilin's linear forms, not Fauzan's determinants, and its entry says the mathematics and code were produced by AI agents under human direction and have not been refereed.

### Where to start

- [On Fauzan's Proof that ζ(5) is Irrational](https://ai.vixra.org/abs/2609.0080), Chun Wing Lai, 2026: the whole argument with full derivations, written for advanced undergraduates.
- [The linear independence of 1, ζ(3), and ζ(4)](https://arxiv.org/abs/2610.06838), Li Lai, 2026: explains the $p$-adic gain of the determinant with a toy model and adapts the method to another problem.
- [Zeta5](https://github.com/mo271/Zeta5), mo271: a Lean development of Fauzan's proof that can be modified to test changes of weight, parameters or constants.
- [Arithmetic of linear forms involving odd zeta values](https://doi.org/10.5802/jtnb.447), W. Zudilin, 2004: the classical arithmetic of such linear forms.

Prerequisites: Apéry-type irrationality criteria, Hankel determinants and orthogonal polynomials, $p$-adic valuations of factorial ratios, logarithmic potential theory.

### References, with links

- Chun Wing Lai, On Fauzan's Proof that zeta(5) is Irrational (2026). <https://ai.vixra.org/pdf/2609.0080v1.pdf>

### Further references

- A. Fauzan, “ζ(5) is irrational”, Zenodo preprint (2026). <https://doi.org/10.5281/zenodo.22826419>
- L. Lai, “The linear independence of 1, ζ(3), and ζ(4)” (preprint, 2026). <https://arxiv.org/abs/2610.06838>
- P. Anand, “Zeta 7 is Irrational”, Zenodo preprint (2026); the record notes an error in the argument. <https://doi.org/10.5281/zenodo.22920911>
- C. Toledo, “A ζ(7) proof, audited” (2026). <https://carlostoledo.co/reports/zeta7-anand.html>
- W. Zudilin, “One of the numbers ζ(5), ζ(7), ζ(9), ζ(11) is irrational”, Russian Math. Surveys 56 (2001), 774–776. <https://doi.org/10.1070/RM2001v056n04ABEH000427>
- W. Zudilin, “Arithmetic of linear forms involving odd zeta values”, J. Théor. Nombres Bordeaux 16 (2004), 251–291. <https://doi.org/10.5802/jtnb.447>
- T. Rivoal, “La fonction zêta de Riemann prend une infinité de valeurs irrationnelles aux entiers impairs”, C. R. Acad. Sci. Paris Sér. I 331 (2000), 267–270. <https://doi.org/10.1016/S0764-4442(00)01624-4>
- K. Ball, T. Rivoal, “Irrationalité d'une infinité de valeurs de la fonction zêta aux entiers impairs”, Invent. Math. 146 (2001), 193–207. <https://doi.org/10.1007/s002220100168>
- S. Fischler, J. Sprang, W. Zudilin, “Many odd zeta values are irrational”, Compos. Math. 155 (2019), 938–952. <https://doi.org/10.1112/S0010437X1900722X>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for a method. The target statement, $\zeta(7)$ irrational, needs only `riemannZeta` and `Irrational` from Mathlib (formal-conjectures states it).

#### Related Lean formalizations

- [Irrationality of the Riemann zeta value at five](https://palomar-registry.org/entry?id=PALOMAR-2026-09-25-000018&version=1), Palomar registry (Lean-checked, trust level high): `Zeta5Palomar.irrational_zeta_five`, a formalization of Fauzan's irrationality claim by A. Fasten (realazthat/zeta5-lean2), without the irrationality measure.
- `Apery.irrational_five` in [mo271/Zeta5](https://github.com/mo271/Zeta5): another formalization following Fauzan; its README lists deviations from the paper (a different cutoff, direct partial fractions for the valuation bounds) and takes the prime number theorem from PrimeNumberTheoremAnd.
- `RiemannZetaValues.irrational_seven` in [formal-conjectures](https://github.com/google-deepmind/formal-conjectures/blob/a425ca3eb797fe927cb88c950565fdcbbbbada70/FormalConjectures/Wikipedia/RiemannZetaValues.lean): the statement that $\zeta(7)$ is irrational, marked open.
- [At least one of ζ(7), ζ(9), …, ζ(21) is irrational](https://palomar-registry.org/entry?id=PALOMAR-2026-09-30-000007&version=1), Palomar registry (Lean-checked, trust level high): `ZetaWindow.zeta_7_to_21_not_all_rational_palomar`, by G. M. Devincenzis.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `riemannZeta`, the Hurwitz zeta function (`HurwitzZeta.hurwitzZeta`), Euler's formula for $\zeta(2k)$ (`riemannZeta_two_mul_nat`), Bernoulli numbers (`bernoulli`), `Irrational`, determinants (`Matrix.det`) and Chebyshev's bounds (`Chebyshev.theta_le_log4_mul_x`, `Chebyshev.psi_eq_log_lcmUpto`). It has no prime number theorem, no Hankel-determinant or orthogonal-polynomial theory and no logarithmic potential theory.
