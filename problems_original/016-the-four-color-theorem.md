# Problem 16

## Problem ID

16

## Title/name of problem

The Four-Color Theorem

## Short description of problem (100 words or less)

An arbitrary map can be colored using four colors such that every two regions sharing a boundary receive distinct colors. In graph theory, it is equivalent to say every planar graph has a proper 4-coloring.

The Appel-Haken proof and later Robertson-Sanders-Seymour-Thomas proof rely on large computer-assisted case checks, and Gonthier formalized it in Coq (2005). Understanding and exposition remain hard. Is there a more conceptual route, for example via Kauffman’s or Tait-edge-coloring algebra, or a visualizable reducibility check?

## Submitted Area

Combinatorics; graph theory

## Proposed Tracks

Combinatorics

## Reference/source material

K. Appel and W. Haken, Every Planar Map Is Four Colorable, A.M.S. Contemp. Math.
98 (1989).
N. Robertson, D. Sanders, P. Seymour, and R. Thomas, The four-colour theorem. J. Combin. Theory Ser. B 70 (1997), no. 1, 2--44.
(Robin Thomas's website) https://thomas.math.gatech.edu/FC/fourcolor.html 

Digestible overview: https://projecteuclid.org/journals/illinois-journal-of-mathematics/volume-60/issue-1/Wolfgang-Haken-and-the-four-color-problem/10.1215/ijm/1498032028.pdf

The 1976 Proof: https://projecteuclid.org/journals/illinois-journal-of-mathematics/volume-21/issue-3/Every-planar-map-is-four-colorable-Part-I-Discharging/10.1215/ijm/1256049011.pdf"

Gonthier's formalization: Gonthier, “Formal proof—the four-color theorem,” Notices of the AMS 55 (2008)

## Desired outcome

The current proofs reduce the problem to a finite case checking and then use computer assistance to finish the last steps. A preferable outcome would be a human-checkable proof, though it may still be hard even with AI-assistance. AI might be able to help find deep connections with other subjects such as algebra and topology. An illuminating alternative proof strategy will be very good.

A readable tour of the unavoidable-set and reducibility machinery with interactive tools, or an independent verification of selected components.

## Reference links

- <https://thomas.math.gatech.edu/FC/fourcolor.html>
