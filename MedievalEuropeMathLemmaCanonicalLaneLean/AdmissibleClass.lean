import MedievalEuropeMathLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : MedievalEuropeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MedievalEuropeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse