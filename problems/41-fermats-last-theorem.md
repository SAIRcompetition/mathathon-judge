# 41 · Fermat's Last Theorem

**Tracks:** Algebra/Number Theory · **Area:** Algebraic number theory

## Description

The work of Wiles and Taylor--Wiles which ultimately proved Fermat’s Last Theorem is infamously inaccessible to any who isn’t a technical expert in modular forms and Galois representations. Participants will design and populate an interactive way of exploring the proof, to aid in independent or collaborative learning on the subject, or even to explore alternate proofs.

## Desired outcome

An interactive tool which aids in understanding the proof of Fermat’s Last Theorem.

## References

- Wiles, Andrew (1995). "Modular elliptic curves and Fermat's Last Theorem". Annals of Mathematics. 141 (3): 443–551. doi:10.2307/2118559
- Richard Taylor and Andrew Wiles (May 1995). "Ring-theoretic properties of certain Hecke algebras". Annals of Mathematics. 141 (3): 553–572. doi:10.2307/2118560
- Mordell, Louis J. (1921). Three Lectures on Fermat's Last Theorem. Cambridge: Cambridge University Press.

## Official Lean statement

`Mathathon.P41.fermat_last_theorem` in [`lean/MathathonProblems/P41_FermatLastTheorem.lean`](lean/MathathonProblems/P41_FermatLastTheorem.lean).

```lean
theorem fermat_last_theorem : FermatLastTheorem
```

Source: <https://github.com/leanprover-community/mathlib4/blob/v4.35.0/Mathlib/NumberTheory/FLT/Basic.lean> (adapted as described in the file header).
