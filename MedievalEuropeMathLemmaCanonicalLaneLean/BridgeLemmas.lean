import MedievalEuropeMathLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MedievalEuropeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse