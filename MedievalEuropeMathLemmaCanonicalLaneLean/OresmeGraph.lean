import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

structure OresmeGraphPackage where
  latitudeOfForms : Prop
  graphicalIntegration : Prop
  infiniteSeriesSum : Prop

structure OresmeGraphEvidence (O : OresmeGraphPackage) where
  latitudeOfFormsClosed : O.latitudeOfForms
  graphicalIntegrationClosed : O.graphicalIntegration
  infiniteSeriesSumClosed : O.infiniteSeriesSum

def OresmeGraphClosed (O : OresmeGraphPackage) : Prop :=
  O.latitudeOfForms ∧ O.graphicalIntegration ∧ O.infiniteSeriesSum

theorem oresme_graph_closed_from_evidence (O : OresmeGraphPackage)
    (E : OresmeGraphEvidence O) : OresmeGraphClosed O := by
  exact And.intro E.latitudeOfFormsClosed
    (And.intro E.graphicalIntegrationClosed E.infiniteSeriesSumClosed)

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse