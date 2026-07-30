import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyMicrornasTheoremCanonicalLaneLean.MicrornaTargetPrediction

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure RegulatoryPathway where
  microrna : MicrornaSequence
  targetMrna : String
  repressionMechanism : String
  pathwayKnown : Prop
  repressionMechanismIdentified : Prop
  pathwayKnownConfirmed : pathwayKnown
  repressionMechanismIdentifiedConfirmed : repressionMechanismIdentified

def RegulationPathwayClosed (R : RegulatoryPathway) : Prop :=
  R.pathwayKnown ∧ R.repressionMechanismIdentified

theorem regulation_pathway_closed (R : RegulatoryPathway) : RegulationPathwayClosed R := by
  exact And.intro R.pathwayKnownConfirmed R.repressionMechanismIdentifiedConfirmed

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse
