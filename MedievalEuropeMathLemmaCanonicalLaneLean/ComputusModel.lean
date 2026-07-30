import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

structure ComputusModel (A : AdmissibleClass) where
  solarYear : ℕ
  lunarCycle : ℕ
  epact : ℕ
  goldenNumberAdjust : Prop
  terminusPaschal : A.endpointSatisfied ∨ A.remainderRecorded

structure ComputusEvidence (A : AdmissibleClass) (C : ComputusModel A) where
  solarYearCorrect : C.solarYear = 365
  lunarCycleCorrect : C.lunarCycle = 19
  epactComputed : C.epact = (C.solarYear % 19) + 1
  terminusClosed : C.terminusPaschal

def ComputusModelClosed (A : AdmissibleClass) (C : ComputusModel A) : Prop :=
  (C.solarYear = 365) ∧ (C.lunarCycle = 19) ∧ (C.epact = (C.solarYear % 19) + 1) ∧ C.terminusPaschal

theorem computus_model_closed_from_evidence (A : AdmissibleClass) (C : ComputusModel A) (E : ComputusEvidence A C) : ComputusModelClosed A C := by
  exact And.intro E.solarYearCorrect (And.intro E.lunarCycleCorrect (And.intro E.epactComputed E.terminusClosed))

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse