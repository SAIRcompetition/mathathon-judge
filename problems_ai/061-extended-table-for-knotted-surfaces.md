# 61 · Extended table for knotted surfaces

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/061-extended-table-for-knotted-surfaces.md`](../problems_original/061-extended-table-for-knotted-surfaces.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Extended table for knotted surfaces

### Short description of problem (100 words or less)

1-dimensional knots have been classified to great detail with a wide range of invariance properties, with repositories such as https://knotinfo.org/. The classification of Surface Knots on the other hand is complicated by various factors. There's not even a consensus on what the notion of "crossing number" should be, although there are multiple proposed definitions from different angles. Another issue we encounter is the lack of unified computational methods to encode arbitrary surface knots. One possible path is to utilize bridge trisections and triplane diagrams, although there are other diagrammatic representations of surface knots that can be encoded computationally, such as CH diagrams and banded unlink diagrams. The most recent knot table I'm aware of is Yoshikawa's table for knots in R^4 with ch-index less than 10. 

### Submitted Area

low dimensional topology, knotted surfaces in 4-manifolds

### Proposed Tracks

Algebra/Number Theory, Geometry

### Reference/source material

https://arxiv.org/pdf/2205.11120 - compiles recent results on triple point number for knots in Yoshikawa's table. 
https://projecteuclid.org/journals/osaka-journal-of-mathematics/volume-31/issue-3/An-enumeration-of-surfaces-in-four-space/ojm/1200785461.full - original source of Yoshikawa's table
Conversations with Dr. Sarah Blackwell, Dr. David Gabai and Dr. Zoltan Szabo. 

### Desired outcome

Figure out the "best" complexity measure for surface knots (crossing number vs ch-index vs bridge number vs others). Summarize all invariants from different mathematical tools and compile known computed invariants.

## AI-generated notes

<!-- status: Not a single theorem -->

> Written by AI for the earlier problem list, where this was problem 61 (commit `1f49cd4`), and carried over unchanged.

- **Status:** Yoshikawa (1994) tabulated surface-links of ch-index at most 10; several invariants of this table are now computed.
- **Task:** Compare complexity measures for surface-links and compile known invariants.
- **Key reference:** [K. Yoshikawa, "An enumeration of surfaces in four-space", Osaka J. Math. 31 (1994), 497–522](https://projecteuclid.org/journals/osaka-journal-of-mathematics/volume-31/issue-3/An-enumeration-of-surfaces-in-four-space/ojm/1200785461.full)
- **Lean:** No official statement.

### Notes

- Part of the requested compilation exists: Allred et al. (2023) converted every entry of Yoshikawa's table to a tri-plane diagram and found its minimal bridge number, and Cazet (2022) compiled the triple point numbers.
- The Description says "ch-index less than 10"; the table covers ch-index at most 10.

### The result

A surface-link is a smoothly embedded closed surface in $\mathbb R^4$, up to ambient isotopy. A ch-diagram is a link diagram with marked vertices; its ch-index is the number of marked vertices plus crossings, minimized over admissible ch-diagrams of the surface-link. Yoshikawa classified the weakly prime surface-links of ch-index at most 10 (23 surfaces, up to orientation and mirror). Other complexity measures: the triple point number (fewest triple points in a broken sheet diagram, a generic projection to $\mathbb R^3$ with crossing information), the bridge number of a bridge trisection, and the crossing number of a tri-plane diagram. The proposer wants these measures compared and the computed invariants compiled.

### Background

- Two admissible ch-diagrams represent the same surface-link iff they are related by the eight Yoshikawa moves (Kamada, Surface-Knots in 4-Space, Theorem 3.6.3).
- Meier and Zupan (2017) introduced bridge trisections and tri-plane diagrams; an orientable surface has a crossingless tri-plane diagram iff it is unknotted. Allred et al. (2023) found $c(\mathcal P^{n,m})=\max\{1,|n-m|\}$ for unknotted nonorientable surfaces and crossing-number upper bounds for the table.
- Cazet (2022): most entries are ribbon (triple point number 0); known nonzero values are 2 for $8_1^{-1,-1}$ and 4, 6 for the 2- and 3-twist-spun trefoils; two entries have bounds only.
- Hughes, Kim and Miller (2020) give complete moves for banded unlink diagrams; Joseph, Meier, Miller and Zupan (2022) compute the normal Euler number and fundamental group from tri-plane diagrams; Taniguchi (2025) bounds Kirby–Thompson invariants of several entries of the table.

### Where to start

- [On the triple point number of surface-links in Yoshikawa's table](https://arxiv.org/abs/2205.11120), N. Cazet, 2022: redraws the table, explains ch-diagrams and broken sheet diagrams.
- [Tri-plane diagrams for simple surfaces in $S^4$](https://arxiv.org/abs/2302.08431), W. Allred et al., 2023: the table as tri-plane diagrams, with bridge numbers.
- [Bridge trisections of knotted surfaces in $S^4$](https://arxiv.org/abs/1507.08370), J. Meier and A. Zupan, 2015: bridge trisections and their moves.

Prerequisites: knot diagrams and Reidemeister moves, Morse theory and motion pictures, knot groups and quandles.

### References, with links

- Recent results on the triple point number for knots in Yoshikawa's table: <https://arxiv.org/pdf/2205.11120>
- The original source of Yoshikawa's table: <https://projecteuclid.org/journals/osaka-journal-of-mathematics/volume-31/issue-3/An-enumeration-of-surfaces-in-four-space/ojm/1200785461.full>

### Further references

- W. Allred et al., "Tri-plane diagrams for simple surfaces in $S^4$", J. Knot Theory Ramifications 32 (2023), no. 6, 2350041. <https://doi.org/10.1142/S0218216523500414>
- J. Meier and A. Zupan, "Bridge trisections of knotted surfaces in $S^4$", Trans. Amer. Math. Soc. 369 (2017), 7343–7386. <https://arxiv.org/abs/1507.08370>
- M. C. Hughes, S. Kim and M. Miller, "Isotopies of surfaces in 4-manifolds via banded unlink diagrams", Geom. Topol. 24 (2020), 1519–1569. <https://arxiv.org/abs/1804.09169>
- J. Joseph, J. Meier, M. Miller and A. Zupan, "Bridge trisections and classical knotted surface theory", Pacific J. Math. 319 (2022), 343–369. <https://arxiv.org/abs/2112.11557>
- M. Taniguchi, "Estimating the Kirby–Thompson invariants of surface-links in the Yoshikawa table" (2025). <https://arxiv.org/abs/2511.14695>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for a table and an encoding of knotted surfaces, not for the proof of one theorem.

#### Mathlib

Mathlib has `IsSmoothEmbedding`, `FundamentalGroup`, `Rack`, `Quandle` and `Rack.EnvelGroup`. It has no knots or surface-links, no isotopy classes of embeddings and no knot diagrams.
