import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

structure QuadraticEquationPackage where
  standardForm : Prop
  discriminantFormula : Prop
  solvingMethod : Prop

structure QuadraticEquationEvidence (Q : QuadraticEquationPackage) where
  standardFormClosed : Q.standardForm
  discriminantFormulaClosed : Q.discriminantFormula
  solvingMethodClosed : Q.solvingMethod

def QuadraticEquationClosed (Q : QuadraticEquationPackage) : Prop :=
  Q.standardForm ∧ Q.discriminantFormula ∧ Q.solvingMethod

theorem quadratic_equation_closed_from_evidence (Q : QuadraticEquationPackage)
    (E : QuadraticEquationEvidence Q) : QuadraticEquationClosed Q := by
  exact And.intro E.standardFormClosed
    (And.intro E.discriminantFormulaClosed E.solvingMethodClosed)

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse