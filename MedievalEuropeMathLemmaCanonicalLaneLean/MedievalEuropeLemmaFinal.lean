import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MedievalEuropeMathLemmaCanonicalLaneLean.MedievalEuropeConstants

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MedievalEuropeConstantsClosed (A.object)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedMedievalEuropeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_medieval_europe_endgame (A : AdmissibleClass) :
    ConstrainedMedievalEuropeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse
