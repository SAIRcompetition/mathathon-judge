# 123 · Schur Number Five

## From the proposer

- **Area:** Combinatorics
- **Tracks:** Combinatorics

### Description

The Schur number S(n) is the largest integer N such that {1,...,N} can be colored with n colors without a monochromatic solution to a+b=c. In 1994, Geoffrey Exoo constructed a coloring to show that S(5) >= 160. In 2017, Marijn Heule proved S(5)=160 by encoding coloring constraints as Boolean formulas, using symmetry to reduce redundant cases, and applying SAT solvers to millions of subproblems. The resulting approximately two-petabyte proof certificate was validated using a formally verified checker.

### Desired outcome

Possible outcomes include one or more of the following:
- Develop a new proof of some special family of cases, or lemmas that replace families of cases in the existing computational proof.
- Construct polynomial identities to show the impossibility of particular colorings, and check whether these provide more concise or understandable proofs.
- Formalize the correspondence between colorings and their Boolean or polynomial encodings, symmetry reductions, or new mathematical arguments.
- Create an interactive explanation/visualization of the proof.

### References

1. Marijn J. H. Heule. Schur Number Five. Proceedings of the AAAI Conference on Artificial Intelligence 32(1), 6598–6606, 2018
2. Exoo, G. (1994). A Lower Bound for Schur Numbers and Multicolor Ramsey Numbers. The Electronic Journal of Combinatorics, 1(1), #R8. https://doi.org/10.37236/1188
3. De Loera, J., & Wesley, W. (2026). Ramsey Numbers Through the Lenses of Polynomial Ideals and Nullstellensätze. The Electronic Journal of Combinatorics, 33(1), #P1.1. https://doi.org/10.37236/12541

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved by M. J. H. Heule (arXiv 2017; AAAI 2018): $S(5)=160$, by massively parallel SAT solving with a two-petabyte proof certified by a checker formally verified in ACL2; the lower bound is G. Exoo's colouring (1994).
- **Task:** Make parts of the computer proof of $S(5)=160$ understandable or formally checked: lemmas replacing families of cases, Nullstellensatz certificates, verified encodings and symmetry reductions, or an interactive explanation.
- **Key reference:** [M. J. H. Heule, “Schur Number Five”, Proc. AAAI Conf. Artif. Intell. 32 (2018), 6598–6606](https://arxiv.org/abs/1711.08076)
- **Lean:** Official statement.

### Notes

- The first reference has no link in the sheet; it is arXiv:1711.08076, doi:10.1609/aaai.v32i1.12209.
- Conventions: Heule allows $a=b$ in $a+b=c$ (so $1+1=2$ counts). Requiring $a\lt b$ gives the weak Schur numbers, and defining $S(k)$ as the least $n$ that forces a monochromatic solution shifts all values by one (Heule, footnote 1).
- Heule states that only the encoding into propositional logic, “a dozen lines of straightforward C code”, was not checked with a theorem prover. The proposer's third outcome targets exactly this gap.

### The result

$S(k)$ is the largest $n$ such that $\lbrace1,\dots,n\rbrace$ has a $k$-colouring with no monochromatic solution of $a+b=c$, $1\le a,b,c\le n$. Schur showed that $S(k)$ is finite, with $S(k)\le R_k(3)-2$ for the multicolour Ramsey number of triangles. Known values: $S(1)=1$, $S(2)=4$, $S(3)=13$, $S(4)=44$ (Golomb–Baumert 1965), and

$$S(5)=160\qquad(\text{Heule}).$$

Exoo's colouring gives $S(5)\ge160$; Heule proves that the propositional formula $F^5_{161}$ expressing $S(5)\ge161$ is unsatisfiable. He also enumerates all $2\thinspace447\thinspace113\thinspace088$ valid 5-colourings of $\lbrace1,\dots,160\rbrace$, of which $315\thinspace853\thinspace824$ are modular and $334\thinspace752$ palindromic, so $S(5)$ equals its modular and palindromic variants.

### How the known proof works

- Encoding: variables $v^i_j$ (meaning that $j$ has colour $i$), clauses saying that each number has a colour, and for every $a+b=c$ and colour $i$ a clause excluding $a,b,c$ all of colour $i$.
- Symmetry breaking: colour permutations are removed by fixing the colours of $1$ and $2$, rules for $3,4,5$ and the first number avoiding colours 1–3; a 35 MB DRAT “re-encoding proof” shows that this preserves satisfiability.
- Cube-and-conquer: a look-ahead heuristic designed for Schur formulas, with a cheap hardness predictor, splits the problem into millions of cubes (partial assignments), each solved by a CDCL solver; solving took over 14 CPU years.
- Certificate: an implication proof (for each cube $\alpha$, the formula with $\alpha$ is unsatisfiable; 0.88 PB of compressed DRAT, 2.18 PB as compressed LRAT) and a tautology proof that the cubes cover the search space. An LRAT checker verified in ACL2 checked it; producing and checking LRAT took about 20.5 and 15.6 CPU years.

### Background

- Lower bounds: $S(6)\ge536$ and $S(7)\ge1680$ (Fredricksen–Sweet 2000, from symmetric sum-free partitions). In 2026, Chen, Zhu and Long reported $S(6)\ge537$ (arXiv preprint) and A. McKenna $S(6)\ge538$, with the colouring checked in Lean (Palomar registry). Heule expects $S(6)$ to be extremely hard to determine.
- Polynomial method: De Loera and Wesley encode Schur, van der Waerden, Rado and graph Ramsey numbers as polynomial systems whose infeasibility has Hilbert or Alon (Combinatorial) Nullstellensatz certificates; for graph Ramsey numbers the certificate degrees equal restricted online Ramsey numbers.
- Similar SAT-based results have been checked in Lean down to the encoding: Subercaseaux, Nawrocki, Gallicchio, Codel, Carneiro and Heule verified the encoding and symmetry breaking for the empty hexagon number $h(6)=30$.

### Where to start

- [Schur Number Five](https://arxiv.org/abs/1711.08076), M. J. H. Heule, 2017: the sections on encoding, symmetry breaking and correctness describe exactly what was checked.
- [Ramsey numbers through the lenses of polynomial ideals and Nullstellensätze](https://doi.org/10.37236/12541), J. A. De Loera, W. J. Wesley, 2026: the polynomial encodings and certificates for Schur-type numbers.
- [Formal verification of the empty hexagon number](https://arxiv.org/abs/2403.17370), B. Subercaseaux et al., 2024: a worked example of proving in Lean that a CNF encoding and its symmetry breaking are correct.

Prerequisites: propositional logic and CNF encodings, DRAT/LRAT proof formats, symmetry breaking, Gröbner bases and the Nullstellensatz, basic Ramsey theory.

### References, with links

- M. J. H. Heule, “Schur Number Five”, Proceedings of the AAAI Conference on Artificial Intelligence 32(1) (2018), 6598–6606, doi:10.1609/aaai.v32i1.12209. <https://arxiv.org/abs/1711.08076>
- G. Exoo, “A lower bound for Schur numbers and multicolor Ramsey numbers”, Electron. J. Combin. 1 (1994), #R8. <https://doi.org/10.37236/1188>
- J. A. De Loera and W. J. Wesley, “Ramsey numbers through the lenses of polynomial ideals and Nullstellensätze”, Electron. J. Combin. 33(1) (2026), #P1.1. <https://doi.org/10.37236/12541>

### Further references

- S. W. Golomb and L. D. Baumert, “Backtrack programming”, J. ACM 12 (1965), 516–524. <https://doi.org/10.1145/321296.321300>
- H. Fredricksen and M. M. Sweet, “Symmetric sum-free partitions and lower bounds for Schur numbers”, Electron. J. Combin. 7 (2000). <https://doi.org/10.37236/1510>
- M. J. H. Heule, W. A. Hunt Jr., M. Kaufmann and N. D. Wetzler, “Efficient, verified checking of propositional proofs”, Interactive Theorem Proving (ITP 2017), Lecture Notes in Comput. Sci., Springer, 269–284. <https://doi.org/10.1007/978-3-319-66107-0_18>
- B. Subercaseaux, W. Nawrocki, J. Gallicchio, C. Codel, M. Carneiro and M. J. H. Heule, “Formal verification of the empty hexagon number”, ITP 2024. <https://arxiv.org/abs/2403.17370>
- Z. Chen, L. Zhu and F. Long, “A new lower bound for the sixth Schur number: $S(6)\ge537$”, arXiv:2610.31362 (2026). <https://arxiv.org/abs/2610.31362>

### Lean

#### Official statement

`Mathathon.P123.schur_number_five` in [`lean/MathathonProblems/P123_SchurNumberFive.lean`](lean/MathathonProblems/P123_SchurNumberFive.lean).

```lean
theorem schur_number_five : IsGreatest {N : ℕ | HasSchurColouring 5 N} 160
```

`HasSchurColouring 5 N` says that $\lbrace1,\dots,N\rbrace$ has a 5-colouring with no monochromatic solution of $a+b=c$, with $a=b$ allowed as in Heule's paper; the statement contains both Exoo's lower bound and Heule's upper bound. The problem asks for understandable or formally checked parts of the computer proof of this theorem.

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Related Lean formalizations

- [A Schur 6-colouring of [1, 538]](https://palomar-registry.org/entry?id=PALOMAR-2026-11-04-000007&version=1), Palomar registry (Lean-checked, trust level high): A. McKenna, a check with Lean core only that $\lbrace1,\dots,538\rbrace$ splits into six sum-free sets, so $S(6)\ge538$.
- [EmptyHexagonLean](https://github.com/bsubercaseaux/EmptyHexagonLean), B. Subercaseaux et al.: a Lean verification that the CNF formula for the empty hexagon number correctly encodes the geometric statement; a model for verifying an encoding like Heule's.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has Hindman's theorem (`Hindman.FS_partition_regular`, which implies Schur's theorem), the Hales–Jewett theorem and its van der Waerden-type corollary (`Combinatorics.exists_mono_homothetic_copy`), Hilbert's Nullstellensatz (`MvPolynomial.vanishingIdeal_zeroLocus_eq_radical`), Alon's Combinatorial Nullstellensatz (`MvPolynomial.combinatorial_nullstellensatz_exists_linearCombination`) and division by a monomial order (`MonomialOrder.div`). It has no Schur numbers, sum-free partitions, CNF encodings or DRAT/LRAT proofs. Lean's standard library (not Mathlib) contains a verified LRAT checker, `Std.Tactic.BVDecide.LRAT.check`, with soundness theorem `Std.Tactic.BVDecide.LRAT.check_sound`; it is used by `bv_decide`.
