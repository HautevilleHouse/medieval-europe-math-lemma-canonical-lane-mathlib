import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

structure MedievalEuropeConstantsPackage where
  abacusValue : Prop
  algorithmNotation : Prop
  sequenceSummation : Prop
  zeroAsPlaceholder : Prop

structure MedievalEuropeConstantsEvidence (C : MedievalEuropeConstantsPackage) where
  abacusValueClosed : C.abacusValue
  algorithmNotationClosed : C.algorithmNotation
  sequenceSummationClosed : C.sequenceSummation
  zeroAsPlaceholderClosed : C.zeroAsPlaceholder

def MedievalEuropeConstantsClosed (C : MedievalEuropeConstantsPackage) : Prop :=
  C.abacusValue ∧ C.algorithmNotation ∧ C.sequenceSummation ∧ C.zeroAsPlaceholder

theorem medieval_europe_constants_closed_from_evidence
    (C : MedievalEuropeConstantsPackage) (E : MedievalEuropeConstantsEvidence C) :
    MedievalEuropeConstantsClosed C := by
  exact And.intro E.abacusValueClosed
    (And.intro E.algorithmNotationClosed
      (And.intro E.sequenceSummationClosed E.zeroAsPlaceholderClosed))

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse
