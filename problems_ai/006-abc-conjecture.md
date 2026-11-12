# 6 · abc conjecture

## From the proposer

- **Area:** Number theory
- **Tracks:** Algebra/Number Theory

### Description

Mochizuki claims a proof of the abc conjecture, but the proof is complicated and not widely accepted. The very ambitious task is to contribute to a resolution of the situation by obtaining a brand new (AI-generated) idea.

### Desired outcome

Any progress on this notorious problem would be of value.

### References

https://en.wikipedia.org/wiki/Abc_conjecture

## AI-generated notes

<!-- status: Open -->

- **Status:** Open; formulated by Masser and Oesterlé in 1985. Mochizuki's claimed proof (published 2021) is disputed.
- **Task:** Any progress on the conjecture, ideally a new idea.
- **Key reference:** [Lecture on the abc conjecture and some of its consequences](https://webusers.imj-prg.fr/~michel.waldschmidt/articles/pdf/abcLahoreProceedings.pdf), M. Waldschmidt, Springer Proc. Math. Stat. 98 (2015), 211–230.
- **Lean:** Official statement.

### Notes

- Mochizuki's four inter-universal Teichmüller theory (IUT) papers appeared in *Publ. RIMS* 57 (2021). Scholze and Stix (2018) concluded that the argument for IUT III, Corollary 3.12, has a gap that small changes will not repair; Mochizuki and Hoshi dispute this. K. Joshi has posted a further claimed proof (arXiv:2403.10430, revised 2025), which is not refereed.

### The result

For coprime positive integers $a+b=c$, let $\operatorname{rad}(abc)$ be the product of the distinct primes dividing $abc$. The conjecture states that for every $\varepsilon>0$ only finitely many such triples satisfy
$$c>\operatorname{rad}(abc)^{1+\varepsilon}.$$
With $R=\operatorname{rad}(abc)$, the strongest unconditional bound in Waldschmidt's survey is $\log c\le\kappa R^{1/3}(\log R)^3$ for an absolute constant $\kappa$ (Stewart and Yu, *Duke Math. J.* 2001), proved with linear forms in logarithms. The exponent $1+\varepsilon$ cannot be replaced by $1$: Stewart and Tijdeman (1986) gave infinitely many triples with $c>R\exp\big((4-\delta)(\log R)^{1/2}/\log\log R\big)$. The analogue for polynomials (Mason–Stothers theorem) is proved.

### Background

- Earlier unconditional bounds: $\log c\le\kappa R^{15}$ (Stewart–Tijdeman 1986) and $\log c\le\kappa(\varepsilon)R^{2/3+\varepsilon}$ (Stewart–Yu 1991).
- Pasten (arXiv 2017; *J. Number Theory* 254, 2024) used Shimura curves to bound the product $\prod_{p\mid abc}v_p(abc)$ by $K_\varepsilon\operatorname{rad}(abc)^{8/3+\varepsilon}$, an estimate he says seems beyond the reach of linear forms in logarithms.
- The conjecture is the case of $\mathbb P^1$ minus three points of Vojta's height inequality. Through Belyi maps, the uniform Vojta inequality for curves reduces to a Szpiro-type inequality for elliptic curves; IUT aims at such an inequality (Scholze–Stix, §1).
- Waldschmidt's lecture lists many consequences of the conjecture.

### Where to start

- [Lecture on the abc conjecture and some of its consequences](https://webusers.imj-prg.fr/~michel.waldschmidt/articles/pdf/abcLahoreProceedings.pdf), M. Waldschmidt, 2015: statement, known bounds and consequences in 26 pages.
- [Why abc is still a conjecture](https://www.math.uni-bonn.de/people/scholze/WhyABCisStillaConjecture.pdf), P. Scholze and J. Stix, 2018: the reduction to Frey curves and the disputed step of IUT, in 10 pages.
- [Shimura curves and the abc conjecture](https://arxiv.org/abs/1705.09251), H. Pasten, 2017 (published 2024): an unconditional approach through modular and Shimura curves, with a comparison to linear forms in logarithms.

Prerequisites: elementary number theory; heights and elliptic curves for the modern approaches.

### Further references

- M. Waldschmidt, "Lecture on the abc conjecture and some of its consequences," *Springer Proc. Math. Stat.* 98 (2015), 211–230. <https://webusers.imj-prg.fr/~michel.waldschmidt/articles/pdf/abcLahoreProceedings.pdf>
- P. Scholze and J. Stix, "Why abc is still a conjecture," 2018. <https://www.math.uni-bonn.de/people/scholze/WhyABCisStillaConjecture.pdf>
- C. L. Stewart and K. Yu, "On the abc conjecture, II," *Duke Math. J.* 108 (2001), 169–181. <https://doi.org/10.1215/S0012-7094-01-10815-6>
- S. Mochizuki, "Inter-universal Teichmüller Theory I: Construction of Hodge Theaters," *Publ. RIMS* 57 (2021), 3–207. <https://doi.org/10.4171/PRIMS/57-1-1>
- H. Pasten, "Shimura curves and the abc conjecture," *J. Number Theory* 254 (2024), 214–335. <https://arxiv.org/abs/1705.09251>

### Lean

#### Official statement

`ABC.abc` in [`lean/MathathonProblems/P06_ABC.lean`](lean/MathathonProblems/P06_ABC.lean).

```lean
theorem abc (ε : ℝ) (hε : 0 < ε) :
    {(a, b, c) : ℕ × ℕ × ℕ | 0 < a ∧ 0 < b ∧ 0 < c ∧ ({a, b, c} : Set ℕ).Pairwise Nat.Coprime ∧
    a + b = c ∧ (radical <| a * b * c : ℝ)^(1 + ε) < c}.Finite
```

Source: <https://github.com/google-deepmind/formal-conjectures/blob/3f4490479b53386e1c18d2cccf4f1164c16655ca/FormalConjectures/Wikipedia/ABC.lean> (adapted as described in the file header).

#### Mathlib

Mathlib has the radical `UniqueFactorizationMonoid.radical` (`Mathlib/RingTheory/Radical/Basic.lean`) and the polynomial abc theorem `Polynomial.abc` (Mason–Stothers, `Mathlib/NumberTheory/FLT/MasonStothers.lean`). It has no integer abc statement, no Szpiro or Vojta inequality and none of the IUT machinery.
