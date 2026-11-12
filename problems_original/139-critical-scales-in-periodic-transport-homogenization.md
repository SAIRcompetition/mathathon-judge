# Problem 139

## Problem ID

139

## Title/name of problem

Critical scales in periodic transport homogenization

## Short description of problem (100 words or less)

Periodic graph transport can converge to a continuum metric with a mesh-dependent effective mobility. That result does not determine normalized costs between distributions whose separation shrinks with the mesh. We propose to develop the critical regime where perturbation amplitude and mesh period are comparable, retaining the cost of creating and removing microscopic density patterns. The goals are dynamic cell formulas, quantitative convergence estimates, and spectral criteria identifying information lost by static homogenization. A central test is whether meshes with identical tangent norms and homogenized coefficients can have different critical transport laws.

## Submitted Area

Optimal transport, calculus of variations, metric geometry, PDEs, numerical analysis, and spectral graph theory.

## Proposed Tracks

Geometry, Analysis

## Reference/source material

- https://arxiv.org/abs/1905.05757v2
PETER GLADBACH, EVA KOPFER, JAN MAAS, AND LORENZO PORTINALE. Theorem 1.1 identifies the homogenized transport metric through an effective coefficient. Sections 3 and 4 explain periodic examples, microscopic cost reduction, and the role of mesh geometry.

- https://arxiv.org/abs/2110.15321
PETER GLADBACH, EVA KOPFER, JAN MAAS, AND LORENZO PORTINALE. Theorem 5.1 gives action homogenization through a cell formula, and Theorem 5.10 treats minimal actions with endpoint constraints.

- https://arxiv.org/abs/2312.12213v3
SADASHIGE ISHIDA AND HUGO LAVENANT. Sections 3 and 4 provide a quantitative dual approach for a different discretization, which serves as a reference for deriving estimates adapted to the critical scaling.

## Desired outcome

Develop a research exposition and theorem framework explaining how microscopic relaxation competes with small transport displacements. Reconstruct the established periodic homogenization argument, identify the information removed by its static cell minimization, and derive a dynamic cell problem when the endpoint perturbation amplitude delta and mesh period h satisfy delta/h tending to a positive finite parameter. The formulation should retain microscopic continuity, the actual projected endpoints, and internal circulation constraints.

Establish critical limits for one-dimensional periodic meshes with arbitrary finite cell patterns and logarithmic-mean mobility. Seek quantitative estimates for the squared transport cost after division by delta squared, with explicit hypotheses and parameter dependence. Develop primal recovery paths and dual certificates that preserve conservation and endpoint data exactly. Extend the method to selected periodic graph classes where additional internal circulation modes can be controlled.

Identify spectral or variational invariants governing the departure from the infinitesimal law, and determine when microscopic rearrangement produces a strict improvement. Construct and rigorously compare mesh families with the same infinitesimal norm and static homogenized coefficient but different critical costs. The desired conclusion should explain which features of the cell geometry distinguish those families and why the distinction survives the limit as h tends to zero.
