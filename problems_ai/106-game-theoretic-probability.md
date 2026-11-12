# 106 · Game-theoretic probability

## From the proposer

- **Area:** Probability, game theory
- **Tracks:** Computation/Applied Math, Analysis

### Description

Formalize major results in game-theoretic probability in Lean, such as the law of the iterated logarithm. This approach builds probability out of betting strategies rather than starting with a probability measure. It would be interesting to check these alternative proofs and connect them back to the usual measure-theoretic results.

### Desired outcome

A Lean formalization of the law of the iterated logarithm and the betting framework behind it. Other goals could include the strong law of large numbers, the game-theoretic central limit theorem, and recovering the usual measure-theoretic versions.

### References

Glenn Shafer and Vladimir Vovk, Probability and Finance: It's Only a Game! (2001), Part I: the strong law, law of the iterated logarithm, and Lindeberg's theorem.
https://www.probabilityandfinance.com/2001_book/chapters/toc.html

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved: G. Shafer and V. Vovk (2001) prove game-theoretic versions of the strong law, the law of the iterated logarithm and Lindeberg's theorem; we found no Lean formalization of this framework.
- **Task:** Formalize in Lean the betting framework and the game-theoretic law of the iterated logarithm; further goals are the strong law, the central limit theorem and recovering the measure-theoretic versions.
- **Key reference:** [G. Shafer and V. Vovk, *Probability and Finance: It's Only a Game!*, Wiley (2001)](https://doi.org/10.1002/0471249696)
- **Lean:** Official statement.

### Notes

- The sheet's link is the book's table of contents. Chapters 1, 3 and 9 are free on the [book's page](https://www.probabilityandfinance.com/2001_book/index.html); Chapter 3 (bounded strong law) is the natural place to begin. The other Part I chapters are Kolmogorov's strong law (4), the law of the iterated logarithm (5), the weak laws (6), Lindeberg's theorem (7) and the generality of probability games (8).
- The two-sided law of the iterated logarithm (Theorem 5.1) is for the *predictably* unbounded protocol, where Forecaster announces a bound $c_n$ on Reality's move; in the unbounded protocol only the upper half is proved under the analogous condition (Theorem 5.2), as summarized by Miyabe and Takemura.

### The result

Bounded forecasting game (Shafer–Vovk §3.3), with parameter $C\gt0$: $\mathcal K_0=1$, and for $n=1,2,\dots$ Forecaster announces $m_n\in[-C,C]$, Skeptic announces $M_n\in\mathbb R$, Reality announces $x_n\in[-C,C]$, and $\mathcal K_n=\mathcal K_{n-1}+M_n(x_n-m_n)$. Skeptic *forces* an event $E$ if he has a strategy that keeps $\mathcal K_n\ge0$ against every play and makes $\mathcal K_n\to\infty$ on every path outside $E$.

- Strong law (Proposition 3.3): Skeptic can force $\frac1n\sum_{i\le n}(x_i-m_i)\to0$.
- Law of the iterated logarithm (Theorem 5.1). In the predictably unbounded protocol Forecaster announces $m_n\in\mathbb R$, $c_n\ge0$, $v_n\ge0$; Skeptic announces $M_n,V_n\in\mathbb R$; Reality announces $x_n$ with $|x_n-m_n|\le c_n$; and $\mathcal K_n=\mathcal K_{n-1}+M_n(x_n-m_n)+V_n\big((x_n-m_n)^2-v_n\big)$. With $A_n=\sum_{i\le n}v_i$, Skeptic can force

    $$\Big(A_n\to\infty\ \text{and}\ c_n=o\big(\sqrt{A_n/\ln\ln A_n}\big)\Big)\ \Longrightarrow\ \limsup_{n\to\infty}\frac{\sum_{i\le n}(x_i-m_i)}{\sqrt{2A_n\ln\ln A_n}}=1 .$$

If the $x_n$ are random with conditional means $m_n$ and conditional variances $v_n$ given the past, a capital process that stays nonnegative is a nonnegative supermartingale, which tends to infinity only with probability 0; so every event Skeptic can force has probability 1. With independent $x_n$ bounded by $c_n$ this gives Kolmogorov's law of the iterated logarithm.

### How the known proof works

- Strong law, with forecasts $0$ and $C=1$ (Lemma 3.3): betting the fraction $\varepsilon$ of the current capital gives capital $\prod_{i\le n}(1+\varepsilon x_i)$. If this stays bounded, then $\ln(1+t)\ge t-t^2$ for $t\ge-\frac12$ gives $\frac1n\sum_{i\le n}x_i\le\varepsilon+O(1/n)$.
- Countably many such accounts ($\varepsilon=\pm2^{-k}$, weights $2^{-k}$) can be run at once, so Skeptic makes his capital unbounded unless the average tends to $0$ (Lemma 3.2); stopping each account once it reaches a level and mixing over levels turns "unbounded" into "tends to infinity" (Lemma 3.1).
- Law of the iterated logarithm: Chapter 5 (not freely available) proves the game-theoretic version of Kolmogorov's theorem; Miyabe and Takemura give a complete, self-contained proof of both halves (validity and sharpness) in a related protocol with an extra hedge, which shows the kind of strategies a formalization needs.

### Background

- The idea goes back to Ville (1939): an event has probability zero if a gambler betting against it can multiply his stake without bound. Shafer and Vovk revised the framework in a second book (2019).
- Explicit strategies: Kumon and Takemura (2008) give a simple strategy weakly forcing the strong law in the bounded forecasting game.
- The same betting ideas now underlie game-theoretic statistics and anytime-valid inference (Ramdas, Grünwald, Vovk, Shafer 2023).
- Mathlib already has the measure-theoretic strong law, Doob's martingale theory, Azuma–Hoeffding and the i.i.d. central limit theorem, but no law of the iterated logarithm, so recovering the measure-theoretic statements would also add new results to Mathlib.

### Where to start

- [Chapter 3, The Bounded Strong Law of Large Numbers](https://www.probabilityandfinance.com/2001_book/chapters/chap3.pdf), G. Shafer, V. Vovk, 2001: protocol, forcing and a complete proof in a few pages, an ideal first target.
- [On a simple strategy weakly forcing the strong law of large numbers in the bounded forecasting game](https://doi.org/10.1007/s10463-007-0125-5), M. Kumon, A. Takemura, 2008: an explicit strategy that is easy to formalize.
- [The law of the iterated logarithm in game-theoretic probability with quadratic and stronger hedges](https://arxiv.org/abs/1208.5088), K. Miyabe, A. Takemura, 2013: Shafer–Vovk's statements and a self-contained proof of both halves.

Prerequisites: discrete-time martingales and Ville's inequality, Kolmogorov's proof of the law of the iterated logarithm, the probability library of Mathlib.

### References, with links

- Glenn Shafer and Vladimir Vovk, Probability and Finance: It's Only a Game! (2001), Part I: the strong law, law of the iterated logarithm, and Lindeberg's theorem. <https://www.probabilityandfinance.com/2001_book/chapters/toc.html> <https://doi.org/10.1002/0471249696>

### Further references

- G. Shafer, V. Vovk, *Game-Theoretic Foundations for Probability and Finance*, Wiley (2019). <https://doi.org/10.1002/9781118548035>
- M. Kumon, A. Takemura, “On a simple strategy weakly forcing the strong law of large numbers in the bounded forecasting game”, Ann. Inst. Statist. Math. 60 (2008), 801–812. <https://doi.org/10.1007/s10463-007-0125-5>
- K. Miyabe, A. Takemura, “The law of the iterated logarithm in game-theoretic probability with quadratic and stronger hedges”, Stochastic Process. Appl. 123 (2013), 3132–3152. <https://doi.org/10.1016/j.spa.2013.03.018>
- A. Ramdas, P. Grünwald, V. Vovk, G. Shafer, “Game-theoretic statistics and safe anytime-valid inference”, Statist. Sci. 38 (2023), 576–601. <https://doi.org/10.1214/23-STS894>

### Lean

#### Official statement

`Mathathon.P106.skeptic_can_force_lil` in [`lean/MathathonProblems/P106_GameTheoreticLIL.lean`](lean/MathathonProblems/P106_GameTheoreticLIL.lean).

```lean
theorem skeptic_can_force_lil : CanForce LILEvent
```

This is Shafer and Vovk's Theorem 5.1 in the predictably unbounded forecasting protocol, as quoted by Miyabe and Takemura: Skeptic has a strategy, a function of the earlier moves and of Forecaster's current announcement, whose capital stays nonnegative on every path obeying the protocol and tends to infinity on every path where $A_n\to\infty$ and $c_n=o(\sqrt{A_n/\ln\ln A_n})$ but $\limsup_n\sum_{i\le n}(x_i-m_i)/\sqrt{2A_n\ln\ln A_n}\ne1$. The strong law and Lindeberg's theorem, also mentioned in the problem, are not included.

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Mathlib

Mathlib has the strong law for pairwise independent identically distributed variables (`ProbabilityTheory.strong_law_ae`), martingales (`MeasureTheory.Martingale`, `MeasureTheory.Submartingale`, `MeasureTheory.Supermartingale`), the martingale convergence theorem (`MeasureTheory.Submartingale.ae_tendsto_limitProcess`), Doob's maximal inequality (`MeasureTheory.maximal_ineq`), the Azuma–Hoeffding inequality (`ProbabilityTheory.measure_sum_ge_le_of_hasCondSubgaussianMGF`) and the i.i.d. central limit theorem (`ProbabilityTheory.tendstoInDistribution_inv_sqrt_mul_sum`). It has no law of the iterated logarithm, no Lindeberg theorem and nothing on game-theoretic probability.
