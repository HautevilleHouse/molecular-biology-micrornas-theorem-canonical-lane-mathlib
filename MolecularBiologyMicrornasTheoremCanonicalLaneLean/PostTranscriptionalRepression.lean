import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure PostTranscriptionalRepression where
  mrnaDegradation : Prop
  translationalInhibition : Prop
  repressionEfficiency : Prop
  temporalDynamics : Prop

structure PostTranscriptionalRepressionEvidence (P : PostTranscriptionalRepression) where
  mrnaDegradationClosed : P.mrnaDegradation
  translationalInhibitionClosed : P.translationalInhibition
  repressionEfficiencyClosed : P.repressionEfficiency
  temporalDynamicsClosed : P.temporalDynamics

def PostTranscriptionalRepressionClosed (P : PostTranscriptionalRepression) : Prop :=
  P.mrnaDegradation ∧ P.translationalInhibition ∧ P.repressionEfficiency ∧ P.temporalDynamics

theorem post_transcriptional_repression_closed_from_evidence
    (P : PostTranscriptionalRepression) (E : PostTranscriptionalRepressionEvidence P) :
    PostTranscriptionalRepressionClosed P := by
  exact And.intro E.mrnaDegradationClosed
    (And.intro E.translationalInhibitionClosed
      (And.intro E.repressionEfficiencyClosed E.temporalDynamicsClosed))

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse