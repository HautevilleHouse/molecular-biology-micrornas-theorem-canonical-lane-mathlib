import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure MicrornaAnalyticEvidenceTerms where
  micrornaBinding : Prop
  targetGeneRepression : Prop
  regulatoryFeedback : Prop
  evidenceClosed : NoncollapsingClosed defaultNoncollapsingPackage

defaultNoncollapsingPackage : NoncollapsingPackage := {
  targetGeneExpressionStable := True,
  micrornaBindingFreeEnergy := True,
  regulatoryNetworkRobust := True
}

defaultNoncollapsingEvidence : NoncollapsingEvidence defaultNoncollapsingPackage := {
  targetGeneExpressionStableClosed := True.intro,
  micrornaBindingFreeEnergyClosed := True.intro,
  regulatoryNetworkRobustClosed := True.intro
}

theorem evidence_closed :
    noncollapsing_closed_from_evidence defaultNoncollapsingPackage defaultNoncollapsingEvidence := by
  exact noncollapsing_closed_from_evidence defaultNoncollapsingPackage defaultNoncollapsingEvidence

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse