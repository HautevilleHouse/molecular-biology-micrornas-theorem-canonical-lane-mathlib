import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure MirnaDiseaseAssociation where
  cancerDysregulation : Prop
  cardiovascularMirna : Prop
  neurologicalMirna : Prop
  immuneSystemModulation : Prop
  biomarkerUtility : Prop

structure MirnaDiseaseAssociationEvidence (D : MirnaDiseaseAssociation) where
  cancerDysregulationClosed : D.cancerDysregulation
  cardiovascularMirnaClosed : D.cardiovascularMirna
  neurologicalMirnaClosed : D.neurologicalMirna
  immuneSystemModulationClosed : D.immuneSystemModulation
  biomarkerUtilityClosed : D.biomarkerUtility

def MirnaDiseaseAssociationClosed (D : MirnaDiseaseAssociation) : Prop :=
  D.cancerDysregulation ∧ D.cardiovascularMirna ∧ D.neurologicalMirna ∧
  D.immuneSystemModulation ∧ D.biomarkerUtility

theorem mirna_disease_association_closed_from_evidence (D : MirnaDiseaseAssociation)
    (E : MirnaDiseaseAssociationEvidence D) : MirnaDiseaseAssociationClosed D := by
  exact And.intro E.cancerDysregulationClosed
    (And.intro E.cardiovascularMirnaClosed
      (And.intro E.neurologicalMirnaClosed
        (And.intro E.immuneSystemModulationClosed E.biomarkerUtilityClosed)))

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse
