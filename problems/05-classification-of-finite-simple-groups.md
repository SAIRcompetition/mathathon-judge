# 5 · Classification of finite simple groups

**Tracks:** Algebra/Number Theory · **Area:** Group theory

## Description

The CFSG is in principle a known theorem, but the proof is very long, and parts of it have been disputed. The *statement* of the CFSG has been formalized in Lean. Is there an easier way to do it? Can large parts of it be formalized?

## Desired outcome

Bring the CFSG in from the cold by formalizing large parts of it in Lean, or by finding a simplification in the proofs of the classification.

## References

- <https://en.wikipedia.org/wiki/Classification_of_finite_simple_groups>

## Official Lean statement

This problem has no official Lean statement in this folder. The public Lean statement of the CFSG is `TauCeti.ClassificationStatement` in TauCetiProject/TauCeti: <https://github.com/TauCetiProject/TauCeti/blob/6e0c6acab5f4c6f42e5f5bab9bd5e4e84f74c380/TauCeti/GroupTheory/SpecificGroups/CFSG/Classification.lean>. It is not copied here because it depends on about 750 files of group constructions and on a different Mathlib version.

Axiom Math has published a Lean proof of that statement: <https://github.com/AxiomMath/CFSG/tree/69cb972f587a3ecc035e092253167ff2e303c962>. A Lean-verified claim must not use or copy it.
