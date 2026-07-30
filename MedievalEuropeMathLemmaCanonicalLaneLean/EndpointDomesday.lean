import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

structure EndpointDomesdayPackage {G : FeudalHierarchyPackage}
    {F : ManorialEconomyPackage G} {S : LandTenurePackage F}
    {Epkg : FeudalObligationPackage S} {N : KnightServicePackage Epkg}
    {Q : LordshipRightsPackage N} {C : CanonicalFiefdomsPackage Q}
    {U : DemesneConsolidationPackage C} (Z : RoyalExchequerPackage U) where
  targetManor : Type u
  targetAdmin : TopologicalSpace targetManor
  centralizedFiscalSystem : Prop
  domesdayRecordEnd : Nat → Prop

def EndpointDomesdayClosed {G : FeudalHierarchyPackage}
    {F : ManorialEconomyPackage G} {S : LandTenurePackage F}
    {Epkg : FeudalObligationPackage S} {N : KnightServicePackage Epkg}
    {Q : LordshipRightsPackage N} {C : CanonicalFiefdomsPackage Q}
    {U : DemesneConsolidationPackage C} (Z : EndpointDomesdayPackage U) : Prop :=
  Z.centralizedFiscalSystem ∧ ∀ n, Z.domesdayRecordEnd n

theorem endpoint_domesday_supplies_record
    {G : FeudalHierarchyPackage} {F : ManorialEconomyPackage G}
    {S : LandTenurePackage F} {Epkg : FeudalObligationPackage S}
    {N : KnightServicePackage Epkg} {Q : LordshipRightsPackage N}
    {C : CanonicalFiefdomsPackage Q} {U : DemesneConsolidationPackage C}
    (Z : EndpointDomesdayPackage U) (n : ℕ) :
    Z.domesdayRecordEnd n := by
  intro h; exact h

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse