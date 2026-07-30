import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

structure FibonacciSequencePackage where
  rabbitProblem : Prop
  recurrenceRelation : Prop
  closedFormExplicit : Prop

structure FibonacciSequenceEvidence (F : FibonacciSequencePackage) where
  rabbitProblemClosed : F.rabbitProblem
  recurrenceRelationClosed : F.recurrenceRelation
  closedFormExplicitClosed : F.closedFormExplicit

def FibonacciSequenceClosed (F : FibonacciSequencePackage) : Prop :=
  F.rabbitProblem ∧ F.recurrenceRelation ∧ F.closedFormExplicit

theorem fibonacci_sequence_closed_from_evidence (F : FibonacciSequencePackage)
    (E : FibonacciSequenceEvidence F) : FibonacciSequenceClosed F := by
  exact And.intro E.rabbitProblemClosed
    (And.intro E.recurrenceRelationClosed E.closedFormExplicitClosed)

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse