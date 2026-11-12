# 79 · The Painlevé paradox

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/079-the-painleve-paradox.md`](../problems_original/079-the-painleve-paradox.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

The Painlevé paradox

### Short description of problem (100 words or less)

A rigid rod moving on a rough surface can reach conditions where the equations predict either multiple motions or no valid motion. Explain how this occurs under Coulomb friction. Then explain how a compliant contact model changes the result. Develop a clear account of one published result, with diagrams that show the relevant parameter regimes and the assumptions behind the proof.

### Submitted Area

Nonsmooth dynamics, differential equations

### Proposed Tracks

Analysis, Computation/Applied Math

### Reference/source material

https://pmc.ncbi.nlm.nih.gov/articles/PMC5493941/

### Desired outcome

A visual explanation and a worked proof for a restricted case. A small simulation would support the explanation.

### Links in the sheet

These hyperlinks are attached to cells of this row in the sheet. They are listed here because a plain-text copy of the cells does not show them.

- Reference/source material: <https://pmc.ncbi.nlm.nih.gov/articles/PMC5493941/>

## AI-generated notes

<!-- status: Not a single theorem -->

> Written by AI for the earlier problem list, where this was problem 79 ([`problems/79-painleve-paradox.md`](../problems/79-painleve-paradox.md)), and carried over unchanged.

- **Status:** The paradox goes back to Painlevé (1895–1905); Hogan and Kristiansen (2017) proved that with a compliant contact a rod started in a paradoxical state undergoes, in the rigid limit, an impact without collision (or, in part of the indeterminate case, lift-off).
- **Task:** A visual explanation, a worked restricted-case proof, and a simulation.
- **Key reference:** [S. J. Hogan and K. Uldall Kristiansen, *On the regularization of impact without collision: the Painlevé paradox and compliance*, Proc. R. Soc. A 473 (2017), 20160773](https://pmc.ncbi.nlm.nih.gov/articles/PMC5493941/)
- **Lean:** No official statement.

### Notes

- The reference treats a planar rigid body with one slipping contact, started in a paradoxical state. The dynamics near the point $P$ where the paradox region meets lift-off ("dynamic jam") are excluded; Nordmark, Várkonyi and Champneys analyse them separately.

### The result

A rod of mass $m$, length $2l$, inertia ratio $\alpha=ml^2/I$ ($\alpha=3$ for a uniform rod) slips ($\dot x>0$) on a rough plane with Coulomb friction $F_T=\mu F_N$. In scaled units the contact point obeys
$$\ddot y=b(\theta,\phi)+p_+(\theta)F_N,\qquad b=-1+\phi^2\sin\theta,\quad p_+=1+\alpha\cos^2\theta-\mu\alpha\sin\theta\cos\theta .$$
Rigid contact requires $F_N\ge0$, $\ddot y\ge0$, $F_N\ddot y=0$. If $p_+<0$ (possible only when $\mu>2\sqrt{1+\alpha}/\alpha$, i.e. $\mu>4/3$ for $\alpha=3$), there is no valid force when $b<0$ (inconsistent) and two motions when $b>0$ (indeterminate). Hogan and Kristiansen use a spring–damper contact, $F_N=\epsilon^{-1}\max\{-\epsilon^{-1}y-\delta\dot y,0\}$ for $y\le0$, and prove (Theorems 3.1–3.2) that as $\epsilon\to0$ the rod undergoes an impact without collision lasting $O(\epsilon\ln\epsilon^{-1})$ and leaves with vertical velocity $e(\delta,\theta_0)v_0+o(1)$; in the indeterminate case an explicit threshold separates this from direct lift-off.

### Background

- Lecornu (1905) proposed a jump in vertical velocity, now called impact without collision; Zhao et al. (2008) observed it in a robotic two-link system. Génot and Brogliato (1999) proved that paradoxical states cannot be reached after a period of slipping.
- Earlier compliant models (Dupont–Yamajako 1997, Song et al. 2001, Zhao et al. 2015) were not analysed rigorously with both stiffness and damping.
- Proof of Theorem 3.1 (§4), three phases: slipping compression along an unstable manifold of the critical set $\{y=\dot y=0\}$, with $F_N=O(\epsilon^{-1})$; sticking (a Filippov sliding flow); lift-off. Tools: the scaling $y=\epsilon\hat y$, fast time $t/\epsilon$, a blow-up of the critical set and Fenichel's normal form.
- Champneys and Várkonyi (2016) review the general 2D single-contact problem, the remaining ambiguities (dynamic jam, reverse chatter), and two-contact and 3D cases.

### Where to start

- [On the regularization of impact without collision](https://pmc.ncbi.nlm.nih.gov/articles/PMC5493941/), S. J. Hogan, K. Uldall Kristiansen, 2017: §2 sets up the rod and the paradox; Figure 2 shows the four regimes in the $(\theta,\phi)$-plane and Figure 7 a simulation.
- [The Painlevé paradox in contact mechanics](https://arxiv.org/abs/1601.03545), A. R. Champneys, P. L. Várkonyi, 2016: review with physical examples and open problems.
- [Dynamics beyond dynamic jam](https://arxiv.org/abs/1707.08343), A. Nordmark, P. Várkonyi, A. Champneys, 2017: the dynamics near $P$.

Prerequisites: planar rigid-body mechanics, Coulomb friction and complementarity, Filippov systems, slow–fast systems and Fenichel theory, an ODE solver for stiff piecewise-smooth systems.

### Further references

- A. R. Champneys and P. L. Várkonyi, "The Painlevé paradox in contact mechanics," IMA J. Appl. Math. 81(3) (2016), 538–588. <https://arxiv.org/abs/1601.03545>
- F. Génot and B. Brogliato, "New results on Painlevé paradoxes," Eur. J. Mech. A Solids 18(4) (1999), 653–677. <https://doi.org/10.1016/S0997-7538(99)00144-8>
- A. Nordmark, P. Várkonyi, and A. Champneys, "Dynamics beyond dynamic jam; unfolding the Painlevé paradox singularity," arXiv:1707.08343 (2017). <https://arxiv.org/abs/1707.08343>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for an explanation and a simulation of a paradox in mechanics, not for the proof of one theorem.

#### Mathlib

Mathlib has ODE existence and uniqueness (`IsPicardLindelof`, `ODE_solution_unique`), Grönwall's inequality and the elementary functions used here (`Real.arctan`, `Real.sqrt`). It has no Filippov systems or differential inclusions, no complementarity problems and no geometric singular perturbation theory.
