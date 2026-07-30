import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

structure ScholasticDisputation (A : AdmissibleClass) where
  quaestio : String
  propositio : Prop
  objectio : Prop
  replicatio : Prop
  conclusio : A.endpointSatisfied ∨ A.remainderRecorded

structure DisputationEvidence (A : AdmissibleClass) (S : ScholasticDisputation A) where
  objectioClosed : S.objectio
  replicatioClosed : S.replicatio
  conclusioClosed : S.conclusio

def ScholasticDisputationClosed (A : AdmissibleClass) (S : ScholasticDisputation A) : Prop :=
  S.objectio ∧ S.replicatio ∧ S.conclusio

theorem scholastic_disputation_closed_from_evidence (A : AdmissibleClass) (S : ScholasticDisputation A) (E : DisputationEvidence A S) : ScholasticDisputationClosed A S := by
  exact And.intro E.objectioClosed (And.intro E.replicatioClosed E.conclusioClosed)

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse