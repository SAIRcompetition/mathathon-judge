# 18 · The positive rates conjecture

> Everything on this page except the section **From the proposer** is AI-generated and may contain errors.

## From the proposer

- **Title:** Positive rates
- **Area:** Probability
- **Tracks:** Analysis

### Description

The positive rates conjecture is/was a famous problem in probability and ergodic theory about random cellular automata. A counterexample was constructed by Gacs, but it is so complicated that perhaps no other person ever truly believed that it worked. The problem is philosophically interesting as it can be thought of in terms of whether perfect error correction is possible in distributed systems subject to noise— Gacs says yes!

### Desired outcome

Since the correctness of Gacs argument is in doubt, a formal verification is genuinely desirable here. But more useful would be a simplification that can easily be understood and verified by hand.

### References

- The main reference is Gacs “ Reliable Cellular Automata with Self-Organization”. See also “A Reader's Guide to Gacs's “Positive Rates” Paper“ by Gray.

## AI-generated notes

- **Status:** Refuted by P. Gács: discrete time in 1986 (J. Comput. System Sci.), continuous time in 2001 (J. Stat. Phys.).
- **Task:** A simpler, hand-checkable counterexample, or a formal verification of Gács's.
- **Key reference:** [P. Gács, "Reliable cellular automata with self-organization", J. Stat. Phys. 103 (2001), 45–267; corrected arXiv version 2024](https://arxiv.org/abs/math/0003117)
- **Lean:** Official statement.

### Notes

- Gács's 1986 paper already gives a discrete-time counterexample; the 2001 paper builds an asynchronous (continuous-time) one, "completing the refutation" of the conjecture as stated in Liggett's 1985 monograph, and adds self-organization.
- The arXiv version (January 2024) is described by the author as a corrected and strengthened version of the 2001 paper.

### The result

A one-dimensional probabilistic cellular automaton has positive rates (is noisy) if every local transition probability $P(s,(r_{-1},r_0,r_1))$ is positive. Finite noisy automata are always ergodic; the positive rates conjecture said that infinite one-dimensional ones are too. Gács's Theorem 3.1: there is a one-dimensional automaton that remembers a bit forever under every sufficiently small perturbation (noisy ones included), starting from homogeneous configurations, with error probability at most $t^{-c_1}+O(\varepsilon)$ at time $t$ (for any fixed $c_1>1$); Theorem 3.2 is the continuous-time version. Such an automaton never forgets its initial state, so it is not ergodic; time averages of the laws started from the two configurations give two different invariant measures. In Gács's 1986 construction the initial configuration had to encode an infinite hierarchy.

### How the known proof works

- Cells form colonies that simulate, through a block code, a generalized automaton ("medium") with a much smaller fault rate; iterating gives an infinite hierarchy, an "amplifier".
- Bit storage follows from the existence of an amplifier; the Amplifier Lemma says amplifiers exist.
- The difficulty is that bursts of faults destroy the colony structure itself; this is handled by destruction and rebuilding from neighbours, a hard-wired program, and "robust media" that legalize locally consistent structures.
- Sections 12–20 build the amplifier; the key steps are the Attribution Lemma (self-stabilization, Section 16) and the Healing Lemma (Section 17). Section 21 adds self-organization. The arXiv version has 231 pages.

### Background

- Toom (1980) built noisy two-dimensional automata that remember a bit; Gray proved that monotone two-state one-dimensional systems are ergodic (continuous time 1982, discrete time 1987).
- Kurdyumov (1978) outlined a hierarchical example; Gács (1986) worked it out in discrete time.
- Gács (2023): the challenge of finding simpler examples "is still standing". Marsan, Sablik and Törmä (2025) use Gács's result as a black box.

### Where to start

- [Probabilistic cellular automata with Andrei Toom](https://arxiv.org/abs/2306.13226), P. Gács, 2023: Sections 3 and 7 of this survey explain the positive rates problem and why one dimension needs hierarchy.
- [A Reader's Guide to Gács's "Positive Rates" Paper](https://doi.org/10.1023/A:1004824203467), L. Gray, 2001: a reader's guide to this paper, in the same volume of J. Stat. Phys.
- [Reliable cellular automata with self-organization](https://arxiv.org/abs/math/0003117), P. Gács, 2024: Sections 1–5 give the plan of the hierarchy.

Prerequisites: Markov chains and invariant measures, probabilistic cellular automata, error-correcting codes.

### References, with links

- P. Gács, “Reliable Cellular Automata with Self-Organization” (the main reference). <https://arxiv.org/abs/math/0003117>
- L. Gray, “A Reader's Guide to Gács's ‘Positive Rates’ Paper.” <https://doi.org/10.1023/A:1004824203467>

### Further references

- P. Gács, "Reliable computation with cellular automata", J. Comput. System Sci. 32 (1986), 15–78. <https://doi.org/10.1016/0022-0000(86)90002-4>
- P. Gács, "Probabilistic cellular automata with Andrei Toom" (2023). <https://arxiv.org/abs/2306.13226>
- T. M. Liggett, Interacting Particle Systems, Springer (1985). <https://doi.org/10.1007/978-1-4613-8542-4>
- H. Marsan, M. Sablik and I. Törmä, "A perturbed cellular automaton with two phase transitions for the ergodicity" (2025). <https://arxiv.org/abs/2507.03485>

### Lean

#### Official statement

`Mathathon.P18.exists_positiveRates_two_invariant_measures` in [`lean/MathathonProblems/P18_PositiveRates.lean`](lean/MathathonProblems/P18_PositiveRates.lean).

```lean
theorem exists_positiveRates_two_invariant_measures :
    ∃ (k : ℕ) (T : LocalRule k), PositiveRates T ∧
      ∃ μ ν : Measure (ℤ → Fin k), IsProbabilityMeasure μ ∧ IsProbabilityMeasure ν ∧
        (transitionKernel T).Invariant μ ∧ (transitionKernel T).Invariant ν ∧ μ ≠ ν
```

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Mathlib

Mathlib has `ProbabilityTheory.Kernel` with `Kernel.Invariant`, `Measure.infinitePi` and `PMF`, enough for the official statement. It has no cellular automata and no continuous-time particle systems.
