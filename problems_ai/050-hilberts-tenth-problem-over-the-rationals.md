# 50 · Hilbert’s tenth problem over the rationals

## From the proposer

- **Area:** Number theory
- **Tracks:** Algebra/Number Theory

### Description

Does an algorithm which determines whether an integer-coefficient polynomial in an arbitrary number of variables has a rational zero exist? This problem was recently resolved by OpenAI.

### Desired outcome

Verify the proof and write an exposition which is accessible to an undergraduate mathematics student.

### References

https://github.com/openai/math/blob/main/preprints/Hilberts-tenth-problem-over-the-rational-numbers-September-24-2026/main.pdf

### Reference links

- <https://github.com/openai/math/blob/main/preprints/Hilberts-tenth-problem-over-the-rational-numbers-September-24-2026/main.pdf>

## AI-generated notes

<!-- status: Proved (preprint) -->

- **Status:** Proved in an OpenAI preprint (24 September 2026, revised 6 October 2026); not yet refereed.
- **Task:** Verify the proof and write an undergraduate-level exposition.
- **Key reference:** [Hilbert's tenth problem over the rational numbers](https://github.com/openai/math/blob/main/preprints/Hilberts-tenth-problem-over-the-rational-numbers-October-6-2026/main.pdf), OpenAI, preprint, 6 October 2026.
- **Lean:** Official statement.

### Notes

- The page links the 24 September version; the 6 October version only updates citations to revised companion manuscripts.
- The proof relies on two other unrefereed OpenAI preprints: a pointwise 2-converse for elliptic curves with rational two-torsion and Fontaine–Mazur modularity at the prime 2.

### The result

OpenAI's Theorem 1.1: no algorithm decides, given $f\in\mathbb Z[X_1,\dots,X_n]$ with $n$ part of the input, whether

$$f(x)=0\ \text{ for some } x\in\mathbb Q^n.$$

Corollary 7.1: the problem has Turing degree $0'$, also for polynomials of degree at most four. The proof is a Turing reduction from the integer case (Davis–Putnam–Robinson 1961, Matiyasevich 1970). It gives no existential definition of $\mathbb Z$ in $\mathbb Q$, which Mazur's conjecture would rule out.

### How the known proof works

- Reduction (§2): for each $f$, an effective sequence of finite tests, each decided by finitely many rational-solvability queries, with $f$ having an integer zero if and only if every test succeeds.
- If all tests succeed, compactness gives a model in an elementary extension of $\mathbb Q$; points $T_a=\eta(a)P$ on a rank-one elliptic curve over $\mathbb Q(\sqrt2)$ give an additive, injective index $\eta$ (§§2, 5).
- Local comparisons via truncated elliptic logarithms at "contact primes" match ring values with their indices; a sieve-theoretic prime-pattern theorem supplies the primes (§§2, 6).
- A five-point height estimate $h(s)\le H\thinspace M(s)^c$ via abelian surfaces with quaternionic multiplication and modularity (§4), and a pole-parity condition via the 2-converse and the Cassels–Tate pairing (§3).
- Heights give $B^2\ll B$ for the largest root index $B$, so $f$ has an ordinary integer zero (§2.7).

### Background

- Definitions of $\mathbb Z$ in $\mathbb Q$: first-order (J. Robinson 1949), $\forall^2\exists^7$ (Poonen 2009), universal (Koenigsmann, *Ann. of Math.* 183, 2016).
- Poonen (*J. Amer. Math. Soc.* 16, 2003): Hilbert's tenth problem is undecidable for some subrings $\mathbb Z[S^{-1}]$ with $S$ a recursive set of primes of density one.
- Koymans–Pagano (*J. Amer. Math. Soc.*, 2026) and Alpöge–Bhargava–Ho–Shnidman (*Invent. Math.* 243, 2026) proved undecidability for the ring of integers of every number field.
- Z.-W. Sun (arXiv:2610.20691) uses the claim to get undecidability with 86 unknowns.

### Where to start

- [Undecidability in number theory](https://arxiv.org/abs/1309.0441), J. Koenigsmann, 2013: survey of the problem over $\mathbb Z$, $\mathbb Q$ and number fields.
- [Hilbert's Tenth Problem is Unsolvable](https://doi.org/10.1080/00029890.1973.11993265), M. Davis, 1973: the integer case, the starting point of the reduction.
- [Hilbert's tenth problem over the rational numbers](https://github.com/openai/math/blob/main/preprints/Hilberts-tenth-problem-over-the-rational-numbers-October-6-2026/main.pdf), OpenAI, 2026: §1.2 is a two-page overview of the proof.

Prerequisites: computability (Turing reductions), basic model theory (compactness, elementary extensions), elliptic curves over number fields and heights.

### Further references

- J. Koenigsmann, "Undecidability in number theory," 2013. <https://arxiv.org/abs/1309.0441>
- M. Davis, "Hilbert's Tenth Problem is Unsolvable," *Amer. Math. Monthly* 80 (1973), 233–269. <https://doi.org/10.1080/00029890.1973.11993265>
- J. Koenigsmann, "Defining ℤ in ℚ," *Ann. of Math.* 183 (2016), 73–93. <https://doi.org/10.4007/annals.2016.183.1.2>
- B. Poonen, "Hilbert's Tenth Problem and Mazur's Conjecture for large subrings of ℚ," *J. Amer. Math. Soc.* 16 (2003), 981–990. <https://doi.org/10.1090/S0894-0347-03-00433-8>
- Z.-W. Sun, "86 unknowns for Hilbert's tenth problem over the rationals," 2026. <https://arxiv.org/abs/2610.20691>

### Lean

#### Official statement

`Mathathon.P50.hilbert_tenth_rationals_undecidable` in [`lean/MathathonProblems/P50_HilbertTenthRationals.lean`](lean/MathathonProblems/P50_HilbertTenthRationals.lean).

```lean
theorem hilbert_tenth_rationals_undecidable : ¬ ComputablePred IntPoly.HasRationalZero
```

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Related Lean formalizations

- [hilbert10](https://github.com/cameronfreer/hilbert10/tree/53313aa90c6b75c43eb3b16b64ad32fce33042cf): a Lean proof of the DPRM theorem and of the undecidability of Hilbert's tenth problem over ℕ and ℤ.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `ComputablePred` (`Mathlib/Computability/RE.lean`), `MvPolynomial`, Diophantine sets `Dioph` with Matiyasevich's theorem that exponentiation is Diophantine, `Dioph.pow_dioph` (`Mathlib/NumberTheory/Dioph.lean`) and `WeierstrassCurve` with naive heights. It does not link `Dioph` to computability (no undecidability over $\mathbb Z$), and lacks Faltings heights and modularity.
