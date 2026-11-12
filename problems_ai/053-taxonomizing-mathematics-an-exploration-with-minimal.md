# 53 · Taxonomizing mathematics: an exploration with minimal surfaces

## From the proposer

- **Area:** geometry/geometric measure theory
- **Tracks:** Geometry

### Description

Develop a framework for organizing mathematical objects and existing results for human and machine exploration. Using minimal surfaces as an initial test case, we propose to: (1) consolidate known examples, constructions, and theorems; (2) encode geometric invariants, hypotheses, conclusions, and relationships in a machine-readable form designed for computational efficiency; (3) analyze the resulting data to uncover subtle connections and patterns across the literature; and (4) build interactive software enabling mathematicians to explore these structures. Periodic minimal surfaces, with their rich lattice symmetries and topology, offer a further example. The central objective is deeper human understanding through computational exploration.

### Desired outcome

Interactive software and a data set that can be used for human exploration and understanding

This problem is not necessarily tied to minimal surfaces. Other geometric objects could be considered.

### References

Meeks, W. H. III, and Rosenberg, H. (2005). “The uniqueness of the helicoid.” Annals of Mathematics, 161(2), 727–758; Traizet, M. (2008). “On the genus of triply periodic minimal surfaces.” Journal of Differential Geometry, 79(2), 243–275; Meeks, W. H. III (1990). “The theory of triply periodic minimal surfaces.” Indiana University Mathematics Journal, 39(3), 877–936.

## AI-generated notes

<!-- status: Not a single theorem -->

- **Status:** A data and software project; the classification results it would organise are scattered across the minimal-surface literature.
- **Task:** Interactive software and a machine-readable data set of minimal surfaces.
- **Key reference:** [W. H. Meeks III, “The theory of triply periodic minimal surfaces”, Indiana Univ. Math. J. 39 (1990), 877–936](https://doi.org/10.1512/iumj.1990.39.39043)
- **Lean:** No official statement.

### The result

The objects are complete or properly embedded minimal surfaces in $\mathbb R^3$ (mean curvature zero) and triply periodic minimal surfaces (TPMS), which are minimal surfaces $M\subset\mathbb R^3/\Lambda$ in a flat 3-torus. Typical invariants: genus, number and type of ends, total curvature, symmetry group, period lattice, embeddedness. Two sample classification theorems: Meeks–Rosenberg (Annals 2005): the only properly embedded simply connected minimal surfaces in $\mathbb R^3$ are the plane and the helicoid; Traizet (J. Differential Geom. 2008): every flat 3-torus contains compact embedded orientable minimal surfaces of every genus $g\ge 3$, in fact sequences of them with area tending to infinity, confirming a conjecture of Meeks (1990). The proposer wants such results encoded with their hypotheses and invariants, analysed for patterns, and explorable through interactive software.

### Background

- Meeks (1990): a minimal surface of genus 1 in a flat 3-torus is flat, genus 2 is impossible, genus 3 exists in every flat 3-torus (min-max), hence every odd genus by coverings; the even case was left open until Traizet.
- Five embedded TPMS were known to Schwarz's school; A. Schoen described 12 more families in 1970, completed by Karcher.
- Meeks–Pérez–Ros (Annals 2015) finish the classification of properly embedded minimal planar domains (genus 0): plane, helicoid, catenoid and the Riemann minimal examples; this is a model of the kind of “complete list” the data set could encode.
- Existing collections: K. Brakke's TPMS gallery with Surface Evolver files and genus data; EPINET (3-periodic nets from hyperbolic tilings); the LMFDB as a model of a curated, machine-readable database with an API.

### Where to start

- [On the genus of triply periodic minimal surfaces](https://www.idpoisson.fr/traizet/triply.pdf), M. Traizet, 2006 preprint: the introduction summarizes what was known on the genus of TPMS and the classical examples.
- [Properly embedded minimal planar domains](https://arxiv.org/abs/1306.1690), W. H. Meeks III, J. Pérez, A. Ros, 2013: the abstract and introduction summarize the classification of embedded planar domains of finite and infinite topology.
- [Triply periodic minimal surfaces](https://kenbrakke.com/evolver/examples/periodic/periodic.html), K. Brakke: over 30 named TPMS with images, Evolver data files and genus.

Prerequisites: differential geometry of surfaces, Weierstrass representation, basic Riemann surfaces; for software, a mesh or Surface Evolver workflow and a database schema.

### References, with links

- W. H. Meeks III and H. Rosenberg, “The uniqueness of the helicoid,” Annals of Mathematics 161(2) (2005), 727–758. <https://doi.org/10.4007/annals.2005.161.727>
- M. Traizet, “On the genus of triply periodic minimal surfaces,” Journal of Differential Geometry 79(2) (2008), 243–275. <https://doi.org/10.4310/jdg/1211512641>
- W. H. Meeks III, “The theory of triply periodic minimal surfaces,” Indiana University Mathematics Journal 39(3) (1990), 877–936. <https://doi.org/10.1512/iumj.1990.39.39043>

### Further references

- W. H. Meeks III, J. Pérez, A. Ros, “Properly embedded minimal planar domains,” Ann. of Math. 181 (2015), 473–546. <https://doi.org/10.4007/annals.2015.181.2.2>
- W. H. Meeks III, J. Pérez, “The classical theory of minimal surfaces,” Bull. Amer. Math. Soc. 48 (2011), 325–407. <https://doi.org/10.1090/S0273-0979-2011-01334-9>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for a database and software for minimal surfaces, not for the proof of one theorem.

#### Mathlib

Mathlib has Euclidean space (`EuclideanSpace ℝ (Fin 3)`), immersions (`Manifold.IsImmersion`), lattices (`IsZLattice`) for period lattices, and complex analysis for Weierstrass data (`MeromorphicOn`). It has no mean curvature, minimal surfaces or genus of a surface.
