# Problem 118

## Problem ID

118

## Title/name of problem

Formalizing the AKLT spectral gap

## Short description of problem (100 words or less)

Formalize the proof that the AKLT quantum spin model on the hexagonal lattice has a nonzero spectral gap. The existing proofs combine mathematical arguments with numerical calculations. We want to check that whole chain in Lean, including rigorous bounds for the computational steps. This would give an important result in quantum many-body physics a fully checked foundation and build tools for similar proofs.

## Submitted Area

Mathematical physics, quantum information

## Proposed Tracks

Computation/Applied mathematics

## Reference/source material

Pomata and Wei, Demonstrating the AKLT spectral gap on 2D degree-3 lattices: https://arxiv.org/abs/1911.01410

Lemm, Sandvik and Wang, Existence of a Spectral Gap in the Affleck-Kennedy-Lieb-Tasaki Model on the Hexagonal Lattice: https://arxiv.org/abs/1910.11810

## Desired outcome

A Lean proof of the hexagonal AKLT spectral gap, including the numerical bounds the argument needs. Ideally make the tools useful for other quantum spin systems too.
