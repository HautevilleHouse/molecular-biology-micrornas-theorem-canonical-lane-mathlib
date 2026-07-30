import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyMicrornasTheoremCanonicalLaneLean.GeneRegulationPathway

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure ExpressionData where
  micrornaLevel : Float
  targetGeneLevel : Float
  foldChange : Float
  pValue : Float
  significant : foldChange > 1.0 ∧ pValue < 0.05
  significantConfirmed : significant

structure ExpressionValidationPackage where
  expressionData : ExpressionData
  validationMethod : String
  replicates : Nat
  validationMethodReliable : replication > 2
  replicatesSufficient : replicates > 2
  validationMethodReliableConfirmed : validationMethodReliable
  replicatesSufficientConfirmed : replicatesSufficient

def ExpressionValidationClosed (V : ExpressionValidationPackage) : Prop :=
  V.expressionData.significant ∧ V.validationMethodReliable ∧ V.replicatesSufficient

theorem expression_validation_closed (V : ExpressionValidationPackage) : ExpressionValidationClosed V := by
  exact And.intro V.expressionData.significantConfirmed (And.intro V.validationMethodReliableConfirmed V.replicatesSufficientConfirmed)

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse
