import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BiologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse