import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure MicrornaSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MicrornaAdmittedObject where
  cellPopulation : MicrornaSpace
  micrornaRegulation : Prop
  targetGeneExpression : Prop
  regulatoryNetworkModel : Prop
  conclusion : regulatoryNetworkModel

structure MicrornaEndgameState where
  object : MicrornaAdmittedObject

def MicrornaWitnessClosed (O : MicrornaAdmittedObject) : Prop :=
  O.regulatoryNetworkModel

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse