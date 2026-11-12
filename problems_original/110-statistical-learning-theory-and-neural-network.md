# Problem 110

> Verbatim copy of one row of the Mathathon problem sheet. The text under each heading is the cell text, unchanged. See [README.md](README.md).

## Problem ID

110

## Title/name of problem

Statistical learning theory and neural network generalization bounds

## Short description of problem (100 words or less)

Formalize generalization bounds for neural networks in Lean. A main target is the Bartlett-Foster-Telgarsky spectral-norm margin bound, which relates test error to training margins and the network weights. Other options include nearly tight VC-dimension bounds for ReLU networks, size-independent sample complexity under norm constraints, Rademacher generalization bounds, and PAC-Bayes bounds. The point is to make the assumptions and constants explicit and build reusable tools for checking learning-theory arguments.

## Submitted Area

Statistical learning theory, probability, machine learning

## Proposed Tracks

Analysis, Computation/Applied Math

## Reference/source material

Bartlett, Foster and Telgarsky, Spectrally-normalized margin bounds for neural networks (2017).
https://arxiv.org/abs/1706.08498

Bartlett, Harvey, Liaw and Mehrabian, Nearly-tight VC-dimension and Pseudodimension Bounds for Piecewise Linear Neural Networks (2019).
https://www.jmlr.org/papers/v20/17-612.html

Golowich, Rakhlin and Shamir, Size-Independent Sample Complexity of Neural Networks (2018).
https://proceedings.mlr.press/v75/golowich18a.html

## Desired outcome

A Lean proof of the spectral-norm margin bound, with reusable Rademacher complexity and covering-number machinery. Teams could also pursue the VC-dimension bounds, norm-based sample complexity bounds, or PAC-Bayes bounds with a certified nonvacuous example for a stochastic neural network.
