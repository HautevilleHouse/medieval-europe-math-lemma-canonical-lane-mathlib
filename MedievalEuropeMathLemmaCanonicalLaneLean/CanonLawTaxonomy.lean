import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

/-!
# Canon Law Taxonomy Package
This module formalizes the classification of canon law in medieval Europe.
-/

inductive CanonLawCategory where
  | decretal
  | decretum
  | conciliar
  | papalBull
  | synodal

defining CanonLawSource (C : CanonLawCategory) : Prop :=
  match C with
  | CanonLawCategory.decretal => True
  | CanonLawCategory.decretum => True
  | CanonLawCategory.conciliar => True
  | CanonLawCategory.papalBull => True
  | CanonLawCategory.synodal => True

structure CanonLawCompilation where
  sources : List CanonLawCategory
  compiler : String
  dateCompiled : ℕ

structure CanonLawEvidence (C : CanonLawCompilation) where
  sourcesClassified : ∀ s ∈ C.sources, CanonLawSource s
  compilerAuthenticated : C.compiler ≠ ""

def CanonLawClosed (C : CanonLawCompilation) : Prop :=
  (∀ s ∈ C.sources, CanonLawSource s) ∧ C.compiler ≠ ""

theorem canon_law_closed_from_evidence (C : CanonLawCompilation) (E : CanonLawEvidence C) :
    CanonLawClosed C := by
  exact And.intro E.sourcesClassified E.compilerAuthenticated

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse