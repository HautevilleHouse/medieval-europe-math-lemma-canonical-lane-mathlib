import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

/-!
# Medieval Demographics Model Package
This module formalizes population models for medieval demography.
-/

structure DemographicParameters where
  birthRate : ℚ
  deathRate : ℚ
  migrationRate : ℚ
  initialPopulation : ℕ
  timeHorizon : ℕ

def populationAfter (D : DemographicParameters) (years : ℕ) : ℚ :=
  let rate := D.birthRate - D.deathRate + D.migrationRate
  (D.initialPopulation : ℚ) * (1 + rate)^(years : ℕ)

structure DemographicEvidence (D : DemographicParameters) where
  ratesValidate : True
  initialPositive : D.initialPopulation > 0
  timeHorizonPositive : D.timeHorizon > 0
  birthRateNonnegative : D.birthRate ≥ 0
  deathRateNonnegative : D.deathRate ≥ 0

def DemographicClosed (D : DemographicParameters) : Prop :=
  D.initialPopulation > 0 ∧ D.timeHorizon > 0 ∧ D.birthRate ≥ 0 ∧ D.deathRate ≥ 0

theorem demographic_closed_from_evidence (D : DemographicParameters) (E : DemographicEvidence D) :
    DemographicClosed D := by
  exact And.intro E.initialPositive (And.intro E.timeHorizonPositive (And.intro E.birthRateNonnegative E.deathRateNonnegative))

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse