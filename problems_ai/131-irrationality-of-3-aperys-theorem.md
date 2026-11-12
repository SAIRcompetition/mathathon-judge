# 131 · Irrationality of ζ(3) (Apery's Theorem)

## From the proposer

- **Area:** Number Theory/Combinatorics
- **Tracks:** Number Theory/Algebra

### Description

In 1978, Roger Apery proved irrationality of ζ(3) using a specific, complex recurrence relations. Although the proof works perfectly, there is a gap in an explanation of the construction of the recurrence, and this method fails to generalize to proving irrationality of ζ(5) or higher.

### Desired outcome

Give a satisfying explanation of the motivation of the proof. Find the intuition behind the complex recurrence relations.

### References

arXiv:math/0202159

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved by R. Apéry (announced 1978, published in Astérisque 1979), with later proofs by Beukers (1979), Nesterenko (1996) and Zudilin (2002); explaining where the recurrence comes from is an expository question.
- **Task:** A satisfying explanation of the motivation behind Apéry's proof and the intuition behind its recurrence.
- **Key reference:** [W. Zudilin, "An elementary proof of Apéry's theorem", arXiv:math/0202159 (2002)](https://arxiv.org/abs/math/0202159); journal version "Apéry's theorem. Thirty years after", Int. J. Math. Comput. Sci. 4 (2009), 9–19.
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- The sheet's only reference, arXiv:math/0202159, is Zudilin's note. It derives the recurrence by Zeilberger's creative telescoping from a rational function of Nesterenko and identifies the resulting numbers with Ball's very-well-poised series. This is itself one explanation of the recurrence.
- On ζ(5): in September 2026 A. Fauzan posted a preprint proving that ζ(5) is irrational by a different method (normalized Hankel determinants rather than an Apéry-type recurrence). It is not refereed, but Lean formalizations exist, one of them registered in the Palomar registry (Lean-checked, trust level high). Building on Fauzan's method, Q. Tang proved in Lean that $1,\zeta(2),\zeta(3)$ are linearly independent over $\mathbb Q$ (also in Palomar), which contains Apéry's theorem. The sheet's remark that the method "fails to generalize" to ζ(5) remains true of Apéry's own method.

### The result

$\zeta(3)=\sum_{n\ge1}n^{-3}$ is irrational. Apéry's numbers
$$b_n=\sum_{k=0}^{n}\binom nk^2\binom{n+k}k^2,\qquad a_n=\sum_{k=0}^{n}\binom nk^2\binom{n+k}k^2\Big(\sum_{m=1}^{n}\frac1{m^3}+\sum_{m=1}^{k}\frac{(-1)^{m-1}}{2m^3\binom nm\binom{n+m}m}\Big)$$
both satisfy
$$(n+1)^3u_{n+1}-(34n^3+51n^2+27n+5)\,u_n+n^3u_{n-1}=0,$$
with $b_0=1,b_1=5$ and $a_0=0,a_1=6$. The characteristic roots are $(1\pm\sqrt2)^4$, so $b_n$ grows like $(1+\sqrt2)^{4n}$ while $b_n\zeta(3)-a_n=O\big((\sqrt2-1)^{4n}\big)$ and is nonzero. Moreover $2d_n^3a_n\in\mathbb Z$ with $d_n=\operatorname{lcm}(1,\dots,n)=e^{n(1+o(1))}$, and $e^3(\sqrt2-1)^4<1$. If $\zeta(3)=p/q$, then $2q\,d_n^3(b_n\zeta(3)-a_n)$ would be a nonzero integer tending to 0. The argument also gives the irrationality measure $\mu(\zeta(3))\le13.42$; Rhin and Viola (2001) lowered it to $5.513891$.

### How the known proof works

- Apéry, as reconstructed by van der Poorten: start from $\zeta(3)=\frac52\sum_{k\ge1}(-1)^{k-1}/(k^3\binom{2k}k)$, "accelerate" it into the double sums $a_n,b_n$, and verify that both satisfy the recurrence; this account verifies the recurrence but does not derive it.
- Creative telescoping (Zeilberger's algorithm; Zudilin): put $R_n(t)=\Big(\frac{(t-1)\cdots(t-n)}{t(t+1)\cdots(t+n)}\Big)^2$. Partial fractions give $F_n=-\sum_{t\ge1}R_n'(t)=u_n\zeta(3)-v_n$ with $u_n\in\mathbb Z$, $d_n^3v_n\in\mathbb Z$. The certificate $S_n(t)=4(2n+1)(-2t^2+t+(2n+1)^2)R_n(t)$ satisfies $(n+1)^3R_{n+1}-(2n+1)(17n^2+17n+5)R_n+n^3R_{n-1}=S_n(t+1)-S_n(t)$; differentiating and summing over $t$ gives the recurrence, and $(2n+1)(17n^2+17n+5)=34n^3+51n^2+27n+5$.
- Smallness: Ball's series $\tilde F_n=\sum_{t\ge1}n!^2(2t+n)\frac{(t-1)\cdots(t-n)\,(t+n+1)\cdots(t+2n)}{(t(t+1)\cdots(t+n))^4}$ satisfies the same recurrence and initial values, so $\tilde F_n=F_n$, and termwise estimates give $0<\tilde F_n<20(n+1)^4(\sqrt2-1)^{4n}$. Bailey's ${}_7F_6$ transformation explains why the two series agree.
- Beukers (1979): $\iint_{[0,1]^2}\frac{-\log xy}{1-xy}P_n(x)P_n(y)\,dx\,dy=(A_n+B_n\zeta(3))/d_n^3$ with $A_n,B_n\in\mathbb Z$ and shifted Legendre polynomials $P_n$; integration by parts turns it into a positive triple integral bounded by a constant times $(\sqrt2-1)^{4n}$. Here the recurrence is not needed at all.
- Geometry: Beukers and Peters (1984) identify the differential equation satisfied by $\sum b_nt^n$ as the Picard–Fuchs equation of a family of K3 surfaces, and Beukers (1987) parametrizes its solutions by modular forms. Zagier (2009) searched for integral solutions of recurrences like Apéry's recurrence for ζ(2) and found only a few sporadic cases, all of them modular.

### Background

- Euler showed $\zeta(2k)\in\mathbb Q\,\pi^{2k}$; no such formula is known for odd arguments.
- Very-well-poised hypergeometric series, the setting where Apéry's linear forms arise most naturally, gave Rivoal's theorem (2000; Ball–Rivoal 2001) that infinitely many $\zeta(2k+1)$ are irrational, Zudilin's (2001) that one of $\zeta(5),\zeta(7),\zeta(9),\zeta(11)$ is irrational, and Fischler–Sprang–Zudilin's (2019) that many odd zeta values are irrational. Fischler's Bourbaki survey compares the approaches.
- Formal proofs of Apéry's theorem exist in Coq (Chyzak, Mahboubi, Sibut-Pinote, Tassi 2014, following Apéry with computer algebra), Isabelle (Eberl 2019, Beukers' proof) and Lean 4 (Liu, Zhang, Zhi 2025, Beukers' proof).
- Hankel determinants were already studied in connection with the irrationality of zeta values, e.g. by Haynes and Zudilin (SIGMA 2015).

### Where to start

- [A proof that Euler missed …](https://doi.org/10.1007/BF03028234), A. van der Poorten, 1979: the original story and formulas, written as an informal report.
- [An elementary proof of Apéry's theorem](https://arxiv.org/abs/math/0202159), W. Zudilin, 2002: the recurrence from creative telescoping in a few lines, and Ball's series for the bound.
- [Irrationalité de valeurs de zêta](https://www.numdam.org/item/SB_2002-2003__45__27_0/), S. Fischler, Séminaire Bourbaki 2002/03 (in French): the hypergeometric, integral and Padé viewpoints side by side, leading to Rivoal's theorem.
- [Irrationality proofs using modular forms](https://www.numdam.org/item/AST_1987__147-148__271_0/), F. Beukers, 1987: the modular explanation of Apéry's numbers.

Prerequisites: partial fractions, hypergeometric series and creative telescoping, linear recurrences, the prime number theorem (or a bound $d_n<3^n$) for $\operatorname{lcm}(1,\dots,n)$; modular forms for the geometric viewpoint.

### References, with links

- W. Zudilin, "An elementary proof of Apéry's theorem", arXiv:math/0202159 (2002); published as "Apéry's theorem. Thirty years after", Int. J. Math. Comput. Sci. 4 (2009), no. 1, 9–19. <https://arxiv.org/abs/math/0202159>

### Further references

- R. Apéry, "Irrationalité de ζ(2) et ζ(3)", Astérisque 61 (1979), 11–13. <https://www.numdam.org/item/AST_1979__61__11_0/>
- A. van der Poorten, "A proof that Euler missed … Apéry's proof of the irrationality of ζ(3)", Math. Intelligencer 1 (1979), 195–203. <https://doi.org/10.1007/BF03028234>
- F. Beukers, "A note on the irrationality of ζ(2) and ζ(3)", Bull. London Math. Soc. 11 (1979), 268–272. <https://doi.org/10.1112/blms/11.3.268>
- Yu. V. Nesterenko, "A few remarks on ζ(3)", Math. Notes 59 (1996), 625–636. <https://doi.org/10.1007/BF02307212>
- F. Beukers and C. A. M. Peters, "A family of K3 surfaces and ζ(3)", J. Reine Angew. Math. 351 (1984), 42–54. <https://doi.org/10.1515/crll.1984.351.42>
- D. Zagier, "Integral solutions of Apéry-like recurrence equations", in *Groups and Symmetries*, CRM Proc. Lecture Notes 47 (2009), 349–366. <https://doi.org/10.1090/crmp/047/22>
- G. Rhin and C. Viola, "The group structure for ζ(3)", Acta Arith. 97 (2001), 269–293. <https://doi.org/10.4064/aa97-3-6>
- K. Ball and T. Rivoal, "Irrationalité d'une infinité de valeurs de la fonction zêta aux entiers impairs", Invent. Math. 146 (2001), 193–207. <https://doi.org/10.1007/s002220100168>
- S. Fischler, J. Sprang, W. Zudilin, "Many odd zeta values are irrational", Compos. Math. 155 (2019), 938–952. <https://doi.org/10.1112/S0010437X1900722X>
- A. Fauzan, "ζ(5) is irrational", preprint, Zenodo, 17 September 2026. <https://doi.org/10.5281/zenodo.22826419>

### Lean

#### Official statement

`Mathathon.P131.zeta_3_irratoinal` in [`lean/MathathonProblems/P131_Zeta3Irrational.lean`](lean/MathathonProblems/P131_Zeta3Irrational.lean).

```lean
theorem zeta_3_irratoinal : ¬ ∃ r : ℚ , r = riemannZeta 3
```

The problem asks for an explanation of Apéry's proof; this is the theorem being explained: no rational number, cast to $\mathbb C$, equals $\zeta(3)$ (the misspelt name is the source's). The same claim is `RiemannZetaValues.irrational_three` in google-deepmind/formal-conjectures, stated as `∃ x, Irrational x ∧ riemannZeta 3 = x`.

Source: <https://github.com/ahhwuhu/zeta_3_irrational/blob/e8785315a01c8fbcddaa0fc03b3c8b29a61bc1f1/Zeta3Irrational/Basic.lean> (Apache-2.0). Adapted: the statement is copied unchanged into `namespace Mathathon.P131`, with `import Mathlib` in place of the project's imports and the proof replaced by `sorry`. The same repository contains a Lean proof of it (Beukers' method, with no `sorry` in the repository's files; it uses the PrimeNumberTheoremAnd project for the prime number theorem); it was not checked here.

#### Related Lean formalizations

- `zeta_3_irratoinal` (sic) in [ahhwuhu/zeta_3_irrational](https://github.com/ahhwuhu/zeta_3_irrational) (J. Liu, J. Zhang, L. Zhi, arXiv:2503.07625): Beukers' proof of Apéry's theorem, using the PrimeNumberTheoremAnd project for the size of $d_n$; the authors report extending Mathlib with shifted Legendre polynomials.
- `one_zeta_two_zeta_three_linearIndependent` in [Linear independence of 1, ζ(2), ζ(3) over ℚ](https://palomar-registry.org/entry?id=PALOMAR-2026-09-30-000030&version=1), Palomar registry (Lean-checked, trust level high): Q. Tang's proof, a refinement of Fauzan's Hankel-determinant method.
- `Zeta5Palomar.irrational_zeta_five` in [Irrationality of the Riemann zeta value at five](https://palomar-registry.org/entry?id=PALOMAR-2026-09-25-000018&version=1), Palomar registry (Lean-checked, trust level high): a formalization of Fauzan's ζ(5) preprint by A. Fasten. Other formalizations of the same preprint: [danromik/zeta5-irrationality](https://github.com/danromik/zeta5-irrationality), which assumes the prime number theorem as an axiom, and [mo271/zeta5](https://github.com/mo271/zeta5), which takes it from PrimeNumberTheoremAnd.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `Irrational`, `irrational_pi`, `riemannZeta` with `zeta_nat_eq_tsum_of_gt_one` and the even values `riemannZeta_two_mul_nat`, shifted Legendre polynomials (`Polynomial.shiftedLegendre`, Rodrigues' formula `Polynomial.factorial_mul_shiftedLegendre_eq`), $\operatorname{lcm}(1,\dots,n)$ as `Chebyshev.lcmUpto` with `Chebyshev.psi_eq_log_lcmUpto`, and the Gauss hypergeometric function `ordinaryHypergeometric`. Its Chebyshev bound `Chebyshev.psi_le` gives only $d_n\le4^{n(1+o(1))}$, too weak here since $4^3(\sqrt2-1)^4>1$; it lacks the prime number theorem, Apéry's theorem, creative telescoping and Padé approximation.
