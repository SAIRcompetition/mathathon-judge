# 125 · Enumeration of totally symmetric plane partitions

## From the proposer

- **Area:** Combinatorics
- **Tracks:** Combinatorics

### Description

Stembridge proved the explicit formula for the number of totally symmetric plane partitions using determinants. 

### Desired outcome

It would be interesting to find a more combinatorial proof. 

### References

https://www.sciencedirect.com/science/article/pii/S0001870885710237

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved by J. R. Stembridge (Adv. Math., 1995) with Pfaffians and determinants; the $q$-analogue conjectured by G. Andrews and D. Robbins was proved by C. Koutschan, M. Kauers and D. Zeilberger (PNAS, 2011) by a computer-assisted determinant evaluation; a bijective proof was still described as a wide open problem by C. Krattenthaler (2016).
- **Task:** A more combinatorial, ideally bijective, proof of the formula for the number of totally symmetric plane partitions.
- **Key reference:** [J. R. Stembridge, “The enumeration of totally symmetric plane partitions”, Adv. Math. 111 (1995), 227–243](https://doi.org/10.1006/aima.1995.1023)
- **Lean:** Official statement.

### Notes

- The sheet gives only a ScienceDirect link (PII S0001870885710237); it is Stembridge's paper above, doi:10.1006/aima.1995.1023.

### The result

A plane partition in the $n\times n\times n$ box is a set $\pi\subseteq\lbrace1,\dots,n\rbrace^3$ of unit cubes that is an order ideal: if $(i,j,k)\in\pi$ and $(i',j',k')\le(i,j,k)$ coordinatewise, then $(i',j',k')\in\pi$. It is totally symmetric if it is invariant under all permutations of the coordinates. Stembridge proved that the number of totally symmetric plane partitions in the box is

$$T(n)=\prod_{1\le i\le j\le k\le n}\frac{i+j+k-1}{i+j+k-2},$$

so $T(1),\dots,T(4)=2,5,16,66$. The $q$-version (Koutschan–Kauers–Zeilberger) weights $\pi$ by $q^{|\pi/S_3|}$, the number of $S_3$-orbits of its cubes:

$$\sum_{\pi}q^{|\pi/S_3|}=\prod_{1\le i\le j\le k\le n}\frac{1-q^{i+j+k-1}}{1-q^{i+j+k-2}}.$$

### How the known proof works

- A totally symmetric plane partition is determined by its cubes with $i\le j\le k$. Stembridge encodes these as families of non-intersecting lattice paths.
- These path families are counted by a Pfaffian (compare Stembridge's Pfaffian version of the Lindström–Gessel–Viennot method, Adv. Math. 1990).
- The Pfaffian is reduced to a determinant, which is evaluated by relating it to the determinant that counts cyclically symmetric plane partitions (Andrews; Mills–Robbins–Rumsey 1982).
- Krattenthaler notes that this conceptual approach does not extend to the $q$-case. There Okada (1989) found a determinant for the generating function, and Koutschan, Kauers and Zeilberger evaluated it by a heavily computer-assisted argument.

### Background

- Stanley (1986) organized plane partitions into ten symmetry classes; Macdonald had conjectured product formulas for the invariant ones under proper subgroups of $S_3$. In 2016 MacMahon's formula for all plane partitions in a box was the only case with a bijective proof (Krattenthaler, §8).
- Representation theory explains the product formulas for several classes, but not for totally symmetric plane partitions, which Krattenthaler calls the “worst” case.
- Totally symmetric self-complementary plane partitions are equinumerous with alternating sign matrices; finding a bijection there is also open. Fischer and Schreier-Aigner (2024) relate alternating sign matrices to totally symmetric plane partitions through symmetric functions defined as sums over them, using a determinant formula with a bijective proof.

### Where to start

- [Plane partitions in the work of Richard Stanley and his school](https://arxiv.org/abs/1503.05934), C. Krattenthaler, 2015: §4 (non-intersecting paths), §6 Class 4 (history of this formula), §8 (combinatorial proofs as an open problem).
- [The enumeration of totally symmetric plane partitions](https://doi.org/10.1006/aima.1995.1023), J. R. Stembridge, 1995: the proof.
- [Proof of George Andrews's and David Robbins's q-TSPP conjecture](https://arxiv.org/abs/1002.4384), C. Koutschan, M. Kauers, D. Zeilberger, 2010: the $q$-statement and Okada's determinant.
- [Alternating sign matrices and totally symmetric plane partitions](https://arxiv.org/abs/2201.13142), I. Fischer, F. Schreier-Aigner, 2022: a recent combinatorial connection with a bijective ingredient.

Prerequisites: plane partitions and lozenge tilings, the Lindström–Gessel–Viennot lemma, Pfaffians, determinant evaluation, symmetric functions.

### References, with links

- J. R. Stembridge, “The enumeration of totally symmetric plane partitions”, Adv. Math. 111 (1995), 227–243. <https://doi.org/10.1006/aima.1995.1023>

### Further references

- R. P. Stanley, “Symmetries of plane partitions”, J. Combin. Theory Ser. A 43 (1986), 103–113. <https://doi.org/10.1016/0097-3165(86)90028-2>
- J. R. Stembridge, “Nonintersecting paths, pfaffians, and plane partitions”, Adv. Math. 83 (1990), 96–131. <https://doi.org/10.1016/0001-8708(90)90070-4>
- W. H. Mills, D. P. Robbins and H. Rumsey, “Proof of the Macdonald conjecture”, Invent. Math. 66 (1982), 73–87. <https://doi.org/10.1007/BF01404757>
- S. Okada, “On the generating functions for certain classes of plane partitions”, J. Combin. Theory Ser. A 51 (1989), 1–23. <https://doi.org/10.1016/0097-3165(89)90073-3>
- C. Koutschan, M. Kauers and D. Zeilberger, “Proof of George Andrews's and David Robbins's q-TSPP conjecture”, Proc. Natl. Acad. Sci. USA 108 (2011), 2196–2199. <https://doi.org/10.1073/pnas.1019186108>
- I. Fischer and F. Schreier-Aigner, “Alternating sign matrices and totally symmetric plane partitions”, Algebr. Comb. 7 (2024), 1319–1345. <https://doi.org/10.5802/alco.374>

### Lean

#### Official statement

`Mathathon.P125.stembridge_tspp_count` in [`lean/MathathonProblems/P125_TSPPEnumeration.lean`](lean/MathathonProblems/P125_TSPPEnumeration.lean).

```lean
theorem stembridge_tspp_count (n : ℕ) :
    ((tspps n).card : ℚ) =
      ∏ c ∈ sortedTriples n, ((coordinateSum c + 2 : ℚ) / (coordinateSum c + 1))
```

`tspps n` is the set of totally symmetric plane partitions in the $n\times n\times n$ box, as order ideals of $\lbrace0,\dots,n-1\rbrace^3$ invariant under permutations of the coordinates; cells are numbered from 0, so the factor $(i+j+k-1)/(i+j+k-2)$ of Stembridge's formula becomes $(s+2)/(s+1)$, where $s$ is the coordinate sum of a cell of `sortedTriples n` ($i\le j\le k$). The problem asks for a more combinatorial proof of this count.

Source: <https://github.com/leanprover/lean-eval/blob/85a88c37f80170d9f08651dc63ce6b81a8a48cb9/LeanEval/Combinatorics/QTSPP.lean> (Apache-2.0). Adapted: the definitions used here are copied unchanged from lean-eval's q-TSPP statement, and the theorem, Stembridge's count (the case $q=1$ after cancelling the factors $1-q$), is written by AI, since lean-eval states only the $q$-analogue.

#### Related Lean formalizations

- `QTSPP.q_tspp` in [lean-eval](https://github.com/leanprover/lean-eval/blob/85a88c37f80170d9f08651dc63ce6b81a8a48cb9/LeanEval/Combinatorics/QTSPP.lean): the $q$-TSPP theorem with denominators cleared; the count follows by cancelling the factors $1-q$ and setting $q=1$ (statement only).

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has integer partitions (`Nat.Partition`), Young diagrams (`YoungDiagram`), semistandard tableaux (`SemistandardYoungTableau`), lower sets (`IsLowerSet`) and Vandermonde determinants (`Matrix.det_vandermonde`). It has no plane partitions, no Lindström–Gessel–Viennot lemma and no Pfaffians.
