import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

/-!
# Feudal Land Grants Logic Package
This module formalizes the logical structure of feudal land grants.
-/

structure FeudalLandGrant where
  grantor : String
  grantee : String
  landParcel : String
  dateGranted : ℕ
  terms : String
  witnesses : List String
  sealed : Prop
  recorded : Prop

structure GrantOfFief (G : FeudalLandGrant) where
  fiefConfirmed : Prop
  homagePerformed : Prop
  fealtySworn : Prop
  fiefConfirmedClosed : fiefConfirmed
  homagePerformedClosed : homagePerformed
  fealtySwornClosed : fealtySworn

def FiefClosed (G : FeudalLandGrant) (F : GrantOfFief G) : Prop :=
  F.fiefConfirmed ∧ F.homagePerformed ∧ F.fealtySworn

theorem fief_closed_from_evidence (G : FeudalLandGrant) (F : GrantOfFief G) : FiefClosed G F := by
  exact And.intro F.fiefConfirmedClosed (And.intro F.homagePerformedClosed F.fealtySwornClosed)

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse