import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure DiseaseAssociation where
  diseaseType : String
  mirnaBiomarker : Prop
  therapeuticTarget : Prop
  expressionSignature : Prop

structure DiseaseAssociationEvidence (D : DiseaseAssociation) where
  mirnaBiomarkerClosed : D.mirnaBiomarker
  therapeuticTargetClosed : D.therapeuticTarget
  expressionSignatureClosed : D.expressionSignature

def DiseaseAssociationClosed (D : DiseaseAssociation) : Prop :=
  D.mirnaBiomarker ∧ D.therapeuticTarget ∧ D.expressionSignature

theorem disease_association_closed_from_evidence
    (D : DiseaseAssociation) (E : DiseaseAssociationEvidence D) :
    DiseaseAssociationClosed D := by
  exact And.intro E.mirnaBiomarkerClosed (And.intro E.therapeuticTargetClosed E.expressionSignatureClosed)

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse