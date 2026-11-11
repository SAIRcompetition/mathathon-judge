# 42 · Selmer groups and Euler systems

> Everything on this page except the section **From the proposer** is AI-generated and may contain errors.

## From the proposer

- **Title:** Selmer Groups and Euler Systems
- **Area:** Algebraic number theory
- **Tracks:** Algebra/Number Theory

### Description

The method of Euler systems has been one of the forefront methods to control Selmer groups associated with Galois representations, which are perhaps most famous in the context of the Birch and Swinnerton-Dyer Conjecture. While the idea of “controlling Selmer groups” is quick to state, the construction of Euler systems is notoriously difficult and technical. The aim of this project is to develop interactive exposition of the theory in a particular setting that is rigorous, but aims to provide some intuitive understanding.

### Desired outcome

An interactive environment in which learners can easily work examples and ask questions about Euler systems and Selmer groups, possibly in a specific setting (e.g. the Euler system of cyclotomic units and its interaction with ideal class groups).

### References

- Euler Systems by Karl Rubin, Chapters I-III: <https://swc-math.github.io/notes/files/99RubinES.pdf>
- Kolyvagin’s Work on Modular Elliptic Curves by Benedict Gross: <https://wstein.org/papers/bib/gross-kolyvagins_work_on_modular_elliptic_curves.pdf>

## AI-generated notes

- **Status:** Expository; the Euler system method (Thaine, Kolyvagin, Rubin, Kato) is established theory.
- **Task:** An interactive environment for examples of Euler systems and Selmer groups.
- **Key reference:** [Euler Systems](https://swc-math.github.io/notes/files/99RubinES.pdf), K. Rubin, Annals of Math. Studies 147, Princeton University Press, 2000.
- **Lean:** No official statement.

### Notes

- The second reference's title is "Kolyvagin's work for modular elliptic curves" (B. H. Gross, in *L-Functions and Arithmetic*, Cambridge University Press, 1991, 235–256).

### The result

Let $T$ be a $p$-adic representation of $G_K$, $K$ a number field. An Euler system for $T$ (Rubin, Definition II.1.1) is a family of classes $c_F\in H^1(F,T)$, for finite extensions $F$ of $K$ inside a large abelian extension, such that for $F\subset F'$
$$\operatorname{Cor}_{F'/F}(c_{F'})=\Big(\prod_{\mathfrak q\in\Sigma(F'/F)}P(\mathrm{Fr}_{\mathfrak q}^{-1}\mid T^*;\mathrm{Fr}_{\mathfrak q}^{-1})\Big)\,c_F,$$
where $\Sigma(F'/F)$ is the set of primes of $K$ prime to a fixed modulus $N$ (divisible by $p$ and the ramified primes of $T$) that ramify in $F'$ but not in $F$. Rubin's main theorems bound the Selmer group of $\operatorname{Hom}(T,\mu_{p^\infty})$ over $K$ and over $\mathbb Z_p^d$-extensions in terms of the Euler system. Examples (Chapter III): cyclotomic units (class groups of real abelian fields), Stickelberger elements (minus parts of class groups), Kato's Euler system (modular elliptic curves).

### Background

- Thaine (1986; *Ann. of Math.* 128, 1988) used cyclotomic units to bound ideal class groups of real abelian fields; the bounds followed already from Mazur–Wiles, but his proof was much simpler. Rubin applied the method to elliptic units and CM elliptic curves.
- Kolyvagin used Heegner points to bound Selmer groups of modular elliptic curves, then introduced Euler systems to bound orders, not just exponents; with Gross–Zagier, this relates to the Birch–Swinnerton-Dyer prediction.
- Rubin's definition does not cover Heegner points; Chapter IX discusses variants, including anticyclotomic Euler systems.
- A later framework: B. Mazur and K. Rubin, *Kolyvagin Systems* (Mem. AMS 168, 2004).

### Where to start

- [Euler Systems](https://swc-math.github.io/notes/files/99RubinES.pdf), K. Rubin: Chapter I (Galois cohomology and Selmer groups), Chapter II (definitions and main results), §III.2 (the cyclotomic unit Euler system), Chapter IV (Kolyvagin's derivative classes).
- [Kolyvagin's work for modular elliptic curves](https://wstein.org/papers/bib/gross-kolyvagins_work_on_modular_elliptic_curves.pdf), B. H. Gross, 1991: a short account of the Heegner point case.
- [Kolyvagin Systems](https://doi.org/10.1090/memo/0799), B. Mazur and K. Rubin, 2004: the later framework, for those extending beyond Rubin's book.

Prerequisites: algebraic number theory and class field theory, Galois cohomology (local and global duality), cyclotomic fields; elliptic curves for the Heegner point case.

### Further references

- K. Rubin, *Euler Systems*, Annals of Math. Studies 147, Princeton University Press, 2000. <https://doi.org/10.1515/9781400865208>
- B. H. Gross, "Kolyvagin's work for modular elliptic curves," in *L-Functions and Arithmetic*, Cambridge University Press, 1991, 235–256. <https://doi.org/10.1017/CBO9780511526053.009>
- B. Mazur and K. Rubin, *Kolyvagin Systems*, Mem. Amer. Math. Soc. 168 (2004), no. 799. <https://doi.org/10.1090/memo/0799>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs Galois cohomology, Selmer groups, and Euler systems, which Mathlib does not have yet.

#### Mathlib

Mathlib has `groupCohomology`, continuous cohomology (`ContinuousCohomology`) with a general Tate–Shafarevich group `ContinuousCohomology.tateShafarevich`, the arithmetic Selmer group $K(S,n)$ as `IsDedekindDomain.selmerGroup`, cyclotomic-unit lemmas (`Mathlib/RingTheory/RootsOfUnity/CyclotomicUnits.lean`), `NumberField.classNumber` and `IsCyclotomicExtension`. It lacks Selmer groups of $p$-adic representations with general local conditions, local and global duality, and Euler systems.
