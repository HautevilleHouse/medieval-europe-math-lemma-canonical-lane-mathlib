import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

structure MedievalNumeralPackage where
  romanNumeralSystem : Prop
  hinduArabicNumeralSystem : Prop
  translationAdmissible : Prop

structure MedievalNumeralEvidence (N : MedievalNumeralPackage) where
  romanNumeralSystemClosed : N.romanNumeralSystem
  hinduArabicNumeralSystemClosed : N.hinduArabicNumeralSystem
  translationAdmissibleClosed : N.translationAdmissible

def MedievalNumeralClosed (N : MedievalNumeralPackage) : Prop :=
  N.romanNumeralSystem ∧ N.hinduArabicNumeralSystem ∧ N.translationAdmissible

theorem medieval_numeral_closed_from_evidence (N : MedievalNumeralPackage)
    (E : MedievalNumeralEvidence N) : MedievalNumeralClosed N := by
  exact And.intro E.romanNumeralSystemClosed
    (And.intro E.hinduArabicNumeralSystemClosed E.translationAdmissibleClosed)

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse