import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

/-!
# Medieval Trade Network Package
This module formalizes trade routes and commercial exchange in medieval Europe.
-/

structure TradeRoute where
  origin : String
  destination : String
  commodity : String
  distance : ℕ
  toll : ℚ
  transitTime : ℕ

def routeFeasible (R : TradeRoute) : Bool :=
  R.distance > 0 ∧ R.transitTime > 0

structure TradeEvidence (R : TradeRoute) where
  distancePositive : R.distance > 0
  transitPositive : R.transitTime > 0

def TradeClosed (R : TradeRoute) : Prop :=
  R.distance > 0 ∧ R.transitTime > 0

theorem trade_closed_from_evidence (R : TradeRoute) (E : TradeEvidence R) : TradeClosed R := by
  exact And.intro E.distancePositive E.transitPositive

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse