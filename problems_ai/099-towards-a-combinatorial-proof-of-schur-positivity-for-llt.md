# 99 · Towards a combinatorial proof of Schur positivity for LLT polynomials of unit interval graphs

## From the proposer

- **Area:** Algebraic combinatorics (symmetric functions)
- **Tracks:** Combinatorics

### Description

LLT polynomials of unit interval graphs are known to be Schur positive: every Schur coefficient is a polynomial in q with nonnegative integer coefficients. The existing proofs are unsatisfying: Grojnowski-Haiman express the coefficients through Kazhdan-Lusztig theory of affine Hecke algebras, and Guay-Paquet's second proof uses Hessenberg varieties, which, as Alexandersson-Sulzgruber put it, gives positivity "but no combinatorial formula for the coefficients". Combinatorial rules are known only for special families (e.g. Roberts for maximum area at most 2, Huh-Nam-Yoo for melting lollipops), and none is known for unit interval graphs in general.

### Desired outcome

A combinatorial proof of Schur positivity for every unit interval graph would be nice: an explicit description of what each Schur coefficient counts, together with a reason why it works.

Fortunately we do already have natural starting points; combinatorial rules already exist for some families: Roberts' rule covers every graph without a K_4, and Huh-Nam-Yoo's covers melting lollipops. But each rule already breaks on a 4-vertex graph where the other works (K_4, and a triangle with a tail). So perhaps a first goal is to understand these failures and find one rule that handles both.

And even if the full problem is too much for the mathathon, we can start with a natural test case: K-chains (chains of cliques glued at single vertices), which are the simplest graphs containing a K_4 that no known rule covers. The interesting ones contain a K_4 with something attached on both sides (Roberts' rule fails on 11 of the 14 such graphs with 8 vertices, for example). Thus, we could start with establishing a rule that is correct on all K-chains with 8 vertices, and work towards a proof for the whole family.

### References

1. I. Grojnowski, M. Haiman, "Affine Hecke algebras and positivity of LLT and Macdonald polynomials", preprint (2007), available at math.berkeley.edu/~mhaiman.
2. M. Guay-Paquet, "A second proof of the Shareshian-Wachs conjecture, by way of a new Hopf algebra" (2016), arXiv:1601.05498 (Schur positivity of unit interval graph LLT polynomials follows from this, as noted by Alexandersson-Sulzgruber, arXiv:2004.09198).
3. A. Roberts, "Dual equivalence graphs revisited and the explicit Schur expansion of a family of LLT polynomials", J. Algebraic Combin. (2014), arXiv:1302.0319 (Theorem 4.3).

## AI-generated notes

<!-- status: Partly solved -->

- **Status:** Schur positivity is proved (Grojnowski–Haiman, 2007 preprint; Guay-Paquet, arXiv 2016, via Hessenberg varieties), but explicit positive rules for the Schur coefficients are known only for special families: graphs without $K_4$ (Roberts 2014), melting lollipops (Huh–Nam–Yoo 2020) and two-headed melting lollipops (V. Wang, arXiv 2025).
- **Task:** A combinatorial rule, with proof, for the Schur coefficients of the LLT polynomial of every unit interval graph; as a first step, a rule that is correct on all K-chains with 8 vertices.
- **Key reference:** [P. Alexandersson and R. Sulzgruber, “A combinatorial expansion of vertical-strip LLT polynomials in the basis of elementary symmetric functions”, Adv. Math. 400 (2022), 108256](https://arxiv.org/abs/2004.09198)
- **Lean:** No official statement.

### Notes

- The proposer's two descriptions of Roberts' family agree: in a unit interval graph the largest clique has one more vertex than the largest area value, so "maximum area at most 2" means "no $K_4$".
- Reversing the vertex order does not change a unicellular LLT polynomial (Wang 2025, §2). A triangle with a tail is, up to reversal, the lollipop $P_2+K_3$ treated by Huh–Nam–Yoo, so the claimed failure of their rule presumably concerns applying the formula outside the family as stated, for example to the reversed graph. This, and the count of 11 failures among 14 K-chains with 8 vertices, were not checked here.
- Wang (arXiv 2025, not refereed) gives a positive rule for two-headed melting lollipops $(K^{(k_1)}_{m_1})^{r}+P_{n+2}+K^{(k_2)}_{m_2}$ with $n\ge-1$, which include every chain of two cliques. The proposer's harder cases, a $K_4$ with something attached on both sides, need at least three cliques and are not covered.
- The Grojnowski–Haiman preprint is dated 22 May 2007 (Alexandersson–Sulzgruber cite it as 2006).

### The result

A unit interval graph $G$ on $[n]$ is a graph such that $(i,j)\in E$ and $i\le k<l\le j$ imply $(k,l)\in E$. Its unicellular LLT polynomial is
$$\mathrm{LLT}_G(x;q)=\sum_{\kappa:[n]\to\mathbb Z_{>0}}q^{\mathrm{asc}(\kappa)}\,x_{\kappa(1)}\cdots x_{\kappa(n)},\qquad \mathrm{asc}(\kappa)=\#\{(i,j)\in E:\ i<j,\ \kappa(i)<\kappa(j)\}.$$
It is symmetric in $x$, and $\mathrm{LLT}_G=\sum_\lambda c_{G,\lambda}(q)\,s_\lambda$ with every $c_{G,\lambda}(q)\in\mathbb N[q]$ (Grojnowski–Haiman, for all LLT polynomials; Guay-Paquet for this case).

Known positive rules:
- Roberts (2014, Theorem 4.3): for tuples of skew shapes of "diameter" at most 3, which for unicellular LLT polynomials means graphs without $K_4$, $c_{G,\lambda}(q)=\sum_T q^{\mathrm{inv}(T)}$ over standard fillings $T$ whose shifted-content reading word is a standardized Yamanouchi word of shape $\lambda$. Remark 4.5 shows the formula fails for four mutually adjacent cells ($K_4$), at the coefficient of $q^2s_{22}$.
- Huh–Nam–Yoo (2020): complete graphs, paths, lollipops and melting lollipops $P_{n+1}+K^{(k)}_m$, where $K^{(k)}_m$ is $K_m$ minus the edges $(1,m),\dots,(1,m-k+1)$. They also determine the coefficients of all hook shapes for every unit interval graph.
- Wang (arXiv 2025): for (two-headed) melting lollipops, $\mathrm{LLT}_G=\sum_{\alpha}q^{b(\mathrm{set}(\alpha))}r_\alpha$, a sum of ribbon Schur functions $r_\alpha$ over compositions of $n$, with an explicit weight sequence $b$.

Signed formulas hold for every $G$: one via Egge–Loehr–Warrington, and $\mathrm{LLT}_G=\sum_\mu\sum_{\theta}(q-1)^{\mathrm{asc}(\theta)}K_{\mu',\lambda(\theta)}\,s_\mu$ over orientations $\theta$ of $G$ (Alexandersson–Sulzgruber, Corollary 6.2). The open problem is an explicit positive formula for all $G$.

### How the known proof works

- Grojnowski–Haiman: LLT polynomials are expressed through the affine Hecke algebra of $GL_n$. Multiplication by a Kazhdan–Lusztig basis element has positive matrix coefficients in a "hybrid" basis (Theorem 3.2), which gives positivity of all LLT polynomials.
- Guay-Paquet: $\mathrm{LLT}_G$ is the graded Frobenius series of the equivariant cohomology of a regular semisimple Hessenberg variety (Lemma 158 of his notes), so it is the character of a graded representation; the proof gives no description of the multiplicities.
- Roberts: $\mathrm{LLT}_G$ is a sum of fundamental quasisymmetric functions over standard fillings. Elementary dual equivalences make these fillings into a graph; when every component satisfies Assaf's axioms (in Roberts' locally checkable form), it contributes one $q^{\mathrm{inv}}s_\lambda$.
- Wang (following Huh–Nam–Yoo): for a path the colouring sum is directly $\sum_\alpha q^{a(\mathrm{set}(\alpha))}r_\alpha$. Lee's local linear relation $\mathrm{LLT}_a+q\,\mathrm{LLT}_{a''}=(1+q)\,\mathrm{LLT}_{a'}$ between area sequences, and $r_\alpha r_\beta=r_{\alpha\cdot\beta}+r_{\alpha\odot\beta}$ for disjoint unions, carry this form by induction to (two-headed) melting lollipops.

### Background

- LLT polynomials were introduced by Lascoux, Leclerc and Thibon (1997). They enter the Haglund–Haiman–Loehr formula for Macdonald polynomials and the shuffle theorem (Carlsson–Mellit 2018).
- Unicellular LLT polynomials determine the chromatic quasisymmetric functions of unit interval graphs by a plethysm, $X_G(x;q)=(q-1)^{-n}\,\mathrm{LLT}_G[x(q-1);q]$ (Carlsson–Mellit, Prop. 3.5). The Shareshian–Wachs conjecture relating $X_G$ to Hessenberg varieties was proved by Brosnan–Chow (2018) and by Guay-Paquet.
- In another basis the problem is solved: $\mathrm{LLT}_G(x;q+1)$ has an explicit expansion with nonnegative coefficients in elementary symmetric functions, counted by orientations of $G$ (D'Adderio 2020; Alexandersson–Sulzgruber 2022).

### Where to start

- [A combinatorial expansion of vertical-strip LLT polynomials in the basis of elementary symmetric functions](https://arxiv.org/abs/2004.09198), P. Alexandersson, R. Sulzgruber, 2020: §1 surveys the history; §6.1 gives signed Schur expansions and suggests looking for a sign-reversing involution.
- [Dual equivalence graphs revisited and the explicit Schur expansion of a family of LLT polynomials](https://arxiv.org/abs/1302.0319), A. Roberts, 2013: Theorem 4.3 and Remark 4.5, the $K_4$ counterexample to extending the rule.
- [Expanding the unicellular LLT polynomials of two-headed melting lollipops into ribbon Schurs](https://arxiv.org/abs/2504.08187), V. Wang, 2025: a 9-page paper and the known rule closest to K-chains.
- [Melting lollipop chromatic quasisymmetric functions and Schur expansion of unicellular LLT polynomials](https://arxiv.org/abs/1812.03445), J. Huh, S.-Y. Nam, M. Yoo, 2018: the linear relations and the hook-shape coefficients.

Prerequisites: symmetric functions (Schur, ribbon Schur and fundamental quasisymmetric functions, Kostka numbers), standard Young tableaux, unit interval graphs and Dyck paths; helpful: dual equivalence graphs, Hessenberg varieties.

### References, with links

- I. Grojnowski and M. Haiman, “Affine Hecke algebras and positivity of LLT and Macdonald polynomials,” preprint (dated 22 May 2007). <https://math.berkeley.edu/~mhaiman/ftp/llt-positivity/new-version.pdf>
- M. Guay-Paquet, “A second proof of the Shareshian–Wachs conjecture, by way of a new Hopf algebra,” arXiv:1601.05498 (2016). <https://arxiv.org/abs/1601.05498> Cited remark: P. Alexandersson and R. Sulzgruber, Adv. Math. 400 (2022), 108256, arXiv:2004.09198. <https://arxiv.org/abs/2004.09198>
- A. Roberts, “Dual equivalence graphs revisited and the explicit Schur expansion of a family of LLT polynomials,” J. Algebraic Combin. 39 (2014), 389–428, Theorem 4.3. <https://doi.org/10.1007/s10801-013-0452-y> <https://arxiv.org/abs/1302.0319>

### Further references

- J. Huh, S.-Y. Nam and M. Yoo, “Melting lollipop chromatic quasisymmetric functions and Schur expansion of unicellular LLT polynomials,” Discrete Math. 343 (2020), 111728. <https://doi.org/10.1016/j.disc.2019.111728>
- V. Wang, “Expanding the unicellular LLT polynomials of two-headed melting lollipops into ribbon Schurs,” arXiv:2504.08187 (2025). <https://arxiv.org/abs/2504.08187>
- E. Carlsson and A. Mellit, “A proof of the shuffle conjecture,” J. Amer. Math. Soc. 31 (2018), 661–697. <https://doi.org/10.1090/jams/893>
- P. Brosnan and T. Y. Chow, “Unit interval orders and the dot action on the cohomology of regular semisimple Hessenberg varieties,” Adv. Math. 329 (2018), 955–1001. <https://doi.org/10.1016/j.aim.2018.02.020>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs Schur functions and LLT polynomials, which Mathlib does not have.

#### Mathlib

Mathlib has symmetric polynomials (`MvPolynomial.IsSymmetric`) with the elementary, complete homogeneous and power-sum families (`MvPolynomial.esymm`, `MvPolynomial.hsymm`, `MvPolynomial.psum`), integer partitions (`Nat.Partition`), Young diagrams and semistandard tableaux (`YoungDiagram`, `SemistandardYoungTableau`) and `SimpleGraph`. It has no Schur functions, quasisymmetric functions, Kostka numbers, LLT polynomials or chromatic symmetric functions.
