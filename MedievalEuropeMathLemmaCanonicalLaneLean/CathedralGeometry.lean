import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

structure CathedralGeometry (A : AdmissibleClass) where
  naveWidth : ℕ
  height : ℕ
  goldenRatioUsed : Prop
  pointedArchAngle : Prop
  blueprintComplete : Prop

structure CathedralEvidence (A : AdmissibleClass) (C : CathedralGeometry A) where
  naveWidthNonzero : C.naveWidth > 0
  heightNonzero : C.height > 0
  goldenRatioUsedClosed : C.goldenRatioUsed
  pointedArchAngleClosed : C.pointedArchAngle
  blueprintCompleteClosed : C.blueprintComplete

def CathedralGeometryClosed (A : AdmissibleClass) (C : CathedralGeometry A) : Prop :=
  C.naveWidth > 0 ∧ C.height > 0 ∧ C.goldenRatioUsed ∧ C.pointedArchAngle ∧ C.blueprintComplete

theorem cathedral_geometry_closed_from_evidence (A : AdmissibleClass) (C : CathedralGeometry A) (E : CathedralEvidence A C) : CathedralGeometryClosed A C := by
  exact And.intro E.naveWidthNonzero (And.intro E.heightNonzero (And.intro E.goldenRatioUsedClosed (And.intro E.pointedArchAngleClosed E.blueprintCompleteClosed)))

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse