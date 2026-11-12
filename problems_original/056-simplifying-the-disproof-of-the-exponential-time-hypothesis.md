# Problem 56

> Verbatim copy of one row of the Mathathon problem sheet. The text under each heading is the cell text, unchanged. See [README.md](README.md).

## Problem ID

56

## Title/name of problem

Simplifying the Disproof of the Exponential Time Hypothesis

## Short description of problem (100 words or less)

A 3-SAT problem consists of a long list of logic conditions joined together. To solve the puzzle, you must find a way to assign a value of TRUE or FALSE to every variable so that the entire formula evaluates to TRUE.

It was previously widely expected that such an algorithm did not exist: 3-SAT is the prototypical NP-complete problem, and a strengthening of P≠NP, the Exponential Time Hypothesis, asserted that there should be no “free-lunch” universally applicable trick for speeding up such a general problem, beyond constant multiplicative repackagings of the input (corresponding to lowering the base of the exponent).

These have been proven to be NP-complete (so if they are solvable efficiently, then P=NP). The Exponential Time Hypothesis (ETH) states that 3-SAT cannot be solved in subexponential time. In October 2026, OpenAI and Anthropic independently released claimed disproofs of ETH, each providing a subexponential-time algorithm. The problem is to simplify these proofs.

## Submitted Area

Computational complexity theory, theoretical computer science

## Proposed Tracks

Computation/Applied Math

## Reference/source material

OpenAI: https://github.com/openai/math/blob/main/preprints/The-Exponential-Time-Hypothesis-is-False-October-25-2026/paper.pdf

Anthropic: https://github.com/anthropics/formal-math/blob/main/eth/paper.pdf

## Desired outcome

A simpler disproof of the Exponential Time Hypothesis, ideally with a shorter and more elementary argument.

Both papers contain unexpected moves enabling their unprecedented results. There is an extensive literature furnishing varied frameworks from which to view the SAT problem. It would thus be helpful to human understanding to recast the unexpected moves of these LLM-generated papers in the existing frameworks of human mathematicians.
