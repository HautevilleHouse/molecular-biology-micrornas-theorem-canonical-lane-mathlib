import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure MicrornaRegulationPackage where
  targetMRNA : Type u
  bindingSite : Prop
  translationalRepression : Prop
  rnaInterferencePathway : Prop
  expressionProfileCorrelation : Prop

structure MicrornaRegulationEvidence (Pkg : MicrornaRegulationPackage) where
  bindingSiteClosed : Pkg.bindingSite
  translationalRepressionClosed : Pkg.translationalRepression
  rnaInterferencePathwayClosed : Pkg.rnaInterferencePathway
  expressionProfileCorrelationClosed : Pkg.expressionProfileCorrelation

def MicrornaRegulationClosed (Pkg : MicrornaRegulationPackage) : Prop :=
  Pkg.bindingSite ∧ Pkg.translationalRepression ∧
  Pkg.rnaInterferencePathway ∧ Pkg.expressionProfileCorrelation

theorem microrna_regulation_closed_from_evidence (Pkg : MicrornaRegulationPackage)
    (E : MicrornaRegulationEvidence Pkg) : MicrornaRegulationClosed Pkg := by
  exact And.intro E.bindingSiteClosed
    (And.intro E.translationalRepressionClosed
      (And.intro E.rnaInterferencePathwayClosed E.expressionProfileCorrelationClosed))

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse