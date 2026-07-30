import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure NoncollapsingPackage where
  targetGeneExpressionStable : Prop
  micrornaBindingFreeEnergy : Prop
  regulatoryNetworkRobust : Prop

structure NoncollapsingEvidence (N : NoncollapsingPackage) where
  targetGeneExpressionStableClosed : N.targetGeneExpressionStable
  micrornaBindingFreeEnergyClosed : N.micrornaBindingFreeEnergy
  regulatoryNetworkRobustClosed : N.regulatoryNetworkRobust

def NoncollapsingClosed (N : NoncollapsingPackage) : Prop :=
  N.targetGeneExpressionStable ∧ N.micrornaBindingFreeEnergy ∧ N.regulatoryNetworkRobust

theorem noncollapsing_closed_from_evidence
    (N : NoncollapsingPackage) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.targetGeneExpressionStableClosed
    (And.intro E.micrornaBindingFreeEnergyClosed E.regulatoryNetworkRobustClosed)

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse