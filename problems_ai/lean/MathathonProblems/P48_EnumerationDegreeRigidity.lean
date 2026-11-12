/-
Mathathon Round 1, Problem 48: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states that the enumeration degrees are rigid: the partial order (D_e, ≤) has no
automorphism other than the identity (a consequence of the rigidity of the Turing degrees and
the definability of the total degrees in D_e, Cai, Ganchev, Lempp, Miller and Soskova, JAMS 2016).
Enumeration reducibility is the standard one (Rogers): `A ≤_e B` when `A = Φ(B)` for an
enumeration operator `Φ`, a c.e. set of pairs `(x, D)` with `D` finite; here `D` is a list. The
degrees are built as in openai/math's `lean/ComparatorChallenges/DegreeRigidity.lean` for the
Turing degrees; the lemmas before the instance prove that `≤_e` is a preorder.
-/

import Mathlib

namespace Mathathon.P48

open Encodable Nat.Partrec

/-- Enumeration reducibility: `A ≤_e B` when there is a c.e. set `W` of pairs `(x, D)`, with `D` a
finite list of numbers, such that `x ∈ A` exactly when `(x, D) ∈ W` for some `D` whose elements
all lie in `B`. -/
def EnumReducible (A B : Set ℕ) : Prop :=
  ∃ W : ℕ × List ℕ → Prop, REPred W ∧
    ∀ x, x ∈ A ↔ ∃ D : List ℕ, W (x, D) ∧ ∀ y ∈ D, y ∈ B

/-- A c.e. predicate is the set of inputs on which some code halts within some number of steps. -/
theorem rePred_code {α : Type*} [Primcodable α] {p : α → Prop} (hp : REPred p) :
    ∃ c : Code, ∀ a, p a ↔ ∃ k, (c.evaln k (encode a)).isSome := by
  obtain ⟨c, hc⟩ := Code.exists_code.1 hp
  refine ⟨c, fun a => ?_⟩
  have h1 : p a ↔ (c.eval (encode a)).Dom := by
    rw [hc]; simp only [encodek, Part.coe_some, Part.bind_some, Part.map_Dom]
    exact ⟨fun h => ⟨h, trivial⟩, fun ⟨h, _⟩ => h⟩
  rw [h1, Part.dom_iff_mem]
  simp only [Code.evaln_complete, Option.isSome_iff_exists, Option.mem_def]
  exact exists_comm

/-- A projection of a primitive recursive relation is c.e. -/
theorem rePred_of_exists {α β : Type*} [Primcodable α] [Primcodable β] {p : α → β → Prop}
    (hp : PrimrecRel p) : REPred fun a => ∃ b, p a b := by
  classical
  let g : α → ℕ → Option β := fun a n => (decode (α := β) n).bind fun b => Option.guard (p a) b
  have hg : Computable₂ g := by
    refine Primrec.to_comp ?_
    refine Primrec.option_bind (Primrec.decode.comp Primrec.snd) ?_
    have hp' : PrimrecRel fun (q : (α × ℕ) × β) (b : β) => p q.1.1 b :=
      hp.comp (Primrec.fst.comp (Primrec.fst.comp Primrec.fst)) Primrec.snd
    exact Primrec.option_guard hp' Primrec.snd
  refine (Partrec.rfindOpt hg).dom_re.of_eq fun a => ?_
  rw [Nat.rfindOpt_dom]
  constructor
  · rintro ⟨n, b, hb⟩
    simp only [g, Option.mem_def, Option.bind_eq_some_iff, Option.guard_eq_some_iff] at hb
    obtain ⟨b', -, rfl, h⟩ := hb
    exact ⟨_, of_decide_eq_true h⟩
  · rintro ⟨b, h⟩
    exact ⟨encode b, b, by simp [g, encodek, h]⟩

/-- `evaln` with primitive recursive step bound and input is primitive recursive. -/
theorem primrec_evaln' {α : Type*} [Primcodable α] {k n : α → ℕ} (c : Code) (hk : Primrec k)
    (hn : Primrec n) : Primrec fun a => c.evaln (k a) (n a) :=
  Code.primrec_evaln.comp ((hk.pair (Primrec.const c)).pair hn)

/-- Enumeration reducibility is reflexive. -/
theorem EnumReducible.refl (A : Set ℕ) : EnumReducible A A := by
  refine ⟨fun q => q.2 = [q.1], ?_, fun x => ?_⟩
  · refine ComputablePred.to_re ?_
    refine PrimrecPred.computablePred ?_
    exact Primrec.eq.comp Primrec.snd (Primrec.list_cons.comp Primrec.fst (Primrec.const []))
  · constructor
    · intro hx; exact ⟨[x], rfl, by simpa using hx⟩
    · rintro ⟨D, hDx, hD⟩; exact hD x (by simp [show D = [x] from hDx])

/-- Enumeration reducibility is transitive (composition of enumeration operators). -/
theorem EnumReducible.trans {A B C : Set ℕ} (hAB : EnumReducible A B) (hBC : EnumReducible B C) :
    EnumReducible A C := by
  classical
  obtain ⟨W₁, hW₁, hA⟩ := hAB
  obtain ⟨W₂, hW₂, hB⟩ := hBC
  obtain ⟨c₁, hc₁⟩ := rePred_code hW₁
  obtain ⟨c₂, hc₂⟩ := rePred_code hW₂
  let S : (ℕ × List ℕ × ℕ) → List ℕ → Prop := fun t D =>
    (c₂.evaln t.2.2 (encode (t.1, t.2.1))).isSome = true ∧ ∀ z ∈ t.2.1, z ∈ D
  let R : (ℕ × List ℕ) → (List (ℕ × List ℕ × ℕ) × ℕ) → Prop := fun a w =>
    (c₁.evaln w.2 (encode (a.1, w.1.map Prod.fst))).isSome = true ∧ ∀ t ∈ w.1, S t a.2
  have hS : PrimrecRel S := by
    refine PrimrecPred.and ?_ ?_
    · refine Primrec.eq.comp ?_ (Primrec.const true)
      refine Primrec.option_isSome.comp (primrec_evaln' c₂
        (Primrec.snd.comp (Primrec.snd.comp Primrec.fst)) (Primrec.encode.comp ?_))
      exact Primrec.pair (Primrec.fst.comp Primrec.fst)
        (Primrec.fst.comp (Primrec.snd.comp Primrec.fst))
    · have hmem : PrimrecRel fun (z : ℕ) (D : List ℕ) => z ∈ D :=
        (PrimrecRel.exists_mem_list (Primrec.eq (α := ℕ))).comp Primrec.snd Primrec.fst
          |>.of_eq fun q => by simp
      exact (PrimrecRel.forall_mem_list hmem).comp
        (Primrec.fst.comp (Primrec.snd.comp Primrec.fst)) Primrec.snd
  have hR : PrimrecRel R := by
    refine PrimrecPred.and ?_ ?_
    · refine Primrec.eq.comp ?_ (Primrec.const true)
      refine Primrec.option_isSome.comp (primrec_evaln' c₁
        (Primrec.snd.comp Primrec.snd) (Primrec.encode.comp ?_))
      exact Primrec.pair (Primrec.fst.comp Primrec.fst)
        (Primrec.list_map (Primrec.fst.comp Primrec.snd) (Primrec.fst.comp Primrec.snd).to₂)
    · exact (PrimrecRel.forall_mem_list hS).comp (Primrec.fst.comp Primrec.snd)
        (Primrec.snd.comp Primrec.fst)
  refine ⟨fun a => ∃ w, R a w, rePred_of_exists hR, fun x => ?_⟩
  constructor
  · intro hx
    obtain ⟨E, hE, hEB⟩ := (hA x).1 hx
    obtain ⟨k, hk⟩ := (hc₁ _).1 hE
    have hy : ∀ y ∈ E, ∃ (D' : List ℕ) (k' : ℕ), (c₂.evaln k' (encode (y, D'))).isSome = true ∧ ∀ z ∈ D', z ∈ C := by
      intro y hyE
      obtain ⟨D', hD', hD'C⟩ := (hB y).1 (hEB y hyE)
      obtain ⟨k', hk'⟩ := (hc₂ _).1 hD'
      exact ⟨D', k', hk', hD'C⟩
    choose! Dg kg hg using hy
    let L : List (ℕ × List ℕ × ℕ) := E.map fun y => (y, Dg y, kg y)
    refine ⟨(L.map fun t => t.2.1).flatten, ⟨(L, k), ?_, ?_⟩, ?_⟩
    · have : L.map Prod.fst = E := by simp [L, Function.comp_def]
      simpa [this] using hk
    · intro t ht
      refine ⟨?_, ?_⟩
      · simp only [L, List.mem_map] at ht
        obtain ⟨y, hyE, rfl⟩ := ht
        exact (hg y hyE).1
      · intro z hz
        exact List.mem_flatten.2 ⟨t.2.1, List.mem_map.2 ⟨t, ht, rfl⟩, hz⟩
    · intro z hz
      obtain ⟨l, hl, hzl⟩ := List.mem_flatten.1 hz
      obtain ⟨t, ht, rfl⟩ := List.mem_map.1 hl
      simp only [L, List.mem_map] at ht
      obtain ⟨y, hyE, rfl⟩ := ht
      exact (hg y hyE).2 z hzl
  · rintro ⟨D, ⟨⟨L, k⟩, hk, hL⟩, hDC⟩
    refine (hA x).2 ⟨L.map Prod.fst, (hc₁ _).2 ⟨k, hk⟩, ?_⟩
    intro y hy
    obtain ⟨t, ht, rfl⟩ := List.mem_map.1 hy
    obtain ⟨h₁, h₂⟩ := hL t ht
    exact (hB t.1).2 ⟨t.2.1, (hc₂ _).2 ⟨_, h₁⟩, fun z hz => hDC z (h₂ z hz)⟩


instance : IsPreorder (Set ℕ) EnumReducible where
  refl := EnumReducible.refl
  trans _ _ _ := EnumReducible.trans

/-- The enumeration degrees: sets of natural numbers up to mutual enumeration reducibility. -/
def EDegree := Antisymmetrization (Set ℕ) EnumReducible

/-- The partial order of the enumeration degrees, induced by `EnumReducible`. -/
instance : PartialOrder EDegree :=
  @instPartialOrderAntisymmetrization (Set ℕ)
    { le := EnumReducible
      lt A B := EnumReducible A B ∧ ¬ EnumReducible B A
      lt_iff_le_not_ge _ _ := Iff.rfl
      le_refl := EnumReducible.refl
      le_trans _ _ _ := EnumReducible.trans }

/-- Rigidity of the enumeration degrees: every automorphism of `(D_e, ≤)` is the identity. -/
theorem enumeration_degrees_rigid : ∀ π : EDegree ≃o EDegree, ∀ a : EDegree, π a = a := by
  sorry

end Mathathon.P48
