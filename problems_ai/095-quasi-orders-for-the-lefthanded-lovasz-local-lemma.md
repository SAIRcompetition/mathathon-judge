# 95 · Quasi-Orders For the Lefthanded Lovász Local Lemma

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/095-quasi-orders-for-the-lefthanded-lovasz-local-lemma.md`](../problems_original/095-quasi-orders-for-the-lefthanded-lovasz-local-lemma.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Quasi-Orders For the Lefthanded Lovász Local Lemma

### Short description of problem (100 words or less)

Problem: Explain how qausi-order in the Lefthanded Lovász Local Lemma 

Description: The Lovász Local Lemma (LLL) is a theorem in the probabilistic method for proving the existence of objects satisfying properties which are sufficiently likely and sufficiently independent. Pegden introduced a lefthanded version (LLLL) of the LLL which allows the the notion of independence to be directed --- dependence on events "to the left" do not count.  

All known concrete applications of LLLL use a linear order to specify what "to the left" means. However, the theorem statement allows a quasi-order with a certain, somewhat opaque property. It would be nice to have a better understanding of what this property is and  what it buys us.  

### Submitted Area

Combinatorics

### Proposed Tracks

Combinatorics

### Reference/source material

Wesley Pegden. 2011. Highly nonrepetitive sequences: Winning strategies from the local lemma. Random Struct. Algorithms 38, 1–2 (January 2011), 140–161. https://doi.org/10.1002/rsa.20354  https://arxiv.org/pdf/1010.5772

### Desired outcome

Any exposition of the quasi-order would be good. An application for which the quasi-order is not a linear order and an explanation of why the quasi-order helps would be very nice

## AI-generated notes

<!-- status: Not a single theorem -->

> Written by Claude Opus 5.5 on 2026-11-11 from the proposer's text above.

- **Status:** Pegden proved the Lefthanded Local Lemma for quasi-orders with a compatibility condition (arXiv 2010; Random Structures Algorithms 2011); its combinatorial applications order events by right endpoints of intervals, and with tree orders it matches Shearer's optimal bound on chordal graphs (Pegden 2012).
- **Task:** Explain the quasi-order condition in Pegden's lemma, and find an application where a quasi-order that is not linear helps.
- **Key reference:** [W. Pegden, “Highly nonrepetitive sequences: winning strategies from the local lemma”, Random Structures Algorithms 38 (2011), 140–161](https://arxiv.org/abs/1010.5772)
- **Lean:** No official statement.

### Notes

- Direction: the proposer says that dependence on events "to the left" does not count. In Pegden's convention it is the reverse: the hypothesis never conditions on events strictly to the right of $A$, and the lemma "allows one to ignore dependencies to the right" (Pegden 2012, §1). The two descriptions differ by reversing the order.
- On "all known applications use a linear order": Pegden's own applications use a total quasi-order with ties (intervals compared by right endpoints). Mourad (2024) writes that every known application not covered by a weaker local lemma has events depending on intervals of variables and uses this order. Pegden (2012) uses tree orders, which need not be linear, but for a structural result rather than a combinatorial application.

### The result

Let $\mathcal A$ be a finite family of events, $G$ a directed graph on $\mathcal A$ with out-neighbourhoods $\Gamma(A)$, and $\le$ a quasi-order (reflexive and transitive) on $\mathcal A$; write $C>A$ when $A\le C$ and $C\not\le A$.

**Lefthanded Local Lemma** (Pegden 2011, Theorem 3.1). Assume

(5) for every $A$, every $B\in\Gamma(A)$ and every $C\notin\Gamma(A)\cup\{A\}$: if $C>B$ then $C>A$;

(6) there are $x_A\in(0,1)$ such that
$$\mathbb P\Big(A\ \Big|\ \bigcap_{C\in\mathcal C}\bar C\Big)\le x_A\prod_{B\in\Gamma(A)}(1-x_B)$$
for every $A$ and every $\mathcal C\subseteq\mathcal A\setminus\Gamma(A)$ with no $C\in\mathcal C$ satisfying $C>A$.

Then $\mathbb P\big(\bigcap_{A\in\mathcal A}\bar A\big)\ge\prod_{A}(1-x_A)>0$.

If all events are equivalent, or pairwise incomparable, there is no $C>A$, (5) is vacuous and this is the lopsided Local Lemma of Erdős and Spencer. A linear order asks (6) only for families of events below $A$. Condition (5) says that a non-neighbour of $A$ lying strictly above some neighbour of $A$ must lie strictly above $A$.

Tree orders (Pegden 2012): a partial order is a tree order if the elements above any element form a chain. An undirected graph is lefthanded for a tree order if adjacent vertices are comparable and $w<u<v$, $v\sim w$ imply $v\sim u$. In this setting the lemma only needs $\mathbb P(A_v)\le x_v\prod_{u\sim v,\,u<v}(1-x_u)$. Lefthanded graphs are exactly the subtree intersection graphs, hence the chordal graphs (Gavril). Pegden's Theorem 1.10: on such a graph this condition is as strong as Shearer's necessary and sufficient condition. For example, for two adjacent events of probability $p$ the ordinary Local Lemma needs $p\le\frac14$, while the ordered version and Shearer's condition allow every $p<\frac12$.

The open question is what quasi-orders other than these buy in actual applications.

### How the known proof works

- Pegden proves the stronger statement $\mathbb P(\bigcap_{\mathcal A_1}\bar A\mid\bigcap_{\mathcal A_2}\bar A)\ge\prod_{\mathcal A_1}(1-x_A)$ for disjoint $\mathcal A_1,\mathcal A_2$ with no element of $\mathcal A_2$ strictly above an element of $\mathcal A_1$, by induction on $|\mathcal A_1|+|\mathcal A_2|$, as in the standard proof of the Local Lemma.
- $\mathcal A_1=\{A\}$: split $\mathcal A_2$ into neighbours $\mathcal B$ and non-neighbours $\mathcal C$ of $A$. Hypothesis (6) bounds $\mathbb P(A\mid\bigcap_{\mathcal C}\bar C)$. Condition (5) guarantees that no $C\in\mathcal C$ is strictly above any $B\in\mathcal B$, so the induction hypothesis bounds $\mathbb P(\bigcap_{\mathcal B}\bar B\mid\bigcap_{\mathcal C}\bar C)$ from below. This is the only use of (5).
- $|\mathcal A_1|\ge2$: remove a maximal element of $\mathcal A_1$ and use the chain rule.
- Why an order is needed (Pegden 2011, §2): in a game, Player 2's later moves may depend on whether a bad event already happened, so conditioning on later events gives no useful bound. Conditioning only on earlier events is harmless, because Player 1's later coin flips are independent of the past.

### Background

- Pegden's applications: in the binary sequence game, Player 1 can force identical blocks of length $n>N_\varepsilon$ to be at distance more than $(2-\varepsilon)^{n/2}$, a game version of a theorem of Beck; there are similar results for adjacent blocks and pattern avoidance.
- Grytczuk, Przybyło and Zhu used the lemma to show that the Thue choice number of paths is at most 4. Peres and Schlag used essentially the same special case for lacunary sequences.
- Mourad (2024) gives constructive and computable versions, via a Moser–Tardos resampling algorithm in which a linear order sets the priority of events.

### Where to start

- [Highly nonrepetitive sequences: winning strategies from the local lemma](https://arxiv.org/abs/1010.5772), W. Pegden, 2010: §2 explains why the ordinary lemma fails for games; §3 states and proves the lemma in two pages.
- [The Lefthanded Local Lemma characterizes chordal dependency graphs](https://arxiv.org/abs/1204.5922), W. Pegden, 2012: tree orders, which need not be linear, and a greedy test for Shearer's condition on chordal graphs.
- [Computing non-repetitive sequences with a computable lefthanded local lemma](https://arxiv.org/abs/2406.10564), D. Mourad, 2024: reads the order as a resampling priority and surveys the known applications.
- [Paintability of r-chromatic graphs](https://arxiv.org/abs/2403.11888), P. Bradshaw, J. A. Zeng, 2024: §4 notes, citing Pegden, that the Local Lemma does not transfer easily to two-player colouring games such as online list colouring; a possible test case.

Prerequisites: the Lovász Local Lemma (general and lopsided forms) and its inductive proof, dependency graphs, quasi-orders; for Pegden (2012), chordal graphs and Shearer's bound.

### References, with links

- W. Pegden, “Highly nonrepetitive sequences: winning strategies from the local lemma,” Random Structures Algorithms 38 (2011), no. 1–2, 140–161. <https://doi.org/10.1002/rsa.20354> <https://arxiv.org/abs/1010.5772>

### Further references

- W. Pegden, “The lefthanded local lemma characterizes chordal dependency graphs,” Random Structures Algorithms 41 (2012), 546–556. <https://doi.org/10.1002/rsa.20439>
- J. B. Shearer, “On a problem of Spencer,” Combinatorica 5 (1985), 241–245. <https://doi.org/10.1007/BF02579368>
- P. Erdős and J. Spencer, “Lopsided Lovász Local Lemma and Latin transversals,” Discrete Appl. Math. 30 (1991), 151–154. <https://doi.org/10.1016/0166-218X(91)90040-4>
- J. Grytczuk, J. Przybyło and X. Zhu, “Nonrepetitive list colourings of paths,” Random Structures Algorithms 38 (2011), 162–173. <https://doi.org/10.1002/rsa.20347>
- Y. Peres and W. Schlag, “Two Erdős problems on lacunary sequences: chromatic number and Diophantine approximation,” Bull. London Math. Soc. 42 (2010), 295–300. <https://doi.org/10.1112/blms/bdp126>
- D. Mourad, “Computing non-repetitive sequences with a computable lefthanded local lemma,” arXiv:2406.10564 (2024). <https://arxiv.org/abs/2406.10564>
- P. Bradshaw and J. A. Zeng, “Paintability of r-chromatic graphs,” Discrete Math. 348 (2025), 114558. <https://doi.org/10.1016/j.disc.2025.114558>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for an explanation and new applications. The lemma itself needs only finite probability spaces, conditional probability and quasi-orders, all of which Mathlib has.

#### Related Lean formalizations

- [Lean-4.0-LLL](https://github.com/nsglover/Lean-4.0-LLL), N. Glover: described by its author as a formal proof in Lean 4 of the asymmetric Lovász Local Lemma and its symmetric corollary (not the lefthanded version); the repository is archived.

This project is described as its author describes it; its proof has not been checked.

#### Mathlib

Mathlib has conditional probability (`ProbabilityTheory.cond`), mutual independence of events (`ProbabilityTheory.iIndepSet`), quasi-orders (`Preorder`), `Digraph` and `SimpleGraph`. It has no Lovász Local Lemma in any form, no Shearer bound and no chordal graphs.
