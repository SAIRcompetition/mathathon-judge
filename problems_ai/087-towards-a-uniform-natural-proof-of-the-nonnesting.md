# 87 · Towards a uniform natural proof of the nonnesting-noncrossing correspondence, starting with type B

## From the proposer

- **Area:** Algebraic combinatorics (Coxeter-Catalan combinatorics)
- **Tracks:** Combinatorics

### Description

For every Weyl group W and Coxeter element c, nonnesting and noncrossing partitions are known to be equal in number, counted by Cat(W) = prod_i (h+d_i)/d_i, with matching cyclic actions. The existing proof is unsatisfying. Armstrong-Stump-Thomas give an equivariant bijection, but in their own words "the proof that our construction is well-defined is case-by-case, using a computer in the exceptional types", and it covers only bipartite c. Dequêne et al. (2022) call the relationship "frustratingly mysterious" and give a natural proof via charmed roots in type A (type C follows by folding). Type B, where folding fails, still has none.

### Desired outcome

The ideal goal is a proof of the nonnesting-noncrossing correspondence that explains it uniformly, instead of checking it type by type. Dequêne et al. propose a uniform definition of charmed roots for all Weyl groups, but it has only been made to work in type A (and type C by folding). Type B is the natural first test: does the proposed definition give local rules for an equivariant, support-preserving bijection there, for every Coxeter element, and if not, what has to change? Minimum: explicit computations for B_3, B_4 and an account of where the type A rules break. Target: rules verified by computer for all c up to B_5. Stretch: a proof for all n in type B, and a clear picture of what a uniform construction would need. Maybe also a visual exposition of the bijection in small cases.

### References

1. D. Armstrong, C. Stump, H. Thomas, "A uniform bijection between nonnesting and noncrossing partitions", Trans. Amer. Math. Soc. (2013), arXiv:1101.1277 (Main Theorem; case-by-case proof in Section 5).
2. B. Dequêne, G. Frieden, A. Iraci, F. Schreier-Aigner, H. Thomas, N. Williams, "Charmed roots and the Kroweras complement", arXiv:2212.14831 (Problem 1.3; type A bijection in Section 5; type C by folding and the proposed uniform extension in Section 7).

## AI-generated notes

<!-- status: Partly solved -->

- **Status:** Armstrong–Stump–Thomas (Trans. Amer. Math. Soc. 2013) give a uniformly stated equivariant bijection for bipartite Coxeter elements of every Weyl group, verified case by case; Dequêne et al. (J. London Math. Soc. 2024) give a natural one for all Coxeter elements in types A and C. Type B is open.
- **Task:** A test of the proposed charmed-root definition in type B: computations for $B_3$, $B_4$, rules checked by computer up to $B_5$, ideally a proof for all $n$.
- **Key reference:** [B. Dequêne et al., “Charmed roots and the Kroweras complement”, J. London Math. Soc. 110 (2024), e70025](https://arxiv.org/abs/2212.14831)
- **Lean:** Official statement.

### Notes

- Section 7 of Dequêne et al. defines charmed roots for every Weyl group but proves nothing beyond types A and C; no later work on other types was found. Numbers follow the arXiv version.
- $W(B_n)=W(C_n)$ with isomorphic root posets, but the reflections carry different roots, so $\mathrm{Krow}_c$ differs; only type C is a folding of type A (Section 7.1).

### The result

Let $W$ be a finite Weyl group with degrees $d_1\le\dots\le d_r$, Coxeter number $h=d_r$ and $\mathrm{Cat}(W)=\prod_{i}(h+d_i)/d_i$; for $B_n$ this is $\binom{2n}{n}$ ($20,70,252$ for $n=3,4,5$). For a standard Coxeter element $c$ (a product of the simple reflections in some order), $NC(W,c)=[1,c]_T$ in the absolute order, with $\mathrm{Krew}_c(\pi)=\pi^{-1}c$. $NN(W)$ is the set of order ideals of the positive root poset $\Phi^+$, with
$$\mathrm{Krow}_c=\mathrm{tog}_{\alpha^{(N)}}\circ\cdots\circ\mathrm{tog}_{\alpha^{(1)}},$$
which toggles the inversions $\alpha^{(1)},\dots,\alpha^{(N)}$ of the $c$-sorting word of $w_\circ$ in order. Both sets have $\mathrm{Cat}(W)$ elements. Theorem 1.5 (Dequêne et al.): for $W=S_n$ and every standard $c$ there is a unique bijection $\mathrm{Charm}_c:NC(S_n,c)\to NN(S_n)$ with $\mathrm{Charm}_c\circ\mathrm{Krew}_c=\mathrm{Krow}_c\circ\mathrm{Charm}_c$ that preserves support (the simple reflections in a reduced word for $\pi$; the simple roots in the ideal); Corollary 7.1 is the same for $C_n$. For general $W$, Section 7 calls $\alpha_s$ $c$-charmed if $s$ is initial or final in $c$, and $\alpha$ $c$-charmed if $s(\alpha)$ is $scs$-charmed. Whether this yields such a bijection for $B_n$ is open.

### How the known proof works

- Sections 2–5: in $S_n$, $(i,j)$ is $c$-charmed when $i$, $j$ lie on different runs of the cycle $c$ (Definition 2.4); $\mathrm{Charm}_c(\pi)$ is the ideal below lattice paths in the root poset that touch only at charmed roots (Definition 5.8).
- Section 6: for $c=(1,2,\dots,n)$ no root is charmed and $\mathrm{Charm}_c$ is classical; conjugations from $c$ to $scs$ (Propositions 3.4, 4.7) and a local check (Proposition 6.2) give the induction (Theorem 6.4).

### Background

- Classical types have other, non-uniform bijections (Fink–Iriarte Giraldo, Rubey–Stump, Mamede). $\mathrm{Krow}_c$ imitates the “rowmotion in slow motion” of Thomas–Williams (2019).

### Where to start

- [Charmed roots and the Kroweras complement](https://arxiv.org/abs/2212.14831), B. Dequêne et al., 2022: Sections 1.3–1.5, Figure 1 (proof structure), Section 7.
- [A uniform bijection between nonnesting and noncrossing partitions](https://arxiv.org/abs/1101.1277), D. Armstrong, C. Stump, H. Thomas, 2011: Section 1.3 (Main Theorem), Sections 3.2 and 5.2 (types B and C via type C).
- [Bijactions in Cataland](https://doi.org/10.46298/dmtcs.2426), N. Williams, FPSAC 2014: the toggle viewpoint and computer-tested conjectures (Section 4).

Prerequisites: finite Coxeter groups and root systems, the absolute order, order ideals and toggles; programming.

### References, with links

- D. Armstrong, C. Stump, and H. Thomas, “A uniform bijection between nonnesting and noncrossing partitions”, Trans. Amer. Math. Soc. 365 (2013), 4121–4151 (Main Theorem; case-by-case proof in Section 5). <https://arxiv.org/abs/1101.1277>
- B. Dequêne, G. Frieden, A. Iraci, F. Schreier-Aigner, H. Thomas, and N. Williams, “Charmed roots and the Kroweras complement”, J. London Math. Soc. 110 (2024), e70025 (Problem 1.3; type A in Section 5; type C by folding and the general definition in Section 7 of the arXiv version). <https://arxiv.org/abs/2212.14831>

### Further references

- H. Thomas and N. Williams, “Rowmotion in slow motion”, Proc. London Math. Soc. 119 (2019), 1149–1178. <https://arxiv.org/abs/1712.10123>
- A. Fink and B. Iriarte Giraldo, “Bijections between noncrossing and nonnesting partitions for classical reflection groups”, Port. Math. 67 (2010), 369–401. <https://arxiv.org/abs/0810.2613>
- M. Rubey and C. Stump, “Crossings and nestings in set partitions of classical types”, Electron. J. Combin. 17 (2010), R120. <https://doi.org/10.37236/392>
- R. Mamede, “A bijection between noncrossing and nonnesting partitions of types A, B and C”, Contrib. Discrete Math. 6 (2011), 70–90. <https://arxiv.org/abs/0810.1422>

### Lean

#### Official statement

`Mathathon.P87.exists_unique_charm_typeB` in [`lean/MathathonProblems/P87_CharmedBijectionTypeB.lean`](lean/MathathonProblems/P87_CharmedBijectionTypeB.lean).

```lean
theorem exists_unique_charm_typeB (hn : 2 ≤ n) (σ : Equiv.Perm (Fin n)) :
    ∃ f, IsCharmBijection n σ f ∧
      ∀ g, IsCharmBijection n σ g → Set.EqOn g f (NC n σ)
```

This is the type B analogue of Theorem 1.5 (type A) and Corollary 7.1 (type C) of the key reference: for every standard Coxeter element $c$ of $W(B_n)$ there is a unique support-preserving bijection $\mathrm{Charm}_c\colon NC(W,c)\to NN(W)$ with $\mathrm{Charm}_c\circ\mathrm{Krew}_c=\mathrm{Krow}_c\circ\mathrm{Charm}_c$, the bijection that charmed-root rules should produce; that the rules be natural is not stated. $W(B_n)$ acts on $\mathbb Z^n$ by signed permutations, and the $c$-sorting word of $w_\circ$ is written directly as $c^n$, which it is in type $B_n$ ($w_\circ=-1=c^n$, of length $n^2$). A computer search made with the same definitions when this statement was prepared finds exactly one such bijection for every $c$ when $n\le5$, and reproduces Theorem 1.5 for $S_n$, $n\le6$, and Corollary 7.1 for $n\le5$; a separate reimplementation made during review found the same for every $c$ in $B_2$–$B_5$. The case $n\ge6$ is open.

Source: written by AI for Mathathon; not taken from an existing formalization.

#### Mathlib

Mathlib has Coxeter systems (`CoxeterSystem`, `CoxeterMatrix.B`, `CoxeterSystem.length`, `CoxeterSystem.IsReflection`), root pairings with bases and heights (`RootPairing.Base`, `RootPairing.Base.height`), antichains (`IsAntichain`), `catalan` and Dyck words (`DyckWord.card_dyckWord_semilength_eq_catalan`). It lacks reflection length and the absolute order, Coxeter elements and sorting words, $NC(W,c)$, the root poset as an order, toggles and rowmotion, and the degrees of $W$.
