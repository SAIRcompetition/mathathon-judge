# 115 · Exotic spheres

## From the proposer

- **Area:** Differential topology, geometry
- **Tracks:** Geometry

### Description

Formalize Milnor's construction of exotic 7-spheres in Lean: manifolds that are homeomorphic to the usual sphere but not diffeomorphic to it. This is a good example of how smooth and topological geometry can differ. Could also work towards the Kervaire-Milnor classification of homotopy spheres.

### Desired outcome

Construct an exotic 7-sphere in Lean and prove that it is homeomorphic but not diffeomorphic to the standard sphere. A broader goal would be to formalize the classification results and the tools they use.

### References

John Milnor, On Manifolds Homeomorphic to the 7-Sphere, Annals of Mathematics 64 (1956), 399-405.
https://webhomes.maths.ed.ac.uk/~v1ranick/papers/exotic.pdf

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved by J. Milnor (Annals 1956); Kervaire and Milnor (Annals 1963) showed that the group $\Theta_n$ of homotopy $n$-spheres is finite for $n\ne3$ and has order 28 for $n=7$.
- **Task:** Construct an exotic 7-sphere in Lean and prove that it is homeomorphic but not diffeomorphic to $S^7$; more broadly, formalize the Kervaire–Milnor classification and the tools it uses.
- **Key reference:** [J. Milnor, “On manifolds homeomorphic to the 7-sphere”, Ann. of Math. 64 (1956), 399–405](https://doi.org/10.2307/1969983)
- **Lean:** No official statement.

### Notes

- Mathlib already states the existence of an exotic 7-sphere (as a `proof_wanted`), and the lean-eval benchmark poses the same statement; its results store lists Lean proofs accepted by its comparator in October 2026, all with private sources. See Lean below.

### The result

$S^3$-bundles over $S^4$ with structure group $SO(4)$ are classified by $\pi_3(SO(4))\cong\mathbb Z\oplus\mathbb Z$. For $(h,j)\in\mathbb Z^2$, let $\xi_{hj}$ be the $S^3$-bundle over $S^4$ with clutching map $u\mapsto(v\mapsto u^hvu^j)$ (quaternions, $u\in S^3$, $v\in\mathbb R^4=\mathbb H$); its first Pontryagin class is $\pm2(h-j)\iota$ (Lemma 3). For odd $k$, $M^7_k$ is the total space with $h+j=1$ and $h-j=k$.

For a closed oriented 7-manifold $M$ with $H^3(M)=H^4(M)=0$ that bounds a compact oriented 8-manifold $B$, Milnor sets
$$\lambda(M)\equiv2q(B)-\tau(B)\pmod 7,\qquad q(B)=\langle\nu,(i^{-1}p_1)^2\rangle,$$
where $\tau(B)$ is the signature of the intersection form on $H^4(B,M)$, $i:H^4(B,M)\to H^4(B)$ is an isomorphism and $\nu$ is the orientation class; by Theorem 1, $\lambda(M)$ does not depend on $B$.

**Theorem 3** (Milnor). If $k^2\not\equiv1\pmod 7$, then $M^7_k$ is homeomorphic to $S^7$ but not diffeomorphic to it.

For example $k=3$ gives an exotic 7-sphere. Milnor also deduces a smooth structure on $S^7$ that does not extend over $\mathbb R^8$, and a diffeomorphism of $S^6$ of degree $+1$ not smoothly isotopic to the identity. Kervaire–Milnor: homotopy $n$-spheres up to h-cobordism form a group $\Theta_n$ under connected sum, finite for $n\ne3$; it contains the subgroup $bP_{n+1}$ of spheres bounding parallelizable manifolds, $\Theta_n/bP_{n+1}$ embeds in the cokernel of the $J$-homomorphism, $bP_{n+1}=0$ for $n$ even, and $bP_8$ has order 28. By Smale's h-cobordism theorem, for $n\ne3,4$ the elements of $\Theta_n$ are the smooth structures on the topological $n$-sphere.

### How the known proof works

- Homeomorphism (Lemma 5, Theorem 2): $f(x)=\mathrm{Re}(v)/(1+|u|^2)^{1/2}$, in suitable quaternionic coordinates $(u,v)$ on $M_k$, has exactly two critical points, both nondegenerate. Following the normalized gradient flow from Morse coordinates near the minimum gives a homeomorphism $M_k\to S^7$ that is a diffeomorphism except at one point (Reeb's theorem).
- Well-definedness of $\lambda$ (Theorem 1): for two choices $B_1,B_2$, glue $C=B_1\cup_M(-B_2)$. Hirzebruch's signature theorem $\tau(C)=\frac1{45}\langle7p_2(C)-p_1^2(C),\nu\rangle$ gives $45\tau(C)+q(C)\equiv0$, i.e. $2q(C)-\tau(C)\equiv0\pmod7$, and $\tau$ and $q$ are additive under gluing (Lemma 1).
- Computation (Lemma 4): $M_k$ bounds the associated 4-disc bundle $B_k$, with $H^4(B_k)\cong\mathbb Z$, $\tau(B_k)=1$ and $p_1(B_k)=\pm2k\alpha$; the constant is fixed by $B_1\cup D^8=\mathbb{HP}^2$. So $2q-\tau=8k^2-1\equiv k^2-1\pmod 7$.
- A diffeomorphism $M_k\cong S^7$ would give $\lambda(M_k)=\lambda(S^7)=0$, computed from $B=D^8$. For this step the main inputs are Pontryagin classes, $p_1(\mathbb{HP}^2)$, and the signature theorem for one closed smooth 8-manifold, $B_k\cup D^8$; Thom's theorem that every $M^7$ bounds is needed only to define $\lambda$ in general.

### Background

- Kervaire–Milnor's $\Theta_n/bP_{n+1}$ is controlled by stable homotopy groups of spheres; $bP_{4m+2}$ has order 1 or 2, and which one occurs is the Kervaire invariant problem (problem 111). In odd dimensions, $S^n$ has a unique smooth structure only for $n=1,3,5,61$ (Wang–Xu, 2017).
- Eells and Kuiper (1962) defined a finer invariant of the same kind; Brieskorn (1966) realized exotic spheres as links of complex hypersurface singularities; Gromoll and Meyer (1974) gave an exotic 7-sphere with a metric of nonnegative sectional curvature.

### Where to start

- [On manifolds homeomorphic to the 7-sphere](https://webhomes.maths.ed.ac.uk/~v1ranick/papers/exotic.pdf), J. Milnor, 1956: seven pages; Lemmas 3–5 contain the whole construction.
- [Exotic spheres](https://webhomes.maths.ed.ac.uk/~v1ranick/exotic.htm), A. Ranicki's annotated collection of the original papers (Milnor, Kervaire–Milnor, Eells–Kuiper, Brieskorn, Gromoll–Meyer, surveys).
- [Differential topology forty-six years later](https://webhomes.maths.ed.ac.uk/~v1ranick/papers/hedrick2.pdf), J. Milnor, Notices Amer. Math. Soc. 2011: survey of what happened after the exotic spheres.
- [Groups of homotopy spheres: I](https://doi.org/10.1090/bull/1504), M. Kervaire, J. Milnor, 1963, reprinted in Bull. Amer. Math. Soc. 2015.

Prerequisites: smooth manifolds and vector bundles, Pontryagin classes and the signature of a 4k-manifold, Hirzebruch's signature theorem, basic Morse theory, quaternions.

### References, with links

- J. Milnor, “On manifolds homeomorphic to the 7-sphere,” Ann. of Math. 64 (1956), 399–405. <https://webhomes.maths.ed.ac.uk/~v1ranick/papers/exotic.pdf> <https://doi.org/10.2307/1969983>

### Further references

- M. A. Kervaire and J. W. Milnor, “Groups of homotopy spheres: I,” Ann. of Math. 77 (1963), 504–537. <https://doi.org/10.2307/1970128>; reprinted in Bull. Amer. Math. Soc. 52 (2015), 659–692. <https://doi.org/10.1090/bull/1504>
- J. Milnor, “Differential topology forty-six years later,” Notices Amer. Math. Soc. 58 (2011), 804–809. <https://webhomes.maths.ed.ac.uk/~v1ranick/papers/hedrick2.pdf>
- J. Milnor and J. D. Stasheff, *Characteristic Classes*, Annals of Mathematics Studies 76, Princeton University Press (1974). <https://doi.org/10.1515/9781400881826>
- G. Wang and Z. Xu, “The triviality of the 61-stem in the stable homotopy groups of spheres,” Ann. of Math. 186 (2017), 501–580. <https://doi.org/10.4007/annals.2017.186.2.3>

### Lean

#### Official statement

This problem has no official Lean statement. A faithful statement needs nothing Mathlib lacks: the Mathlib package already contains one, `proof_wanted exists_homeomorph_isEmpty_diffeomorph_sphere_seven` in `Wanted/Geometry/Manifold/PoincareConjecture.lean` (outside the `Mathlib/` folder).

#### Related Lean formalizations

- [`milnor_exotic_sphere_seven`](https://lean-lang.org/eval/problems/milnor_exotic_sphere_seven/), lean-eval benchmark: the same statement as Mathlib's. Its [results store](https://github.com/leanprover/lean-eval-submissions/tree/0548925a543c89eb9ff692af1a3592fdb86951bb/results) lists four solutions accepted by its comparator between 2 and 16 October 2026, all with private sources.
- [exotic-spheres-8-10-positive-curvature](https://github.com/galazg24/exotic-spheres-8-10-positive-curvature/tree/567bd1519faf2e84ac92b3a878e73b578338297e), F. Galaz-García: a Lean formalization of his 2026 preprint on positive curvature on the exotic 8-sphere and on homotopy 10-spheres of order three. The facts $\Theta_8\cong\mathbb Z/2$ and $\Theta_{10}\cong\mathbb Z/6$, the identification of its models with exotic spheres and several geometric theorems enter as hypotheses; the README reports no `sorry`.

Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has smooth manifolds, homeomorphisms and diffeomorphisms (`Homeomorph`, `Diffeomorph` with notation `M ≃ₘ⟮I, J⟯ N`), the smooth structure on spheres (`EuclideanSpace.instIsManifoldSphere`), vector and fibre bundles (`VectorBundle`, `FiberBundle`), quaternions (`Quaternion`), homotopy equivalences (`ContinuousMap.HomotopyEquiv`) and the smooth Poincaré property as a definition (`ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere`). It has no Morse theory or Reeb's theorem, no cohomology ring of a manifold, no Pontryagin classes, no signature or signature theorem, and no groups of homotopy spheres.
