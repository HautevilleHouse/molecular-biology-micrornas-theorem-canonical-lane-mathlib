import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyMicrornasTheoremCanonicalLaneLean.ExpressionValidation

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure FunctionalAssay where
  assayType : String
  effectObserved : Prop
  effectReplicated : Prop
  effectObservedConfirmed : effectObserved
  effectReplicatedConfirmed : effectReplicated

def FunctionalAssayClosed (F : FunctionalAssay) : Prop :=
  F.effectObserved ∧ F.effectReplicated

theorem functional_assay_closed (F : FunctionalAssay) : FunctionalAssayClosed F := by
  exact And.intro F.effectObservedConfirmed F.effectReplicatedConfirmed

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse
