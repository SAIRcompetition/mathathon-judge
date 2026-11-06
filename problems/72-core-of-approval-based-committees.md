# 72 · The core of approval-based committees

**Tracks:** Computation/Applied Math · **Area:** Voting Theory

## Description

When voters approve candidates for a committee, it is always possible to choose representatives "fairly" (no group of voters can propose an alternative using only its proportional share of seats that every member of the group would prefer).

## Desired outcome

Explain intuitively the idea behind "Harmonic Entropy" (section 5 of the paper)

## References

- <https://arxiv.org/pdf/2609.11912>

## Official Lean statement

`ABCInstance.exists_core` in [`lean/MathathonProblems/P72_CoreExistence.lean`](lean/MathathonProblems/P72_CoreExistence.lean).

```lean
theorem exists_core [Nonempty V] (inst : ABCInstance V C k) :
    ∃ W : Finset C, W.card = k ∧ inst.is_in_core W
```

Source: <https://github.com/DominikPeters/ABCVotingLean/blob/1cdea847e12f50c9905b045649ada808263fc8ea/ABCVoting/Basic.lean>, <https://github.com/DominikPeters/ABCVotingLean/blob/1cdea847e12f50c9905b045649ada808263fc8ea/ABCVoting/Axioms/Core.lean>, <https://github.com/DominikPeters/ABCVotingLean/blob/1cdea847e12f50c9905b045649ada808263fc8ea/ABCVoting/Existence/HarmonicEntropy/CoreExistence.lean> (adapted as described in the file header).

A Lean proof of this statement already exists: <https://github.com/DominikPeters/ABCVotingLean/blob/1cdea847e12f50c9905b045649ada808263fc8ea/ABCVoting/Existence/HarmonicEntropy/CoreExistence.lean>. A Lean-verified claim must not use or copy it.
