import canonicalLaneMathlib.AdmissibleClass
import MedievalEuropeMathLemmaCanonicalLaneLean.MedievalNumerals
import MedievalEuropeMathLemmaCanonicalLaneLean.FibonacciSequence
import MedievalEuropeMathLemmaCanonicalLaneLean.QuadraticEquation
import MedievalEuropeMathLemmaCanonicalLaneLean.MertonCollegeCalculations
import MedievalEuropeMathLemmaCanonicalLaneLean.OresmeGraph

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded ∨ A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.endpointSatisfied

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  Or.inl A.remainderRecorded

def ConstrainedMedievalEuropeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_medieval_europe_endgame (A : AdmissibleClass) :
    ConstrainedMedievalEuropeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse