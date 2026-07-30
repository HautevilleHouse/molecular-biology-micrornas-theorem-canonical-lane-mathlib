import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure DiseaseAssociationEndpointPackage where
  phenotype : Type u
  micrornaDysregulation : Prop
  biomarkerValidation : Prop
  therapeuticTarget : Prop
  clinicalTrialCorrelation : Prop

structure DiseaseAssociationEndpointEvidence (Pkg : DiseaseAssociationEndpointPackage) where
  micrornaDysregulationClosed : Pkg.micrornaDysregulation
  biomarkerValidationClosed : Pkg.biomarkerValidation
  therapeuticTargetClosed : Pkg.therapeuticTarget
  clinicalTrialCorrelationClosed : Pkg.clinicalTrialCorrelation

def DiseaseAssociationEndpointClosed (Pkg : DiseaseAssociationEndpointPackage) : Prop :=
  Pkg.micrornaDysregulation ∧ Pkg.biomarkerValidation ∧
  Pkg.therapeuticTarget ∧ Pkg.clinicalTrialCorrelation

theorem disease_association_endpoint_closed_from_evidence (Pkg : DiseaseAssociationEndpointPackage)
    (E : DiseaseAssociationEndpointEvidence Pkg) : DiseaseAssociationEndpointClosed Pkg := by
  exact And.intro E.micrornaDysregulationClosed
    (And.intro E.biomarkerValidationClosed
      (And.intro E.therapeuticTargetClosed E.clinicalTrialCorrelationClosed))

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse