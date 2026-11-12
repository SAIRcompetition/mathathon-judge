# 136 · The Aaronson–Ambainis Conjecture: From Influential Variables to Quantum Simulation

## From the proposer

- **Area:** Quantum computing and theoretical computer science; analysis of Boolean functions; quantum cryptography.
- **Tracks:** Computation/Applied Mathematics

### Description

Does every bounded, low-degree polynomial on the Boolean cube that varies substantially have an influential input bit—one whose flip changes the polynomial noticeably on average? The Aaronson–Ambainis conjecture asks for a quantitative influence bound independent of the number of variables. A recently released proof, accompanied by a Lean formalization, claims to establish this bound. Its implications include classical approximation of quantum acceptance probabilities on most uniformly random inputs, with polynomially many input queries. The challenge is to explain or simplify the proof and its connections to quantum-query simulation and cryptography.

### Desired outcome

Create a self-contained explanation of the Aaronson–Ambainis proof and its consequences for quantum computing. In particular:

1. Explain the key ideas behind the influential-variable bound and use small examples to illustrate influence, variance, and decision trees.

2. Trace how the influence bound yields classical query simulation on most uniformly random inputs, and explain the known equivalent statement involving a small classical bit-fixing restriction. Track the parameter dependencies and assumptions carefully.

3. Simplify an existing reduction or develop a new proof of a related statement, such as the heavy-variable statement for quantum query algorithms. As a more ambitious extension, investigate improved bounds or connections to polynomial compatibility and quantum cryptography.

The final deliverable could combine annotated proofs, examples or visualizations, and a map distinguishing proved implications, conjectures, and open questions.

### References

1. Scott Aaronson and Andris Ambainis, “The Need for Structure in Quantum Speedups,” Theory of Computing 10 (2014), 133–166. See Conjecture 6 and Theorem 22 in the arXiv version:
https://arxiv.org/pdf/0911.0996

2. David Turturean, “A proof of the Aaronson–Ambainis conjecture” (2026). See Theorem 1.1 and Corollary 1.2. The paper and accompanying Lean formalization are available at:
https://github.com/physical-superintelligence/aaronson-ambainis/blob/main/paper/aaronson_ambainis_paper.pdf
https://github.com/physical-superintelligence/aaronson-ambainis

3. Siyao Guo, Qian Li, Qipeng Liu, and Jiapeng Zhang, “Unifying Presampling via Concentration Bounds,” TCC 2021. See Section 2.6 and Appendix B for the simulation and bit-fixing statements:
https://eprint.iacr.org/2020/1589.pdf

## AI-generated notes

<!-- status: Proved (preprint) -->

- **Status:** Proof claimed by D. Turturean (arXiv, 6 November 2026), with a Lean formalization that its repository reports as complete; the paper states that the proof was produced by AI models (instances of a non-public Anthropic model) and reviewed by the author; not yet refereed. Conjectured by S. Aaronson and A. Ambainis (arXiv 2009; Theory of Computing 2014).
- **Task:** A self-contained exposition of the proof and of how it yields classical simulation of quantum query algorithms on most inputs, with parameters tracked, and a simplification or a new proof of a related statement.
- **Key reference:** [D. Turturean, "A proof of the Aaronson–Ambainis conjecture", arXiv:2611.09773 (2026)](https://arxiv.org/abs/2611.09773)
- **Lean:** No official statement.

### Notes

- Reference 2 is now also on arXiv (2611.09773). Two papers that bear directly on the task appeared within days: an exposition by G. Blanc, J. Docter, C. Strassle and L.-Y. Tan (arXiv:2611.11626, 8 November 2026; the authors say they received the proof from Turturean and do not intend to publish the note), and a 7-page proof through the completion framework by T. Huffstutler, D. Miloschewsky and S. Podder (arXiv:2611.12795, 9 November 2026). The latter shows that a partial function defined on a $\delta$-fraction of inputs, with quantum query complexity $Q(f)$, is computed correctly on a $1-\varepsilon$ fraction of its domain by a deterministic algorithm making $O(Q(f)^6/(\varepsilon\delta)^2)$ queries; it derives the influence version in an appendix and uses only a special case of Turturean's certificate inequality, for which it gives a self-contained proof.
- Conjecture 6 and Theorem 22 of arXiv:0911.0996 are Conjecture 1.7 and Theorem 3.3 of the journal version (numbering as given by Turturean).
- Reference 3: the ePrint PDF refused automated access, so the pointers to its Section 2.6 and Appendix B were not checked. Its abstract says that extending presampling to the quantum setting would resolve a major open problem "closely related to" the Aaronson–Ambainis conjecture.
- An earlier claimed proof (N. Keller and O. Klein, arXiv:1911.03748, 2019) was withdrawn because of a flaw in its Lemma 5.3.

### The result

For $p:\mathbb R^N\to\mathbb R$ write $\mathrm{Inf}_i[p]=\mathbb E_X[(p(X)-p(X^i))^2]$, with $X$ uniform on $\{0,1\}^N$ and $X^i$ equal to $X$ with bit $i$ flipped. Aaronson–Ambainis conjecture (arXiv version, Conjecture 6): if $p$ has degree $d$, $0\le p\le1$ on $\{0,1\}^N$ and $\operatorname{Var}[p]\ge\varepsilon$, then some $i$ has $\mathrm{Inf}_i[p]\ge(\varepsilon/d)^{O(1)}$.

Turturean, Theorem 1.1: for $n,d\ge1$ and every $f:\{-1,1\}^n\to[-1,1]$ of degree at most $d$ there is a coordinate $j$ with
$$\mathrm{Inf}_j(f)\ge\frac{\sqrt{15}}{500\pi^4}\cdot\frac{\operatorname{Var}(f)^{5/2}}{d^6},\qquad \mathrm{Inf}_j(f)=\mathbb E_x\Big[\Big(\tfrac{f(x)-f(x^j)}{2}\Big)^2\Big].$$
Corollary 1.2 restates this as $\mathrm{Inf}_i[p]\ge\frac{8\sqrt{15}}{125\pi^4}\operatorname{Var}[p]^{5/2}/d^6\ge(\operatorname{Var}[p]/d)^7$ in the original normalization.

Consequences proved by Aaronson and Ambainis under the conjecture (arXiv Theorem 7): (i) a $T$-query quantum algorithm's acceptance probability can be approximated within $\varepsilon$ on a $1-\delta$ fraction of inputs by a deterministic classical algorithm with $\mathrm{poly}(T,1/\varepsilon,1/\delta)$ queries (Theorem 22; Turturean's §1.3 gets at most $(4T)^8\varepsilon^{-14}\delta^{-8}$); (ii) $D_{\varepsilon+\delta}(f)\le(Q_\varepsilon(f)/\delta)^{O(1)}$ for all Boolean $f$; (iii) if $\mathsf P=\mathsf P^{\#\mathsf P}$, then $\mathsf{BQP}^A\subset\mathsf{AvgP}^A$ for a random oracle $A$ with probability 1. The simulation queries a variable of large influence of the polynomial that remains after fixing the bits queried so far, as long as its variance exceeds $\varepsilon^2\delta/2$.

### How the known proof works

Steps as summarized in Turturean's §1.5 and the repository README:

- A *row* (fractional certificate) of $f$ at $x$ is a weight vector $a\ge0$ with $|f(x)-f(x^S)|\le\sum_{i\in S}a_i$ for all sets $S$ of coordinates. A function into $[-1,1]$ of degree at most $d$ has rows of cost at most $\pi^2d^2$ at every point (Agarwal–Ben-David, with a better constant; reproved with Markov's inequality for polynomials, Chebyshev polynomials and LP duality), and $\sum_j\mathbb E|f(x)-f(x^j)|\le4d^2$.
- Boolean functions $g$: a bijection theorem on $g^{-1}(1)$, proved through the lowest-degree terms of a determinant of monomials and related to Reimer's Butterfly Lemma, gives a determinant inequality, then an inequality for antipodal pairs, then, summed over subcubes, an "all-pairs inequality" bounding $\sum_{g(x)=1,\,g(y)=0}\big(\sum_{j:x_j\ne y_j}w_j\lambda^x_j\lambda^y_j\big)^{-1}$ by influences.
- Real $f$: the all-pairs inequality is applied to every level set $\{f>t\}$, using the rows $a^x/|f(x)-t|$, and integrated over $t$. With Cauchy–Schwarz this gives a third-moment inequality, and at a median a coordinate with $\mathbb E|f(x)-f(x^j)|\ge\operatorname{Var}(f)^{3/2}/(6K^2)$, where $K$ bounds the row costs.
- Averaging $f$ over coordinates of small influence turns this into $\mathrm{Inf}_j(f)\ge\frac{\sqrt{15}}{125}\operatorname{Var}(f)^{5/2}/(L(f)K^2)$, where $L(f)=\sum_j\mathbb E|f(x)-f(x^j)|$; with $K=\pi^2d^2$ and $L(f)\le4d^2$ this is Theorem 1.1.
- The passage through level sets follows a plan of Lovett and Zhang (ITCS 2023); the all-pairs inequality replaces their Conjecture 37, which Turturean shows is false as stated (tribes functions, §9.1).

### Background

- For total Boolean functions quantum and deterministic query complexity are polynomially related ($D(f)=O(Q(f)^6)$, Beals et al.), so superpolynomial speedups need a promise; the conjecture says that such speedups cannot hold on most inputs. The acceptance probability of a $T$-query quantum algorithm is a polynomial of degree at most $2T$ with values in $[0,1]$.
- Earlier results: Boolean functions, via decision trees (O'Donnell–Saks–Schramm–Servedio 2005); bounds exponential in $d$ (Dinur–Friedgut–Kindler–O'Donnell; Defant–Mastyło–Pérez); special classes, such as Montanaro's block-multilinear forms with equal-magnitude coefficients and completely bounded block-multilinear forms (Bansal–Sinha–de Wolf 2022); quantum algorithms with few rounds of queries (Blanc–Docter–Strassle–Tan) or limited adaptivity (Liu–Mutreja).
- Guo, Li, Liu and Zhang relate presampling (bit-fixing) for auxiliary-input random oracles to the conjecture.

### Where to start

- [Proof of the Aaronson–Ambainis Conjecture: An Exposition](https://arxiv.org/abs/2611.11626), G. Blanc, J. Docter, C. Strassle, L.-Y. Tan, 2026: the proof in four steps, with unoptimized parameters.
- [A proof of the Aaronson–Ambainis conjecture](https://arxiv.org/abs/2611.09773), D. Turturean, 2026: §1.5 (overview), §1.3 (consequences with explicit parameters), §9 (open questions).
- [The Need for Structure in Quantum Speedups](https://arxiv.org/abs/0911.0996), S. Aaronson, A. Ambainis, 2009: §1 and Theorem 22 (the simulation algorithm).
- [*Analysis of Boolean Functions*](https://arxiv.org/abs/2105.10386), R. O'Donnell: influence, variance, degree and decision trees; the conjecture is stated in the notes to Chapter 8.

Prerequisites: Fourier analysis on the Boolean cube, decision trees and certificate complexity, the polynomial method for quantum query complexity, linear programming duality.

### References, with links

1. S. Aaronson and A. Ambainis, "The need for structure in quantum speedups", Theory of Computing 10 (2014), 133–166; arXiv:0911.0996 (Conjecture 6, Theorem 22). <https://doi.org/10.4086/toc.2014.v010a006>, <https://arxiv.org/abs/0911.0996>
2. D. Turturean, "A proof of the Aaronson–Ambainis conjecture" (2026), Theorem 1.1 and Corollary 1.2; paper and Lean formalization: <https://github.com/physical-superintelligence/aaronson-ambainis/blob/main/paper/aaronson_ambainis_paper.pdf>, <https://github.com/physical-superintelligence/aaronson-ambainis>; also arXiv:2611.09773. <https://arxiv.org/abs/2611.09773>
3. S. Guo, Q. Li, Q. Liu and J. Zhang, "Unifying presampling via concentration bounds", in *Theory of Cryptography* (TCC 2021), Lecture Notes in Comput. Sci., Springer, 177–208; Cryptology ePrint Archive 2020/1589. <https://eprint.iacr.org/2020/1589>, <https://doi.org/10.1007/978-3-030-90459-3_7>

### Further references

- G. Blanc, J. Docter, C. Strassle and L.-Y. Tan, "Proof of the Aaronson–Ambainis conjecture: an exposition", arXiv:2611.11626 (2026). <https://arxiv.org/abs/2611.11626>
- T. Huffstutler, D. Miloschewsky and S. Podder, "A short proof of the Aaronson–Ambainis conjecture via the completion framework", arXiv:2611.12795 (2026). <https://arxiv.org/abs/2611.12795>
- S. Lovett and J. Zhang, "Fractional certificates for bounded functions", ITCS 2023, LIPIcs 251, 84:1–84:13. <https://doi.org/10.4230/LIPIcs.ITCS.2023.84>
- A. Agarwal and S. Ben-David, "Oracle separations for the quantum-classical polynomial hierarchy", arXiv:2410.19062 (Theorem 1.7: the row bound). <https://arxiv.org/abs/2410.19062>
- R. O'Donnell, M. Saks, O. Schramm and R. A. Servedio, "Every decision tree has an influential variable", FOCS 2005. <https://arxiv.org/abs/cs/0508071>
- N. Bansal, M. Sinha and R. de Wolf, "Influence in completely bounded block-multilinear forms and classical simulation of quantum algorithms", CCC 2022. <https://arxiv.org/abs/2203.00212>
- N. Keller and O. Klein, "Quantum speedups need structure", arXiv:1911.03748 (2019, withdrawn). <https://arxiv.org/abs/1911.03748>
- R. O'Donnell, *Analysis of Boolean Functions*, Cambridge University Press (2014); arXiv:2105.10386. <https://arxiv.org/abs/2105.10386>

### Lean

#### Official statement

This problem has no official Lean statement. The influence bound can be stated with Mathlib alone (Turturean's repository does so); the simulation consequences would also need a model of quantum query algorithms, which Mathlib lacks.

#### Related Lean formalizations

- [physical-superintelligence/aaronson-ambainis](https://github.com/physical-superintelligence/aaronson-ambainis) (single commit `2a6ceae`, 6 November 2026; Lean 4.33.0, Mathlib v4.33.0): the README states that `AaronsonAmbainis.aaronson_ambainis : PrintedConjecture` (the conjecture with exponent 7), `aaronson_ambainis_explicit`, `aaronson_ambainis_pm` (Theorem 1.1) and `aaronson_ambainis_of_fbsDegreeBound` are proved with no `sorry` and no added axiom (the last is conditional: its type is `FbsDegreeBound → ExplicitBoundImproved`, and the README says the hypothesis `FbsDegreeBound` is not formalized in the repository), and were re-checked with lean4lean and comparator. The statements are in `AaronsonAmbainis/Conjecture.lean`, which imports only Mathlib. The README says the formalization was produced by AI models. The project was not found in the Palomar registry (searched 11 November 2026).

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has multivariate polynomials with `MvPolynomial.totalDegree` and `MvPolynomial.eval`, Chebyshev polynomials (`Polynomial.Chebyshev.T`) and Fourier analysis on finite abelian groups (`AddChar`, `ZMod.dft`). It has no Fourier–Walsh expansion on $\{-1,1\}^n$ with influences, no fractional certificates or decision-tree complexity, and no model of quantum query algorithms.
