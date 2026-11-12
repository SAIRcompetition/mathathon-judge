/-
Mathathon Round 1, Problem 27: official Lean statement, prepared by AI. It may contain errors.

Written by AI for Mathathon; not taken from an existing formalization.
It states the algebraic half of desired outcome (a): the category of crossed modules is
equivalent to the category of cat¹-groups (R. Brown and C. B. Spencer, "G-groupoids, crossed
modules and the fundamental groupoid of a topological group", Indag. Math. 38 (1976);
J.-L. Loday, J. Pure Appl. Algebra 24 (1982), where cat¹-groups are defined). Cat¹-groups
follow Loday: a group with endomorphisms `s, t` such that `s ∘ t = t`, `t ∘ s = s` and
`[ker s, ker t] = 1`. The other half of (a), the equivalence of the homotopy category of
crossed modules with pointed connected homotopy 2-types, is not stated, because Mathlib has
no homotopy category of 2-types and no classifying space of a crossed module.
-/

import Mathlib

namespace Mathathon.P27

open CategoryTheory

universe u

/-- A crossed module `∂ : M → P`: groups `M` and `P`, an action of `P` on `M` by group
automorphisms, and a homomorphism `∂` such that `∂ (p • m) = p * ∂ m * p⁻¹` and
`∂ m • m' = m * m' * m⁻¹` (the Peiffer identity). -/
structure CrossedModule where
  /-- The top group. -/
  M : Type u
  /-- The base group. -/
  P : Type u
  [groupM : Group M]
  [groupP : Group P]
  [action : MulDistribMulAction P M]
  /-- The boundary homomorphism `∂`. -/
  boundary : M →* P
  boundary_smul : ∀ (p : P) (m : M), boundary (p • m) = p * boundary m * p⁻¹
  boundary_smul_eq_conj : ∀ m m' : M, boundary m • m' = m * m' * m⁻¹

attribute [instance] CrossedModule.groupM CrossedModule.groupP CrossedModule.action

/-- A morphism of crossed modules: homomorphisms of the top groups and of the base groups that
commute with the boundary maps and respect the actions. -/
@[ext]
structure CrossedModule.Hom (X Y : CrossedModule.{u}) where
  top : X.M →* Y.M
  base : X.P →* Y.P
  boundary_top : ∀ m, Y.boundary (top m) = base (X.boundary m)
  top_smul : ∀ (p : X.P) (m : X.M), top (p • m) = base p • top m

/-- The category of crossed modules. -/
instance : Category CrossedModule.{u} where
  Hom := CrossedModule.Hom
  id X := ⟨MonoidHom.id _, MonoidHom.id _, fun _ => rfl, fun _ _ => rfl⟩
  comp f g := ⟨g.top.comp f.top, g.base.comp f.base,
    fun m => by simp [g.boundary_top, f.boundary_top],
    fun p m => by simp [f.top_smul, g.top_smul]⟩
  id_comp _ := rfl
  comp_id _ := rfl
  assoc _ _ _ := rfl

/-- A cat¹-group (Loday): a group `G` with endomorphisms `s` (source) and `t` (target) such
that `s ∘ t = t`, `t ∘ s = s`, and every element of `ker s` commutes with every element of
`ker t`. -/
structure CatOneGroup where
  /-- The underlying group. -/
  G : Type u
  [group : Group G]
  /-- The source endomorphism `s`. -/
  src : G →* G
  /-- The target endomorphism `t`. -/
  tgt : G →* G
  src_tgt : ∀ g, src (tgt g) = tgt g
  tgt_src : ∀ g, tgt (src g) = src g
  commute_ker : ∀ x y : G, src x = 1 → tgt y = 1 → x * y = y * x

attribute [instance] CatOneGroup.group

/-- A morphism of cat¹-groups: a group homomorphism that commutes with the source and target
endomorphisms. -/
@[ext]
structure CatOneGroup.Hom (X Y : CatOneGroup.{u}) where
  hom : X.G →* Y.G
  hom_src : ∀ g, hom (X.src g) = Y.src (hom g)
  hom_tgt : ∀ g, hom (X.tgt g) = Y.tgt (hom g)

/-- The category of cat¹-groups. -/
instance : Category CatOneGroup.{u} where
  Hom := CatOneGroup.Hom
  id X := ⟨MonoidHom.id _, fun _ => rfl, fun _ => rfl⟩
  comp f g := ⟨g.hom.comp f.hom,
    fun x => by simp [f.hom_src, g.hom_src],
    fun x => by simp [f.hom_tgt, g.hom_tgt]⟩
  id_comp _ := rfl
  comp_id _ := rfl
  assoc _ _ _ := rfl

/-- **Crossed modules and cat¹-groups** (Brown–Spencer, Loday). The category of crossed
modules is equivalent to the category of cat¹-groups. -/
theorem nonempty_equivalence : Nonempty (CrossedModule.{u} ≌ CatOneGroup.{u}) := by
  sorry

end Mathathon.P27
