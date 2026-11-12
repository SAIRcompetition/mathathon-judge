# 103 · Rethinking Special Relativity: Axiomatizations and Underlying Mathematical Structures

## From the proposer

- **Area:** Mathematical Physics, Category Theory, Foundations of Physics
- **Tracks:** Computation/Applied Math

### Description

Special relativity can be derived from different sets of physical assumptions. What do these approaches reveal about its underlying mathematical structure? We propose to revisit its foundations through a categorical perspective, seeking deeper connections and unifying principles, with broader implications for Global Mathematics and the organization of mathematical knowledge.

### Desired outcome

A deeper and more unified understanding of the foundations of special relativity, revealing hidden connections, common mathematical structures, or new organizing principles across different derivations. 

### References

A. Einstein, On the Electrodynamics of Moving Bodies (1905).

L. D. Landau and E. M. Lifshitz, The Classical Theory of Fields, Chapter 1.

V. Ignatowsky, Some General Remarks on the Principle of Relativity (1910).

## AI-generated notes

<!-- status: Not a single theorem -->

- **Status:** Not a single theorem: deriving the Lorentz transformations from the relativity principle without the light postulate goes back to Ignatowsky (1910), and characterizations such as Zeeman's "causality implies the Lorentz group" (1964) are established.
- **Task:** Compare derivations and axiomatizations of special relativity and look for common, possibly categorical, structure.
- **Key reference:** [W. v. Ignatowsky, “Einige allgemeine Bemerkungen über das Relativitätsprinzip”, Phys. Z. 11 (1910), 972–976 (English translation on Wikisource)](https://en.wikisource.org/wiki/Translation:Some_General_Remarks_on_the_Relativity_Principle)
- **Lean:** No official statement.

### Notes

- Ignatowsky obtains the transformations up to a universal constant $n$ (the $K$ below), fixes its sign by requiring that moving rods contract, and identifies $n=1/c^2$ only through electrodynamics (the equipotential surfaces of a uniformly moving charge).
- For the "categorical perspective" we found one recent paper that treats frames as objects and boosts as morphisms (Gaio–Rizzuti 2023), but no established categorical axiomatization of special relativity.

### The result

Two representative theorems.

Relativity principle without light (Ignatowsky 1910; in the form of Pal 2003). Let $S'$ move with velocity $v$ along the $x$-axis of $S$ and write $x'=X(x,t,v)$, $t'=T(x,t,v)$. Assume (i) relativity: the inverse map is given by the same functions with $-v$; (ii) isotropy: $X(-x,t,-v)=-X(x,t,v)$, $T(-x,t,-v)=T(x,t,v)$; (iii) homogeneity of space and time, which forces linearity; (iv) composing two such maps gives another one. Then there is a universal constant $K$ with
$$x'=\frac{x-vt}{\sqrt{1-Kv^2}},\qquad t'=\frac{t-Kvx}{\sqrt{1-Kv^2}},\qquad w=\frac{u+v}{1+Kuv}$$
for the composed velocity $w$, and $K<0$ is inconsistent. $K=0$ is Galilean relativity, $K=1/c^2$ Einstein's; $K^{-1/2}$ is an invariant speed whose value physics must supply.

Causality alone (Zeeman 1964). On $M=\mathbb R^4$ with $Q(x)=x_0^2-x_1^2-x_2^2-x_3^2$ write $x<y$ if $Q(y-x)>0$ and $x_0<y_0$. Every bijection $f\colon M\to M$ with $x<y\iff f(x)<f(y)$, with no linearity or continuity assumed, is a composition of an orthochronous Lorentz transformation, a translation and a dilatation. The analogue fails when space is one-dimensional.

### How the known proof works

- Relativity alone (Pal): homogeneity makes the map linear, and relativity and isotropy reduce its matrix to $\begin{pmatrix}A_v&-vA_v\\-(A_v^2-1)/(vA_v)&A_v\end{pmatrix}$ with $A_v$ even and $A_0=1$. Composing $v$ and $u$ and requiring equal diagonal entries gives $(A_v^2-1)/(v^2A_v^2)=(A_u^2-1)/(u^2A_u^2)$, a constant $K$, so $A_v=(1-Kv^2)^{-1/2}$; for $K<0$ the composition law gives $A_w<0$ when $uv>-1/K$.
- Zeeman: $f$ and $f^{-1}$ preserve $<$ if and only if they preserve the relation "light can go from $x$ to $y$" (Lemma 1); hence $f$ maps light cones to light cones, light rays to light rays (Lemma 2) and parallel light rays to parallel ones (Lemma 3). All of this also holds in the two-dimensional counterexample.
- Using that space has dimension at least 2, $f$ is additive and order-preserving, hence linear, on each light ray (Lemma 4), and maps parallel equal intervals on light rays to parallel equal intervals (Lemma 5); in a basis of four light-like vectors this makes $f$ affine, and since it fixes the light cone it preserves $Q$ up to a positive factor.

### Background

- Einstein (1905) used the relativity principle and the constancy of the speed of light; Landau–Lifshitz (Chapter 1) derive the invariance of the interval $c^2dt^2-dx^2-dy^2-dz^2$ and obtain the Lorentz transformation as a hyperbolic rotation.
- Later derivations from relativity alone, with different assumptions (bibliographic data checked; the papers were summarized without rereading them): Berzi–Gorini (1969, reciprocity), Lévy-Leblond (1976), Mermin (1984), Pal (2003).
- Group-theoretic view: Bacry and Lévy-Leblond (1968) classified the possible kinematical groups (rotations, boosts and space-time translations), among them the Poincaré, Galilei, de Sitter and Carroll groups, related by contractions; Figueroa-O'Farrill (2018) classifies kinematical Lie algebras by deformation theory.
- Logic: Andréka, Madarász, Németi and Székely give a streamlined set of first-order axioms for special relativity and derive axioms for general relativity from it; Stannett and Németi (2014) verified results of this first-order theory in Isabelle/HOL.
- Category theory: Gaio and Rizzuti (2023) build a category of inertial frames with boosts as morphisms and a category of coordinate systems, related by functors, for both Galilean and Lorentz–Poincaré kinematics.

### Where to start

- [Nothing but relativity](https://arxiv.org/abs/physics/0302045), P. B. Pal, 2003: a five-page derivation of the transformations and velocity addition from the relativity principle alone.
- [Causality implies the Lorentz group](https://doi.org/10.1063/1.1704140), E. C. Zeeman, 1964: four pages, no continuity assumed.
- [Kinematical Lie algebras via deformation theory](https://arxiv.org/abs/1711.06111), J. Figueroa-O'Farrill, 2018: the space of possible kinematics as one algebraic object.
- [A categorical view on the principle of relativity](https://arxiv.org/abs/2205.15408), L. M. Gaio, B. F. Rizzuti, 2023: an existing categorical formulation to compare with.

Prerequisites: linear algebra and quadratic forms, Lie groups and Lie algebras, basic category theory, Minkowski geometry.

### References, with links

- A. Einstein, On the Electrodynamics of Moving Bodies (1905). Original: “Zur Elektrodynamik bewegter Körper”, Ann. Phys. (4) 17 (1905), 891–921. <https://doi.org/10.1002/andp.19053221004>; English translation (Perrett–Jeffery, 1923): <https://www.fourmilab.ch/etexts/einstein/specrel/www/>
- L. D. Landau and E. M. Lifshitz, The Classical Theory of Fields, Chapter 1 (4th English ed., Pergamon, 1975). <https://doi.org/10.1016/C2009-0-14608-1>
- V. Ignatowsky, Some General Remarks on the Relativity Principle (1910); Phys. Z. 11 (1910), 972–976. <https://en.wikisource.org/wiki/Translation:Some_General_Remarks_on_the_Relativity_Principle>

### Further references

- E. C. Zeeman, “Causality implies the Lorentz group”, J. Math. Phys. 5 (1964), 490–493. <https://doi.org/10.1063/1.1704140>
- V. Berzi, V. Gorini, “Reciprocity principle and the Lorentz transformations”, J. Math. Phys. 10 (1969), 1518–1524. <https://doi.org/10.1063/1.1665000>
- J.-M. Lévy-Leblond, “One more derivation of the Lorentz transformation”, Am. J. Phys. 44 (1976), 271–277. <https://doi.org/10.1119/1.10490>
- N. D. Mermin, “Relativity without light”, Am. J. Phys. 52 (1984), 119–124. <https://doi.org/10.1119/1.13917>
- P. B. Pal, “Nothing but relativity”, Eur. J. Phys. 24 (2003), 315–319. <https://doi.org/10.1088/0143-0807/24/3/312>
- H. Bacry, J.-M. Lévy-Leblond, “Possible kinematics”, J. Math. Phys. 9 (1968), 1605–1614. <https://doi.org/10.1063/1.1664490>
- J. Figueroa-O'Farrill, “Kinematical Lie algebras via deformation theory”, J. Math. Phys. 59 (2018), 061701. <https://doi.org/10.1063/1.5016288>
- H. Andréka, J. X. Madarász, I. Németi, G. Székely, “A logic road from special relativity to general relativity”, Synthese 186 (2012), 633–649. <https://arxiv.org/abs/1005.0960>
- M. Stannett, I. Németi, “Using Isabelle/HOL to verify first-order relativity theory”, J. Automated Reasoning 52 (2014), 361–378. <https://doi.org/10.1007/s10817-013-9292-7>
- L. M. Gaio, B. F. Rizzuti, “A categorical view on the principle of relativity”, Rep. Math. Phys. 92 (2023), 291–307. <https://doi.org/10.1016/S0034-4877(23)00081-2>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for a structural comparison, not one theorem. Statements such as Zeeman's could be written with Mathlib's linear algebra, but the Lorentz group and Minkowski space would have to be defined.

#### Related Lean formalizations

- [Physlib](https://github.com/leanprover-community/physlib/tree/master/Physlib/Relativity) (formerly PhysLean/HepLean), a community library digitalising physics in Lean 4: its `Relativity` folder has files on the Lorentz group (boosts, rotations, orthochronous, proper and restricted subgroups), the Minkowski matrix, causality, the speed of light, proper time and the twin paradox.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has the indefinite diagonal form and the indefinite orthogonal Lie algebra (`LieAlgebra.Orthogonal.indefiniteDiagonal`, `LieAlgebra.Orthogonal.so'`), weighted sums of squares (`QuadraticMap.weightedSumSquares`), isometries of quadratic forms (`QuadraticMap.IsometryEquiv`) and a large category theory library (`CategoryTheory.Groupoid`, functors, adjunctions). It has no Minkowski space, Lorentz group or Lorentz transformations, and no theory of causal orders.
