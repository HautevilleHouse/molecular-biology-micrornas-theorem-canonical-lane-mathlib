import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure BiologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BiologyAdmittedObject where
  sample : BiologySpace
  micrornaRegulation : Prop
  targetGeneNetwork : Prop
  phenotypeAssociation : Type
  experimentalValidation : Prop
  conclusion : experimentalValidation

structure BiologyEndgameState where
  object : BiologyAdmittedObject

def BiologyWitnessClosed (O : BiologyAdmittedObject) : Prop :=
  O.experimentalValidation

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse