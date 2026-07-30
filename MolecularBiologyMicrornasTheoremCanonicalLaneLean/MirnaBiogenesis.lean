import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure MirnaBiogenesis where
  priMirnaTranscript : Prop
  droshaProcessing : Prop
  exportin5Export : Prop
  dicerProcessing : Prop
  riscLoading : Prop
  targetRecognition : Prop

structure MirnaBiogenesisEvidence (M : MirnaBiogenesis) where
  priMirnaTranscriptClosed : M.priMirnaTranscript
  droshaProcessingClosed : M.droshaProcessing
  exportin5ExportClosed : M.exportin5Export
  dicerProcessingClosed : M.dicerProcessing
  riscLoadingClosed : M.riscLoading
  targetRecognitionClosed : M.targetRecognition

def MirnaBiogenesisClosed (M : MirnaBiogenesis) : Prop :=
  M.priMirnaTranscript ∧ M.droshaProcessing ∧ M.exportin5Export ∧
  M.dicerProcessing ∧ M.riscLoading ∧ M.targetRecognition

theorem mirna_biogenesis_closed_from_evidence (M : MirnaBiogenesis)
    (E : MirnaBiogenesisEvidence M) : MirnaBiogenesisClosed M := by
  exact And.intro E.priMirnaTranscriptClosed
    (And.intro E.droshaProcessingClosed
      (And.intro E.exportin5ExportClosed
        (And.intro E.dicerProcessingClosed
          (And.intro E.riscLoadingClosed E.targetRecognitionClosed))))

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse
