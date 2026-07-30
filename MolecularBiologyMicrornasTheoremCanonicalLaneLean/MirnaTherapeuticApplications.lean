import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure MirnaTherapeuticApplications where
  mirnaMimics : Prop
  antagomirs : Prop
  mirnaSponges : Prop
  deliverySystems : Prop
  clinicalTrials : Prop

structure MirnaTherapeuticApplicationsEvidence (T : MirnaTherapeuticApplications) where
  mirnaMimicsClosed : T.mirnaMimics
  antagomirsClosed : T.antagomirs
  mirnaSpongesClosed : T.mirnaSponges
  deliverySystemsClosed : T.deliverySystems
  clinicalTrialsClosed : T.clinicalTrials

def MirnaTherapeuticApplicationsClosed (T : MirnaTherapeuticApplications) : Prop :=
  T.mirnaMimics ∧ T.antagomirs ∧ T.mirnaSponges ∧
  T.deliverySystems ∧ T.clinicalTrials

theorem mirna_therapeutic_applications_closed_from_evidence
    (T : MirnaTherapeuticApplications)
    (E : MirnaTherapeuticApplicationsEvidence T) : MirnaTherapeuticApplicationsClosed T := by
  exact And.intro E.mirnaMimicsClosed
    (And.intro E.antagomirsClosed
      (And.intro E.mirnaSpongesClosed
        (And.intro E.deliverySystemsClosed E.clinicalTrialsClosed)))

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse
