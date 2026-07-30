import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

structure MedievalManuscript (A : AdmissibleClass) where
  folioNumber : Nat
  scriptStyle : String
  marginalGloss : Prop
  lemmaStated : A.object = A.object
  scribalNote : String

structure ManuscriptEvidence (A : AdmissibleClass) (M : MedievalManuscript A) where
  folioClosed : M.folioNumber > 0
  lemmaStatedClosed : M.lemmaStated

def MedievalManuscriptClosed (A : AdmissibleClass) (M : MedievalManuscript A) : Prop :=
  M.folioNumber > 0 ∧ M.lemmaStated

theorem manuscript_closed_from_evidence (A : AdmissibleClass) (M : MedievalManuscript A) (E : ManuscriptEvidence A M) : MedievalManuscriptClosed A M := by
  exact And.intro E.folioClosed E.lemmaStatedClosed

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse