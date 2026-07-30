import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

def ConstrainedMicrornaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem microrna_endgame (A : AdmissibleClass) :
    ConstrainedMicrornaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse