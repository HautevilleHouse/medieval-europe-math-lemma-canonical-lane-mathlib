import canonicalLaneMathlib.AdmissibleClass
import MedievalEuropeMathLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "medieval-europe-math-lemma",
  theoremName := "Medieval Europe Math Lemma",
  theoremObject := "The lemma asserts certain structural properties of medieval mathematical texts.",
  classicalBoundary := "This boundary is carried as an open gap.",
  constrainedStatement := "Manuscript-constrained theorem certificate internalized through baseline gates.",
  certificateLane := "manuscript_constrained",
  carriedRemainder := "classical boundary remains carried as open."
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "medieval-europe-math-lemma" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "manuscript_constrained" := by
  rfl

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse