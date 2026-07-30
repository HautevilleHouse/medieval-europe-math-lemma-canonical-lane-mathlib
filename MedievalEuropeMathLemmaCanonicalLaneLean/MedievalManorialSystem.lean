import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

/-!
# Medieval Manorial System Package
This module formalizes the mathematical structure of the medieval manorial system.
-/

structure ManorialSystemPackage where
  domainSize : ℕ
  peasantPopulation : ℕ
  arableLand : ℕ
  fallowCycles : ℕ
  cropYieldRate : ℚ
  laborObligation : ℕ
  lordShare : ℚ
  serfObligationsRegistered : Prop
  cropRotationScheduled : Prop
  harvestRecorded : Prop

structure ManorialSystemEvidence (M : ManorialSystemPackage) where
  serfObligationsRegisteredClosed : M.serfObligationsRegistered
  cropRotationScheduledClosed : M.cropRotationScheduled
  harvestRecordedClosed : M.harvestRecorded

def ManorialSystemClosed (M : ManorialSystemPackage) : Prop :=
  M.serfObligationsRegistered ∧ M.cropRotationScheduled ∧ M.harvestRecorded

theorem manorial_system_closed_from_evidence (M : ManorialSystemPackage) (E : ManorialSystemEvidence M) :
    ManorialSystemClosed M := by
  exact And.intro E.serfObligationsRegisteredClosed (And.intro E.cropRotationScheduledClosed E.harvestRecordedClosed)

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse