import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

structure CanonicalFiefdomsPackage {G : FeudalHierarchyPackage}
    {F : ManorialEconomyPackage G} {S : LandTenurePackage F}
    {Epkg : FeudalObligationPackage S} {N : KnightServicePackage Epkg}
    (Q : LordshipRightsPackage N) where
  fiefGrantCovered : Prop
  vassalageDecomposition : Prop
  tenureCompatibility : Prop
  inheritanceUnderPrimogeniture : Prop

structure CanonicalFiefdomsEvidence {G : FeudalHierarchyPackage}
    {F : ManorialEconomyPackage G} {S : LandTenurePackage F}
    {Epkg : FeudalObligationPackage S} {N : KnightServicePackage Epkg}
    {Q : LordshipRightsPackage N} (C : CanonicalFiefdomsPackage Q) where
  fiefGrantCoveredClosed : C.fiefGrantCovered
  vassalageDecompositionClosed : C.vassalageDecomposition
  tenureCompatibilityClosed : C.tenureCompatibility
  inheritanceUnderPrimogenitureClosed : C.inheritanceUnderPrimogeniture

def CanonicalFiefdomsClosed {G : FeudalHierarchyPackage}
    {F : ManorialEconomyPackage G} {S : LandTenurePackage F}
    {Epkg : FeudalObligationPackage S} {N : KnightServicePackage Epkg}
    {Q : LordshipRightsPackage N} (C : CanonicalFiefdomsPackage Q) : Prop :=
  C.fiefGrantCovered ∧ C.vassalageDecomposition ∧ C.tenureCompatibility ∧ C.inheritanceUnderPrimogeniture

theorem canonical_fiefdoms_closed_from_evidence
    {G : FeudalHierarchyPackage} {F : ManorialEconomyPackage G}
    {S : LandTenurePackage F} {Epkg : FeudalObligationPackage S}
    {N : KnightServicePackage Epkg} {Q : LordshipRightsPackage N}
    (C : CanonicalFiefdomsPackage Q) (E : CanonicalFiefdomsEvidence C) :
    CanonicalFiefdomsClosed C := by
  exact And.intro E.fiefGrantCoveredClosed
    (And.intro E.vassalageDecompositionClosed
      (And.intro E.tenureCompatibilityClosed E.inheritanceUnderPrimogenitureClosed))

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse