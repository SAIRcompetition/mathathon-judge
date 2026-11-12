# Problem 136

> Verbatim copy of one row of the Mathathon problem sheet. The text under each heading is the cell text, unchanged. See [README.md](README.md).

## Problem ID

136

## Title/name of problem

The Aaronson–Ambainis Conjecture: From Influential Variables to Quantum Simulation

## Short description of problem (100 words or less)

Does every bounded, low-degree polynomial on the Boolean cube that varies substantially have an influential input bit—one whose flip changes the polynomial noticeably on average? The Aaronson–Ambainis conjecture asks for a quantitative influence bound independent of the number of variables. A recently released proof, accompanied by a Lean formalization, claims to establish this bound. Its implications include classical approximation of quantum acceptance probabilities on most uniformly random inputs, with polynomially many input queries. The challenge is to explain or simplify the proof and its connections to quantum-query simulation and cryptography.

## Submitted Area

Quantum computing and theoretical computer science; analysis of Boolean functions; quantum cryptography.

## Proposed Tracks

Computation/Applied Mathematics

## Reference/source material

1. Scott Aaronson and Andris Ambainis, “The Need for Structure in Quantum Speedups,” Theory of Computing 10 (2014), 133–166. See Conjecture 6 and Theorem 22 in the arXiv version:
https://arxiv.org/pdf/0911.0996

2. David Turturean, “A proof of the Aaronson–Ambainis conjecture” (2026). See Theorem 1.1 and Corollary 1.2. The paper and accompanying Lean formalization are available at:
https://github.com/physical-superintelligence/aaronson-ambainis/blob/main/paper/aaronson_ambainis_paper.pdf
https://github.com/physical-superintelligence/aaronson-ambainis

3. Siyao Guo, Qian Li, Qipeng Liu, and Jiapeng Zhang, “Unifying Presampling via Concentration Bounds,” TCC 2021. See Section 2.6 and Appendix B for the simulation and bit-fixing statements:
https://eprint.iacr.org/2020/1589.pdf

## Desired outcome

Create a self-contained explanation of the Aaronson–Ambainis proof and its consequences for quantum computing. In particular:

1. Explain the key ideas behind the influential-variable bound and use small examples to illustrate influence, variance, and decision trees.

2. Trace how the influence bound yields classical query simulation on most uniformly random inputs, and explain the known equivalent statement involving a small classical bit-fixing restriction. Track the parameter dependencies and assumptions carefully.

3. Simplify an existing reduction or develop a new proof of a related statement, such as the heavy-variable statement for quantum query algorithms. As a more ambitious extension, investigate improved bounds or connections to polynomial compatibility and quantum cryptography.

The final deliverable could combine annotated proofs, examples or visualizations, and a map distinguishing proved implications, conjectures, and open questions.
