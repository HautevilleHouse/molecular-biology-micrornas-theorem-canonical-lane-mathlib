import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure MicroRNARegulatoryNetwork where
  mirnaSpecies : Type u
  targetTranscripts : Type v
  bindingAffinities : mirnaSpecies -> targetTranscripts -> Prop
  regulatoryEffect : Prop
  networkTopology : Prop

structure MicroRNARegulatoryNetworkEvidence (N : MicroRNARegulatoryNetwork) where
  bindingAffinitiesClosed : N.bindingAffinities
  regulatoryEffectClosed : N.regulatoryEffect
  networkTopologyClosed : N.networkTopology

def MicroRNARegulatoryNetworkClosed (N : MicroRNARegulatoryNetwork) : Prop :=
  N.bindingAffinities ∧ N.regulatoryEffect ∧ N.networkTopology

theorem microRNA_regulatory_network_closed_from_evidence
    (N : MicroRNARegulatoryNetwork) (E : MicroRNARegulatoryNetworkEvidence N) :
    MicroRNARegulatoryNetworkClosed N := by
  exact And.intro E.bindingAffinitiesClosed (And.intro E.regulatoryEffectClosed E.networkTopologyClosed)

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse