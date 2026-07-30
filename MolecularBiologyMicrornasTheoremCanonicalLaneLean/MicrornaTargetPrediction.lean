import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyMicrornasTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure MicrornaSequence where
  seqString : String
  seedRegion : Prop
  conservationScore : Nat

def MicrornaWitnessClosed (O : AdmittedMicrornaTarget) : Prop :=
  O.bindingSitePredicted ∧ O.geneRegulationEvidence

structure TargetPredictionPackage where
  microrna : MicrornaSequence
  targetGene : String
  bindingSite : String
  predictionScore : Nat
  seedMatch : Prop
  conservationCheck : Prop
  predictionScorePositive : predictionScore > 0
  seedMatchConfirmed : seedMatch
  conservationCheckPassed : conservationCheck

structure TargetPredictionEvidence (P : TargetPredictionPackage) where
  predictionScorePositiveClosed : P.predictionScorePositive
  seedMatchConfirmedClosed : P.seedMatchConfirmed
  conservationCheckPassedClosed : P.conservationCheckPassed

def TargetPredictionClosed (P : TargetPredictionPackage) : Prop :=
  P.predictionScorePositive ∧ P.seedMatchConfirmed ∧ P.conservationCheckPassed

theorem target_prediction_closed_from_evidence (P : TargetPredictionPackage) (E : TargetPredictionEvidence P) : TargetPredictionClosed P := by
  exact And.intro E.predictionScorePositiveClosed (And.intro E.seedMatchConfirmedClosed E.conservationCheckPassedClosed)

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse
