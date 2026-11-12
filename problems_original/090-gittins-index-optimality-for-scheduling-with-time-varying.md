# Problem 90

## Problem ID

90

## Title/name of problem

Gittins Index Optimality for Scheduling with Time-Varying Holding Costs

## Short description of problem (100 words or less)

How should we schedule jobs when the cost of delaying them increases over time? Consider a single server processing two classes of randomly arriving jobs. Each class has an increasing holding-cost function (c_i(t)), specifying the cost incurred per unit time by a job that has waited (t) time units since arrival. Our goal is to minimize the total expected cost of delay (see Li et al., 2026, §3.1).

This problem belongs to a notoriously difficult class of stochastic optimization problems called restless multi-armed bandits. We have developed a conditional result establishing the optimality of a Gittins-index scheduling policy. Can its proof be simplified or generalized?

## Submitted Area

Applied probability, stochastic optimization, Markov decision processes, queueing theory, multi-armed bandits.

## Proposed Tracks

Computation/Applied Math

## Reference/source material

Gurushankar, K. Threshold MDP and Index POMDP. Unpublished manuscript. Theorem 1.7 states the conditional Gittins-index optimality result, with the mathematical argument developed in Sections 2–3 and Appendix A. Available from the proposer.

Li, Z., Gurushankar, K., Harchol-Balter, M., and Scheller-Wolf, A. (2026). Improving Upon the Generalized cμ Rule: A Whittle Approach. Operations Research. https://doi.org/10.1287/opre.2025.1987
Sections 3.1–3.2 formally define the scheduling problem and its equivalent restless multi-armed bandit formulation.

Gurushankar, K., Li, Z., Harchol-Balter, M., and Scheller-Wolf, A. (2026). LookAhead: The Optimal Non-decreasing Index Policy for a Time-Varying Holding Cost Problem. Queueing Systems, 110, Article 7. https://doi.org/10.1007/s11134-025-09967-w
Establishes index optimality for a special case in which one job class has constant holding costs.

## Desired outcome

A simpler or more intuitive proof of the conditional Gittins-index optimality result, or a rigorous verification of its key arguments.

In classical multi-armed bandits, the Gittins index provides a remarkably simple optimal strategy: assign each option a priority based only on its own state and always choose the highest-priority option. This elegant result generally fails for restless bandits, where the states of unselected options continue to evolve.

Our scheduling problem has exactly this difficulty: a job becomes more costly to delay even when another job is being served.

The existing conditional proof uses several mathematical ideas, including Markov decision processes with age thresholds, consistency of optimal policies under different thresholds, and a construction that assigns priorities by considering the cost of serving versus waiting.

We would welcome alternative proofs that make these connections clearer, identify which assumptions are essential, or extend parts of the argument to other restless bandit problems.

Participants could focus on a particular lemma or proof technique rather than reproducing the entire result.
