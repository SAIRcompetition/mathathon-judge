# 127 · Rogers Ramanujan Identity

## From the proposer

- **Area:** Combinatorics
- **Tracks:** Combinatorics

### Description

The Rogers Ramanujan Identity states that the number of partitions of an integer into parts that are size 1 or 4 modulo 5 is equal to the number of partitions of the integer with the property that the difference between parts is at least 2. This was initially proven using generating functions. In 1981, Garsia and Milne gave a bijective proof, using their so-called Garsia Milne involution principle. However, this bijection is complicated and unnatural.

### Desired outcome

Find a more natural bijection for the Rogers Ramanujan Identity. 

### References

https://www.pnas.org/doi/10.1073/pnas.78.4.2026
https://www.sciencedirect.com/science/article/pii/0097316581900625#article

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved: L. J. Rogers (1894), rediscovered by Ramanujan and by Schur (1917); the first bijective proof is due to Garsia and Milne (1981), and no direct bijection is known (Pak's survey, 2006).
- **Task:** A more natural bijection between partitions into parts $\equiv\pm1\pmod 5$ and partitions whose parts differ by at least 2.
- **Key reference:** [A. M. Garsia and S. C. Milne, "A Rogers–Ramanujan bijection", J. Combin. Theory Ser. A 31 (1981), 289–339](https://doi.org/10.1016/0097-3165(81)90062-5)
- **Lean:** No official statement.

### Notes

- The sheet gives two bare links; they are the two Garsia–Milne papers (the PNAS announcement and the full JCTA paper). The PNAS paper is free on PubMed Central.
- "Natural" has no agreed definition, and the main known constraint depends on the definition chosen. Pak's ICM 2018 survey states (Theorem 3.1) that the identity has no *geometric* bijection, i.e. none that is a composition of piecewise $GL(2,\mathbb Z)$ maps of Ferrers diagrams; it sketches a limit-shape argument and cites an unpublished 2004 preprint, which in turn defers the proof to a paper "in preparation". We found no published proof.
- Bressoud and Zeilberger (1982) thought it "unlikely that a non-iterative bijection" would be found, "since these sets are so different".

### The result

The Rogers–Ramanujan identities, with $(q;q)_k=(1-q)\cdots(1-q^k)$:
$$\sum_{k\ge0}\frac{q^{k^2}}{(q;q)_k}=\prod_{i\ge0}\frac{1}{(1-q^{5i+1})(1-q^{5i+4})},\qquad \sum_{k\ge0}\frac{q^{k^2+k}}{(q;q)_k}=\prod_{i\ge0}\frac{1}{(1-q^{5i+2})(1-q^{5i+3})}.$$
Subtracting $2k-1,2k-3,\dots,1$ from the parts shows that $q^{k^2}/(q;q)_k$ counts partitions into $k$ parts that differ pairwise by at least 2. So for every $n$: the number of partitions of $n$ into parts $\equiv1,4\pmod5$ equals the number of partitions of $n$ into parts differing by at least 2; for the second identity, parts $\equiv2,3\pmod5$ against parts differing by at least 2 with all parts at least 2. These partition forms are due to MacMahon and Schur.

Known bijections are iterative: Garsia–Milne (1981), Bressoud–Zeilberger (1982), and for the Andrews–Gordon generalizations Bressoud–Zeilberger (1989). Pak conjectures that the Garsia–Milne map needs $\exp(n^{\Omega(1)})$ iterations in the worst case (ICM 2018, §3.2).

### How the known proof works

- Multiply both sides by $(q;q)_\infty$ and expand the product side with Jacobi's triple product: the first identity becomes $(q;q)_\infty\sum_k q^{k^2}/(q;q)_k=\sum_{m\in\mathbb Z}(-1)^mq^{m(5m-1)/2}$.
- Schur's involution: on pairs (partition into distinct parts, partition with gaps $\ge2$), signed by the number of distinct parts, a Franklin-type move cancels all pairs except fixed points counted by the right side (Pak's survey, §7.2).
- Involution principle: given sign-reversing involutions on two signed sets and a sign-preserving bijection between them, alternately applying the bijection and the involutions from a fixed point of one involution ends at a fixed point of the other, which gives a bijection between the fixed-point sets. Garsia and Milne combine Schur's involution, Sylvester's bijection and Vahlen's involution this way (Pak's survey, Exercise 8.4.4).
- Bressoud–Zeilberger keep the scheme, with one involution equivalent to the triple product identity, but use a much simpler second involution; the paper is three pages. Their 1989 paper explains that this bijection is a direct combinatorial version of Bressoud's "easy" analytic proof (1983) and extends it to the Andrews–Gordon identities (modulus $2k+1$).
- Boulet–Pak (2006) give a different combinatorial proof, through two symmetries of a generalized Dyson rank proved by direct bijections. Pak notes that the resulting iterative bijection needs only $O(n)$ iterations, but it is not known to respect any natural statistic.

### Background

- Analytic proofs are numerous: Rogers; Rogers–Ramanujan (1919); Bressoud's "easy proof" (1983); Andrews–Baxter's "motivated proof" (1989). Lepowsky and Wilson (1982) gave a Lie-theoretic proof through vertex operators.
- Pak's survey: "there are numerous analytic proofs known, as well as proofs by means of Lie Theory, but not a single direct bijective proof." It also asks for a formal framework in which the absence of a natural bijection could be proved.
- Ways to make "natural" precise: geometric bijections and their limits on limit shapes (asymptotic stability, Pak; limit shapes, DeSalvo–Pak 2019); complexity. Both sides can be ranked in polynomial time, which yields a bijection nobody regards as natural (Pak, ICM 2018, §3.4).
- The Andrews–Askey problem (1976) asked for a bijection between two partition families coming from a related identity of Rogers; Bressoud solved it in 1976, and Borodinova (arXiv 2026) generalizes his bijection.
- Ekhad and Zeilberger (SIGMA 2025) experiment with the involution principle and its complexity.

### Where to start

- [Partition bijections, a survey](https://www.math.ucla.edu/~pak/papers/psurvey.pdf), I. Pak, 2006: §2 (Durfee squares, Sylvester), §7 (Schur's involution), §8 (involution principle) and the historical notes.
- [A short Rogers–Ramanujan bijection](https://sites.math.rutgers.edu/~zeilberg/mamarimY/Zeilberger_y1982_p313.pdf), D. M. Bressoud and D. Zeilberger, 1982: the shortest involution-principle bijection.
- [A combinatorial proof of the Rogers–Ramanujan and Schur identities](https://arxiv.org/abs/math/0411072), C. Boulet and I. Pak, 2004: a different combinatorial mechanism.
- [Complexity problems in enumerative combinatorics](https://arxiv.org/abs/1803.06636), I. Pak, 2018: §§3.2–3.5 on what "natural" could mean.

Prerequisites: partitions and Ferrers diagrams, $q$-series ($q$-Pochhammer symbols, Jacobi's triple product), sign-reversing involutions.

### References, with links

- A. M. Garsia and S. C. Milne, "Method for constructing bijections for classical partition identities", Proc. Natl. Acad. Sci. USA 78 (1981), 2026–2028. <https://doi.org/10.1073/pnas.78.4.2026> (free copy: <https://pmc.ncbi.nlm.nih.gov/articles/PMC319275/>)
- A. M. Garsia and S. C. Milne, "A Rogers–Ramanujan bijection", J. Combin. Theory Ser. A 31 (1981), 289–339. <https://doi.org/10.1016/0097-3165(81)90062-5>

### Further references

- D. M. Bressoud and D. Zeilberger, "A short Rogers–Ramanujan bijection", Discrete Math. 38 (1982), 313–315. <https://doi.org/10.1016/0012-365X(82)90298-9>
- D. M. Bressoud and D. Zeilberger, "Generalized Rogers–Ramanujan bijections", Adv. Math. 78 (1989), 42–75. <https://doi.org/10.1016/0001-8708(89)90028-5>
- I. Pak, "Partition bijections, a survey", Ramanujan J. 12 (2006), 5–75. <https://doi.org/10.1007/s11139-006-9576-1>
- C. Boulet and I. Pak, "A combinatorial proof of the Rogers–Ramanujan and Schur identities", J. Combin. Theory Ser. A 113 (2006), 1019–1030. <https://doi.org/10.1016/j.jcta.2005.09.007>
- G. E. Andrews and R. J. Baxter, "A motivated proof of the Rogers–Ramanujan identities", Amer. Math. Monthly 96 (1989), 401–409. <https://doi.org/10.1080/00029890.1989.11972207>
- J. Lepowsky and R. L. Wilson, "A Lie theoretic interpretation and proof of the Rogers–Ramanujan identities", Adv. Math. 45 (1982), 21–72. <https://doi.org/10.1016/S0001-8708(82)80012-1>
- S. B. Ekhad and D. Zeilberger, "Experimenting with the Garsia–Milne involution principle", SIGMA 21 (2025), 015. <https://arxiv.org/abs/2501.18061>
- K. Borodinova, "A generalization of Bressoud's beautiful bijection", arXiv:2604.03140 (2026). <https://arxiv.org/abs/2604.03140>
- M. Eberl, "The Rogers–Ramanujan Identities", Archive of Formal Proofs (Isabelle), 2024: the $q$-series form. <https://www.isa-afp.org/entries/Rogers_Ramanujan.html>

### Lean

#### Official statement

This problem has no official Lean statement: a "natural" bijection is not a formal notion. The partition identity itself can be stated with Mathlib's `Nat.Partition`, once "parts differ by at least 2" is defined.

#### Related Lean formalizations

- `first_rogers_ramanujan` and `second_rogers_ramanujan` in [AxiomMath/RogersRamanujan](https://github.com/AxiomMath/RogersRamanujan) (K. Lau, S. Lee, K. Ono, arXiv:2607.01544): the two $q$-series identities for a topologically nilpotent $q$, proved through Bailey's lemma; the authors report that the formalization was produced with AxiomProver. The partition-theoretic form is not stated there.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has partitions (`Nat.Partition`) with the subsets `Nat.Partition.restricted`, `Nat.Partition.countRestricted`, `Nat.Partition.odds` and `Nat.Partition.distincts`, their generating functions (`Nat.Partition.genFun`, `Nat.Partition.hasProd_genFun`), Glaisher's and Euler's theorems (`Nat.Partition.card_restricted_eq_card_countRestricted`, `Nat.Partition.card_odds_eq_card_distincts`, both proved through generating functions), the pentagonal number theorem (`PowerSeries.WithPiTopology.hasProd_one_sub_X_pow`, `PowerSeries.WithPiTopology.hasSum_pentagonalSeries`) and Young diagrams with conjugation (`YoungDiagram.equivPartition`, `Nat.Partition.conjugate`). It has no $q$-Pochhammer symbols, Jacobi triple product, Rogers–Ramanujan identities, partitions with difference conditions or involution principle.
