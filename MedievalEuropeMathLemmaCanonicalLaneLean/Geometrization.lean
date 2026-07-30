import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

structure GeometrizationPackage {G : FeudalHierarchyPackage}
    {F : ManorialEconomyPackage G} {S : LandTenurePackage F}
    {Epkg : FeudalObligationPackage S} {N : KnightServicePackage Epkg}
    {Q : LordshipRightsPackage N} {C : CanonicalFiefdomsPackage Q}
    (U : DemesneConsolidationPackage C) where
  finiteExtinctionAlternative : Prop
  thickThinDecomposition : Prop
  geometrizedPiecesClassified : Prop
  simplyConnectedCaseForcesFiefPiece : Prop

structure GeometrizationEvidence {G : FeudalHierarchyPackage}
    {F : ManorialEconomyPackage G} {S : LandTenurePackage F}
    {Epkg : FeudalObligationPackage S} {N : KnightServicePackage Epkg}
    {Q : LordshipRightsPackage N} {C : CanonicalFiefdomsPackage Q}
    {U : DemesneConsolidationPackage C} (Z : GeometrizationPackage U) where
  finiteExtinctionAlternativeClosed : Z.finiteExtinctionAlternative
  thickThinDecompositionClosed : Z.thickThinDecomposition
  geometrizedPiecesClassifiedClosed : Z.geometrizedPiecesClassified
  simplyConnectedCaseForcesFiefPieceClosed : Z.simplyConnectedCaseForcesFiefPiece

def GeometrizationClosed {G : FeudalHierarchyPackage}
    {F : ManorialEconomyPackage G} {S : LandTenurePackage F}
    {Epkg : FeudalObligationPackage S} {N : KnightServicePackage Epkg}
    {Q : LordshipRightsPackage N} {C : CanonicalFiefdomsPackage Q}
    {U : DemesneConsolidationPackage C} (Z : GeometrizationPackage U) : Prop :=
  Z.finiteExtinctionAlternative ∧ Z.thickThinDecomposition ∧
  Z.geometrizedPiecesClassified ∧ Z.simplyConnectedCaseForcesFiefPiece

theorem geometrization_closed_from_evidence
    {G : FeudalHierarchyPackage} {F : ManorialEconomyPackage G}
    {S : LandTenurePackage F} {Epkg : FeudalObligationPackage S}
    {N : KnightServicePackage Epkg} {Q : LordshipRightsPackage N}
    {C : CanonicalFiefdomsPackage Q} {U : DemesneConsolidationPackage C}
    (Z : GeometrizationPackage U) (E : GeometrizationEvidence Z) :
    GeometrizationClosed Z := by
  exact And.intro E.finiteExtinctionAlternativeClosed
    (And.intro E.thickThinDecompositionClosed
      (And.intro E.geometrizedPiecesClassifiedClosed
        E.simplyConnectedCaseForcesFiefPieceClosed))

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse