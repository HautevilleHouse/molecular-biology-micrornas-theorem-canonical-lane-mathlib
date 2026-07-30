import HautevilleHouse.MolecularBiologyMicrornasTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure MicroRNATargetRegulationPackage where
  micrornaSequence : String
  targetMRNA : String
  bindingSiteSeed : String
  seedMatch : Prop
  thermodynamicStability : Prop
  conservedAcrossSpecies : Prop

structure MicroRNATargetRegulationEvidence (P : MicroRNATargetRegulationPackage) where
  seedMatchClosed : P.seedMatch
  thermodynamicStabilityClosed : P.thermodynamicStability
  conservedAcrossSpeciesClosed : P.conservedAcrossSpecies

def MicroRNATargetRegulationClosed (P : MicroRNATargetRegulationPackage) : Prop :=
  P.seedMatch ∧ P.thermodynamicStability ∧ P.conservedAcrossSpecies

theorem microrna_target_regulation_closed_from_evidence
    (P : MicroRNATargetRegulationPackage) (E : MicroRNATargetRegulationEvidence P) :
    MicroRNATargetRegulationClosed P := by
  exact And.intro E.seedMatchClosed
    (And.intro E.thermodynamicStabilityClosed E.conservedAcrossSpeciesClosed)

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse
