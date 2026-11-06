# 73 · Cayley's formula

**Tracks:** Combinatorics · **Area:** Enumerative combinatorics

## Description

Cayley’s formula says there are n^(n-2) labeled trees on n vertices. Aigner and Ziegler’s Proofs from THE BOOK gives four proofs. Participants could build a unified framework relating them (Prüfer codes, Joyal’s doubly-rooted trees, double counting, linear algebra via the Matrix-Tree Theorem).

## Desired outcome

Interactive visualization of bijections, formal verification of the Prüfer correspondence, and an explanation of why all proofs agree.

## References

- Cayley, “A theorem on trees,” Quarterly Journal of Mathematics 23 (1889)
- Aigner, Ziegler, Proofs from THE BOOK, chapter “Cayley’s formula for the number of trees”
- Joyal, “Une théorie combinatoire des séries formelles,” Advances in Mathematics 42 (1981)

## Official Lean statement

`AtlasKnownTheorems.CayleyTreeFormula.CayleyTreeFormulaStatement`, `AtlasKnownTheorems.CayleyTreeFormula.cayleyTreeFormula` in [`lean/MathathonProblems/P73_CayleyFormula.lean`](lean/MathathonProblems/P73_CayleyFormula.lean).

```lean
def CayleyTreeFormulaStatement : Prop :=
  ∀ n : Nat, 1 ≤ n → Nat.card (LabeledTree n) = n ^ (n - 2)
```

```lean
theorem cayleyTreeFormula : CayleyTreeFormulaStatement
```

Source: <https://www.proofatlas.ai/sources/cayley-tree-formula/commits/f31d011b2b8860bfc9990007697b773f9bc96831/AtlasKnownTheorems/CayleyTreeFormula/Basic.lean> (adapted as described in the file header).

A Lean proof of this statement already exists: <https://www.proofatlas.ai/sources/cayley-tree-formula/commits/f31d011b2b8860bfc9990007697b773f9bc96831/AtlasKnownTheorems/CayleyTreeFormula/Basic.lean>. A Lean-verified claim must not use or copy it.
