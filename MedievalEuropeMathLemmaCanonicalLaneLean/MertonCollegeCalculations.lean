import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

structure MertonCollegePackage where
  meanSpeedTheorem : Prop
  uniformAcceleration : Prop
  mertonRule : Prop

structure MertonCollegeEvidence (M : MertonCollegePackage) where
  meanSpeedTheoremClosed : M.meanSpeedTheorem
  uniformAccelerationClosed : M.uniformAcceleration
  mertonRuleClosed : M.mertonRule

def MertonCollegeClosed (M : MertonCollegePackage) : Prop :=
  M.meanSpeedTheorem ∧ M.uniformAcceleration ∧ M.mertonRule

theorem merton_college_closed_from_evidence (M : MertonCollegePackage)
    (E : MertonCollegeEvidence M) : MertonCollegeClosed M := by
  exact And.intro E.meanSpeedTheoremClosed
    (And.intro E.uniformAccelerationClosed E.mertonRuleClosed)

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse