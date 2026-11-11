/-
Mathathon Round 1, Problem 36: official Lean statement, prepared by AI. It may contain errors.

Source (NoahW314/KostkaNumbers, Apache License 2.0):
  https://github.com/NoahW314/KostkaNumbers/blob/135e49269833f4a760717b30777046d9629240df/KostkaNumbers/HookLength/HookLengthFormula.lean
  https://github.com/NoahW314/KostkaNumbers/blob/135e49269833f4a760717b30777046d9629240df/KostkaNumbers/HookLength/HookLength.lean
  https://github.com/NoahW314/KostkaNumbers/blob/135e49269833f4a760717b30777046d9629240df/KostkaNumbers/Defs.lean
  https://github.com/NoahW314/KostkaNumbers/blob/135e49269833f4a760717b30777046d9629240df/KostkaNumbers/Util/FromCounts.lean
Adapted: the statement of `hookLength_formula` and the definitions it uses
(`YoungDiagram.hookLength`, `Multiset.fromCounts`, `SemistandardYoungTableau.content`,
`Kostka.kostkaNumber`) are copied into one file, inside `namespace Mathathon.P36`; the proof is
replaced by `sorry`. The `module` headers, `public`/`@[expose]` markers, and all other lemmas are
left out. Because the definitions now live in `Mathathon.P36`, dot notation for them no longer
resolves, so `γ.hookLength x`, `T.content` and `μ.fromCounts` are written
`YoungDiagram.hookLength γ x`, `SemistandardYoungTableau.content T` and
`Multiset.fromCounts μ`, and `replicate` in `fromCounts` is written `Multiset.replicate`.
Here `kostkaNumber γ (Multiset.replicate n 1)` counts the semistandard Young tableaux of shape
`γ` whose entries are `0, 1, …, n - 1`, each used once, that is, the standard Young tableaux.
-/

import Mathlib

namespace Mathathon.P36

open SemistandardYoungTableau YoungDiagram

namespace YoungDiagram

def hookLength (γ : YoungDiagram) (x : ℕ × ℕ) : ℕ :=
  (γ.rowLen x.1 - (x.2 + 1)) + (γ.colLen x.2 - (x.1 + 1)) + 1

end YoungDiagram

namespace Multiset

noncomputable
def fromCounts (μ : Multiset ℕ) : Multiset ℕ := ∑ n : {n : ℕ | n < (μ.sort (· ≥ ·)).length},
  Multiset.replicate ((μ.sort (· ≥ ·))[n.1]'(n.2)) n.1

end Multiset

namespace SemistandardYoungTableau

variable {γ : YoungDiagram} {T : SemistandardYoungTableau γ}

def content (T : SemistandardYoungTableau γ) :=
  Multiset.map (fun (i, j) => T i j) (γ.cells).val

end SemistandardYoungTableau

namespace Kostka

variable {γ : YoungDiagram} {μ : Multiset ℕ} {T : SemistandardYoungTableau γ}

noncomputable def kostkaNumber (γ : YoungDiagram) (μ : Multiset ℕ) :=
  Nat.card {T : SemistandardYoungTableau γ |
    SemistandardYoungTableau.content T = Multiset.fromCounts μ}

end Kostka

open MeasureTheory YoungDiagram Kostka

theorem hookLength_formula (γ : YoungDiagram) {n : ℕ} (h : γ.card = n) :
    (∏ x ∈ γ.cells, YoungDiagram.hookLength γ x) *
    kostkaNumber γ (Multiset.replicate n 1) = Nat.factorial n := by
  sorry

end Mathathon.P36
