# 56 · Simplifying the Disproof of the Exponential Time Hypothesis

**Tracks:** Computation/Applied Math · **Area:** Computational complexity theory, theoretical computer science

## Description

The Exponential Time Hypothesis (ETH) states that 3-SAT cannot be solved in subexponential time. In October 2026, OpenAI and Anthropic independently released claimed disproofs of ETH, each providing a subexponential-time algorithm. The problem is to simplify these proofs.

## Desired outcome

A simpler disproof of the Exponential Time Hypothesis, ideally with a shorter and more elementary argument.

## References

- OpenAI: <https://github.com/openai/math/blob/main/preprints/The-Exponential-Time-Hypothesis-is-False-October-25-2026/paper.pdf>
- Anthropic: <https://github.com/anthropics/formal-math/blob/main/eth/paper.pdf>

## Official Lean statement

`OAI.Algorithms.SubexponentialSAT.SqrtLogSpace.exact_count_and_sat` in [`lean/MathathonProblems/P56_SubexponentialSAT.lean`](lean/MathathonProblems/P56_SubexponentialSAT.lean).

The statement of `exact_count_and_sat` is long; see the file.

Source: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/SubexponentialSAT.lean> (copied unchanged).

A Lean proof of this statement already exists: <https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/Algorithms/SubexponentialSAT/Main.lean>. A Lean-verified claim must not use or copy it.
