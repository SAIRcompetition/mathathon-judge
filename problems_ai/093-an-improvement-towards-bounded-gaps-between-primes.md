# 93 · An improvement towards bounded gaps between primes

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/093-an-improvement-towards-bounded-gaps-between-primes.md`](../problems_original/093-an-improvement-towards-bounded-gaps-between-primes.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

An improvement towards bounded gaps between primes

### Short description of problem (100 words or less)

Zhang (2013) proved that some prime gap occurs infinitely often. Later refinements brought the bound down: Maynard's multidimensional Selberg sieve gave H₁ ≤ 600, and Polymath 8b refined it to H₁ ≤ 246. That bound stood for more than a decade, then fell several times within days in 2026. Stadlmann proved 240 using an admissible 49-tuple, Axiom built on her work to reach 212, and OpenAI's "Improved Short Gaps Between Primes" proves DHL[40,2], giving 186, and attributes the proof to GPT-6 Astra. 

### Submitted Area

Analytic number theory

### Proposed Tracks

Numer Theory/Algebra

### Reference/source material

OpenAI, Improved Short Gaps Between Primes (Aug 2026), plus the GitHub repo openai/PrimeGaps186 (Lean 4 proof and Python-FLINT certificate)

### Desired outcome

How the GPY and Maynard–Tao methods turn "two primes in a translate" into an optimization over sieve weights.

## AI-generated notes

<!-- status: Proved (preprint) -->

> Written by AI for the earlier problem list, where this was problem 94 (commit `1f49cd4`), and carried over; only links that depend on the problem numbering were updated.

- **Status:** $H_1\le186$ is proved in an OpenAI preprint dated 30 August 2026 that attributes the proof to GPT 6 Astra; not yet refereed. The previous bound was 246 (Polymath 8b, 2014); Stadlmann independently proved 240 (preprint, 31 August 2026).
- **Task:** An explanation of how the GPY and Maynard–Tao methods turn "two primes in a translate" into an optimization over sieve weights.
- **Key reference:** [Improved short gaps between primes](https://cdn.openai.com/pdf/51126fac-1b68-4128-9666-c908bcc16033/short_gaps.pdf), OpenAI, preprint, 30 August 2026.
- **Lean:** Official statement.

### Notes

- The 39-page preprint, hosted on OpenAI's website, has not been refereed; its numerical step is a separate 23-page certificate with a Python-FLINT program.
- Other unrefereed 2026 claims: $H_1\le212$ (Charton et al., Axiom Math, preliminary draft of 3 September, building on Stadlmann) and $H_1\le182$ via DHL[39,2] (GPT-6 Astra prompted by R. Sharifi, 4 September, revised 18 September).

### The result

Let $H_1=\liminf_n(p_{n+1}-p_n)$. A set $\mathcal H=\{h_1,\dots,h_k\}$ is admissible if it omits a residue class modulo every prime; DHL[$k,j$] says every admissible $k$-tuple has infinitely many translates $n+\mathcal H$ with at least $j$ primes. With $w_n=\big(\sum_{d_i\mid n+h_i}\lambda_{d_1,\dots,d_k}\big)^2$, if $\sum_{N\le n<2N}\sum_i\mathbf 1_{\mathbb P}(n+h_i)w_n>\rho\sum_{N\le n<2N}w_n$ for all large $N$, infinitely many translates contain $\lfloor\rho+1\rfloor$ primes. Maynard (Propositions 4.1–4.2): if the primes have level of distribution $\theta$, infinitely many translates contain $\lceil\theta M_k/2\rceil$ primes, where
$$M_k=\sup_F\frac{\sum_{m=1}^k\int\big(\int_0^1F\,dt_m\big)^2}{\int F^2}$$
over $F$ supported on $t_1+\dots+t_k\le1$. Bombieri–Vinogradov gives every $\theta<\tfrac12$, so $M_k>4$ gives DHL[$k,2$]. Records: $M_{105}>4$, $H_1\le600$ (Maynard); $M_{50,1/25}>4.0043$ on an enlarged simplex, $246$ (Polymath 8b); DHL[49,2], $240$ (Stadlmann); DHL[45,2], $212$ (Charton et al.); DHL[40,2] (OpenAI, Theorem 1.1) with an admissible 40-tuple of diameter 186. Under (generalized) Elliott–Halberstam, $H_1\le12$ ($\le6$).

### How the known proof works

Structure of the OpenAI preprint (outline in Section 1.2):
- An outer Selberg sum $A$ and, per coordinate, inner sums $B_i^{(0)},B_i^{(1)}$ with nested supports. Discarding the nonnegative $(A-B_i^{(0)})^2$ in $A^2=2AB_i^{(0)}-(B_i^{(0)})^2+(A-B_i^{(0)})^2$ (Polymath 8b §5.3) lets the outer divisor products reach $x^{0.2742997}$ while the mixed moduli stay below $x^{0.5253}$.
- Complementary support conditions make the lcm of the outer and inner divisor products triply densely divisible (Proposition 2.3), so Polymath 8a's estimates, a triply densely divisible form of Stadlmann's bilinear estimate (Proposition 2.18, via bounds of Deligne and Fouvry–Kowalski–Michel) and her prime minorant (Proposition 2.21) apply.
- A 77-coefficient rational step-function trial in 40 variables satisfies the signed minorant criterion (Theorem 4.5) with margin above $1/50000$ (Lemma 4.8).

### Background

- Goldston–Pintz–Yıldırım (2009) proved $\liminf(p_{n+1}-p_n)/\log p_n=0$; their method gives bounded gaps under any level of distribution above $\tfrac12$. Zhang (2014) proved $H_1<7\cdot10^7$ with estimates beyond $\tfrac12$ for smooth moduli; Polymath 8a reached 4680.
- Maynard (2015), and independently Tao, let the weights depend on each $d_i$; this needs only Bombieri–Vinogradov and gives $H_m<\infty$ for all $m$. By the parity problem, Polymath 8b's $H_1\le6$ under GEH is the limit of purely sieve-theoretic arguments.
- Stadlmann (2026) added to the Bombieri–Vinogradov support a region whose moduli have a large smooth factor; 240 is the diameter of the narrowest admissible 49-tuple.

### Where to start

- [Small gaps between primes](https://arxiv.org/abs/1311.4600), J. Maynard, 2013: Sections 2–4 (pp. 3–7), the classical reduction asked for in the task, and $M_k$ (Propositions 4.1–4.3).
- [Variants of the Selberg sieve, and bounded intervals containing many primes](https://arxiv.org/abs/1407.4897), D. H. J. Polymath, 2014: Section 3 (DHL[$k,j$], Theorems 3.12–3.13) and Section 7, the computation behind 246.
- [Bounded gaps between primes](https://arxiv.org/abs/2608.31126), J. Stadlmann, 2026: Section 1.1, the mixed support.
- [Improved short gaps between primes](https://cdn.openai.com/pdf/51126fac-1b68-4128-9666-c908bcc16033/short_gaps.pdf), OpenAI, 2026: Section 1.2 (pp. 2–3), the new supports.

Prerequisites: the Selberg sieve, the Bombieri–Vinogradov theorem and level of distribution, admissible tuples, quadratic forms and Rayleigh quotients.

### References, with links

- OpenAI, “Improved short gaps between primes”, preprint dated 30 August 2026: <https://cdn.openai.com/pdf/51126fac-1b68-4128-9666-c908bcc16033/short_gaps.pdf>
- OpenAI, PrimeGaps186 (2026): the numerical certificate, its Python-FLINT program, and a Lean 4 formalization conditional on three stated axioms: <https://github.com/openai/PrimeGaps186>

### Further references

- D. A. Goldston, J. Pintz and C. Y. Yıldırım, “Primes in tuples I”, Ann. of Math. 170 (2009), 819–862. <https://doi.org/10.4007/annals.2009.170.819>
- Y. Zhang, “Bounded gaps between primes”, Ann. of Math. 179 (2014), 1121–1174. <https://doi.org/10.4007/annals.2014.179.3.7>
- J. Maynard, “Small gaps between primes”, Ann. of Math. 181 (2015), 383–413. <https://doi.org/10.4007/annals.2015.181.1.7>
- D. H. J. Polymath, “New equidistribution estimates of Zhang type”, Algebra Number Theory 8 (2014), 2067–2199. <https://doi.org/10.2140/ant.2014.8.2067>
- D. H. J. Polymath, “Variants of the Selberg sieve, and bounded intervals containing many primes”, Res. Math. Sci. 1 (2014), Art. 12. <https://doi.org/10.1186/s40687-014-0012-7>
- J. Stadlmann, “On primes in arithmetic progressions and bounded gaps between many primes”, Adv. Math. 468 (2025), 110190. <https://doi.org/10.1016/j.aim.2025.110190>
- J. Stadlmann, “Bounded gaps between primes” (2026). <https://arxiv.org/abs/2608.31126>
- F. Charton, L. Hong, K. Lau, K. Ono, G. Remy, H. C. Siu, A. A. Swaminathan, J. Thorner, Y. Xie, “A new bound for small gaps between primes”, preliminary draft (3 September 2026). <https://primegaps.axiommath.ai/bgp212.pdf>
- GPT-6 Astra (OpenAI), prompted by R. Sharifi, “A fixed-profile proof for prime gaps of at most 182” (18 September 2026). <https://www.math.ucla.edu/~sharifi/AI/prime_gaps_182_expository_bundle.pdf>

### Lean

#### Official statement

`PrimeGap186.primeGapLiminf_le_186` in [`lean/MathathonProblems/P93_PrimeGaps186.lean`](lean/MathathonProblems/P93_PrimeGaps186.lean).

```lean
theorem primeGapLiminf_le_186 : primeGapLiminf ≤ (186 : EReal)
```

Source: <https://github.com/openai/PrimeGaps186/blob/61340d0b74163003b32756bb16e91d9209a5e330/Challenge.lean> (adapted as described in the file header).

No unconditional Lean proof of this statement is known: [openai/PrimeGaps186](https://github.com/openai/PrimeGaps186/tree/61340d0b74163003b32756bb16e91d9209a5e330) proves it from three unproved axioms (two exponential-sum bounds over finite fields and a set of numerical integral bounds). A Lean-verified claim must not use or copy that proof.

#### Related Lean formalizations

- [AxiomMath/PrimeGapsLib](https://github.com/AxiomMath/PrimeGapsLib/tree/1faa7b14e82ddebc2772dfb9153922f01b106477): a Lean proof of the bound 246 with the Bombieri–Vinogradov theorem as a hypothesis, registered in the Palomar registry (https://palomar-registry.org/entry?id=PALOMAR-2026-08-18-000002&version=1).

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib can state the result: `Nat.nth Nat.Prime`, `Filter.liminf` and `EReal` express $H_1\le186$. It also has Chebyshev's functions `Chebyshev.psi` and `Chebyshev.theta`, Dirichlet's theorem `Nat.forall_exists_prime_gt_and_eq_mod`, the $\Lambda^2$ Selberg sieve (`SelbergSieve`, `BoundingSieve.lambdaSquared`, `Mathlib/NumberTheory/SelbergSieve.lean`) and `ZMod.stdAddChar` for exponential sums. It lacks the prime number theorem, the Bombieri–Vinogradov theorem, the GPY and Maynard sieves, dense divisibility and the Weil–Deligne bounds for Kloosterman sums.
