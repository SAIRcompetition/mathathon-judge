# 36 · Probabilistic and Asymptotic Approaches to the Hook-Length Formula for Young Tableaux

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/036-probabilistic-and-asymptotic-approaches-to-the-hook-length.md`](../problems_original/036-probabilistic-and-asymptotic-approaches-to-the-hook-length.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Probabilistic and Asymptotic Approaches to the Hook-Length Formula for Young Tableaux

### Short description of problem (100 words or less)

The Hook-Length Formula gives an elegant expression for counting standard Young tableaux of a given shape. Despite its simplicity, the formula has deep connections to combinatorics, probability, and representation theory. We propose exploring alternative proofs, particularly through probabilistic methods such as the Hook Walk algorithm. We are also interested in studying the asymptotic behavior of tableau counts for different Young diagram shapes, especially rectangular and staircase shapes. The goal is to better understand the relationship between local hook lengths and global counting properties, potentially developing new proofs, approximations, or interpretations of this classical result.

### Submitted Area

Enumerative Combinatorics, Probability Theory, Asymptotic Analysis, Representation Theory

### Proposed Tracks

Combinatorics, Analysis

### Reference/source material

1. Frame, J. S., Robinson, G. de B., and Thrall, R. M. (1954). "The Hook Graphs of the Symmetric Group." Canadian Journal of Mathematics, 6, 316–324.
https://doi.org/10.4153/CJM-1954-030-1

2. Greene, C., Nijenhuis, A., and Wilf, H. S. (1979). "A Probabilistic Proof of a Formula for the Number of Young Tableaux of a Given Shape." Advances in Mathematics, 31, 104–109.
https://sites.math.rutgers.edu/~zeilberg/EM26/GNW.pdf

3. Novelli, J.-C., Pak, I., and Stoyanovskii, A. V. (1997). "A Direct Bijective Proof of the Hook-Length Formula." Discrete Mathematics and Theoretical Computer Science, 1, 53–67.
https://doi.org/10.46298/dmtcs.239

### Desired outcome

We hope participants can develop a new or more intuitive explanation of the Hook-Length Formula, potentially using probabilistic or combinatorial methods. Possible outcomes include an interactive visualization of the Hook Walk algorithm, computational experiments comparing exact tableau counts with asymptotic approximations, and rigorous error bounds for selected families of Young tableaux. Ideally, the project would connect existing proofs with new mathematical insights or computational techniques, making the theorem easier to understand while exploring possible generalizations.

## AI-generated notes

<!-- status: Proved -->

> Written by AI for the earlier problem list, where this was problem 36 (commit `1f49cd4`), and carried over unchanged.

- **Status:** Proved by J. S. Frame, G. de B. Robinson and R. M. Thrall (1954); many later proofs exist.
- **Task:** A new or more intuitive explanation of the hook length formula.
- **Key reference:** [C. Greene, A. Nijenhuis and H. S. Wilf, A probabilistic proof of a formula for the number of Young tableaux of a given shape, Adv. Math. 31 (1979), 104–109](https://sites.math.rutgers.edu/~zeilberg/EM26/GNW.pdf)
- **Lean:** Official statement; a Lean proof already exists.

### The result

For a partition $\lambda$ of $n$, the number $f^\lambda$ of standard Young tableaux of shape $\lambda$ (fillings of the diagram with $1,\dots,n$ increasing along rows and columns) is
$$f^\lambda=\frac{n!}{\prod_{u\in\lambda}h(u)},$$
where the hook length $h(u)$ counts the cell $u$, the cells to its right in its row and the cells below it in its column. Frame, Robinson and Thrall proved it in Canad. J. Math. 6 (1954), by rearranging terms in a formula for $f^\lambda$ due to Young and Frobenius. The official Lean statement has this form, with $f^\lambda$ written as the Kostka number for the content $(1,\dots,1)$.

### How the known proof works

- The entry $n$ of a standard tableau sits in a corner, so $f^\lambda=\sum_{c}f^{\lambda-c}$ over corners $c$; by induction it suffices to show $\sum_c F(\lambda-c)/F(\lambda)=1$, where $F(\lambda)=n!/\prod h(u)$.
- The hook walk: start at a uniform random cell and jump repeatedly to a uniform other cell of the current hook until a corner is reached.
- Theorem 2: the walk ends at corner $c$ with probability $F(\lambda-c)/F(\lambda)$, so these ratios sum to 1.
- Its proof (Lemma 3, by induction) writes the probability of a walk from a given cell with given sets of rows and columns as a product of factors $1/(h-1)$.
- Repeating the walk and removing the corner reached each time gives a uniform random standard tableau.

### Background

- Before GNW, Hillman and Grassl (1976) and Stanley (1972) gave two bijections that, with an algebraic step, prove the formula. Sagan's survey "The ubiquitous Young tableau" (1990) reviews the proofs and their history.
- Bijective proofs: Franzblau and Zeilberger (1982), Zeilberger (1984, from the hook walk), Krattenthaler (1995, involutive, with a $q$-analogue and the shifted case), and Novelli, Pak and Stoyanovskii (1997), a bijection between all $n!$ fillings and pairs (standard tableau, hook function) built from jeu de taquin.
- For skew shapes, Naruse's formula is a positive sum over excited diagrams of products of hook lengths; Morales, Pak and Panova gave an elementary proof of it.
- For the $k\times k$ square, $n=k^2$, the formula gives $\log f^{(k^k)}=\tfrac12 n\log n+(\tfrac12-2\log 2)n+O(\sqrt n\log n)$; Morales, Pak and Panova compare this with general bounds for linear extensions of posets.

### Where to start

- [A probabilistic proof of a formula for the number of Young tableaux of a given shape](https://sites.math.rutgers.edu/~zeilberg/EM26/GNW.pdf), C. Greene, A. Nijenhuis and H. S. Wilf, 1979: the hook walk proof and the uniform sampler in six pages.
- [A direct bijective proof of the hook-length formula](https://doi.org/10.46298/dmtcs.239), J.-C. Novelli, I. Pak and A. V. Stoyanovskii, 1997: a direct bijection built from jeu de taquin, with worked examples in Section 7.
- [Asymptotics of the number of standard Young tableaux of skew shape](https://arxiv.org/abs/1610.07561), A. Morales, I. Pak and G. Panova, 2016: Section 2.3 compares the exact asymptotics for the square shape with general bounds.

Prerequisites: partitions and Young diagrams, standard Young tableaux, induction, elementary probability; Stirling's formula for the asymptotics.

### Further references

- A. H. Morales, I. Pak and G. Panova, “Asymptotics of the number of standard Young tableaux of skew shape,” European Journal of Combinatorics 70 (2018), 26–49. <https://arxiv.org/abs/1610.07561>
- A. H. Morales, I. Pak and G. Panova, “Hook formulas for skew shapes II. Combinatorial proofs and enumerative applications,” SIAM Journal on Discrete Mathematics 31 (2017), 1953–1989. <https://arxiv.org/abs/1610.04744>

### Lean

#### Official statement

`Mathathon.P36.hookLength_formula` in [`lean/MathathonProblems/P36_HookLengthFormula.lean`](lean/MathathonProblems/P36_HookLengthFormula.lean).

```lean
theorem hookLength_formula (γ : YoungDiagram) {n : ℕ} (h : γ.card = n) :
    (∏ x ∈ γ.cells, YoungDiagram.hookLength γ x) *
    kostkaNumber γ (Multiset.replicate n 1) = Nat.factorial n
```

Source: <https://github.com/NoahW314/KostkaNumbers/blob/135e49269833f4a760717b30777046d9629240df/KostkaNumbers/HookLength/HookLengthFormula.lean>, <https://github.com/NoahW314/KostkaNumbers/blob/135e49269833f4a760717b30777046d9629240df/KostkaNumbers/HookLength/HookLength.lean>, <https://github.com/NoahW314/KostkaNumbers/blob/135e49269833f4a760717b30777046d9629240df/KostkaNumbers/Defs.lean>, <https://github.com/NoahW314/KostkaNumbers/blob/135e49269833f4a760717b30777046d9629240df/KostkaNumbers/Util/FromCounts.lean> (adapted as described in the file header).

A Lean proof of this statement already exists: <https://github.com/NoahW314/KostkaNumbers/blob/135e49269833f4a760717b30777046d9629240df/KostkaNumbers/HookLength/HookLengthFormula.lean>. A Lean-verified claim must not use or copy it.

#### Related Lean formalizations

- [The hook length formula for standard tableaux](https://prove2.me/theorems/4981ef5f-6891-40d5-b93c-8eed1d9a3d0e), Prove2Me: another Lean proof of the formula.
- [TauCeti](https://github.com/TauCetiProject/TauCeti/blob/29bc6871728983707bc42137a8a1cd941b898bd7/TauCeti/Combinatorics/Young/HookLength/Formula.lean): a Lean proof of the hook length formula by a different route (`TauCeti.standardCount_mul_prod_hookLength`).

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has Young diagrams (`YoungDiagram`, with `rowLen`, `colLen`, `cells`, `transpose`) and semistandard tableaux (`SemistandardYoungTableau`). It has no hook length, no type of standard Young tableaux and no hook length formula; the official statement defines `hookLength` and a Kostka number itself.
