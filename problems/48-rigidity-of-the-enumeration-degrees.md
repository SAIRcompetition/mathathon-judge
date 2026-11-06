# 48 · Rigidity of the enumeration degrees

**Tracks:** Computation/Applied Math · **Area:** Computability theory

## Description

OpenAI recently proved (in Lean) that the Turing degrees D_T are rigid. It is also known that the Turing degrees are definable in the enumeration degrees D_e, so that it follows that the enumeration degrees are rigid. But the definition of D_T in D_e is complicated, so it is not easy to obtain rigidity of D_e in Lean. The task is to find an easier way.

## Desired outcome

Simple proof and ideally a Lean formalization

## References

- Cai, Ganchev, Lempp, Miller, and Soskova (JAMS 2016).
- OpenAI, “Rigidity of the Turing degrees”: <https://github.com/openai/math/tree/main/preprints/Rigidity-of-the-Turing-degrees-September-24-2026>

## Official Lean statement

`Mathathon.P48.enumeration_degrees_rigid` in [`lean/MathathonProblems/P48_EnumerationDegreeRigidity.lean`](lean/MathathonProblems/P48_EnumerationDegreeRigidity.lean).

```lean
theorem enumeration_degrees_rigid : ∀ π : EDegree ≃o EDegree, ∀ a : EDegree, π a = a
```

Source: written for Mathathon; not taken from an existing formalization.
