# 114 · Obstruction theory in Lean

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/114-obstruction-theory-in-lean.md`](../problems_original/114-obstruction-theory-in-lean.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Obstruction theory in Lean

### Short description of problem (100 words or less)

Formalize some of the main results of obstruction theory in Lean, especially how cohomology tells us when we can extend a map. This would also help with other formalization projects in algebraic topology.

### Submitted Area

Algebraic topology, homotopy theory, cohomology

### Proposed Tracks

Geometry

### Reference/source material

James F. Davis and Paul Kirk, Lecture Notes in Algebraic Topology, Graduate Studies in Mathematics 35 (2001), Chapter 7: Obstruction Theory and Eilenberg-MacLane Spaces, especially the main extension theorem.
https://doi.org/10.1090/gsm/035

### Desired outcome

Prove the main extension theorem in Lean and work through a few applications. Could also look at obstructions to sections of fiber bundles.

## AI-generated notes

<!-- status: Proved -->

> Written by Claude Opus 5.5 on 2026-11-11 from the proposer's text above.

- **Status:** Proved: the extension theorem of obstruction theory is classical (Eilenberg, 1940); the proposer's source states it as Theorem 7.1 of Davis–Kirk (2001).
- **Task:** Formalize the main extension theorem of obstruction theory in Lean and work through some applications, possibly including obstructions to sections of fibre bundles.
- **Key reference:** [J. F. Davis, P. Kirk, *Lecture Notes in Algebraic Topology*, Graduate Studies in Mathematics 35, AMS (2001), Chapter 7](https://doi.org/10.1090/gsm/035)
- **Lean:** No official statement.

### Notes

- Davis–Kirk prove the extension theorem only for $n$-simple targets, avoiding local coefficients. For fibrations (Theorem 7.37), where local coefficients are needed, they state the result and only indicate that the proof is similar; obstructions to sections of bundles therefore need another source or extra work.

### The result

Let $(X,A)$ be a relative CW complex with skeleta $X^n$, let $n\ge1$, and let $Y$ be path-connected and $n$-simple ($\pi_1Y$ acts trivially on $\pi_nY$, so free homotopy classes $S^n\to Y$ are elements of $\pi_nY$). For $g:X^n\to Y$ define the obstruction cochain $\theta^{n+1}(g)\in C^{n+1}(X,A;\pi_nY)=\mathrm{Hom}(C_{n+1}(X,A),\pi_nY)$ on each $(n+1)$-cell $e$ with attaching map $f_e:S^n\to X^n$ by
$$\theta^{n+1}(g)(e)=[g\circ f_e]\in\pi_nY.$$

**Theorem 7.1** (main theorem of obstruction theory). (1) $\theta^{n+1}(g)$ is a cellular cocycle, and it vanishes iff $g$ extends to $X^{n+1}$. (2) Its class $[\theta^{n+1}(g)]\in H^{n+1}(X,A;\pi_nY)$ vanishes iff $g|_{X^{n-1}}$ extends to $X^{n+1}$.

Consequences in the same chapter: if $(X,A)$ has dimension $a$ and $Y$ is $(a-1)$-connected, every map $A\to Y$ extends to $X$; for $(n-1)$-connected $Y$ the primary obstruction $\gamma^{n+1}(f)\in H^{n+1}(X,A;\pi_nY)$ is well defined and homotopy invariant (Theorems 7.14, 7.16); a map from an $n$-dimensional CW complex to an $n$-connected space is null-homotopic (Corollary 7.13); $[X,K(\pi,n)]\cong H^n(X;\pi)$ for CW complexes $X$ (Theorem 7.22); the obstruction to lifting through a fibration with $n$-simple fibre $F$ lies in $H^{n+1}(X;\pi_n(F)_\rho)$ (Theorem 7.37); and the Euler class is the primary obstruction to a nowhere-zero section, which gives the Poincaré–Hopf theorem (§7.11).

### How the known proof works

Davis–Kirk §§7.3–7.4:
- A map $S^n\to Y$ extends over $D^{n+1}$ iff it is null-homotopic, so $\theta(g)=0$ iff $g$ extends cell by cell (Lemma 7.3).
- Cocycle (Proposition 7.5, Theorem 7.6): with $C_n(X,A)=H_n(X^n,X^{n-1})$, the relative Hurewicz theorem identifies $\pi_{n+1}(X^{n+1},X^n)$, modulo the $\pi_1$-action, with $H_{n+1}(X^{n+1},X^n)$, and $\theta(g)$ becomes the boundary map to $\pi_n(X^n)$ followed by $g_*$. Then $\delta\theta(g)=0$ because the Hurewicz map onto $H_{n+2}(X^{n+2},X^{n+1})$ is surjective and two consecutive maps in the homotopy exact sequence of $(X^{n+1},X^n)$ compose to zero.
- Difference cochain (Lemma 7.8): two maps $f_0,f_1:X^n\to Y$ with a homotopy $G$ of their restrictions to $X^{n-1}$ define, via the obstruction cocycle of $(X\times I,X\times\partial I\cup A\times I)$, a cochain $d\in C^n(X,A;\pi_nY)$ with $\delta d=\theta(f_0)-\theta(f_1)$.
- Realization (Proposition 7.10, Lemma 7.11): every $d$ arises as $d(g,G,f_1)$ for some $f_1$; build $f_1$ cell by cell with the homotopy extension property of $(\partial(D^n\times I),D^n\times0\cup S^{n-1}\times I)$.
- If $\theta(g)=\delta d$, take the constant homotopy: then $\theta(f_1)=0$, so $f_1$, which equals $g$ on $X^{n-1}$, extends to $X^{n+1}$.

### Background

- Obstruction cocycles go back to Eilenberg (1940); Steenrod's *The Topology of Fibre Bundles* (1951) develops the theory for cross-sections of bundles and characteristic classes.
- Hatcher's §4.3 ("Obstruction Theory") treats the same problem through Postnikov towers and Eilenberg–MacLane spaces.
- Natural applications to formalize: Hopf's theorem that maps from an $n$-dimensional complex to $S^n$ are classified by $H^n(X;\mathbb Z)$, the hairy ball theorem through the Euler class, and Postnikov $k$-invariants (Davis–Kirk §7.12).

### Where to start

- [Lecture Notes in Algebraic Topology](https://doi.org/10.1090/gsm/035), J. F. Davis, P. Kirk, 2001: §§7.2–7.6 contain the extension theorem, the difference cochain and the primary obstruction in about ten pages.
- [Algebraic Topology](https://pi.math.cornell.edu/~hatcher/AT/ATpage.html), A. Hatcher, 2002 (free online): §4.1–4.2 for cellular approximation and the Hurewicz theorem, §4.3 for obstruction theory.

Prerequisites: CW complexes and cellular (co)homology, homotopy groups and the relative Hurewicz theorem, the homotopy extension property; for fibrations, cohomology with local coefficients.

### References, with links

- J. F. Davis and P. Kirk, *Lecture Notes in Algebraic Topology*, Graduate Studies in Mathematics 35, American Mathematical Society (2001), Chapter 7. <https://doi.org/10.1090/gsm/035>

### Further references

- S. Eilenberg, “Cohomology and continuous mappings,” Ann. of Math. 41 (1940), 231–251. <https://doi.org/10.2307/1968828>
- N. Steenrod, *The Topology of Fibre Bundles*, Princeton Mathematical Series 14, Princeton University Press (1951). <https://doi.org/10.1515/9781400883875>
- G. W. Whitehead, *Elements of Homotopy Theory*, Graduate Texts in Mathematics 61, Springer (1978). <https://doi.org/10.1007/978-1-4612-6318-0>
- A. Hatcher, *Algebraic Topology*, Cambridge University Press (2002). <https://pi.math.cornell.edu/~hatcher/AT/ATpage.html>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs cellular or singular cohomology with coefficients in $\pi_nY$ and $n$-simple spaces, which Mathlib does not have yet.

#### Related Lean formalizations

- [Spectral](https://github.com/cmu-phil/Spectral/tree/3b078f5f1de251637decf04bd3fc8aa01930a6b3), CMU HoTT group: a Lean 2 (homotopy type theory) formalization with Eilenberg–MacLane spaces, spectral sequences of exact couples and the Serre spectral sequence for cohomology; Lean 2 code cannot be used from Lean 4.
- The [lean-eval](https://github.com/leanprover/lean-eval/tree/85a88c37f80170d9f08651dc63ce6b81a8a48cb9) benchmark poses $H_1(X)\cong\pi_1(X)^{\rm ab}$ (`hurewicz_h1_abelianization`) and $\pi_n(S^n)\cong\mathbb Z$ (`pin_sphere_n_mulEquiv_int`); its [results store](https://github.com/leanprover/lean-eval-submissions/tree/0548925a543c89eb9ff692af1a3592fdb86951bb/results) lists solutions of both accepted by its comparator in 2026, some marked public.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has relative CW complexes and their skeleta (`Topology.RelCWComplex`, `Topology.RelCWComplex.skeleton`; categorical version `TopCat.RelativeCWComplex`), homotopy groups (`HomotopyGroup`, notation `π_ n X x`), relative homotopies (`ContinuousMap.HomotopyRel`), singular homology and its homotopy invariance (`AlgebraicTopology.singularHomologyFunctor`), the Eilenberg–Steenrod axioms for homology (`TopPair.HomologyPretheory`), fibre bundles (`FiberBundle`) and homotopy lifting for covering maps (`IsCoveringMap.liftHomotopy`). It has no cohomology of spaces, no cellular chain complex, no relative homotopy groups or Hurewicz theorem, no homotopy extension property for CW pairs and no Eilenberg–MacLane spaces.
