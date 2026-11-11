# 71 · The core of approval-based committees

> Everything on this page except the section **From the proposer** is AI-generated and may contain errors.

## From the proposer

- **Title:** Existence of the Core in Approval-Based Committee Elections
- **Area:** Voting Theory
- **Tracks:** Computation/Applied Math

### Description

When voters approve candidates for a committee, it is always possible to choose representatives "fairly" (no group of voters can propose an alternative using only its proportional share of seats that every member of the group would prefer).

### Desired outcome

Explain intuitively the idea behind "Harmonic Entropy" (section 5 of the paper)

### References

- <https://arxiv.org/pdf/2609.11912>

## AI-generated notes

- **Status:** Proved by P. Becker, M. Greger and D. Peters (2026 preprint, not yet refereed); open since Aziz et al. (2017).
- **Task:** An intuitive explanation of harmonic entropy (Section 5 of the paper).
- **Key reference:** [P. Becker, M. Greger and D. Peters, Existence of the core in approval-based committee elections (2026), arXiv:2609.11912](https://arxiv.org/abs/2609.11912)
- **Lean:** Official statement; a Lean proof already exists.

### Notes

- "Section 5" refers to the current arXiv version (v2), where Section 5 is "Harmonic Entropy"; in v1 it is Section 4.

### The result

Voters $N$ ($|N|=n$) approve sets $A_i$ of candidates; a committee $W$ of size $k$ gives voter $i$ utility $|A_i\cap W|$. With quota $q=n/k$, $W$ is in the core if no coalition can afford a set it unanimously prefers:
$$\forall\, \emptyset\ne S\subseteq N,\ T\subseteq C\ \text{with}\ |S|\ge q|T|\ \ \exists i\in S:\ |A_i\cap W|\ge|A_i\cap T|.$$
Becker, Greger and Peters prove that a committee in the stronger core⁺ (robust to fractional deviations) always exists and can be computed in polynomial time; by a limit argument a Droop-quota version ($q=n/(k+1)$) also exists. The official Lean statement is the Hare-quota core existence.

### How the known proof works

- By LP duality, core⁺ is equivalent to a payment system: voters pay approved winners from unit budgets, keep a reserve at least as large as each payment, supporters of any loser hold reserve $<q$, and each winner receives at most $q$ (P1–P4, Theorem 3.2).
- PAV's uniform payments satisfy P1–P3 by the swap argument but can violate P4.
- The Robin Hood operator $\Phi$ adds a coordinate to a probability vector by lowering its largest coordinates to a water level; harmonic entropy $F$ satisfies $F(\text{uniform on }d)=H_{d-1}$, $F(\Phi(x))=F(x)+\|x\|_\infty$, and is concave and symmetric.
- The rule maximizes $V(W)=\max\sum_iF(r_i,p_i)$ over payments with P1, P2, P4: adding a candidate violating P3 raises $V$ by at least $q$ (Theorem 6.2), and some deletion then loses at most $n/(k+1)<q$ (Theorem 6.3).
- Only local optimality is used, so local search runs in polynomial time (Section 7).

### Background

- The core was introduced for approval-based committees by Aziz, Brill, Conitzer, Elkind, Freeman and Walsh (2017); it implies EJR and FJR.
- Earlier results: approximate cores (factor 2 in utility for PAV, Peters–Skowron 2020; factor 2 in coalition size for sequential Phragmén, 2026) and exact existence for at most 8 seats or 15 candidates (Peters, IJCAI 2025) or few voter types or voters.
- Harmonic entropy is a discrete analogue of Shannon entropy, which integrates the same water-level expression over continuous capacity (Section 5).

### Where to start

- [Existence of the core in approval-based committee elections](https://arxiv.org/abs/2609.11912), Becker, Greger, Peters, 2026: Sections 3–6, with figures of $\Phi$ and of $F$.
- [Multi-winner voting with approval preferences](https://arxiv.org/abs/2007.01795), Lackner and Skowron, 2023: background on PAV and proportionality axioms.
- Prerequisites: LP duality, concave functions on the simplex, approval voting basics.

### Further references

- H. Aziz, M. Brill, V. Conitzer, E. Elkind, R. Freeman and T. Walsh, Justified representation in approval-based committee voting, Soc. Choice Welf. 48 (2017), 461–485 <https://doi.org/10.1007/s00355-016-1019-3>
- D. Peters and P. Skowron, Proportionality and the limits of welfarism, EC 2020 <https://arxiv.org/abs/1911.11747>
- D. Peters, The core of approval-based committee elections with few seats, IJCAI 2025, 4014–4022 <https://doi.org/10.24963/ijcai.2025/447>
- M. Lackner and P. Skowron, Multi-Winner Voting with Approval Preferences, SpringerBriefs (2023) <https://arxiv.org/abs/2007.01795>

### Lean

#### Official statement

`ABCInstance.exists_core` in [`lean/MathathonProblems/P71_CoreExistence.lean`](lean/MathathonProblems/P71_CoreExistence.lean).

```lean
theorem exists_core [Nonempty V] (inst : ABCInstance V C k) :
    ∃ W : Finset C, W.card = k ∧ inst.is_in_core W
```

Source: <https://github.com/DominikPeters/ABCVotingLean/blob/1cdea847e12f50c9905b045649ada808263fc8ea/ABCVoting/Basic.lean>, <https://github.com/DominikPeters/ABCVotingLean/blob/1cdea847e12f50c9905b045649ada808263fc8ea/ABCVoting/Axioms/Core.lean>, <https://github.com/DominikPeters/ABCVotingLean/blob/1cdea847e12f50c9905b045649ada808263fc8ea/ABCVoting/Existence/HarmonicEntropy/CoreExistence.lean> (adapted as described in the file header).

A Lean proof of this statement already exists: <https://github.com/DominikPeters/ABCVotingLean/blob/1cdea847e12f50c9905b045649ada808263fc8ea/ABCVoting/Existence/HarmonicEntropy/CoreExistence.lean>. A Lean-verified claim must not use or copy it.

#### Mathlib

Mathlib has `Finset`, `Finset.card` and geometric forms of Farkas' lemma (`Mathlib/Analysis/Convex/Cone/InnerDual.lean`). It has no voting theory and no harmonic entropy; the official statement defines its own election instances and core.
