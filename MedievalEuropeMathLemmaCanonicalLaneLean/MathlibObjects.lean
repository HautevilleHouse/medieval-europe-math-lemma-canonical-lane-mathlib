import MedievalEuropeMathLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MedievalEuropeMathLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MedievalEuropeSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MedievalEuropeAdmittedObject where
  space : MedievalEuropeSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure MedievalEuropeEndgameState where
  object : MedievalEuropeAdmittedObject

def MedievalEuropeWitnessClosed (O : MedievalEuropeAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end MedievalEuropeMathLemmaCanonicalLaneLean
end HautevilleHouse