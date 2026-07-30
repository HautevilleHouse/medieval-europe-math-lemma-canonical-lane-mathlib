import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

structure QuadriviumContext (A : AdmissibleClass) where
  arithmeticKnown : Prop
  geometryKnown : Prop
  musicKnown : Prop
  astronomyKnown : Prop
  triviumComplete : Prop

structure QuadriviumEvidence (A : AdmissibleClass) (Q : QuadriviumContext A) where
  arithmeticKnownClosed : Q.arithmeticKnown
  geometryKnownClosed : Q.geometryKnown
  musicKnownClosed : Q.musicKnown
  astronomyKnownClosed : Q.astronomyKnown
  triviumCompleteClosed : Q.triviumComplete

def QuadriviumContextClosed (A : AdmissibleClass) (Q : QuadriviumContext A) : Prop :=
  Q.arithmeticKnown ∧ Q.geometryKnown ∧ Q.musicKnown ∧ Q.astronomyKnown ∧ Q.triviumComplete

theorem quadrivium_context_closed_from_evidence (A : AdmissibleClass) (Q : QuadriviumContext A) (E : QuadriviumEvidence A Q) : QuadriviumContextClosed A Q := by
  exact And.intro E.arithmeticKnownClosed (And.intro E.geometryKnownClosed (And.intro E.musicKnownClosed (And.intro E.astronomyKnownClosed E.triviumCompleteClosed)))

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse