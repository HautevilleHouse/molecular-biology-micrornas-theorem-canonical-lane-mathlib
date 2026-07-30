import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure MicrornaBindingAnalyticCertificate where
  bindingAffinity : Prop
  seedSequenceMatch : Prop
  thermodynamicStability : Prop
  bindingAffinityClosed : bindingAffinity
  seedSequenceMatchClosed : seedSequenceMatch
  thermodynamicStabilityClosed : thermodynamicStability
  bindingEvidence : NoncollapsingEvidence defaultNoncollapsingPackage

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

def MicrornaBindingAnalyticCertificateClosed
    (C : MicrornaBindingAnalyticCertificate) : Prop :=
  C.bindingAffinity ∧ C.seedSequenceMatch ∧ C.thermodynamicStability ∧
  NoncollapsingClosed defaultNoncollapsingPackage

theorem microrna_binding_analytic_certificate_closed
    (C : MicrornaBindingAnalyticCertificate) :
    MicrornaBindingAnalyticCertificateClosed C := by
  exact And.intro C.bindingAffinityClosed
    (And.intro C.seedSequenceMatchClosed
      (And.intro C.thermodynamicStabilityClosed
        (noncollapsing_closed_from_evidence defaultNoncollapsingPackage defaultNoncollapsingEvidence)))

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse