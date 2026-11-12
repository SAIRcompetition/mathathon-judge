# 26 · Kuroda’s Class Number Formula and Correcting the Computation of Unit Indices

## From the proposer

- **Area:** Algebraic and computational number theory.
- **Tracks:** Algebra/Number Theory

### Description

We will revisit Charkani’s restriction on the possible values of Leopoldt’s unit index in totally real cyclic fields of degree pq. This restriction does not hold in full generality, and we aim to explain why, establish corrected bounds, and examine the consequences for the associated class-number statements. We will also discuss Lemmermeyer’s correction to Walter’s generalization of Kuroda’s class-number formula. The comparison will distinguish two separate issues: accounting for roots of unity in products of subfield unit groups, and understanding why a rational character decomposition need not give an integral decomposition of the unit lattice

### Desired outcome

Our goal is to give a clear account of the unit-index problem for totally real cyclic number fields of degree pq, where p and q are distinct primes. We will revisit the four-value restriction stated in Charkani’s work, which does not hold in full generality, and establish a corrected statement with a detailed proof. We want to explain where the additional possibilities come from, how the factorization of cyclotomic polynomials over finite fields constrains the possible indices, and under which additional assumptions the original four-value conclusion holds.

We will include an explicit number-field counterexample and a calculation of its unit index that can be checked independently. We will also examine the class-number arguments that rely on the restriction to determine which conclusions remain valid and which need to be revised. In doing so, we will distinguish the restriction itself from the underlying class-number identities, which may remain valid.

To put this problem in context, we will discuss Lemmermeyer’s correction to Walter’s 1979 generalization of Kuroda’s class-number formula. The two issues arise for different reasons: one concerns roots of unity in products of subfield unit groups, while the other concerns the integral structure of the unit lattice, which is not fully captured by its rational character decomposition. Through worked examples, we will explain where these factors enter the calculations and how to account for them.

The intended outcome is a self-contained exposition, supported by examples and reproducible code. We will check the literature carefully, acknowledge the existing work, and distinguish known results from any new contributions. If time permits, we will also investigate which of the indices allowed by the corrected bounds actually occur for number fields.

### References

1. M. E. Charkani, “On Leopoldt’s Index and Relative Class Number of a Real Cyclic Extension,” preprint, 1997.

2. F. Lemmermeyer, “Kuroda’s Class Number Formula,” *Acta Arithmetica* **66**, no. 3 (1994), 245–260.

3. H. W. Leopoldt, “Über Einheitengruppe und Klassenzahl reeller abelscher Zahlkörper,” *Abhandlungen der Deutschen Akademie der Wissenschaften zu Berlin*, Klasse für Mathematik und Allgemeine Naturwissenschaften, Jahrgang 1953, Nr. 2 (1954). Also submitted as a doctoral dissertation, University of Hamburg, 1954. (there is a french review on this)

## AI-generated notes

<!-- status: Not a single theorem -->

- **Status:** Concerns corrections to published results; Lemmermeyer (1994) showed that Walter's 1979 Kuroda-type formula can fail.
- **Task:** Corrected unit-index bounds for real cyclic degree-pq fields, with a counterexample.
- **Key reference:** [Kuroda's class number formula](https://arxiv.org/abs/2607.27034), F. Lemmermeyer, *Acta Arith.* 66 (1994), 245–260.
- **Lean:** No official statement.

### Notes

- The title names Kuroda's formula, but the main task is Leopoldt's unit index for real cyclic fields of degree $pq$ (Charkani); Kuroda's and Walter's formulas are context.
- A chapter by M. E. Charkani with a similar title, "On Leopoldt's index and a 'special' class number of real cyclic extensions," is in *Algebra and Number Theory* (eds. M. Boulagouaz and J.-P. Tignol, CRC Press); its relation to the 1997 preprint has not been checked.

### The result

For a $V_4$-extension $K/k$ with intermediate fields $k_1,k_2,k_3$ and unit index $q(K)=(E_K:E_1E_2E_3)$, Lemmermeyer proved Kuroda's formula without analytic methods:

$$h(K)=2^{\thinspace d-\kappa-2-v}\thinspace q(K)\thinspace h_1h_2h_3/h_k^2,$$

with $d$ the number of infinite places ramified in $K/k$, $\kappa$ the $\mathbb Z$-rank of $E_k$ and $v\in\lbrace0,1\rbrace$. He showed that Walter's formula (*Acta Arith.* 35, 1979) can fail when $K$ contains the 8th roots of unity, because a root of unity may be a product of subfield units without being a product of subfield roots of unity. For $k=\mathbb Q(\sqrt3)$, $K=\mathbb Q(\zeta_{24})$, Walter's formula gives $h(K)=2$, while $h(K)=1$. The proposer wants the corresponding analysis of Leopoldt's unit index for real cyclic fields of degree $pq$, with a checked counterexample.

### Background

- In a series of papers (1953–1960, including the 1954 memoir), Leopoldt reduced class numbers of real abelian fields essentially to class numbers of real cyclic fields together with information on units (Masley, 1978).
- For real cyclic $K$, Gras (2023) recalls Leopoldt's cyclotomic units $F_K$, the group $E_K^\circ$ generated by units of proper subfields, and formulas with indices $(E_K:E_K^\circ F_K)$.
- Algebraic proofs of Kuroda's formula over $\mathbb Q$ go back to Hilbert, Kuroda, Halter-Koch and Kubota; Lemmermeyer generalizes Kubota's proof to arbitrary base fields.
- Mazur and Ullom (2008) found a definitional slip in Lemmermeyer's paper that does not affect his results (noted in the 2026 arXiv posting).

### Where to start

- [Kuroda's class number formula](https://arxiv.org/abs/2607.27034), F. Lemmermeyer, 1994 (arXiv 2026): §3 compares Walter's and Kuroda's formulas and gives the $\mathbb Q(\zeta_{24})$ example.
- [On the Real Abelian Main Conjecture in the non semi-simple case](https://arxiv.org/abs/2306.12836), G. Gras, 2023: §3 recalls Leopoldt's cyclotomic units and unit indices for real cyclic fields.

Prerequisites: algebraic number theory (units, class groups, class field theory), integral representations of cyclic groups, factorization of cyclotomic polynomials over finite fields.

### References, with links

- M. E. Charkani, “On Leopoldt’s Index and Relative Class Number of a Real Cyclic Extension,” preprint, 1997.
- F. Lemmermeyer, “Kuroda’s Class Number Formula,” *Acta Arithmetica* **66**, no. 3 (1994), 245–260. <https://arxiv.org/abs/2607.27034>
- H. W. Leopoldt, “Über Einheitengruppe und Klassenzahl reeller abelscher Zahlkörper,” *Abhandlungen der Deutschen Akademie der Wissenschaften zu Berlin*, Klasse für Mathematik und Allgemeine Naturwissenschaften, Jahrgang 1953, Nr. 2 (1954). Also submitted as a doctoral dissertation, University of Hamburg, 1954. A French review is also available.

### Further references

- C. D. Walter, "Kuroda's class number relation," *Acta Arith.* 35 (1979), 41–51. <https://doi.org/10.4064/aa-35-1-41-51>
- M. E. Charkani, "On Leopoldt's index and a 'special' class number of real cyclic extensions," in *Algebra and Number Theory* (eds. M. Boulagouaz, J.-P. Tignol), CRC Press, 103–110. <https://www.taylorfrancis.com/chapters/edit/10.1201/9780203903889-14/leopoldt-index-special-class-number-real-cyclic-extensions-charkani>
- G. Gras, "On the Real Abelian Main Conjecture in the non semi-simple case," 2023; published as "The real Abelian main conjecture in the finite non semi-simple case," *Beitr. Algebra Geom.* 66 (2025), 79–107. <https://arxiv.org/abs/2306.12836>
- M. Mazur and S. V. Ullom, "Unit indices and cohomology for biquadratic extensions of imaginary quadratic fields," *J. Théor. Nombres Bordeaux* 20 (2008), 183–204. <https://doi.org/10.5802/jtnb.621>
- J. M. Masley, "Class numbers of real cyclic number fields with small conductor," *Compositio Math.* 37 (1978), 297–319. <https://www.numdam.org/article/CM_1978__37_3_297_0.pdf>

### Lean

#### Official statement

This problem has no official Lean statement: it asks for a corrected account of several published results, not for the proof of one theorem, and the claim to be corrected, Charkani's four-value restriction on Leopoldt's unit index for real cyclic fields of degree $pq$, is in an unpublished 1997 preprint whose exact statement could not be checked.

#### Mathlib

Mathlib has the unit group `(𝓞 K)ˣ` with `NumberField.Units.torsion`, Dirichlet's unit theorem (`NumberField.Units.rank`, `NumberField.Units.regulator`), `NumberField.classNumber`, `IsCyclotomicExtension` and `Polynomial.cyclotomic`. It lacks unit indices of subfield unit groups, Leopoldt's cyclotomic units for real cyclic fields and class number formulas of Kuroda type.
