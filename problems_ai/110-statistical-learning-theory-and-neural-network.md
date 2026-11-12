# 110 · Statistical learning theory and neural network generalization bounds

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/110-statistical-learning-theory-and-neural-network.md`](../problems_original/110-statistical-learning-theory-and-neural-network.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Statistical learning theory and neural network generalization bounds

### Short description of problem (100 words or less)

Formalize generalization bounds for neural networks in Lean. A main target is the Bartlett-Foster-Telgarsky spectral-norm margin bound, which relates test error to training margins and the network weights. Other options include nearly tight VC-dimension bounds for ReLU networks, size-independent sample complexity under norm constraints, Rademacher generalization bounds, and PAC-Bayes bounds. The point is to make the assumptions and constants explicit and build reusable tools for checking learning-theory arguments.

### Submitted Area

Statistical learning theory, probability, machine learning

### Proposed Tracks

Analysis, Computation/Applied Math

### Reference/source material

Bartlett, Foster and Telgarsky, Spectrally-normalized margin bounds for neural networks (2017).
https://arxiv.org/abs/1706.08498

Bartlett, Harvey, Liaw and Mehrabian, Nearly-tight VC-dimension and Pseudodimension Bounds for Piecewise Linear Neural Networks (2019).
https://www.jmlr.org/papers/v20/17-612.html

Golowich, Rakhlin and Shamir, Size-Independent Sample Complexity of Neural Networks (2018).
https://proceedings.mlr.press/v75/golowich18a.html

### Desired outcome

A Lean proof of the spectral-norm margin bound, with reusable Rademacher complexity and covering-number machinery. Teams could also pursue the VC-dimension bounds, norm-based sample complexity bounds, or PAC-Bayes bounds with a certified nonvacuous example for a stochastic neural network.

## AI-generated notes

<!-- status: Proved -->

> Written by Claude Opus 5.5 on 2026-11-11 from the proposer's text above.

- **Status:** Proved: the spectral-norm margin bound is due to Bartlett, Foster and Telgarsky (NeurIPS 2017); the alternative targets are also published theorems (Golowich–Rakhlin–Shamir, COLT 2018; Bartlett–Harvey–Liaw–Mehrabian, JMLR 2019).
- **Task:** Formalize the spectral-norm margin bound in Lean, with reusable Rademacher-complexity and covering-number tools, or one of the alternative bounds (VC dimension, norm-based, PAC-Bayes).
- **Key reference:** [P. L. Bartlett, D. J. Foster, M. Telgarsky, “Spectrally-normalized margin bounds for neural networks”, Advances in Neural Information Processing Systems 30 (2017)](https://arxiv.org/abs/1706.08498)
- **Lean:** No official statement.

### Notes

- Use arXiv version 2 of the key reference: it replaces a 1-norm in the main bound of version 1 by the $(2,1)$ group norm. Its Theorem 1.1 hides constants and logarithmic factors in $\tilde O$; the version with explicit constants is Lemma A.9 of the appendix, and that is the statement a formalization can target.
- The proposer's "certified nonvacuous example for a stochastic neural network" has no reference on the sheet; the standard reference is Dziugaite–Roy (2017), below.

### The result

Let $\sigma_i:\mathbb R^{d_{i-1}}\to\mathbb R^{d_i}$ be $\rho_i$-Lipschitz with $\sigma_i(0)=0$, let $F_A(x)=\sigma_L(A_L\sigma_{L-1}(A_{L-1}\cdots\sigma_1(A_1x)\cdots))\in\mathbb R^k$ predict the label $\arg\max_jF_A(x)_j$, and let $W$ be the largest width. With reference matrices $M_i$ (e.g. $0$, or $I$ for residual networks), $\|\cdot\|_\sigma$ the spectral norm and $\|B\|_{2,1}$ the sum of the Euclidean norms of the columns of $B$, the spectral complexity is
$$R_A=\Big(\prod_{i=1}^L\rho_i\|A_i\|_\sigma\Big)\Big(\sum_{i=1}^L\frac{\|A_i^\top-M_i^\top\|_{2,1}^{2/3}}{\|A_i\|_\sigma^{2/3}}\Big)^{3/2}.$$

**Theorem 1.1** (Bartlett–Foster–Telgarsky). For $(x,y),(x_1,y_1),\dots,(x_n,y_n)$ i.i.d. from any distribution on $\mathbb R^d\times\{1,\dots,k\}$, with probability at least $1-\delta$, every margin $\gamma>0$ and every network $F_A$ satisfy
$$\Pr\big[\arg\max_jF_A(x)_j\ne y\big]\le\widehat R_\gamma(F_A)+\tilde O\Big(\frac{\|X\|_2R_A}{\gamma n}\ln W+\sqrt{\frac{\ln(1/\delta)}{n}}\Big),$$
where $\widehat R_\gamma(F_A)$ is the empirical ramp risk, at most the fraction of training points with margin $F_A(x_i)_{y_i}-\max_{j\ne y_i}F_A(x_i)_j\le\gamma$, and $\|X\|_2=(\sum_i\|x_i\|_2^2)^{1/2}$. Up to logarithms the bound depends on the weights only through $R_A$. Theorem 3.4 gives a lower bound $c\|X\|_2r$ for the Rademacher complexity of ReLU networks with $\prod_i\|A_i\|_\sigma\le r$, which matches the product of spectral norms in $R_A$ but not its second factor.

The alternatives: piecewise-linear networks with $W$ weights and $L$ layers have VC dimension $O(WL\log W)$, and some have $\Omega(WL\log(W/L))$ (Bartlett–Harvey–Liaw–Mehrabian); with Frobenius-norm bounds $M_F(j)$ on the layers and inputs of norm at most $B$, depth-$d$ networks with positive-homogeneous 1-Lipschitz activations have Rademacher complexity at most $B(\sqrt{2\log(2)d}+1)\prod_jM_F(j)/\sqrt m$ on $m$ samples, and under further norm assumptions bounds independent of depth and width (Golowich–Rakhlin–Shamir).

### How the known proof works

Bartlett–Foster–Telgarsky, §3 and Appendix A:
- Margin reduction (Lemma 3.1): with ramp loss $\ell_\gamma$ and margin $\mathcal M(v,y)=v_y-\max_{i\ne y}v_i$, a standard Rademacher bound gives, uniformly over a class $\mathcal F$, error $\le\widehat R_\gamma(f)+2\,\mathfrak R(\mathcal F_\gamma|_S)+3\sqrt{\ln(1/\delta)/(2n)}$.
- Matrix covering (Lemma 3.2): Maurey's sparsification lemma bounds $\ln\mathcal N(\{XA:\|A\|_{q,s}\le a\},\varepsilon,\|\cdot\|_2)$ by $\lceil a^2b^2m^{2/r}/\varepsilon^2\rceil\ln(2dm)$ when $\|X\|_p\le b$; covering a whole layer at once keeps $W$ and $L$ out of the bound except in logarithms.
- Induction on layers (Lemma A.7, Theorem 3.3): cover each layer given covers of the earlier ones; errors propagate through $\rho_i\|A_i\|_\sigma$, and optimising the per-layer resolutions gives the $(\sum(\cdot)^{2/3})^{3}$ form of $\ln\mathcal N$.
- Dudley's entropy integral (Lemma A.5) turns the covering bound into a Rademacher bound; the margin loss is $2/\gamma$-Lipschitz (Lemma A.3).
- A union bound over a grid of values of $\gamma$, $\|X\|_2$ and the norm bounds (Lemma A.9) makes the result hold for all $\gamma$ and $A$ at once.

### Background

- For neural networks, margin bounds go back to Bartlett's analysis of two-layer networks (1996), whose proof technique inspired the layer-wise induction above; Rademacher complexities as a general tool are in Bartlett–Mendelson (2002).
- Neyshabur, Bhojanapalli and Srebro (ICLR 2018) obtain a spectrally normalized margin bound by a PAC-Bayes argument.
- PAC-Bayes bounds control the risk of a randomized predictor $Q$ by its empirical risk plus a term of order $\sqrt{\mathrm{KL}(Q\|P)/n}$ for a prior $P$ fixed in advance. Dziugaite and Roy optimise such a bound directly and obtain nonvacuous bounds for stochastic networks with millions of parameters; Alquier's survey covers the theory.

### Where to start

- [Spectrally-normalized margin bounds for neural networks](https://arxiv.org/abs/1706.08498), P. L. Bartlett, D. J. Foster, M. Telgarsky, 2017: §3 sketches the proof; Appendix A has every lemma with explicit constants.
- [Lean formalization of generalization error bound by Rademacher complexity and Dudley's entropy integral](https://arxiv.org/abs/2503.19605), S. Sonoda et al., 2025: Lean 4 symmetrization, McDiarmid and Dudley on top of Mathlib, the layer this problem would build on.
- [User-friendly introduction to PAC-Bayes bounds](https://arxiv.org/abs/2110.11216), P. Alquier, 2021: for the PAC-Bayes route.

Prerequisites: concentration inequalities (Hoeffding, McDiarmid), symmetrization and Rademacher complexity, covering numbers and chaining, matrix norms; measure-theoretic probability in Mathlib.

### References, with links

- P. L. Bartlett, D. J. Foster and M. Telgarsky, “Spectrally-normalized margin bounds for neural networks,” Advances in Neural Information Processing Systems 30 (NIPS 2017). <https://arxiv.org/abs/1706.08498> <https://proceedings.neurips.cc/paper/2017/hash/b22b257ad0519d4500539da3c8bcf4dd-Abstract.html>
- P. L. Bartlett, N. Harvey, C. Liaw and A. Mehrabian, “Nearly-tight VC-dimension and pseudodimension bounds for piecewise linear neural networks,” J. Mach. Learn. Res. 20 (2019), no. 63, 1–17. <https://www.jmlr.org/papers/v20/17-612.html>
- N. Golowich, A. Rakhlin and O. Shamir, “Size-independent sample complexity of neural networks,” Proceedings of COLT 2018, PMLR 75 (2018), 297–299. <https://proceedings.mlr.press/v75/golowich18a.html>; full version: Information and Inference 9 (2020), 473–504. <https://doi.org/10.1093/imaiai/iaz007>

### Further references

- P. L. Bartlett and S. Mendelson, “Rademacher and Gaussian complexities: risk bounds and structural results,” J. Mach. Learn. Res. 3 (2002), 463–482. <https://www.jmlr.org/papers/v3/bartlett02a.html>
- B. Neyshabur, S. Bhojanapalli and N. Srebro, “A PAC-Bayesian approach to spectrally-normalized margin bounds for neural networks,” ICLR 2018. <https://arxiv.org/abs/1707.09564>
- G. K. Dziugaite and D. M. Roy, “Computing nonvacuous generalization bounds for deep (stochastic) neural networks with many more parameters than training data,” UAI 2017. <https://arxiv.org/abs/1703.11008>
- P. Alquier, “User-friendly introduction to PAC-Bayes bounds,” Found. Trends Mach. Learn. 17 (2024), no. 2, 174–303. <https://arxiv.org/abs/2110.11216>
- S. Shalev-Shwartz and S. Ben-David, *Understanding Machine Learning: From Theory to Algorithms*, Cambridge University Press (2014). <https://doi.org/10.1017/CBO9781107298019>

### Lean

#### Official statement

This problem has no official Lean statement. A faithful statement needs only i.i.d. samples, matrix norms and Lipschitz maps, which Mathlib has, but the $\tilde O$ of Theorem 1.1 must first be replaced by the explicit constants of Lemma A.9.

#### Related Lean formalizations

- [lean-rademacher](https://github.com/auto-res/lean-rademacher/tree/db9f18714b0b9934553c37db1b41250462dc7faa), S. Sonoda, K. Kasaura, Y. Mizuno, K. Tsukamoto, N. Onda (ITP 2026, [LIPIcs 382, paper 8](https://drops.dagstuhl.de/entities/document/10.4230/LIPIcs.ITP.2026.8)): empirical and expected Rademacher complexity, symmetrization, McDiarmid's inequality, a Dudley entropy-integral bound, and bounds for linear predictors.
- [lean-stat-learning-theory](https://github.com/YuanheZ/lean-stat-learning-theory/tree/d0f506f0a695018265dccb33bcb05e2f5ca1c876), Y. Zhang, J. D. Lee, F. Liu (ICML 2026, [arXiv:2602.02285](https://arxiv.org/abs/2602.02285)): Dudley's entropy integral for sub-Gaussian processes, covering numbers, Gaussian concentration and least-squares rates; the README says it contains no `sorry`.
- [FormalSLT](https://github.com/Robby955/FormalSLT/tree/5e41e98ed3e1c270efe3089a4eb86ee6dd920995): time-uniform PAC-Bayes bounds with KL divergence, VC-based uniform deviation, Rademacher symmetrization, Massart and contraction bounds, chaining.
- [formal-learning-theory-kernel](https://github.com/Zetetic-Dhruv/formal-learning-theory-kernel/tree/cdc4fc3df3d4f9487c7f91872487a8eff120d188), D. Gupta: the fundamental theorem of statistical learning (finite VC dimension and PAC learnability, among other equivalences); the author reports no `sorry`.

None of these treats neural networks. Projects outside the Palomar registry are described as their authors describe them; their proofs have not been checked.

#### Mathlib

Mathlib has VC dimension of finite set families (`Finset.vcDim`, `Finset.Shatters`) with the Sauer–Shelah lemma (`Finset.card_shatterer_le_sum_vcDim`) and Assouad's dual bound (`Finset.vcDim_dualFamily_le`); sub-Gaussian variables with Hoeffding's lemma and inequality (`ProbabilityTheory.HasSubgaussianMGF`, `ProbabilityTheory.hasSubgaussianMGF_of_mem_Icc`, `ProbabilityTheory.HasSubgaussianMGF.measure_sum_ge_le_of_iIndepFun`) and Azuma–Hoeffding (`ProbabilityTheory.measure_sum_ge_le_of_hasCondSubgaussianMGF`); covering and packing numbers (`Metric.coveringNumber`, `Metric.packingNumber`) and the chaining lemma `EMetric.pair_reduction`; KL divergence (`InformationTheory.klDiv`); and the spectral norm of matrices (scoped instance `Matrix.instL2OpNormedAddCommGroup`, `Matrix.l2_opNorm_mul`). It has no Rademacher complexity, McDiarmid inequality, Dudley integral, Maurey sparsification, PAC-Bayes bound or neural networks.
