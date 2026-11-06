# 26 · Kuroda’s Class Number Formula and Correcting the Computation of Unit Indices

**Tracks:** Algebra/Number Theory · **Area:** Algebraic and computational number theory

## Description

The problem is to revisit Charkani’s restriction on the possible values of Leopoldt’s unit index in totally real cyclic fields of degree pq. This restriction does not hold in full generality; the aim is to explain why, establish corrected bounds, and examine the consequences for the associated class-number statements. The problem also covers Lemmermeyer’s correction to Walter’s generalization of Kuroda’s class-number formula. The comparison distinguishes two separate issues: accounting for roots of unity in products of subfield unit groups, and understanding why a rational character decomposition need not give an integral decomposition of the unit lattice.

## Desired outcome

The goal is a clear account of the unit-index problem for totally real cyclic number fields of degree pq, where p and q are distinct primes: revisiting the four-value restriction stated in Charkani’s work, which does not hold in full generality, and establishing a corrected statement with a detailed proof. This should explain where the additional possibilities come from, how the factorization of cyclotomic polynomials over finite fields constrains the possible indices, and under which additional assumptions the original four-value conclusion holds.

The outcome should include an explicit number-field counterexample and a calculation of its unit index that can be checked independently. It should also examine the class-number arguments that rely on the restriction, to determine which conclusions remain valid and which need to be revised, distinguishing the restriction itself from the underlying class-number identities, which may remain valid.

For context, it should discuss Lemmermeyer’s correction to Walter’s 1979 generalization of Kuroda’s class-number formula. The two issues arise for different reasons: one concerns roots of unity in products of subfield unit groups, while the other concerns the integral structure of the unit lattice, which is not fully captured by its rational character decomposition. Worked examples should show where these factors enter the calculations and how to account for them.

The intended outcome is a self-contained exposition, supported by examples and reproducible code, that checks the literature carefully, acknowledges existing work, and distinguishes known results from new contributions. If time permits, it can also investigate which of the indices allowed by the corrected bounds actually occur for number fields.

## References

- M. E. Charkani, “On Leopoldt’s Index and Relative Class Number of a Real Cyclic Extension,” preprint, 1997.
- F. Lemmermeyer, “Kuroda’s Class Number Formula,” *Acta Arithmetica* **66**, no. 3 (1994), 245–260.
- H. W. Leopoldt, “Über Einheitengruppe und Klassenzahl reeller abelscher Zahlkörper,” *Abhandlungen der Deutschen Akademie der Wissenschaften zu Berlin*, Klasse für Mathematik und Allgemeine Naturwissenschaften, Jahrgang 1953, Nr. 2 (1954). Also submitted as a doctoral dissertation, University of Hamburg, 1954. A French review is also available.

## Official Lean statement

This problem has no official Lean statement.
