# 122 · Efficient Verification of Lean Proofs via Interaction

## From the proposer

- **Area:** Mathematical logic, formal verification, computational complexity, interactive proof systems, algebra, and probability.
- **Tracks:** Computation/Applied Mathematics

### Description

Large formal proofs can be expensive to recheck. Can randomized interaction with an untrusted prover let us verify an existing Lean proof using substantially less time or memory, with a rigorous bound on the probability of accepting an invalid proof? Investigate how established interactive proof protocols, such as sum-check and GKR, or newly designed ones, can be applied to proof checking, using an already formalized theorem as a case study. The project connects mathematical logic, algebra, probability, and computational complexity, aiming to make existing proofs easier to verify and interactive verification easier to understand.

### Desired outcome

An accessible explainer and reproducible demonstration connecting interactive proof protocols to the verification of existing Lean proofs. Possible deliverables include:
- A mathematical exposition: explain how interaction and randomized algebraic checks can establish correctness, including why simply inspecting a few randomly selected proof steps gives weak guarantees.
- A small prototype: demonstrate a protocol on an existing Lean proof, or a precisely specified part of its checking computation, with the scope of verification clearly identified.
- A soundness analysis: bound the probability of accepting an invalid proof, specifying the proof artifact, theorem statement, dependencies, allowed axioms, and assumptions connecting the protocol to Lean's kernel.
- An experimental comparison: measure verifier time and memory against ordinary kernel checking, while also accounting for prover cost, preprocessing, and communication.

A realistic target for the 40-hour event is a worked example, preliminary prototype, and explanation of the protocol. The two-month follow-up could extend the implementation, strengthen the soundness analysis, and benchmark larger examples. The central contribution would be a clearer understanding of when, and at what cost, interaction can make existing formal proofs easier to verify.

### References

Shafi Goldwasser, Yael Tauman Kalai, and Guy N. Rothblum. Delegating Computation: Interactive Proofs for Muggles. STOC 2008, pp. 113–122. 
- Introduces the GKR protocol, which allows a verifier to check a computation through randomized interaction with an untrusted prover.

Graham Cormode, Michael Mitzenmacher, and Justin Thaler. Practical Verified Computation with Streaming Interactive Proofs. ITCS 2012; arXiv:1105.2003. 
- Develops practical interactive verification techniques, including verification with limited working memory.

Mario Carneiro. Lean4Lean: Verifying a Typechecker for Lean, in Lean. arXiv:2403.14064, revised 2025. 
- Presents an external Lean proof checker and progress toward verifying its correctness, providing a concrete foundation for understanding the computation to be delegated.

## AI-generated notes

<!-- status: Not a single theorem -->

- **Status:** An open-ended research and exposition task; the tools are established, notably the sum-check protocol (Lund, Fortnow, Karloff and Nisan, 1990–92) and the GKR protocol (Goldwasser, Kalai and Rothblum, 2008), but none of the cited sources applies them to Lean proof checking.
- **Task:** Explain, prototype and analyse interactive protocols such as sum-check and GKR that let a verifier check an existing Lean proof with an untrusted prover's help, using less time or memory than the kernel, with a rigorous soundness bound.
- **Key reference:** [S. Goldwasser, Y. T. Kalai and G. N. Rothblum, “Delegating computation: interactive proofs for muggles”, STOC 2008, 113–122; full version J. ACM 62 (2015), no. 4](https://doi.org/10.1145/2699436)
- **Lean:** No official statement.

### Notes

- A standard argument (given here without a source) shows that a statistically sound verifier must read essentially all of its input: changing a position it rarely reads turns a valid proof into an invalid one that it accepts almost as often. So time savings are possible only when kernel checking costs much more than reading the proof artifact (heavy reduction, `decide`-style proofs), unless the input comes in encoded form or soundness is only computational (succinct arguments with commitments). Memory savings are possible with streaming verifiers (Cormode–Mitzenmacher–Thaler).
- A protocol certifies that a fixed checker program accepts the artifact; that this checker matches Lean's type theory is a separate question, on which Lean4Lean (third reference) reports progress.

### The result

Checking a Lean proof means running a type checker on an environment and a proof term: a deterministic computation of time $T$ and space $s$ on an input of size $n$. Relevant known results:

- Sum-check (Lund–Fortnow–Karloff–Nisan): for $g\in\mathbb F[x_1,\dots,x_v]$ of degree at most $d$ in each variable, a prover convinces a verifier that $\sum_{x\in\{0,1\}^v}g(x)=H$ in $v$ rounds, with $O(dv)$ field elements of communication and one evaluation of $g$ by the verifier; a false claim is accepted with probability at most $dv/|\mathbb F|$. This led to $\mathrm{IP}=\mathrm{PSPACE}$ (Shamir 1992).
- GKR (ECCC version): languages computed by log-space uniform Boolean circuits of depth $d$ have public-coin interactive proofs with verifier time $n\cdot\mathrm{poly}(d,\log n)$, verifier space $O(\log n)$, communication $\mathrm{poly}(d,\log n)$ and prover time polynomial in $n$.
- Cormode–Mitzenmacher–Thaler (ITCS 2012): a GKR prover in time $O(S\log S)$ for arithmetic circuits of size $S$, with experiments, and streaming verifiers with sublinear memory.

### How the known proof works

- Sum-check: in round $i$ the prover sends a univariate $g_i(X)$, claimed to be $g$ with $x_1,\dots,x_{i-1}$ set to earlier challenges and the remaining variables summed over $\{0,1\}$; the verifier checks $g_i(0)+g_i(1)$ against the previous claim and sends a random $r_i$. At the end it compares $g_v(r_v)$ with $g(r_1,\dots,r_v)$.
- Soundness: if the current claim is false, the prover's $g_i$ differs from the true polynomial, and two distinct polynomials of degree $\le d$ agree at a random point with probability at most $d/|\mathbb F|$.
- GKR: encode each circuit layer by the multilinear extension $\tilde W_i$ of its gate values. Sum-check over the wiring predicates $\widetilde{\mathrm{add}}_i,\widetilde{\mathrm{mult}}_i$ reduces a claim about $\tilde W_i$ at one point to claims about $\tilde W_{i+1}$ at two points, merged along a line. At the input layer the verifier evaluates the extension of the input itself, in time about $n$.
- Why spot checks are weak: a proof of $N$ steps with one bad step survives $k$ random step checks with probability $1-k/N$, while after arithmetization one random evaluation catches any discrepancy with probability at least $1-d/|\mathbb F|$ (Schwartz–Zippel).

### Background

- Babai, Fortnow, Levin and Szegedy (1991): computations encoded with error-correcting codes can be checked in polylogarithmic time (holographic proofs), a precursor of the PCP theorem.
- Succinct arguments (SNARKs) let the verifier read only a short commitment to the data, with soundness resting on a cryptographic assumption; Thaler's book builds them from sum-check and GKR.
- Lean has more than one kernel implementation: the reference C++ kernel and Lean4Lean, which checks all of Mathlib 20–50% more slowly.

### Where to start

- [Proofs, Arguments, and Zero-Knowledge](https://people.cs.georgetown.edu/jthaler/ProofsArgsAndZK.pdf), J. Thaler, 2022: §4.1 (sum-check) and §4.6 (GKR and its efficient implementation), with costs; Chapter 7 for succinct arguments.
- [Practical verified computation with streaming interactive proofs](https://arxiv.org/abs/1105.2003), G. Cormode, M. Mitzenmacher, J. Thaler, 2011: an implemented GKR with measured costs and small-memory verifiers.
- [Lean4Lean: Verifying a typechecker for Lean, in Lean](https://arxiv.org/abs/2403.14064), M. Carneiro, 2024: an executable description of the computation to be delegated.

Prerequisites: finite fields, multilinear extensions and the Schwartz–Zippel lemma, arithmetic circuits, basic probability, Lean's type theory and kernel (definitional equality, reduction).

### References, with links

- S. Goldwasser, Y. T. Kalai and G. N. Rothblum, “Delegating computation: interactive proofs for muggles”, STOC 2008, 113–122, doi:10.1145/1374376.1374396; full version J. ACM 62 (2015), no. 4, doi:10.1145/2699436, and ECCC TR17-108. <https://doi.org/10.1145/1374376.1374396> <https://eccc.weizmann.ac.il/report/2017/108/>
- G. Cormode, M. Mitzenmacher and J. Thaler, “Practical verified computation with streaming interactive proofs”, ITCS 2012, 90–112; arXiv:1105.2003. <https://arxiv.org/abs/1105.2003>
- M. Carneiro, “Lean4Lean: Verifying a typechecker for Lean, in Lean”, arXiv:2403.14064. <https://arxiv.org/abs/2403.14064>

### Further references

- C. Lund, L. Fortnow, H. Karloff and N. Nisan, “Algebraic methods for interactive proof systems”, J. ACM 39 (1992), 859–868. <https://doi.org/10.1145/146585.146605>
- A. Shamir, “IP = PSPACE”, J. ACM 39 (1992), 869–877. <https://doi.org/10.1145/146585.146609>
- L. Babai, L. Fortnow, L. A. Levin and M. Szegedy, “Checking computations in polylogarithmic time”, STOC 1991, 21–32. <https://doi.org/10.1145/103418.103428>
- J. Thaler, *Proofs, Arguments, and Zero-Knowledge*, Found. Trends Priv. Secur. 4 (2022), 117–660. <https://doi.org/10.1561/3300000030>
- A. Garvía Bosshard, J. Bootle and C. Sprenger, “Formal verification of the sumcheck protocol”, CSF 2024 (Isabelle/HOL). <https://arxiv.org/abs/2402.06093>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for an exposition, a prototype and measurements rather than for a theorem, and a soundness theorem for interactive checking of Lean proofs would need a model of Lean's kernel together with interactive protocols and their costs, none of which Mathlib has and which cannot be defined faithfully in a short file.

#### Related Lean formalizations

- [Lean4Lean](https://github.com/digama0/lean4lean), M. Carneiro: an external type checker for Lean 4 written in Lean; its paper reports that it checks Mathlib and proves parts of the kernel correct.
- [ArkLib](https://github.com/Verified-zkEVM/ArkLib), Verified-zkEVM: a Lean 4 library of interactive oracle reductions and SNARKs; its roadmap lists, for sum-check, perfect completeness and round-by-round knowledge soundness with error $\deg/|R|$ per challenge (`Sumcheck.Spec.oracleVerifier_rbrKnowledgeSoundness`).

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has `MvPolynomial`, the Schwartz–Zippel lemma (`MvPolynomial.schwartz_zippel_totalDegree`, `MvPolynomial.schwartz_zippel_sum_degreeOf`), the root bound `Polynomial.card_roots'`, probability mass functions (`PMF`) and polynomial-time computability for Turing machines (`Turing.TM2ComputableInPolyTime`). It has no interactive proofs, no complexity classes such as IP or PSPACE, no circuit model with costs, and no model of Lean's own kernel.
