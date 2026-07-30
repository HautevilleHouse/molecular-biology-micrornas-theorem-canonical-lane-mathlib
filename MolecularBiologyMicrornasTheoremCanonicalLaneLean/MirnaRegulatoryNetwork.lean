import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure MirnaRegulatoryNetwork where
  mirnaGeneTargetPairs : Prop
  feedbackLoops : Prop
  feedforwardLoops : Prop
  targetGeneBanks : Prop
  networkRobustness : Prop

structure MirnaRegulatoryNetworkEvidence (N : MirnaRegulatoryNetwork) where
  mirnaGeneTargetPairsClosed : N.mirnaGeneTargetPairs
  feedbackLoopsClosed : N.feedbackLoops
  feedforwardLoopsClosed : N.feedforwardLoops
  targetGeneBanksClosed : N.targetGeneBanks
  networkRobustnessClosed : N.networkRobustness

def MirnaRegulatoryNetworkClosed (N : MirnaRegulatoryNetwork) : Prop :=
  N.mirnaGeneTargetPairs ∧ N.feedbackLoops ∧ N.feedforwardLoops ∧
  N.targetGeneBanks ∧ N.networkRobustness

theorem mirna_regulatory_network_closed_from_evidence (N : MirnaRegulatoryNetwork)
    (E : MirnaRegulatoryNetworkEvidence N) : MirnaRegulatoryNetworkClosed N := by
  exact And.intro E.mirnaGeneTargetPairsClosed
    (And.intro E.feedbackLoopsClosed
      (And.intro E.feedforwardLoopsClosed
        (And.intro E.targetGeneBanksClosed E.networkRobustnessClosed)))

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse
