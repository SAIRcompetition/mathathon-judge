# 30 · Jacquet-Langlands correspondence for GL(2)

> Only the section **From the proposer** comes from the problem sheet; it is copied verbatim from [`problems_original/030-jacquet-langlands-correspondence-for-gl-2.md`](../problems_original/030-jacquet-langlands-correspondence-for-gl-2.md). Everything under **AI-generated notes** was written by AI and may contain errors.

## From the proposer

### Title/name of problem

Jacquet-Langlands correspondence for GL(2)

### Short description of problem (100 words or less)

The Jacquet–Langlands correspondence, established by Hervé Jacquet and Robert Langlands in 1970, is a foundational result in number theory and representation theory. It links automorphic representations of GL(2) with those of the multiplicative group of a quaternion algebra, matching representations that share the same local data and L-functions. As one of the earliest proven cases of Langlands functoriality, it became an essential tool in modern arithmetic, including work leading to the proof of Fermat’s Last Theorem.

### Submitted Area

Number Theory, Langlands Programme

### Proposed Tracks

Algebra/Number Theory

### Reference/source material

Jacquet, H.; Langlands, Robert P. (1970), Automorphic Forms on GL(2), Lecture Notes in Mathematics, vol. 114, Berlin, New York: Springer-Verlag, doi:10.1007/BFb0058988, ISBN 978-3-540-04903-6, MR 0401654
Bergeron, N. (2016). Jacquet-Langlands Correspondence. In: The Spectrum of Hyperbolic Surfaces. Universitext. Springer, Cham. https://doi.org/10.1007/978-3-319-27666-3_8

### Desired outcome

A new approach to the construction of the Jacquet-Langlands functorial transfer and the characterization of its image. If early attempts to a new approach bear no fruit, we could aim at a LEAN formalization of the trace formula proof, with an accompanying human-readable mathematically consistent writeup.

## AI-generated notes

<!-- status: Proved -->

> Written by AI for the earlier problem list, where this was problem 30 (commit `1f49cd4`), and carried over unchanged.

- **Status:** Proved by H. Jacquet and R. P. Langlands (1970) by comparing trace formulas.
- **Task:** A new construction of the transfer and of its image.
- **Key reference:** [Automorphic Forms on GL(2)](https://doi.org/10.1007/BFb0058988), H. Jacquet and R. P. Langlands, Lecture Notes in Math. 114, Springer, 1970.
- **Lean:** No official statement.

### The result

Let $D$ be a quaternion algebra over a number field $F$, ramified at a finite set $S$ of places. The global correspondence attaches to each infinite-dimensional automorphic representation $\pi'$ of $D^\times(\mathbb A_F)$ a cuspidal automorphic representation $\pi=\mathrm{JL}(\pi')$ of $\mathrm{GL}_2(\mathbb A_F)$ with
$$\pi_v\cong\pi'_v\ (v\notin S),\qquad \pi_v=\mathrm{JL}_v(\pi'_v)\ (v\in S),$$
where $\mathrm{JL}_v$ is the local correspondence from irreducible representations of $D_v^\times$ to discrete series of $\mathrm{GL}_2(F_v)$. The map is injective, and its image consists of the cuspidal $\pi$ that are discrete series at every $v\in S$. One-dimensional representations of $D^\times(\mathbb A_F)$ match the characters $\chi\circ\det$ of $\mathrm{GL}_2(\mathbb A_F)$.

### How the known proof works

- Transfer: regular elliptic classes of $D_v^\times$ match those of $\mathrm{GL}_2(F_v)$; one uses test functions $f\leftrightarrow f'$ with matching orbital integrals.
- Trace formulas: the one for $D^\times$ is simple (compact quotient modulo the centre); the one for $\mathrm{GL}_2$ has extra unipotent, hyperbolic and continuous-spectrum terms.
- Comparison: with test functions supported on regular elliptic elements at places of $S$, the extra terms vanish (using that $D$ ramifies at two or more places).
- Spectral side: strong multiplicity one for $\mathrm{GL}_2$ and linear independence of characters at $S$ turn the trace identity into the correspondence and the local character relations; characters are treated separately.
- Badulescu notes that for groups with non-compact quotient, such as $\mathrm{GL}_n$, the trace formula and its comparison (his Steps 2–3) are the long and difficult part.

### Background

- Shimizu (*J. Math. Soc. Japan* 24, 1972) gave a theta-series proof under some conditions. Martin (2020) describes the correspondence explicitly on modular forms (quaternionic modular forms, Brandt matrices, theta series) and uses it for Eichler's basis problem.
- For $\mathrm{GL}_n$ and its inner forms, the local correspondence for square-integrable representations is due to Deligne–Kazhdan–Vignéras; the global one to Badulescu (*Invent. Math.* 172, 2008) and Badulescu–Renard (*Compositio Math.* 146, 2010), using Arthur–Clozel's comparison of trace formulas.

### Where to start

- [The Trace Formula and the Proof of the Global Jacquet–Langlands Correspondence](https://arxiv.org/abs/1904.09517), A. I. Badulescu, 2019: six-step outline of the proof, then the $\mathrm{GL}_2$ case in §10 following Gelbart–Jacquet.
- [The basis problem revisited](https://arxiv.org/abs/1804.04234), K. Martin, 2018: the correspondence made explicit on modular forms, with Brandt matrices and theta series; §1.2 compares with Shimizu's theta-series proof.

Prerequisites: representation theory of $\mathrm{GL}_2$ over local fields, adeles, quaternion algebras, the Selberg trace formula.

### References, with links

- Jacquet, H.; Langlands, Robert P. (1970), Automorphic Forms on GL(2), Lecture Notes in Mathematics, vol. 114, Berlin, New York: Springer-Verlag, doi:10.1007/BFb0058988, ISBN 978-3-540-04903-6, MR 0401654 <https://doi.org/10.1007/BFb0058988>
- Bergeron, N. (2016). Jacquet-Langlands Correspondence. In: The Spectrum of Hyperbolic Surfaces. Universitext. Springer, Cham. <https://doi.org/10.1007/978-3-319-27666-3_8>

### Further references

- A. I. Badulescu, "The Trace Formula and the Proof of the Global Jacquet–Langlands Correspondence," in *Relative Aspects in Representation Theory, Langlands Functoriality and Automorphic Forms*, Lecture Notes in Math. 2221 (2018), 197–250. <https://arxiv.org/abs/1904.09517>
- H. Shimizu, "Theta series and automorphic forms on GL₂," *J. Math. Soc. Japan* 24 (1972), 638–683. <https://doi.org/10.2969/jmsj/02440638>
- K. Martin, "The basis problem revisited," *Trans. Amer. Math. Soc.* 373 (2020), 4523–4559. <https://arxiv.org/abs/1804.04234>
- A. I. Badulescu, "Global Jacquet–Langlands correspondence, multiplicity one and classification of automorphic representations," *Invent. Math.* 172 (2008), 383–438. <https://doi.org/10.1007/s00222-007-0104-8>
- A. I. Badulescu and D. Renard, "Unitary dual of GL(n) at archimedean places and global Jacquet–Langlands correspondence," *Compositio Math.* 146 (2010), 1115–1164. <https://doi.org/10.1112/S0010437X10004707>

### Lean

#### Official statement

This problem has no official Lean statement: a faithful statement needs automorphic representations of GL(2) and of quaternion algebras, which Mathlib does not have yet.

#### Mathlib

Mathlib has `QuaternionAlgebra` (`Mathlib/Algebra/Quaternion.lean`), `Matrix.GeneralLinearGroup`, `NumberField.AdeleRing` and `ModularForm`. It lacks the ramification theory of quaternion algebras over number fields, admissible representations of $\mathrm{GL}_2(F_v)$, automorphic representations and trace formulas.
