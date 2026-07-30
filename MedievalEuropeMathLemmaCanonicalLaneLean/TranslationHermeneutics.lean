import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

structure TranslationHermeneutics (A : AdmissibleClass) where
  sourceLanguage : String
  targetLanguage : String
  originalText : A.object = A.object
  translatedText : Prop
  glossAdded : Prop

structure TranslationEvidence (A : AdmissibleClass) (T : TranslationHermeneutics A) where
  translatedTextClosed : T.translatedText
  glossAddedClosed : T.glossAdded
  equivalencePreserved : T.originalText → T.translatedText

def TranslationHermeneuticsClosed (A : AdmissibleClass) (T : TranslationHermeneutics A) : Prop :=
  T.translatedText ∧ T.glossAdded

theorem translation_hermeneutics_closed_from_evidence (A : AdmissibleClass) (T : TranslationHermeneutics A) (E : TranslationEvidence A T) : TranslationHermeneuticsClosed A T := by
  exact And.intro E.translatedTextClosed E.glossAddedClosed

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse