# 74 · The cap set problem

> Everything on this page except the section **From the proposer** is AI-generated and may contain errors.

## From the proposer

- **Title:** The Cap Set Problem and the Slice Rank Method
- **Area:** Additive combinatorics, algebraic combinatorics, polynomial method
- **Tracks:** Combinatorics

### Description

In 2016, Ellenberg and Gijswijt, building on Croot-Lev-Pach, proved that a cap set in F_3^n has size O(2.756^n). The proof is strikingly short, using polynomials and what Tao later named the “slice rank” of a function. Yet it remains unclear why this approach succeeds where Fourier methods stalled, how robust it is, and which other patterns, fields, and geometric or colouring problems it can reach.

### Desired outcome

We would like teams to build a clear, verifiable understanding of the slice rank method, starting from its cap set origins and then testing how far it extends. Possible deliverables include a formalization (for example in Lean) of the slice rank lemma and the Ellenberg-Gijswijt bound, an exposition or interactive tool for visualizing slice rank on small examples, or an analysis of which assumptions in the method are essential and which can be relaxed. Teams could also explore how the technique carries over to related avoidance problems, including settings where the functions are not strictly polynomial or the forbidden configuration is geometric rather than purely additive.

The topic has a short, accessible core proof and a lot of room around it. Teams can start from pure formalization or exposition and, if time allows, push toward new applications. Several adjacent results (e.g., Naslund’s geometric application) show the method’s reach beyond the original setting, so there is room for original work as well as consolidation.

### References

- J. S. Ellenberg and D. Gijswijt, “On large subsets of F_q^n with no three-term arithmetic progression,” Annals of Mathematics 185 (2017), 339-343.
- E. Croot, V. Lev, and P. P. Pach, “Progression-free sets in Z_4^n are exponentially small,” Annals of Mathematics 185 (2017), 331-337.
- E. Naslund, “Monochromatic equilateral triangles in the unit distance graph,” Bulletin of the London Mathematical Society 52 (2020).

## AI-generated notes

- **Status:** Proved by J. S. Ellenberg and D. Gijswijt (2016, published 2017), building on E. Croot, V. Lev and P. P. Pach.
- **Task:** A verifiable account of the slice rank method and its reach.
- **Key reference:** [J. S. Ellenberg and D. Gijswijt, On large subsets of F_q^n with no three-term arithmetic progression, Ann. of Math. 185 (2017), 339–343](https://arxiv.org/abs/1605.09223)
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- Tao's 2016 blog post introduced the notion under the name "rank"; the name "slice rank" comes from Blasiak, Church, Cohn, Grochow, Naslund, Sawin and Umans (2016), who call it "a variant of tensor rank due to Tao".

### The result

A cap set is a set $A\subseteq\mathbb F_3^n$ with no solution of $x+y+z=0$ in $A$ other than $x=y=z$. Ellenberg and Gijswijt proved $|A|\le 3m_{2n/3}$, where $m_d$ is the number of monomials in $n$ variables of total degree at most $d$ with each exponent at most 2. This gives
$$|A|\le 3\,\theta^n,\qquad \theta=\min_{\rho>0}\frac{1+\rho+\rho^2}{\rho^{2/3}}=\tfrac38\,(207+33\sqrt{33})^{1/3}\approx 2.7551,$$
which is the official Lean statement. For every prime power $q$ the same method gives $c_q^n$ with $c_q<q$ for progression-free sets in $\mathbb F_q^n$. Lower bounds for the growth rate of the largest cap set are $2.218$ (Tyrrell, 2022) and, from a computer program search, $2.2202$ (Romera-Paredes et al., 2024).

### How the known proof works

- Polynomials on $\mathbb F_q^n$ with each exponent at most $q-1$ represent all functions; $m_d$ counts those of degree at most $d$.
- Croot–Lev–Pach lemma (EG Proposition 2): if a polynomial $P$ of degree at most $d$ vanishes at $\alpha a+\beta b$ for all distinct $a,b\in A$, then the matrix $(P(\alpha a+\beta b))_{a,b}$ is diagonal and has rank at most $2m_{d/2}$, so $P(-\gamma a)\ne0$ for at most $2m_{d/2}$ points $a\in A$.
- Dimension count (Theorem 4): the polynomials of degree at most $d$ vanishing off $-\gamma A$ form a space of dimension at least $m_d-q^n+|A|$; one of them has support at least that dimension, giving $|A|\le 2m_{d/2}+(q^n-m_d)$.
- Taking $d=2(q-1)n/3$ yields $|A|\le 3m_{(q-1)n/3}$.
- A large-deviation estimate (Cramér's theorem) shows $m_{(q-1)n/3}=O(c^n)$ with $c<q$; for $q=3$ this gives $2.756^n$.

### Background

- Earlier bounds: $o(3^n)$ (Brown and Buhler, 1982), $O(3^n/n)$ (Meshulam, 1995), $O(3^n/n^{1+\epsilon})$ (Bateman and Katz, 2012).
- Tao's reformulation: the function $\delta_0(x+y+z)$ on $(\mathbb F_3^n)^3$ has slice rank at most $3m_{2n/3}$, while a diagonal tensor with $|A|$ nonzero entries has slice rank $|A|$.
- The bound also holds for tri-colored sum-free sets (Blasiak et al., 2017), and there it is tight in the exponent (Kleinberg–Sawin–Speyer and Pebody, both 2018).
- Naslund (2020) used slice rank to show that colouring $\mathbb R^n$ with no monochromatic unit equilateral triangle needs more than $(1.01446+o(1))^n$ colours, reproving a result of Frankl and Rödl.

### Where to start

- [On large subsets of F_q^n with no three-term arithmetic progression](https://arxiv.org/abs/1605.09223), J. S. Ellenberg and D. Gijswijt, 2016: the full proof in four pages.
- [A symmetric formulation of the Croot-Lev-Pach-Ellenberg-Gijswijt capset bound](https://terrytao.wordpress.com/2016/05/18/a-symmetric-formulation-of-the-croot-lev-pach-ellenberg-gijswijt-capset-bound/), T. Tao, 2016: the slice rank version with the diagonal-rank lemma.
- [On cap sets and the group-theoretic approach to matrix multiplication](https://arxiv.org/abs/1605.06702), J. Blasiak et al., 2016: Section 4 develops slice rank and its basic properties.

Prerequisites: linear algebra over finite fields, polynomials in several variables, rank of matrices; Stirling's formula or Cramér's theorem for the constant.

### References, with links

- J. S. Ellenberg and D. Gijswijt, “On large subsets of F_q^n with no three-term arithmetic progression,” Annals of Mathematics 185 (2017), 339-343. <https://arxiv.org/abs/1605.09223>
- E. Croot, V. Lev, and P. P. Pach, “Progression-free sets in Z_4^n are exponentially small,” Annals of Mathematics 185 (2017), 331-337. <https://arxiv.org/abs/1605.01506>
- E. Naslund, “Monochromatic equilateral triangles in the unit distance graph,” Bulletin of the London Mathematical Society 52 (2020). <https://arxiv.org/abs/1909.09856>

### Further references

- J. Blasiak, T. Church, H. Cohn, J. A. Grochow, E. Naslund, W. F. Sawin and C. Umans, “On cap sets and the group-theoretic approach to matrix multiplication,” Discrete Analysis 2017:3. <https://arxiv.org/abs/1605.06702>
- R. Kleinberg, W. Sawin and D. E. Speyer, “The growth rate of tri-colored sum-free sets,” Discrete Analysis 2018:12. <https://arxiv.org/abs/1607.00047>
- L. Pebody, “Proof of a conjecture of Kleinberg-Sawin-Speyer,” Discrete Analysis (2018); arXiv:1608.05740. <https://arxiv.org/abs/1608.05740>
- F. Tyrrell, “New lower bounds for cap sets,” arXiv:2209.10045 (2022), published in Discrete Analysis. <https://arxiv.org/abs/2209.10045>
- B. Romera-Paredes et al., “Mathematical discoveries from program search with large language models,” Nature 625 (2024), 468–475. <https://doi.org/10.1038/s41586-023-06924-6>

### Lean

#### Official statement

`Mathathon.P74.cap_set_problem_specific` in [`lean/MathathonProblems/P74_CapSet.lean`](lean/MathathonProblems/P74_CapSet.lean).

```lean
theorem cap_set_problem_specific (n : ℕ) {A : Finset (Fin n → ZMod 3)}
    (hxyz : ∀ x y z : Fin n → ZMod 3, x ∈ A → y ∈ A → z ∈ A → x + y + z = 0 → x = y ∧ x = z) :
    (A.card : ℝ) ≤ 3 * ((((3 : ℝ) / 8) ^ 3 * (207 + 33 * Real.sqrt 33)) ^ (1 / 3 : ℝ)) ^ n
```

Source: <https://github.com/lean-forward/cap_set_problem/blob/095a2f18f81c551a0053f2e65806de751e438fc4/src/section_13b.lean> (adapted as described in the file header).

A Lean proof of this statement already exists: <https://github.com/lean-forward/cap_set_problem/blob/095a2f18f81c551a0053f2e65806de751e438fc4/src/section_13b.lean>. A Lean-verified claim must not use or copy it.

#### Mathlib

Mathlib has `ZMod 3`, finite fields, multivariate polynomials (`MvPolynomial`), matrix rank (`Matrix.rank`), and progression-free sets with their maximal size (`ThreeAPFree`, `addRothNumber`). It has no slice rank, no Croot–Lev–Pach lemma and no cap set bound.
