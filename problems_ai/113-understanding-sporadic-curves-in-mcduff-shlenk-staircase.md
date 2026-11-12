# 113 · Understanding sporadic curves in Mcduff-Shlenk staircase

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/113-understanding-sporadic-curves-in-mcduff-shlenk-staircase.md`](../problems_original/113-understanding-sporadic-curves-in-mcduff-shlenk-staircase.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Understanding sporadic curves in Mcduff-Shlenk staircase

### Short description of problem (100 words or less)

The Nagata conjecture (recently proved by OpenAI) bounds the multiplicities with which a plane curve of fixed degree can pass through very general points. One can consider a weighted analogue which collapses these into a single point, and relates the bound to the cone of curves of a weighted blowup of the projective plane. In the range n/m (where n and m are the weights of the weighted blowup, X)  \in [7,9], symplectic geometers McDuff and Schlenk found eight sporadic steps of their ellipsoid embedding function, which correspond to eight extremal curve classes on the cone of curves of X. These curves are not yet fully understood, especially on the algebraic side. We want to know if we can give a geometric explanation for their existence.

### Submitted Area

Algebraic & symplectic geometry 

### Proposed Tracks

Geometry

### Reference/source material

The embedding capacity of $4$-dimensional symplectic ellipsoids, 
https://doi.org/10.4007/annals.2012.175.3.5


### Desired outcome

We'd like to see an exposition connecting the curve constructions, contracted surfaces, and symplectic embedding constraints.

## AI-generated notes

<!-- status: Not a single theorem -->

> Written by Claude Opus 5.5 on 2026-11-11 from the proposer's text above.

- **Status:** An exposition question: McDuff and Schlenk found the eight sporadic steps of the ellipsoid embedding function in $[7,9]$ (Annals 2012), and J. Evans (arXiv 2026) rebuilt all post-Fibonacci steps from curves on weighted blow-ups of $\mathbb P^2$; the proposer reports that the corresponding curves are still not well understood algebraically.
- **Task:** An exposition explaining the eight exceptional classes geometrically, linking the curves, the contracted (weighted blow-up) surfaces and the symplectic embedding constraints.
- **Key reference:** [D. McDuff, F. Schlenk, “The embedding capacity of 4-dimensional symplectic ellipsoids”, Ann. of Math. 175 (2012), 1191–1282](https://doi.org/10.4007/annals.2012.175.3.5)
- **Lean:** No official statement.

### Notes

- "Nagata conjecture (recently proved by OpenAI)": this refers to an OpenAI manuscript dated 23 September 2026, [“Nagata's conjecture for plane curves”](https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/preprints/Nagatas-Conjecture-for-Plane-Curves-September-23-2026/main.pdf), which claims Nagata's conjecture for all $r\ge10$ points. I found expository notes on it (Tevelev, arXiv:2610.30050) and a follow-up paper (Bruce, arXiv:2610.41931), but no refereed publication or independent verification.
- The title's "Mcduff-Shlenk" means McDuff–Schlenk. The eight steps are those of McDuff–Schlenk's Theorem 5.2.3, all in $[7\tfrac19,8\tfrac1{36}]$; Evans counts nine post-Fibonacci steps because he includes the step at $a=7$, given by the class $(3;2,1^{\times6})$. Since $c(a)=\sqrt a$ for $a\ge8\tfrac1{36}=(17/6)^2$, nothing happens in $(8\tfrac1{36},9]$.

### The result

Let $c(a)=\inf\{\mu: E(1,a)\hookrightarrow B(\mu)\}$ be the smallest ball into which the ellipsoid $E(1,a)$, $a\ge1$, embeds symplectically; volume gives $c(a)\ge\sqrt a$. **McDuff–Schlenk, Theorem 1.1.2:** (i) on $[1,\tau^4]$, $\tau$ the golden ratio, $c$ is the Fibonacci staircase: with $g_0=1$ and $g_n=f_{2n-1}$ for $n\ge1$ (so $g_n=1,1,2,5,13,\dots$), $a_n=(g_{n+1}/g_n)^2$ and $b_n=g_{n+2}/g_n$, $c(a)=a/\sqrt{a_n}$ on $[a_n,b_n]$ and $c\equiv\sqrt{a_{n+1}}$ on $[b_n,a_{n+1}]$; (ii) $c(a)=\frac{a+1}3$ on $[\tau^4,7]$; (iii) on $[7,8\frac1{36}]$, $c(a)=\sqrt a$ except on finitely many disjoint intervals, on each of which $c$ is piecewise linear with one corner; (iv) $c(a)=\sqrt a$ for $a\ge8\frac1{36}$.

The reduction (McDuff 2011): for rational $a$ with weight expansion $w(a)$ (read off from the continued fraction of $a$),
$$c(a)=\sup\Big\{\sqrt a,\ \frac{m\cdot w(a)}d:\ (d;m)\in\mathcal E\Big\},$$
where $\mathcal E$ is the set of classes $dL-\sum m_iE_i$ of embedded $(-1)$-spheres in blow-ups of $\mathbb{CP}^2$ (Corollary 1.2.3). By Proposition 1.2.9, $c(a)=8/3$ on $[7,7\frac19]$; by Theorem 5.2.3, the steps in $[7\frac19,8\frac1{36}]$ come from eight classes, centred at the indicated $a$:

| $a$ | $7\frac18$ | $7\frac2{15}$ | $7\frac17$ | $7\frac2{13}$ | $7\frac15$ | $7\frac14$ | $7\frac12$ | $8$ |
|---|---|---|---|---|---|---|---|---|
| $(d;m)$ | $(48;18^{\times7},3,2^{\times7})$ | $(64;24^{\times7},3^{\times7},1^{\times2})$ | $(24;9^{\times7},2,1^{\times6})$ | $(40;15^{\times7},2^{\times6},1^{\times2})$ | $(16;6^{\times7},1^{\times5})$ | $(35;13^{\times7},4,3^{\times3})$ | $(8;3^{\times7},1^{\times2})$ | $(6;3,2^{\times7})$ |

### How the known proof works

- McDuff's reduction: $E(1,a)$ embeds in the open ball of size $\mu$ iff $\mu\ell-\sum w_ie_i$ lies in the symplectic cone of the blow-up of $\mathbb{CP}^2$ at $M$ points, which Li–Li describe through the exceptional classes; this gives the formula for $c(a)$ above.
- On $[1,\tau^4]$ the steps come from exceptional classes whose entries are Fibonacci numbers (§3). On $[\tau^4,7]$, families of "nearly perfect" classes constrain all possible obstructions; one family, the "ghost stairs", is obstructive but never rises above $\frac{a+1}3$ (§4).
- For $a\ge7$, an estimate of the error $m-\frac d{\sqrt a}w(a)$ (Proposition 2.1.1) leaves only finitely many classes that can obstruct (Proposition 5.2.1); there are 13: $(3;2,1^{\times6})$ at $a=7$, the eight above, and four "hidden" ones that change nothing (Lemma 5.2.5).
- The search is mostly by hand, with two computer programs (Appendix B) to exclude other classes; McDuff–Schlenk also show that the ECH capacities give exactly $c(a)$.

### Background

- Algebraic side: for $a=q/p$ in lowest terms, the weighted blow-up of $\mathbb P^2$ at one point with weights $(p,q)$ is obtained by blowing up infinitely near points and contracting all but the last exceptional curve; it has cyclic quotient singularities (Evans, §1.5 and §6). A lower bound for its weighted Seshadri constant gives an ellipsoid embedding (Evans, Theorem 1.3.1; also Entov–Verbitsky and Luef–Wang). Using curves that he identifies with the "supraminimal curves" of Dumnicki–Harbourne–Küronya–Roé–Szemberg, Evans constructs every post-Fibonacci step this way (his Table 1, §7.2).
- Dumnicki–Harbourne–Küronya–Roé–Szemberg define, from very general quasi-monomial valuations, a function $\hat\mu(t)$ whose formulas in their Theorem C appear to coincide with McDuff–Schlenk's on $[1,7\frac19]$ (a comparison made for these notes, not stated in either paper); they conjecture $\hat\mu(t)=\sqrt t$ for $t\ge8\frac1{36}$, the same threshold. Their surfaces $X_t$ carry an effective anticanonical divisor exactly when $t\le7$, $t=7+\frac1n$ or $t=9$, and for $t=7+\frac1n$ the cone of curves is polyhedral exactly when $n\le8$ (Theorem A). Six of the eight centres above have the form $7+\frac1n$.
- Tevelev's notes on the OpenAI proof determine the cones of the $(p,q)$-weighted blow-up for $q>9p$: with $D=H-\sqrt{pq}\,E$, the nef cone is spanned by $H$ and $D$ and the pseudoeffective cone by $E$ and $D$ (Corollary 5.1 there).
- Unicuspidal curves: McDuff and Siegel (Invent. Math. 2025) explain the infinite staircases of the rigid del Pezzo surfaces, $\mathbb{CP}^2$ included, by rational curves with one cusp, and realize these curves algebraically. Evans (Remark 7.3.5) asks whether the post-Fibonacci steps have analogous unicuspidal curves at the slopes $107^2/40^2$, $43^2/16^2$, $35^2/13^2$, $22^2/8^2$, $17^2/6^2$; Tevelev showed that no plane curve of degree 102 and genus 10 has a $(36,289)$-cusp, which rules out the last one.

### Where to start

- [The embedding capacity of 4-dimensional symplectic ellipsoids](https://arxiv.org/abs/0912.0532), D. McDuff, F. Schlenk, 2009: §1.2 for the reduction to exceptional classes, §5.2 (Theorem 5.2.3) for the eight steps.
- [Weighted Seshadri constants and ellipsoid embeddings](https://arxiv.org/abs/2605.27574), J. Evans, 2026: the weighted blow-up point of view; §7.1 treats the step at 7 with a nodal cubic, §7.2 the other steps, §7.3 unicuspidal curves.
- [Very general monomial valuations of $\mathbb P^2$ and a Nagata type conjecture](https://arxiv.org/abs/1312.5549), M. Dumnicki, B. Harbourne, A. Küronya, J. Roé, T. Szemberg, 2013: the cones of curves of the surfaces $X_t$ and the curves behind the steps (§§3 and 5).
- [On OpenAI's proof of the Nagata conjecture](https://arxiv.org/abs/2610.30050), J. Tevelev, 2026: 19 pages for non-experts; §5 on weighted blow-ups with weight ratio above 9.

Prerequisites: blow-ups of $\mathbb P^2$, exceptional classes and Cremona transformations, continued fractions, toric and weighted blow-ups with cyclic quotient singularities, ball packings and symplectic inflation.

### References, with links

- D. McDuff and F. Schlenk, “The embedding capacity of 4-dimensional symplectic ellipsoids,” Ann. of Math. 175 (2012), 1191–1282. <https://doi.org/10.4007/annals.2012.175.3.5> <https://arxiv.org/abs/0912.0532>

### Further references

- D. McDuff, “The Hofer conjecture on embedding symplectic ellipsoids,” J. Differential Geom. 88 (2011), 519–532. <https://doi.org/10.4310/jdg/1321366358>
- M. Dumnicki, B. Harbourne, A. Küronya, J. Roé and T. Szemberg, “Very general monomial valuations of $\mathbb P^2$ and a Nagata type conjecture,” Comm. Anal. Geom. 25 (2017), 125–161. <https://doi.org/10.4310/CAG.2017.v25.n1.a4>
- J. Evans, “Weighted Seshadri constants and ellipsoid embeddings,” arXiv:2605.27574 (2026). <https://arxiv.org/abs/2605.27574>
- D. McDuff and K. Siegel, “Singular algebraic curves and infinite symplectic staircases,” Invent. Math. 242 (2025), 387–459. <https://doi.org/10.1007/s00222-025-01359-4>
- J. Tevelev, “On OpenAI's proof of the Nagata conjecture,” arXiv:2610.30050 (2026). <https://arxiv.org/abs/2610.30050>
- J. Tevelev, “Log MMP constraints on curves with cuspidal singularities,” arXiv:2608.25031 (2026). <https://arxiv.org/abs/2608.25031>
- M. Nagata, “On the 14-th problem of Hilbert,” Amer. J. Math. 81 (1959), 766–772. <https://doi.org/10.2307/2372927>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for an exposition. Even the McDuff–Schlenk theorem would need symplectic manifolds and embeddings, and the algebraic side blow-ups and intersection theory on surfaces, none of which Mathlib has.

#### Mathlib

Mathlib has continued fractions (`GenContFract`, `GenContFract.of`), Fibonacci numbers (`Nat.fib`), the symplectic group of matrices (`Matrix.symplecticGroup`), Hofer's lemma (`hofer`), and schemes with projective spectra (`AlgebraicGeometry.Proj`). It has no symplectic manifolds or embedding capacities, no blow-ups (the file on Rees algebras, `reesAlgebra`, mentions them as future work), and no divisors, intersection numbers or cones of curves on surfaces.
