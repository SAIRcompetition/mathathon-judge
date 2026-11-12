# Problem 122

## Problem ID

122

## Title/name of problem

Efficient Verification of Lean Proofs via Interaction

## Short description of problem (100 words or less)

Large formal proofs can be expensive to recheck. Can randomized interaction with an untrusted prover let us verify an existing Lean proof using substantially less time or memory, with a rigorous bound on the probability of accepting an invalid proof? Investigate how established interactive proof protocols, such as sum-check and GKR, or newly designed ones, can be applied to proof checking, using an already formalized theorem as a case study. The project connects mathematical logic, algebra, probability, and computational complexity, aiming to make existing proofs easier to verify and interactive verification easier to understand.

## Submitted Area

Mathematical logic, formal verification, computational complexity, interactive proof systems, algebra, and probability.

## Proposed Tracks

Computation/Applied Mathematics

## Reference/source material

Shafi Goldwasser, Yael Tauman Kalai, and Guy N. Rothblum. Delegating Computation: Interactive Proofs for Muggles. STOC 2008, pp. 113–122. 
- Introduces the GKR protocol, which allows a verifier to check a computation through randomized interaction with an untrusted prover.

Graham Cormode, Michael Mitzenmacher, and Justin Thaler. Practical Verified Computation with Streaming Interactive Proofs. ITCS 2012; arXiv:1105.2003. 
- Develops practical interactive verification techniques, including verification with limited working memory.

Mario Carneiro. Lean4Lean: Verifying a Typechecker for Lean, in Lean. arXiv:2403.14064, revised 2025. 
- Presents an external Lean proof checker and progress toward verifying its correctness, providing a concrete foundation for understanding the computation to be delegated.

## Desired outcome

An accessible explainer and reproducible demonstration connecting interactive proof protocols to the verification of existing Lean proofs. Possible deliverables include:
- A mathematical exposition: explain how interaction and randomized algebraic checks can establish correctness, including why simply inspecting a few randomly selected proof steps gives weak guarantees.
- A small prototype: demonstrate a protocol on an existing Lean proof, or a precisely specified part of its checking computation, with the scope of verification clearly identified.
- A soundness analysis: bound the probability of accepting an invalid proof, specifying the proof artifact, theorem statement, dependencies, allowed axioms, and assumptions connecting the protocol to Lean's kernel.
- An experimental comparison: measure verifier time and memory against ordinary kernel checking, while also accounting for prover cost, preprocessing, and communication.

A realistic target for the 40-hour event is a worked example, preliminary prototype, and explanation of the protocol. The two-month follow-up could extend the implementation, strengthen the soundness analysis, and benchmark larger examples. The central contribution would be a clearer understanding of when, and at what cost, interaction can make existing formal proofs easier to verify.
