# 97 · Model Completeness of the Real Exponential Field

## From the proposer

- **Area:** Mathematical Logic — Model Theory, O-minimality, Real Algebraic Geometry, and Exponential Fields.
- **Tracks:** ?????

### Description

Consider the ordered real exponential field \(\mathbb{R}_{\exp}=(\mathbb{R};0,1,+,-,\cdot,<,\exp)\). The problem is to establish whether its complete first-order theory is model complete; that is, whether every embedding between models of this theory is elementary. Equivalently, can every first-order formula be expressed as an existential formula? Alex Wilkie proved this in 1996 using techniques involving restricted Pfaffian functions, quasipolynomial equations, o-minimality, and valuation theory. A central challenge is transferring solutions of exponential-polynomial equations between non-Archimedean models, particularly when solutions are unbounded.

### Desired outcome

The primary goal is to explore alternative approaches to proving the model completeness of the real exponential field, potentially using techniques from model theory, o-minimality, real algebraic geometry, or valuation theory. Participants are encouraged to investigate whether Wilkie's original proof can be simplified or reconstructed using different mathematical methods. A further objective is to formalize the theorem and its supporting results in Lean, contributing toward a machine-verified proof. Ideally, the project would produce a detailed mathematical exposition of an alternative proof strategy alongside a Lean formalization of the established results.

This is an established but technically challenging theorem, making it suitable for exploring mathematical proof techniques and formal verification. A complete alternative proof or Lean formalization may be ambitious, so partial results, formalization of intermediate lemmas, and identification of the main obstacles would also be valuable contributions. Participants are welcome to approach the problem from either a theoretical or a formalization-oriented perspective.

### References

1. A. J. Wilkie, *Model completeness results for expansions of the ordered field of real numbers by restricted Pfaffian functions and the exponential function*, Journal of the American Mathematical Society **9** (1996), no. 4, 1051–1094. https://doi.org/10.1090/S0894-0347-96-00216-0

2. A. J. Wilkie, *Lectures on the Model Theory of Real and Complex Exponentiation*, lecture notes, July 17, 2012, especially Sections 1, 5–6. https://homepages.math.uic.edu/~marker/msri/wilkie.pdf

3. A. J. Wilkie, *On the Theory of the Real Exponential Field*, Illinois Journal of Mathematics **33** (1989), no. 3, 384–408.

## AI-generated notes

<!-- status: Proved -->

- **Status:** Proved by A. J. Wilkie (J. Amer. Math. Soc. 1996); with Khovanskii's finiteness theorem it shows that $\mathbb R_{\exp}$ is o-minimal.
- **Task:** Find alternative or simpler proofs of Wilkie's theorem, and formalize it, or the lemmas it rests on, in Lean.
- **Key reference:** [A. J. Wilkie, “Model completeness results for expansions of the ordered field of real numbers by restricted Pfaffian functions and the exponential function”, J. Amer. Math. Soc. 9 (1996), 1051–1094](https://doi.org/10.1090/S0894-0347-96-00216-0)
- **Lean:** Official statement.

### Notes

- The "Proposed Tracks" field of the sheet is unfilled ("?????").
- Section 6 of the 2012 lecture notes proves only that solutions are bounded by elements of the smaller model; Wilkie defers the remaining step to his 1989 paper (the proposer's third reference).

### The result

Let $T_{\exp}$ be the complete theory of $\mathbb R_{\exp}=(\mathbb R;0,1,+,-,\cdot,<,\exp)$.

**Theorem (Wilkie 1996, Second Main Theorem).** $T_{\exp}$ is model complete: every formula is equivalent modulo $T_{\exp}$ to an existential formula; equivalently, every embedding between models of $T_{\exp}$ is elementary.

Geometrically, every definable set $X\subseteq\mathbb R^n$ is a projection of a zero set
$$\{(x,y)\in\mathbb R^{n+m}:\ p(x,y,e^{x_1},\dots,e^{x_n},e^{y_1},\dots,e^{y_m})=0\},$$
with $p$ a real polynomial. By Khovanskii (1980) such zero sets have finitely many connected components, so every definable subset of $\mathbb R$ is a finite union of intervals and points: $\mathbb R_{\exp}$ is o-minimal. Quantifiers cannot be eliminated altogether: an example of Osgood (1916) rules out quantifier elimination in this language.

**First Main Theorem.** The expansion of $\mathbb R$ by finitely many restricted Pfaffian functions (a Pfaffian chain on a neighbourhood of $[0,1]^m$, set to $0$ outside the box) is model complete. In particular $(\mathbb R,\exp\restriction[0,1])$ is.

### How the known proof works

Following Wilkie's 2012 notes (§6):
- Reduction: it suffices that if $M_0\subseteq M$ are models of $T_{\exp}$, then every exponential-polynomial system with coefficients in $M_0$ that has a solution in $M$ has one in $M_0$. One may assume the system is square, $F(x)=0$ with $\det J_F(x)\ne0$ at the solution (Lemma 1; a simpler proof is in Jones–Wilkie 2008).
- Khovanskii: such systems have finitely many non-singular zeros, with a bound independent of the coefficients, so their number is expressed by a first-order sentence.
- Bounded solutions: on a box, $\exp$ is definable from restricted exponentiation, whose theory is model complete (First Main Theorem, or Gabrielov 1996). The exact number of non-singular zeros in the box is then the same in $M_0$ and $M$, so the zero lies in $M_0$.
- Unbounded solutions: for models of the theory of an expansion of the real field by restricted analytic functions, a valuation inequality holds: rank $\ge$ residue rank $+\dim_{\mathbb Q}$(value group). Applied to the definable closure of $M_0$, the zero and the exponentials of its infinite coordinates, it shows that the zero is bounded by an element of $M_0$; a separate argument (Wilkie 1989) puts it in $M_0$.
- The First Main Theorem is proved by induction on formulas; the key step bounds the non-singular solutions of square Pfaffian systems, using that univariate functions definable from restricted analytic functions are polynomially bounded.

### Background

- Tarski (1951) asked whether his decision procedure for real closed fields extends to $\mathbb R_{\exp}$. Macintyre and Wilkie (1996) proved that $T_{\exp}$ is decidable if the real Schanuel conjecture holds.
- Restricted analytic functions: Gabrielov's complement theorem (1968) gives model completeness of $\mathbb R_{\rm an}$, and Denef and van den Dries (1988) quantifier elimination after adding division. Gabrielov (1996) proved model completeness for reducts of $\mathbb R_{\rm an}$ closed under differentiation, an independent route to the restricted exponential case.
- Ressayre (1993) axiomatized $T_{\exp}$ over the theory of restricted exponentiation, using integer parts of exponential fields. Van den Dries, Macintyre and Marker (1994) built on this to prove quantifier elimination for $\mathbb R_{\rm an,\exp}$ in a language with $\log$; van den Dries and Miller (1994) extended Wilkie's proof to $\mathbb R_{\rm an,\exp}$.
- Berarducci and Gallinaro (arXiv 2026) prove, without polynomial boundedness, model completeness of the definably complete ordered fields with a restricted exponential satisfying $e'=e$. Assuming Schanuel's conjecture, they show that $T_{\exp}$ is axiomatized by definably complete exponential fields with $\exp'=\exp$.

### Where to start

- [Lectures on the model theory of real and complex exponentiation](https://homepages.math.uic.edu/~marker/msri/wilkie.pdf), A. J. Wilkie, 2012: §§1, 3, 5 and 6 give the main ideas of the proof in about twelve pages, with exercises.
- [On the elementary theory of the real exponential field](https://arxiv.org/abs/2603.08365), A. Berarducci, F. Gallinaro, 2026: §1 surveys the area; the paper is a different route through restricted exponentiation.
- [Locally polynomially bounded structures](https://doi.org/10.1112/blms/bdn004), G. O. Jones, A. J. Wilkie, 2008: the shorter proof of the reduction to non-singular solutions.
- [Tame Topology and O-minimal Structures](https://doi.org/10.1017/CBO9780511525919), L. van den Dries, 1998: background on o-minimality.

Prerequisites: model completeness and Robinson's test, o-minimality, real analytic functions and Pfaffian chains, valuations on ordered fields, Khovanskii's bounds.

### References, with links

- A. J. Wilkie, “Model completeness results for expansions of the ordered field of real numbers by restricted Pfaffian functions and the exponential function,” J. Amer. Math. Soc. 9 (1996), no. 4, 1051–1094. <https://doi.org/10.1090/S0894-0347-96-00216-0>
- A. J. Wilkie, *Lectures on the Model Theory of Real and Complex Exponentiation*, lecture notes, 17 July 2012. <https://homepages.math.uic.edu/~marker/msri/wilkie.pdf>
- A. J. Wilkie, “On the theory of the real exponential field,” Illinois J. Math. 33 (1989), no. 3, 384–408. <https://doi.org/10.1215/ijm/1255988651>

### Further references

- A. G. Khovanskii, “A class of systems of transcendental equations,” Soviet Math. Dokl. 22 (1980), 762–765.
- A. Gabrielov, “Complements of subanalytic sets and existential formulas for analytic functions,” Invent. Math. 125 (1996), 1–12. <https://doi.org/10.1007/s002220050066>
- A. Macintyre and A. J. Wilkie, “On the decidability of the real exponential field,” in *Kreiseliana*, A K Peters (1996), 441–467.
- J.-P. Ressayre, “Integer parts of real closed exponential fields,” in *Arithmetic, Proof Theory, and Computational Complexity*, Oxford Logic Guides 23 (1993), 278–288. <https://doi.org/10.1093/oso/9780198536901.003.0013>
- L. van den Dries, A. Macintyre and D. Marker, “The elementary theory of restricted analytic fields with exponentiation,” Ann. of Math. 140 (1994), 183–205. <https://doi.org/10.2307/2118545>
- L. van den Dries and C. Miller, “On the real exponential field with restricted analytic functions,” Israel J. Math. 85 (1994), 19–56. <https://doi.org/10.1007/BF02758635>
- A. Berarducci and F. Gallinaro, “On the elementary theory of the real exponential field,” arXiv:2603.08365 (2026). <https://arxiv.org/abs/2603.08365>

### Lean

#### Official statement

`Mathathon.P97.real_exp_model_complete` in [`lean/MathathonProblems/P97_RealExpModelComplete.lean`](lean/MathathonProblems/P97_RealExpModelComplete.lean).

```lean
theorem real_exp_model_complete {n : ℕ} (φ : Language.orderedExpField.Formula (Fin n)) :
    ∃ ψ : Language.orderedExpField.Formula (Fin n), ψ.IsExistential ∧
      ∀ x : Fin n → ℝ, φ.Realize x ↔ ψ.Realize x
```

The theory of $\mathbb R_{\exp}$ is complete, so its model completeness is stated in the equivalent form the proposer gives: every first-order formula is equivalent in $\mathbb R_{\exp}$ to an existential formula with the same free variables. The language is formal-conjectures' `Language.orderedExpField`, $(+,\cdot,-,0,1,\le,\exp)$, with $\le$ and unary $-$ where the problem has $<$ and binary $-$; this does not change which formulas are equivalent to existential ones.

Source: <https://github.com/google-deepmind/formal-conjectures/blob/a425ca3eb797fe927cb88c950565fdcbbbbada70/FormalConjecturesForMathlib/ModelTheory/Real.lean> (Apache License 2.0). Adapted: the language and the structure on $\mathbb R$ are copied from there, and the theorem is written by AI for Mathathon.

#### Mathlib

Mathlib has first-order languages and theories (`FirstOrder.Language`, `FirstOrder.Language.Theory`, `FirstOrder.Language.Theory.IsComplete`), elementary embeddings and substructures (`FirstOrder.Language.ElementaryEmbedding`, `FirstOrder.Language.ElementarySubstructure`), existential formulas (`FirstOrder.Language.BoundedFormula.IsExistential`), the languages of rings and orders (`FirstOrder.Language.ring`, `FirstOrder.Language.order`), real closed fields (`IsRealClosed`) and `Real.exp`. It has no model completeness, no quantifier elimination for real closed fields, no o-minimality, and no Pfaffian functions or Khovanskii bounds.
