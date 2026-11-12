# 5 · Classification of finite simple groups

## From the proposer

- **Area:** Group theory
- **Tracks:** Algebra/Number Theory

### Description

The CFSG is in principle a known theorem, but the proof is very long and I think partly disputed. The *statement* of the CFSG has been formalized in Lean. Is there an easier way to do it? Can large parts of it be formalized?

### Desired outcome

Bring the CFSG in from the cold by formalizing large parts of it in Lean, or by finding a simplification in the proofs of the classification.

### References

https://en.wikipedia.org/wiki/Classification_of_finite_simple_groups

### Reference links

- <https://en.wikipedia.org/wiki/Classification_of_finite_simple_groups>

## From the judges

The Lean formalization has already been done now, by Axiom: https://cfsg.axiommath.ai/errata#abstract 

Probably a good outcome would be to try to map out clearly the main ideas of the proof and how everything connects together at a high level.

Then also try to understand what (new?) definitions would make the whole proof more stream-lined and clear.

### Links in the judge suggestions

- <https://cfsg.axiommath.ai/errata#abstract>

## AI-generated notes

<!-- status: Proved -->

- **Status:** Regarded as proved around 1980; the last serious gap, the quasithin case, was closed by Aschbacher and Smith (2004). Axiom Math reports a complete Lean formalization (2026).
- **Task:** Formalize large parts in Lean, or simplify parts of the proof.
- **Key reference:** [The status of the classification of the finite simple groups](https://authors.library.caltech.edu/records/5b4mm-frv50/files/ASCnams04.pdf), M. Aschbacher, Notices of the AMS 51 (2004), 736–740.
- **Lean:** No official statement.

### Notes

- The page's only reference is Wikipedia; primary sources are listed below.
- On disputed parts: Aschbacher (2004) names the quasithin case as the one serious gap. A 2026 preprint by Axiom Math, not yet refereed, reports counterexamples to a closure assertion used in one published route to the Unbalanced Group Theorem and gives an alternative argument; that theorem also has other proofs.
- Axiom Math reports a complete Lean formalization of the classification that follows the first-generation proof (<https://cfsg.axiommath.ai>; see Lean below), so the formalization asked for in the task largely exists. A judge suggests instead mapping out the main ideas of the proof and how they connect, and finding definitions that would make it more streamlined (From the judges).

### The result

Every finite simple group is isomorphic to a cyclic group of prime order, an alternating group $A_n$ ($n\ge5$), a group of Lie type, or one of 26 sporadic groups. The first-generation proof, spread over many journal papers, was regarded as complete around 1980; the quasithin case was settled only by Aschbacher and Smith (AMS Mathematical Surveys and Monographs 111–112, 2004, about 1,200 pages). Gorenstein, Lyons and Solomon (later with Capdeboscq) publish a second-generation proof in the AMS series *The Classification of the Finite Simple Groups* (Number 1, 1994, to Number 10, 2023).

### How the known proof works

Structure as described by Aschbacher (2004):
- Take a minimal counterexample $G$; all proper subgroups are $\mathcal K$-groups (their simple sections are on the list).
- Step 1: show that the local structure of $G$ (normalizers of nontrivial $p$-subgroups) resembles that of a known group $\bar G$; Step 2: prove $G\cong\bar G$.
- Cases: $G$ of characteristic 2-type or not, each split by size (Thompson's $e(G)$, or the 2-rank); the quasithin groups ($e(G)\le2$) of characteristic 2-type form one of the four blocks.
- The prime 2 plays a special role; by Feit–Thompson, nonabelian finite simple groups have even order. Aschbacher notes that some sporadic existence and uniqueness proofs were probably still machine-aided in 2004.

### Background

- The Feit–Thompson odd order theorem was machine-checked in Coq (Gonthier et al., 2013).
- Aschbacher–Smith (2004) also classify the quasithin groups of even type, the version needed by the second-generation proof.
- Aschbacher (2004) also mentions a third-generation program (Meierfrankenfeld, Stellmacher, Stroth) based on the amalgam method.

### Where to start

- [The status of the classification of the finite simple groups](https://authors.library.caltech.edu/records/5b4mm-frv50/files/ASCnams04.pdf), M. Aschbacher, 2004: five pages on the proof's structure, the quasithin gap and the second-generation program.
- [A brief history of the classification of the finite simple groups](https://doi.org/10.1090/S0273-0979-01-00909-0), R. Solomon, 2001: history and main ideas.
- [The Unbalanced Group Theorem](https://hexagonmath.org/2610.00575), Axiom Math, 2026: one first-generation step, a problem in its published route and an alternative argument.

Prerequisites: Sylow theory, solvable groups, group actions, representation theory of finite groups, some groups of Lie type.

### Further references

- M. Aschbacher, "The status of the classification of the finite simple groups", Notices Amer. Math. Soc. 51 (2004), 736–740. <https://authors.library.caltech.edu/records/5b4mm-frv50/files/ASCnams04.pdf>
- R. Solomon, "A brief history of the classification of the finite simple groups", Bull. Amer. Math. Soc. 38 (2001), 315–352. <https://doi.org/10.1090/S0273-0979-01-00909-0>
- M. Aschbacher, S. D. Smith, *The Classification of Quasithin Groups* I, II, Math. Surveys Monogr. 111, 112, AMS, 2004. <https://doi.org/10.1090/surv/111>
- D. Gorenstein, R. Lyons, R. Solomon, *The Classification of the Finite Simple Groups*, Number 1, Math. Surveys Monogr. 40.1, AMS, 1994 (Number 10 with I. Capdeboscq, 2023). <https://doi.org/10.1090/surv/040.1>
- G. Gonthier et al., "A machine-checked proof of the odd order theorem", Interactive Theorem Proving (ITP 2013), Lecture Notes in Computer Science, 163–179. <https://doi.org/10.1007/978-3-642-39634-2_14>

### Lean

#### Official statement

This problem has no official Lean statement: the classification lists the finite groups of Lie type and the 26 sporadic groups, which Mathlib does not have, and the public Lean statement `TauCeti.ClassificationStatement` (<https://github.com/TauCetiProject/TauCeti/blob/6e0c6acab5f4c6f42e5f5bab9bd5e4e84f74c380/TauCeti/GroupTheory/SpecificGroups/CFSG/Classification.lean>, Apache License 2.0), of which Axiom Math has published a Lean proof (<https://github.com/AxiomMath/CFSG/tree/69cb972f587a3ecc035e092253167ff2e303c962>), builds them in 745 files of its own (about 210,000 lines), far too many to inline here.

#### Related Lean formalizations

- [AxiomMath/CFSG](https://github.com/AxiomMath/CFSG/tree/69cb972f587a3ecc035e092253167ff2e303c962), with the project site <https://cfsg.axiommath.ai>: a complete Lean formalization of the classification following the first-generation proof, as its authors describe it (about 43 million lines of Lean), with notes on where it departs from published arguments.
- [odd-order](https://github.com/yawara/odd-order/tree/ba8ec35982ceecbd31ca987cbe0cee30477f4883): a Lean proof of the Feit–Thompson odd order theorem.
- [Qiuzhen-CFSG/CFSG](https://github.com/Qiuzhen-CFSG/CFSG/tree/0c6635528a02dd46f2e93e2ade0c4ac647ad1eb7): Lean proofs of parts of the classification, including the odd order, Bender–Suzuki and Gorenstein–Walter theorems.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has simple groups (`IsSimpleGroup`), simplicity of $A_n$ for $n\ge5$ (`alternatingGroup.isSimpleGroup`), composition series and Jordan–Hölder (`CompositionSeries.jordan_holder`), Sylow theory (`Sylow`) and Burnside's transfer theorem (`ker_transferSylow_isComplement'`). It has no Feit–Thompson theorem, no finite groups of Lie type as a family and no sporadic groups.
