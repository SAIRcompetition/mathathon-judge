# 130 · Uniqueness of Finite Quandle Colorings

## From the proposer

- **Area:** Knot theory, Quandle theory
- **Tracks:** Geometry

### Description

Quandles provide a novel approach to analyzing structures in knot theory. We want to understand how well quandles describe knots, and in particular tackle the Alexander Polynomial Conjecture, which states that if two knots have different Alexander polynomials, then they can be distinguished by colorings via a suitable finite linear Alexander quandle. Previous work has shown this is true for triangularizable matrices, and we want to examine whether similar results hold in general.

### Desired outcome

We want to provide a novel exposition of the Alexander Polynomial Conjecture and explain knot theory through the perspective of quandles. Doing this will require proving several results about the distinguishing power of quandle colorings, which we intend to do in our work. Specifically, we need to show that quandle colorings are sufficient to distinguish certain types of knots, so it makes sense to study these knots from this perspective. This is analogous to how studying the root systems of semisimple Lie algebras can be more tractable than studying the algebras themselves. Our goal will be for participants to have a new understanding of the foundations of knot theory, based on Alexander polynomials and related notions in quandle theory.

### References

https://kmj.knu.ac.kr/journal/view.html?volume=56&number=3&spage=1017
https://arxiv.org/pdf/2209.05670
https://jfuchs.hotell.kau.se/kurs/sgat/prst/s16_knqu.pdf

## AI-generated notes

<!-- status: Partly solved -->

- **Status:** Conjectured by L. Camacho, F. M. Dionísio and R. Picken (arXiv 2013; Kyungpook Math. J. 2016), who proved it for knots whose colouring matrices can be triangularized; we found no published proof of the general case.
- **Task:** An exposition of knot theory through quandle colourings, centred on whether finite linear Alexander quandles separate knots with different Alexander polynomials.
- **Key reference:** [L. Camacho, F. M. Dionísio, R. Picken, "Colourings and the Alexander polynomial", Kyungpook Math. J. 56 (2016), 1017–1045](https://doi.org/10.5666/KMJ.2016.56.3.1017) (arXiv:1303.5019)
- **Lean:** No official statement.

### Notes

- "Alexander Polynomial Conjecture" is the sheet's name for the conjecture at the end of Camacho–Dionísio–Picken (CDP); it is not a standard name.
- The second reference (J. Leventhal, arXiv:2209.05670) is about Alexander quandles and detecting causality in $(2+1)$-dimensional spacetimes: two particular links get the same colouring counts. It does not discuss the conjecture. The third is a student essay (E. Karlsson, Karlstad University) introducing knot diagrams, Fox colourings, quandles and Alexander quandles.

### The result

For coprime integers $n\ge2$ and $m$, the linear Alexander quandle $\Lambda_{n,m}$ is $\mathbb Z_n$ with $a*b=ma+(1-m)b$. A colouring of an oriented knot diagram assigns elements of $\Lambda_{n,m}$ to arcs so that at each crossing with over-arc $y$ the under-arc $x$ on one fixed side of $y$ and the under-arc $x'$ on the other side satisfy $x'=x*y$. The number $\mathrm{Col}_{n,m}(K)$ of colourings is a knot invariant and is the number of solutions of $A(m)X\equiv0\pmod n$. Up to units in each row, the colouring matrix $A(t)$ is the Alexander matrix of the diagram, so its first minors are $\pm t^j\Delta_K(t)$.

**Conjecture (CDP, §11).** If $\Delta_K\ne\pm t^j\Delta_{K'}$, then $\mathrm{Col}_{n,m}(K)\ne\mathrm{Col}_{n,m}(K')$ for some coprime $n,m$.

**Known (CDP, Propositions 23–25).** Suppose $A(m)$ can be brought to triangular form by row operations (multiplying by units, adding, swapping) and column swaps, with diagonal entries $a_{ii}(m)$. If $1<m<n$ are coprime and $n$ is a multiple of every nonzero $a_{ii}(m)$, $i<N$, then $\mathrm{Col}_{n,m}(K)=n\,|\Delta_K(m)|$. Choosing $m$ with $|\Delta_K(m)|\ne|\Delta_{K'}(m)|$ then separates any two such knots. All prime knots with at most 10 crossings except 12 have triangularizable matrices; for 5 of these 12, CDP prove that no triangular form exists.

For equal Alexander polynomials both answers occur: $6_1$ and $9_{46}$ are separated by $(n,m)=(3,2)$, while $8_{20}$ and $10_{140}$ have the same counts for every linear Alexander quandle (CDP, Propositions 16–17).

### How the known proof works

- Rows of $A(m)$ sum to zero, so constant colourings are solutions; CDP allow only operations that keep this property (unit multiples of rows, row additions, column swaps) and reduce $A(m)$ to triangular form, with a last row of zeros.
- Counting solutions from the bottom row up gives at most $n\prod_{i<N}\gcd(a_{ii}(m),n)$ colourings, with equality when $n$ is a multiple of every $a_{ii}(m)$; since $\prod_{i<N}a_{ii}(m)=\pm m^j\Delta_K(m)$, the count is then $n|\Delta_K(m)|$ (Proposition 24).
- Take $m$ (for example a large prime) coprime to the constant terms of all diagonal entries and avoiding the finitely many roots of $\Delta_K\pm\Delta_{K'}$ and of the $a_{ii}$, and take $n$ a multiple of $|\Delta_K(m)\Delta_{K'}(m)|$ prime to $m$ (Proposition 25).

### Background

- Joyce (1982) and Matveev (1982) showed that the knot quandle is a complete invariant up to orientation-reversed mirror image; colourings by a quandle $X$ are quandle homomorphisms from the knot quandle to $X$. Fox $n$-colourings are colourings by the dihedral quandle, the case $m=-1$.
- As CDP put it, by a theorem of Inoue (2001) the whole sequence of Alexander polynomials (equivalently the Alexander module) determines the number of colourings by every Alexander quandle; the conjecture asks for the converse statement for the first Alexander polynomial alone.
- Related work: Kauffman and Lopes (2018) treat $(n,m)$-colourings by linear algebra, using Smith normal forms of colouring matrices, and study the minimal number of colours; Hayashi, Hayashi and Oshiro (2012) study linear $n$-colourings; Elhamdadi and Nelson's book introduces the subject.

### Where to start

- [Colourings and the Alexander polynomial](https://arxiv.org/abs/1303.5019), L. Camacho, F. M. Dionísio, R. Picken, 2013: §2 (colouring matrices), §9 (Propositions 23–25), §11 (the conjecture).
- [Quandles: An Introduction to the Algebra of Knots](https://doi.org/10.1090/stml/074), M. Elhamdadi and S. Nelson, 2015: quandles, knot quandles, Alexander quandles and colourings.
- [Colorings beyond Fox: the other linear Alexander quandles](https://arxiv.org/abs/1708.01932), L. H. Kauffman and P. Lopes, 2017: $(n,m)$-colourings through linear algebra and Smith normal forms.

Prerequisites: knot diagrams and Reidemeister moves, the Alexander polynomial via Fox calculus or Seifert matrices, modules over $\mathbb Z[t^{\pm1}]$ and the Smith normal form over $\mathbb Z$.

### References, with links

- L. Camacho, F. M. Dionísio, R. Picken, "Colourings and the Alexander Polynomial", Kyungpook Math. J. 56 (2016), no. 3, 1017–1045. <https://kmj.knu.ac.kr/journal/view.html?volume=56&number=3&spage=1017> <https://doi.org/10.5666/KMJ.2016.56.3.1017>
- J. Leventhal, "Alexander Quandles and Detecting Causality", arXiv:2209.05670 (2022). <https://arxiv.org/abs/2209.05670>
- E. Karlsson, "Knots and Quandles", student essay, Karlstad University (undated; course pages of J. Fuchs). <https://jfuchs.hotell.kau.se/kurs/sgat/prst/s16_knqu.pdf>

### Further references

- D. Joyce, "A classifying invariant of knots, the knot quandle", J. Pure Appl. Algebra 23 (1982), 37–65. <https://doi.org/10.1016/0022-4049(82)90077-9>
- S. V. Matveev, "Distributive groupoids in knot theory", Math. USSR-Sb. 47 (1984), 73–83. <https://doi.org/10.1070/SM1984v047n01ABEH002630>
- A. Inoue, "Quandle homomorphisms of knot quandles to Alexander quandles", J. Knot Theory Ramifications 10 (2001), 813–821. <https://doi.org/10.1142/S0218216501001177>
- L. H. Kauffman and P. Lopes, "Colorings beyond Fox: the other linear Alexander quandles", Linear Algebra Appl. 548 (2018), 221–258. <https://doi.org/10.1016/j.laa.2017.11.025>
- C. Hayashi, M. Hayashi, K. Oshiro, "On linear $n$-colorings for knots", J. Knot Theory Ramifications 21 (2012), 1250123. <https://doi.org/10.1142/S0218216512501234>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs knots (or knot diagrams up to Reidemeister moves), colourings and the Alexander polynomial, none of which Mathlib has.

#### Mathlib

Mathlib has racks and quandles (`Shelf`, `Rack`, `Quandle`, `ShelfHom`), the conjugation quandle `Quandle.Conj`, the dihedral quandle `Quandle.Dihedral` on `ZMod n` (the target of Fox colourings), the enveloping group `Rack.EnvelGroup`, Laurent polynomials (`LaurentPolynomial`), determinants, and Smith normal form for submodules over a PID (`Submodule.smithNormalForm`). It has no knots, knot diagrams, Reidemeister moves, knot quandles or Alexander polynomials, and Alexander quandles are listed as a TODO in `Mathlib/Algebra/Quandle.lean`.
