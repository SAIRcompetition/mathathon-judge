# 41 · Digesting Wiles’ proof of Fermat’s Last Theorem

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/041-digesting-wiles-proof-of-fermats-last-theorem.md`](../problems_original/041-digesting-wiles-proof-of-fermats-last-theorem.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Digesting Wiles’ proof of Fermat’s Last Theorem

### Short description of problem (100 words or less)

The work of Wiles and Taylor--Wiles which ultimately proved Fermat’s Last Theorem is infamously inaccessible to any who isn’t a technical expert in modular forms and Galois representations. Participants will design and populate an interactive way of exploring the proof, to aid in independent or collaborative learning on the subject, or even to explore alternate proofs.

### Submitted Area

Algebraic number theory

### Proposed Tracks

Algebra/Number Theory

### Reference/source material

Wiles, Andrew (1995). "Modular elliptic curves and Fermat's Last Theorem". Annals of Mathematics. 141 (3): 443–551. doi:10.2307/2118559
Richard Taylor and Andrew Wiles (May 1995). "Ring-theoretic properties of certain Hecke algebras". Annals of Mathematics. 141 (3): 553–572. doi:10.2307/2118560
Mordell, Louis J. (1921). Three Lectures on Fermat's Last Theorem. Cambridge: Cambridge University Press.


### Desired outcome

An interactive tool which aids in understanding the proof of Fermat’s Last Theorem.

## AI-generated notes

<!-- status: Proved -->

> Written by AI for the earlier problem list, where this was problem 41 ([`problems/41-fermats-last-theorem.md`](../problems/41-fermats-last-theorem.md)), and carried over unchanged.

- **Status:** Proved by A. Wiles (1995), with a key step by R. Taylor and A. Wiles (1995).
- **Task:** An interactive tool for exploring the proof of Fermat's Last Theorem.
- **Key reference:** [Modular elliptic curves and Fermat's Last Theorem](https://doi.org/10.2307/2118559), A. Wiles, *Ann. of Math.* 141 (1995), 443–551.
- **Lean:** Official statement; a Lean proof already exists.

### The result

Fermat's Last Theorem: for $n\ge3$ there are no positive integers $a,b,c$ with
$$a^n+b^n=c^n.$$
Wiles (*Ann. of Math.* 141, 1995) proved the Shimura–Taniyama conjecture for semistable elliptic curves over $\mathbb Q$, with Taylor and Wiles (same issue) proving that the minimal Hecke algebra $T_\emptyset$ is a complete intersection, which Wiles' numerical criterion required. By Ribet's theorem (*Invent. Math.* 100, 1990), modularity of the Frey curve implies the theorem.

### How the known proof works

- A solution $a^\ell+b^\ell=c^\ell$ with prime $\ell$ gives the semistable Frey curve $E:y^2=x(x-a^\ell)(x+b^\ell)$, whose mod-$\ell$ representation $\bar\rho_{E,\ell}$ has little ramification (only at $2$ and $\ell$) and is irreducible for $\ell>7$ (Mazur).
- Ribet's level lowering: if $E$ is modular, $\bar\rho_{E,\ell}$ comes from a weight-2 form of level 2; there is none, since $X_0(2)$ has genus 0.
- Wiles's modularity lifting (in a form sufficient for semistable curves): an odd $\ell$-adic representation with irreducible modular reduction and suitable behaviour at $\ell$ is modular. He compares a deformation ring $R$ (Mazur) with a Hecke algebra $T$ and proves $R\cong T$ in the needed cases, with input from Taylor–Wiles.
- It suffices that $\rho_{E,3}$ or $\rho_{E,5}$ is modular; residual modularity at 3 comes from the Langlands–Tunnell theorem, since $\mathrm{GL}_2(\mathbb F_3)$ is soluble.
- The core is $R\cong T$; Darmon–Diamond–Taylor, Chapters 3–5, treat it (Hecke algebras, isomorphism criteria, Wiles' numerical criterion, complete intersections).

### Background

- Expositions: Darmon–Diamond–Taylor (1995, revised 2007), including simplifications such as Faltings'; Cornell–Silverman–Stevens (eds.), *Modular Forms and Fermat's Last Theorem* (1997).
- Breuil–Conrad–Diamond–Taylor (*J. Amer. Math. Soc.* 14, 2001) completed the proof that every elliptic curve over $\mathbb Q$ is modular.

### Where to start

- [Fermat's Last Theorem](https://www.math.mcgill.ca/darmon/pub/Articles/Expository/05.DDT/paper.pdf), H. Darmon, F. Diamond, R. Taylor, 1995 (rev. 2007): a 167-page guide to Wiles and Taylor–Wiles; the introduction maps the argument.
- [Modular elliptic curves and Fermat's Last Theorem](https://doi.org/10.2307/2118559), A. Wiles, 1995: the original paper.

Prerequisites: elliptic curves, modular forms and Hecke operators, Galois representations and basic Galois cohomology.

### References, with links

- Wiles, Andrew (1995). "Modular elliptic curves and Fermat's Last Theorem". Annals of Mathematics. 141 (3): 443–551. doi:10.2307/2118559 <https://doi.org/10.2307/2118559>
- Richard Taylor and Andrew Wiles (May 1995). "Ring-theoretic properties of certain Hecke algebras". Annals of Mathematics. 141 (3): 553–572. doi:10.2307/2118560 <https://doi.org/10.2307/2118560>
- Mordell, Louis J. (1921). Three Lectures on Fermat's Last Theorem. Cambridge: Cambridge University Press.

### Further references

- H. Darmon, F. Diamond, R. Taylor, "Fermat's Last Theorem," *Current Developments in Mathematics* 1995, 1–154 (revised 2007). <https://www.math.mcgill.ca/darmon/pub/Articles/Expository/05.DDT/paper.pdf>
- K. A. Ribet, "On modular representations of Gal(Q̄/Q) arising from modular forms," *Invent. Math.* 100 (1990), 431–476. <https://doi.org/10.1007/BF01231195>
- C. Breuil, B. Conrad, F. Diamond, R. Taylor, "On the modularity of elliptic curves over Q: wild 3-adic exercises," *J. Amer. Math. Soc.* 14 (2001), 843–939. <https://doi.org/10.1090/S0894-0347-01-00370-8>
- G. Cornell, J. H. Silverman, G. Stevens (eds.), *Modular Forms and Fermat's Last Theorem*, Springer, 1997. <https://doi.org/10.1007/978-1-4612-1974-3>

### Lean

#### Official statement

`Mathathon.P41.fermat_last_theorem` in [`lean/MathathonProblems/P41_FermatLastTheorem.lean`](lean/MathathonProblems/P41_FermatLastTheorem.lean).

```lean
theorem fermat_last_theorem : FermatLastTheorem
```

Source: <https://github.com/leanprover-community/mathlib4/blob/v4.35.0/Mathlib/NumberTheory/FLT/Basic.lean> (adapted as described in the file header).

#### Existing Lean proofs

- [anthropics/fermats-last-theorem](https://github.com/anthropics/fermats-last-theorem/tree/6e837e75355538c7f80bab5b956861e86c4eacc2) (Apache License 2.0) is a complete Lean proof of Fermat's Last Theorem, for Lean 4.33.1 and Mathlib v4.33.0. It derives Mathlib's `FermatLastTheorem`. A Lean-verified claim must not use or copy it.

#### Related Lean formalizations

- The [FLT project](https://imperialcollegelondon.github.io/FLT/) (Imperial College London) is a Lean formalization of Fermat's Last Theorem in progress, with a blueprint that maps the proof step by step.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib defines `FermatLastTheorem`, `FermatLastTheoremFor` (`Mathlib/NumberTheory/FLT/Basic.lean`) and proves `fermatLastTheoremThree`, `fermatLastTheoremFour` and `fermatLastTheoremWith'_polynomial`; it has `WeierstrassCurve`, `ModularForm` and abstract Hecke rings. It lacks Galois representations attached to elliptic curves and modular forms, deformation rings and modularity lifting.
