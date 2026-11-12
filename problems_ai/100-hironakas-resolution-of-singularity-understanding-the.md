# 100 · Hironaka’s Resolution of Singularity: Understanding the Algorithm and Its Later Simplifications

## From the proposer

- **Area:** Algebraic Geometry
- **Tracks:** Number Theory/Algebra, Geometry

### Description

Hironaka’s theorem states that every algebraic variety over a field of characteristic zero admits a resolution of singularities. Develop an accessible explanation of how a modern resolution algorithm chooses blowup centers, measures progress, and guarantees termination. Use nontrivial worked examples to explain why naive choices can fail, and compare how later approaches, particularly those of Bierstone–Milman and Włodarczyk, clarified the construction and simplified its proof. The goal is to connect explicit local calculations with the logic of the general theorem.

### Desired outcome

A rigorous, accessible exposition of a modern proof of Hironaka’s theorem, supported by worked examples and, where useful, interactive visualizations or symbolic computation. The project should include:
- A complete walkthrough of a nontrivial surface example, explaining the chosen centers, coordinate charts, exceptional components, and measures of progress.
- A contrasting example showing why a plausible but naive sequence of blowups fails.
- An explanation of the mechanism guaranteeing termination and how local constructions fit together.
- A focused comparison of later improvements, distinguishing more systematic constructions, compatibility with coordinate changes, and simplifications of the proof.

### References

Herwig Hauser, “The Hironaka theorem on resolution of singularities (or: A proof we always wanted to understand),” Bulletin of the American Mathematical Society 40 (2003).

Edward Bierstone and Pierre D. Milman, “Resolution of Singularities,” Several Complex Variables, MSRI Publications 37 (1999).

Jarosław Włodarczyk, “Simple Hironaka resolution in characteristic zero,” Journal of the American Mathematical Society 18 (2005).

## From the judges

Suggested outcome: interactive code packages with illustrative examples

A complete walkthough of a nontrivial surface example, etc is a good idea, but a 3-fold example would better illustrate the theorem. (For surfaces, one can take a normalization to reduce to the case where the singularities only occur at isolated points. The picture is more complicated for 3-folds because then the singularities can occur along a curve).

Hauser also discusses what goes wrong in positive characteristic (someone only recently understood). A complete walkthrough of what can go wrong would be a challenging but interesting exercise. A very ambitious goal would be to produce a variety in positive characteristic where its unknown how to resolve singularities. 


## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved by H. Hironaka (Ann. of Math. 1964) for varieties over fields of characteristic zero; constructive and canonical algorithms followed (Villamayor; Bierstone–Milman 1997; Włodarczyk 2005), and weighted blowups (Abramovich–Temkin–Włodarczyk, McQuillan, around 2019–2020) simplified the procedure further.
- **Task:** An accessible exposition of a modern resolution algorithm: how centres are chosen, how progress is measured and why it terminates, with worked surface examples and a comparison of later simplifications.
- **Key reference:** [H. Hauser, “The Hironaka theorem on resolution of singularities (or: A proof we always wanted to understand)”, Bull. Amer. Math. Soc. 40 (2003), 323–403](https://doi.org/10.1090/S0273-0979-03-00982-0)
- **Lean:** Official statement.

### Notes

- The methods prove different forms of the theorem. For example, Włodarczyk's embedded desingularization (Theorem 1.0.2 of the arXiv version) allows centres that avoid the smooth locus of $Y$ but need not lie in its strict transform. A comparison should track which form each method proves.

### The result

**Theorem (Hironaka 1964, embedded form).** Let $X$ be a closed subvariety of a smooth variety $M$ over a field of characteristic zero. There is a finite sequence of blowups with smooth centres, with composite $\sigma:M'\to M$, such that
1. $\sigma$ is an isomorphism over $M\setminus\operatorname{Sing}X$;
2. the strict transform $X'$ of $X$ is smooth;
3. $X'$ and the exceptional divisor $E'=\sigma^{-1}(\operatorname{Sing}X)$ simultaneously have only normal crossings: locally $X'$ is a coordinate subspace and $E'$ a union of coordinate hyperplanes.

(Formulation from Bierstone–Milman 1999, §1.4.) In particular every variety in characteristic zero has a proper birational resolution by a smooth variety. Later proofs make the centres canonical: they are determined by a local invariant, independent of choices.

Examples in Bierstone–Milman:
- (§1) The cone $x^2-y^2-z^2=0$ is resolved by one blowup of the origin. In the chart $x=u$, $y=uv$, $z=uw$ the total transform is $u^2(1-v^2-w^2)=0$, with exceptional divisor $u=0$ and smooth strict transform $v^2+w^2=1$.
- (§1) For $z^3-x^2yz-x^4=0$, which has order 3 along the $y$-axis, blowing up that axis ($x=u$, $y=v$, $z=uw$) gives $u^3(w^3-vw-u)=0$. The strict transform is smooth but not transverse to $u=0$ at the origin, so embedded resolution needs further blowups.
- (§3, Remark 3.7) The Whitney umbrella $x^2=y^2z$. Blowing up the origin gives back $x_1^2=y_1^2z$ in the chart $x=x_1z$, $y=y_1z$, so a rule that looks only at the singularity and always blows up its "worst point" can repeat forever. Bierstone–Milman's invariant also records the exceptional divisors created by earlier blowups. With no earlier blowups it chooses the origin as the centre; when the same singularity appears after earlier blowups (year four of their Example 3.1), it chooses the singular line $x=y=0$ instead, and that blowup resolves it. The algorithm terminates because of this record of the history, not because it avoids point centres.

### How the known proof works

Following Bierstone–Milman and Włodarczyk:
- Strategy (going back to Zariski): blow up a smooth centre, as large as possible, inside the locus of the most singular points. The order of the defining equation alone is too coarse to choose the centre, even for hypersurfaces.
- Invariant (hypersurface case): $\mathrm{inv} _ X(a)=(\nu_1,s_1;\nu_2,s_2;\dots;s_t;\nu_{t+1})$, compared lexicographically. Here $\nu_1$ is the order at $a$ (in general, the Hilbert–Samuel function), the $s_r$ count exceptional hypersurfaces accumulated so far, and the $\nu_r$ for $r\ge2$ are rational "higher-order multiplicities". For $x_1^{d_1}+\dots+x_t^{d_t}=0$ at the origin it is $(d_1,0;\thinspace d_2/d_1,0;\dots;\thinspace d_t/d_{t-1},0;\thinspace\infty)$ (Example 1.10).
- Centres: the maximum locus of $\mathrm{inv} _ X$ has only normal crossings and its local components extend to smooth global centres. An extra term picks one component canonically, and the algorithm blows up the maximum locus of the extended invariant.
- Maximal contact and induction on dimension: near a point of maximal order there is a smooth hypersurface containing all nearby points of that order. The problem is passed to a "coefficient ideal" on it, one dimension lower. Włodarczyk notes that characteristic zero is used only for the local existence of such hypersurfaces.
- Termination (Theorem B): the invariant is upper semicontinuous with finitely many values locally, does not increase under admissible blowups, and drops at every point over a centre that is a maximum stratum. Nonincreasing sequences of its values stabilize, so the algorithm stops.
- Canonicity: Bierstone–Milman define $\mathrm{inv} _ X$ by local computations independent of coordinates; Włodarczyk's "homogenized ideals" make the algorithm canonical from the start and shorten the proof.
- Weighted blowups (Abramovich–Temkin–Włodarczyk; McQuillan): blowing up the worst locus with suitable weights, on a stack, decreases a simpler invariant at every step, with no record of history or exceptional divisors.

### Background

- Curves were resolved by point blowups (Max Noether, 1870s); surfaces by Jung, Walker and Zariski; Zariski's use of non-point centres (1943–44) led to Hironaka's theorem, which also covers real-analytic spaces.
- Kollár's Seattle lectures (2005–2007) give a self-contained proof of the strong Hironaka theorem.
- In positive characteristic resolution is open in general (Hauser's 2010 survey).

### Where to start

- [Resolution of singularities](https://library.slmath.org/books/Book37/files/bierstone.pdf), E. Bierstone, P. D. Milman, 1999: the invariant and the algorithm presented alongside a worked example, with an essentially complete proof for hypersurfaces.
- [Today's menu: geometry and resolution of singular algebraic surfaces](https://doi.org/10.1090/S0273-0979-10-01295-4), E. Faber, H. Hauser, 2010: basic notions explained through many examples of surfaces, with pictures of their real points.
- [Functorial embedded resolution via weighted blowings up](https://arxiv.org/abs/1906.07106), D. Abramovich, M. Temkin, J. Włodarczyk, 2019: the newest simplification, with a short algorithm.
- [resolve.lib](https://singular.mathematik.uni-kl.de/Manual/4-4/sing_1784.htm), A. Frühbis-Krüger, G. Pfister, Singular manual: an implementation of Villamayor's algorithm that outputs the charts and centres of a resolution.

Prerequisites: affine and projective varieties, blowups and their charts, order and multiplicity, normal crossings, the implicit function theorem; ideals in power series rings.

### References, with links

- H. Hauser, “The Hironaka theorem on resolution of singularities (or: A proof we always wanted to understand),” Bull. Amer. Math. Soc. 40 (2003), 323–403. <https://doi.org/10.1090/S0273-0979-03-00982-0>
- E. Bierstone and P. D. Milman, “Resolution of singularities,” in *Several Complex Variables*, MSRI Publ. 37, Cambridge Univ. Press (1999), 43–78. <https://library.slmath.org/books/Book37/files/bierstone.pdf>
- J. Włodarczyk, “Simple Hironaka resolution in characteristic zero,” J. Amer. Math. Soc. 18 (2005), 779–822. <https://doi.org/10.1090/S0894-0347-05-00493-5>

### Further references

- H. Hironaka, “Resolution of singularities of an algebraic variety over a field of characteristic zero. I, II,” Ann. of Math. 79 (1964), 109–203 and 205–326. <https://doi.org/10.2307/1970486> <https://doi.org/10.2307/1970547>
- E. Bierstone and P. D. Milman, “Canonical desingularization in characteristic zero by blowing up the maximum strata of a local invariant,” Invent. Math. 128 (1997), 207–302. <https://doi.org/10.1007/s002220050141>
- J. Kollár, “Resolution of singularities — Seattle lecture,” arXiv:math/0508332 (2005–2007). <https://arxiv.org/abs/math/0508332>
- D. Abramovich, M. Temkin and J. Włodarczyk, “Functorial embedded resolution via weighted blowings up,” Algebra Number Theory 18 (2024), 1557–1587. <https://arxiv.org/abs/1906.07106>
- M. McQuillan, “Very functorial, very fast, and very easy resolution of singularities,” Geom. Funct. Anal. 30 (2020), 858–909. <https://doi.org/10.1007/s00039-020-00523-7>
- E. Faber and H. Hauser, “Today's menu: geometry and resolution of singular algebraic surfaces,” Bull. Amer. Math. Soc. 47 (2010), 373–417. <https://doi.org/10.1090/S0273-0979-10-01295-4>
- H. Hauser, “On the problem of resolution of singularities in positive characteristic (or: A proof we are still waiting for),” Bull. Amer. Math. Soc. 47 (2010), 1–30. <https://doi.org/10.1090/S0273-0979-09-01274-9>

### Lean

#### Official statement

`AlgebraicGeometry.resolution_of_singularities_of_charZero` in [`lean/MathathonProblems/P100_ResolutionOfSingularities.lean`](lean/MathathonProblems/P100_ResolutionOfSingularities.lean).

```lean
theorem resolution_of_singularities_of_charZero (k : Type u) [Field k] [CharZero k]
    {X : Scheme.{u}} (sX : X ⟶ Spec (.of k)) [IsIntegral X] [LocallyOfFiniteType sX]
    [QuasiCompact sX] [IsSeparated sX] :
    Scheme.HasResolution sX
```

`Scheme.HasResolution sX` asks for an integral scheme $Y$, smooth over $k$, with a proper morphism $Y\to X$ that is birational (Mathlib's `Scheme.BirationalOver`). This is the existence form of Hironaka's theorem quoted by the proposer, not the embedded form or the algorithm that the problem asks to explain.

Source: <https://github.com/google-deepmind/formal-conjectures/blob/a425ca3eb797fe927cb88c950565fdcbbbbada70/FormalConjectures/Wikipedia/ResolutionOfSingularities.lean> (Apache License 2.0). Adapted: `Scheme.HasResolution` and the theorem are copied unchanged; attributes, the module header and the file's other declarations are left out.

#### Related Lean formalizations

- [MULTI-PROJ-BLOW](https://github.com/rndmx/MULTI-PROJ-BLOW), A. Mayeux: a Lean 4 formalization of the universal property of blowups of a scheme along finite families of closed subschemes (arXiv:2609.28489), which the author describes as the first formalization of blowups in any prover, without `sorry`; it builds on Lean v4.22.0-rc3, not the Mathlib version used here.

This project is described as its author describes it; its proofs have not been checked.

#### Mathlib

Mathlib has schemes, `AlgebraicGeometry.Proj`, smooth and proper morphisms (`AlgebraicGeometry.Smooth`, `AlgebraicGeometry.IsProper`), regular local rings (`IsRegularLocalRing`) and Rees algebras (`reesAlgebra`, whose docstring anticipates blowups). It has rational and birational maps of schemes (`Mathlib/AlgebraicGeometry/Birational/`), but no blowups, strict transforms, normal crossings divisors, or order or Hilbert–Samuel invariants of singularities.
