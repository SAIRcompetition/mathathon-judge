# 39 · Hylland's random dictatorship theorem for cardinal preferences

## From the proposer

- **Area:** Game theory: mathematical social choice and mechanism design
- **Tracks:** Computation/Applied Math

### Description

Arrow (1951), Gibbard (1973) and Satterthwaite (1975) showed that with at least three alternatives, natural conditions on aggregating or eliciting ordinal preferences force dictatorship. Hylland (1980) proved a version for lotteries and von Neumann-Morgenstern utilities: with finitely many voters and alternatives (at least three), every strategy-proof rule mapping all utility profiles to lotteries, which gives a unanimously top-ranked alternative probability 1 and a unanimously bottom-ranked alternative probability 0, is a random dictatorship. Dutta, Peters and Sen (2007) proposed a simpler proof using only the top condition; their 2008 erratum finds a gap and closes it only under an extra assumption.

### Desired outcome

A new geometric argument for Hylland's theorem and nice visualizations of this important result, together with a short, transparent exposition.

### References

1. A. Hylland, Strategy proofness of voting procedures with lotteries as outcomes and infinite sets of strategies, unpublished paper, 1980.
2. B. Dutta, H. Peters and A. Sen, Strategy-proof cardinal decision schemes, Social Choice and Welfare 28 (2007), 163-179, doi:10.1007/s00355-006-0152-9; erratum, Social Choice and Welfare 30 (2008), 701-702, doi:10.1007/s00355-008-0299-7.
3. S. Nandeibam, The structure of decision schemes with cardinal preferences, Review of Economic Design 17 (2013), 205-238, doi:10.1007/s10058-012-0130-x.

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved by A. Hylland (1980, unpublished) and S. Nandeibam (2013); the 2008 erratum of Dutta, Peters and Sen completes their 2007 proof only under an extra assumption.
- **Task:** A new geometric proof of Hylland's theorem, with visualizations and exposition.
- **Key reference:** [B. Dutta, H. Peters and A. Sen, Strategy-proof cardinal decision schemes, Soc. Choice Welf. 28 (2007), 163–179](https://doi.org/10.1007/s00355-006-0152-9) (working paper version: [Warwick ERP 722](https://ageconsearch.umn.edu/record/269616/files/twerp722.pdf))
- **Lean:** Official statement.

### Notes

- Dutta, Peters and Sen (2007, footnote 8) say that Hylland assumes a version of citizen's sovereignty rather than unanimity. Their utilities have a unique top, normalized to 1 at the top and 0 at the bottom; the official Lean statement allows all functions $A\to\mathbb R$.

### The result

With finitely many voters and at least three alternatives, a cardinal decision scheme maps profiles of von Neumann–Morgenstern utilities to lotteries; it is strategy-proof if no voter can raise her expected utility by misreporting. Hylland's theorem, as the proposer states it: a strategy-proof scheme that gives probability 1 to a unanimous top and probability 0 to a unanimous bottom is a random dictatorship: for some weights $\beta_i\ge0$ with $\sum_i\beta_i=1$,
$$\varphi_a(u)=\sum_{i:\ \mathrm{top}(u_i)=a}\beta_i .$$
Dutta, Peters and Sen state it with the top condition only; their 2008 erratum completes their proof only under an extra assumption, for example that a unanimous bottom gets probability 0. The official Lean statement has both conditions, each for a unique best or worst alternative. With several best alternatives allowed, Hylland and Nandeibam obtain a weak random dictatorship. The theorem extends Gibbard's (1977) result for ordinal schemes.

### How the known proof works

- Two voters (Claims 1–4): if voter 1's top $a_j$ has utility $1-\eta$ for voter 2, whose top is $a_k$, then as $\eta\to0$ the limiting probabilities $\lambda,1-\lambda$ of the two tops do not depend on the alternatives.
- The 2008 erratum: the proof of Claim 3 wrongly interchanges two limits; one inequality is reproved, the other only under an extra assumption, e.g. that a common bottom gets probability 0.
- Adding two strategy-proofness inequalities shows that raising an alternative's utility cannot lower its probability; hence only the two tops get positive probability (Claim 5).
- Induction on $|N|$: merging voters 1 and 2 gives a strategy-proof unanimous scheme for $|N|-1$ voters.
- Hylland and Nandeibam instead build an additive coalitional power function, then pass to several tops by LP duality or Farkas' lemma.
- With a minimum gap between utility levels the conclusion fails (Example 2).

### Background

- Gibbard (1977) characterized strategy-proof ordinal schemes as mixtures of unilaterals and duples; with unanimity this gives random dictatorship. Duggan (1996) gave a geometric proof of the ordinal theorem, Sen (2011) a proof by induction on voters.
- Barberà, Bogomolnaia and van der Stel (1998) showed that smooth ($C^2$) strategy-proof cardinal schemes are unilateral.

### Where to start

- [Strategy-proof cardinal decision schemes (working paper)](https://ageconsearch.umn.edu/record/269616/files/twerp722.pdf), Dutta, Peters and Sen, 2005: the full argument; read Claim 3 with the 2008 erratum.
- [The Gibbard random dictatorship theorem: a generalization and a new proof](https://doi.org/10.1007/s13209-011-0041-z), Sen, 2011: the ordinal case by induction.
- Prerequisites: expected utility, lotteries as points of a simplex, linear programming duality.

### References, with links

- A. Hylland, Strategy proofness of voting procedures with lotteries as outcomes and infinite sets of strategies, unpublished paper, 1980.
- B. Dutta, H. Peters and A. Sen, Strategy-proof cardinal decision schemes, Social Choice and Welfare 28 (2007), 163-179, doi:10.1007/s00355-006-0152-9; erratum, Social Choice and Welfare 30 (2008), 701-702, doi:10.1007/s00355-008-0299-7. <https://doi.org/10.1007/s00355-006-0152-9> <https://doi.org/10.1007/s00355-008-0299-7>
- S. Nandeibam, The structure of decision schemes with cardinal preferences, Review of Economic Design 17 (2013), 205-238, doi:10.1007/s10058-012-0130-x. <https://doi.org/10.1007/s10058-012-0130-x>

### Further references

- A. Gibbard, Manipulation of schemes that mix voting with chance, Econometrica 45 (1977), no. 3, 665–681 <https://doi.org/10.2307/1911681>
- J. Duggan, A geometric proof of Gibbard's random dictatorship theorem, Econ. Theory 7 (1996), 365–369 <https://doi.org/10.1007/s001990050059>
- A. Sen, The Gibbard random dictatorship theorem: a generalization and a new proof, SERIEs 2 (2011), 515–527 <https://doi.org/10.1007/s13209-011-0041-z>
- S. Barberà, A. Bogomolnaia and H. van der Stel, Strategy-proof probabilistic rules for expected utility maximizers, Math. Social Sci. 35 (1998), 89–103 <https://doi.org/10.1016/S0165-4896(97)00043-7>
- F. Brandl, F. Brandt and W. Suksompong, The impossibility of extending random dictatorship to weak preferences, Econ. Lett. 141 (2016), 44–47 <https://arxiv.org/abs/1510.07424>

### Lean

#### Official statement

`Mathathon.P39.hylland_random_dictatorship` in [`lean/MathathonProblems/P39_HyllandRandomDictatorship.lean`](lean/MathathonProblems/P39_HyllandRandomDictatorship.lean).

```lean
theorem hylland_random_dictatorship [Nonempty N] (hA : 3 ≤ Fintype.card A)
    (φ : (N → A → ℝ) → A → ℝ) (hφ : ∀ u, IsLottery (φ u))
    (hsp : StrategyProof φ) (htop : TopUnanimous φ) (hbot : BottomUnanimous φ) :
    IsRandomDictatorship φ
```

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Related Lean formalizations

- [Proposition 10.12, Hylland's theorem](https://prove2.me/theorems/46a434c4-ef37-4ff3-89d3-a18f67e9dc15), Prove2Me: a Lean statement of a textbook version with belief-independent equilibria (open, not proved there).
- [Gibbard–Satterthwaite theorem](https://palomar-registry.org/entry?id=PALOMAR-2026-09-25-000028&version=1), Palomar registry (Lean-checked, trust level high): the deterministic counterpart, every onto strategy-proof social choice function with at least three alternatives is dictatorial.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has the standard simplex `stdSimplex` (lotteries) and `Function.update` (unilateral deviations). It has no decision schemes, strategy-proofness or random dictatorship; the official statement defines these.
