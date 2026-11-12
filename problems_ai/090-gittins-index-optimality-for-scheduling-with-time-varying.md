# 90 · Gittins Index Optimality for Scheduling with Time-Varying Holding Costs

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/090-gittins-index-optimality-for-scheduling-with-time-varying.md`](../problems_original/090-gittins-index-optimality-for-scheduling-with-time-varying.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Gittins Index Optimality for Scheduling with Time-Varying Holding Costs

### Short description of problem (100 words or less)

How should we schedule jobs when the cost of delaying them increases over time? Consider a single server processing two classes of randomly arriving jobs. Each class has an increasing holding-cost function (c_i(t)), specifying the cost incurred per unit time by a job that has waited (t) time units since arrival. Our goal is to minimize the total expected cost of delay (see Li et al., 2026, §3.1).

This problem belongs to a notoriously difficult class of stochastic optimization problems called restless multi-armed bandits. We have developed a conditional result establishing the optimality of a Gittins-index scheduling policy. Can its proof be simplified or generalized?

### Submitted Area

Applied probability, stochastic optimization, Markov decision processes, queueing theory, multi-armed bandits.

### Proposed Tracks

Computation/Applied Math

### Reference/source material

Gurushankar, K. Threshold MDP and Index POMDP. Unpublished manuscript. Theorem 1.7 states the conditional Gittins-index optimality result, with the mathematical argument developed in Sections 2–3 and Appendix A. Available from the proposer.

Li, Z., Gurushankar, K., Harchol-Balter, M., and Scheller-Wolf, A. (2026). Improving Upon the Generalized cμ Rule: A Whittle Approach. Operations Research. https://doi.org/10.1287/opre.2025.1987
Sections 3.1–3.2 formally define the scheduling problem and its equivalent restless multi-armed bandit formulation.

Gurushankar, K., Li, Z., Harchol-Balter, M., and Scheller-Wolf, A. (2026). LookAhead: The Optimal Non-decreasing Index Policy for a Time-Varying Holding Cost Problem. Queueing Systems, 110, Article 7. https://doi.org/10.1007/s11134-025-09967-w
Establishes index optimality for a special case in which one job class has constant holding costs.

### Desired outcome

A simpler or more intuitive proof of the conditional Gittins-index optimality result, or a rigorous verification of its key arguments.

In classical multi-armed bandits, the Gittins index provides a remarkably simple optimal strategy: assign each option a priority based only on its own state and always choose the highest-priority option. This elegant result generally fails for restless bandits, where the states of unselected options continue to evolve.

Our scheduling problem has exactly this difficulty: a job becomes more costly to delay even when another job is being served.

The existing conditional proof uses several mathematical ideas, including Markov decision processes with age thresholds, consistency of optimal policies under different thresholds, and a construction that assigns priorities by considering the cost of serving versus waiting.

We would welcome alternative proofs that make these connections clearer, identify which assumptions are essential, or extend parts of the argument to other restless bandit problems.

Participants could focus on a particular lemma or proof technique rather than reproducing the entire result.

## AI-generated notes

<!-- status: Partly solved -->

> Written by AI for the earlier problem list, where this was problem 91 (commit `1f49cd4`), and carried over unchanged.

- **Status:** Index optimality is proved for two classes, one with constant holding cost, among non-decreasing index policies (Gurushankar et al., Queueing Systems 2026); the proposer's conditional result is unpublished and unrefereed.
- **Task:** A simpler or more intuitive proof of the conditional Gittins-index optimality result, or a rigorous check of its key steps.
- **Key reference:** [Improving upon the generalized cμ rule: a Whittle approach](https://arxiv.org/abs/2504.10622), Z. Li et al., Operations Research 74 (2026), 2577–2591.
- **Lean:** No official statement.

### Notes

- The result to be simplified (Theorem 1.7 of Gurushankar's manuscript) is unpublished, available only from the proposer and not refereed; its hypotheses are not in the proposer's text, and this page describes only the published papers.
- LookAhead is optimal only among non-decreasing index policies, not among all policies; the gap is open.

### The result

Model (Li et al. §3.1): one server, $k$ job classes, preemption allowed. Class $i$ jobs arrive at Poisson rate $\lambda_i$, have $\mathrm{Exp}(\mu_i)$ sizes, and a job of age $t$ costs $c_i(t)$ per unit time, $c_i$ non-decreasing; the goal is to minimize the long-run average holding cost. An index policy serves a job of largest index $V_i(\text{age})$. Optimal policies serve each class first-come-first-served (Lemma 3.1), so Li et al. take $V_i$ non-decreasing.

Restless bandit (Theorem 1): arm $i$ tracks the age $T_i$ of the oldest class-$i$ job; it grows at rate 1, and while active drops by an $\mathrm{Exp}(\lambda_i)$ amount at each completion (rate $\mu_i$). Arm $i$ costs
$$r_i(s)=c_i(s)+\mathbb E\sum_{j\,:\,Y_j<s}c_i(Y_j),\qquad (Y_j)\ \text{a rate-}\lambda_i\ \text{Poisson process},$$
(given the oldest age $s$, FCFS makes the younger arrivals Poisson on $(0,s)$), and non-decreasing index policies cost the same in both problems. Li et al. (Theorem 2, Corollary 1) prove indexability and find the Whittle index
$$W_i(t)=\mu_i\,\mathbb E\,[\,c_i(t+X)\,],\qquad X\sim\mathrm{Exp}(\mu_i-\lambda_i).$$
LookAhead (Theorem 1.1): for $k=2$ and $c_2$ constant, $V_1=W_1$, $V_2=\mu_2c_2$ is optimal among non-decreasing index policies.

### How the known proof works

- Li et al., Theorem 2 (§4, Appendix E): with discounting and a subsidy for the passive action, guess that a threshold policy (passive iff age $<x$) is optimal, define the index by a first-order condition in $x$, and verify the Hamilton–Jacobi–Bellman equation.
- LookAhead §3 assumes a constant class-2 index: policies become Overtake($\alpha$), and the cost derivative in $\alpha$ is a positive multiple of $\mu_1\mathbb E[c_1(\alpha+X)]-\mu_2c_2$ (Theorem 3.8). §4 drops the assumption by checking Bellman optimality criteria over one busy period.

### Background

- Whittle (1988) introduced his index for restless bandits. Van Mieghem's (1995) generalized $c\mu$ rule $\mu_ic_i(\text{age})$, asymptotically optimal in heavy traffic, is the $X\to0$ limit of $W_i$.

### Where to start

- [Improving upon the generalized cμ rule: a Whittle approach](https://arxiv.org/abs/2504.10622), Z. Li et al., 2025: §§3–4.
- [LookAhead: the optimal non-decreasing index policy for a time-varying holding cost problem](https://arxiv.org/abs/2601.08960), K. Gurushankar et al., 2026: §3 (short proof under Assumption 3.1) and §4.
- [On the Gittins index for multiarmed bandits](https://doi.org/10.1214/aoap/1177005588), R. Weber, 1992: a short proof of the Gittins index theorem.

Prerequisites: Markov decision processes, Poisson processes, M/M/1 busy periods.

### References, with links

- K. Gurushankar, “Threshold MDP and Index POMDP,” unpublished manuscript, available from the proposer (Theorem 1.7; Sections 2–3 and Appendix A).
- Z. Li, K. Gurushankar, M. Harchol-Balter, and A. Scheller-Wolf, “Improving upon the generalized cμ rule: a Whittle approach,” Operations Research 74 (2026), no. 5, 2577–2591. <https://doi.org/10.1287/opre.2025.1987>
- K. Gurushankar, Z. Li, M. Harchol-Balter, and A. Scheller-Wolf, “LookAhead: the optimal non-decreasing index policy for a time-varying holding cost problem,” Queueing Systems 110 (2026), Article 7. <https://doi.org/10.1007/s11134-025-09967-w>

### Further references

- J. C. Gittins, “Bandit processes and dynamic allocation indices,” J. R. Stat. Soc. B 41 (1979), 148–164. <https://doi.org/10.1111/j.2517-6161.1979.tb01068.x>
- R. Weber, “On the Gittins index for multiarmed bandits,” Ann. Appl. Probab. 2 (1992), 1024–1033. <https://doi.org/10.1214/aoap/1177005588>
- P. Whittle, “Restless bandits: activity allocation in a changing world,” J. Appl. Probab. 25A (1988), 287–298. <https://doi.org/10.2307/3214163>
- J. A. Van Mieghem, “Dynamic scheduling with convex delay costs: the generalized cμ rule,” Ann. Appl. Probab. 5 (1995), 809–833. <https://doi.org/10.1214/aoap/1177004706>

### Lean

#### Official statement

This problem has no official Lean statement: the target theorem is in an unpublished manuscript, and even the published special case needs continuous-time controlled queues with long-run average cost, which Mathlib does not have yet.

#### Related Lean formalizations

- [Gittins index theorem, sufficiency](https://prove2.me/theorems/52a4067f-d6cc-475f-96a3-71302ac02eee), Prove2Me: the Gittins index rule is optimal for discounted discrete-time Markov bandits (listed as proved).
- [Whittle's index rule for bandits with retirement](https://prove2.me/theorems/7fb5a716-e78e-44e5-8ff4-0f1ce823621a), Prove2Me: Theorem 1 of Whittle (1980) (listed as proved).

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has Markov kernels and trajectory measures (`ProbabilityTheory.Kernel`, `ProbabilityTheory.IsMarkovKernel`, `ProbabilityTheory.Kernel.traj`), filtrations and stopping times (`MeasureTheory.Filtration`, `MeasureTheory.IsStoppingTime`), exponential and Poisson laws (`ProbabilityTheory.expMeasure`, `ProbabilityTheory.poissonMeasure`) and real Brownian motion (`ProbabilityTheory.IsBrownianReal`). It has no Poisson processes or general continuous-time Markov processes, no Markov decision processes or policies, no queues or long-run average costs, and no Gittins or Whittle indices.
