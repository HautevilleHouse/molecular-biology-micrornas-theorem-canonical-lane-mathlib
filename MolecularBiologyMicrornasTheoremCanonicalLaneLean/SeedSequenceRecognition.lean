import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure SeedSequenceRecognition where
  seedRegion : String
  targetBinding : String
  bindingStability : Prop
  seedMatchStringency : Prop

structure SeedSequenceRecognitionEvidence (S : SeedSequenceRecognition) where
  bindingStabilityClosed : S.bindingStability
  seedMatchStringencyClosed : S.seedMatchStringency

def SeedSequenceRecognitionClosed (S : SeedSequenceRecognition) : Prop :=
  S.bindingStability ∧ S.seedMatchStringency

theorem seed_sequence_recognition_closed_from_evidence
    (S : SeedSequenceRecognition) (E : SeedSequenceRecognitionEvidence S) :
    SeedSequenceRecognitionClosed S := by
  exact And.intro E.bindingStabilityClosed E.seedMatchStringencyClosed

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse