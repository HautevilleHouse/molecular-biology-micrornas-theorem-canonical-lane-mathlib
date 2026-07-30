import HautevilleHouse.MolecularBiologyMicrornasTheoremCanonicalLaneLean.MicroRNATargetRegulation

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure MiRNomeEvolutionaryConservationPackage
    {P : MicroRNATargetRegulationPackage} (Q : MicroRNATargetRegulationEvidence P) where
  phylogeneticConservation : Prop
  syntenyPreserved : Prop
  geneDuplicationEventsAccounted : Prop
  pseudogeneDecayRate : Prop

structure MiRNomeEvolutionaryConservationEvidence
    {P : MicroRNATargetRegulationPackage} {Q : MicroRNATargetRegulationEvidence P}
    (R : MiRNomeEvolutionaryConservationPackage Q) where
  phylogeneticConservationClosed : R.phylogeneticConservation
  syntenyPreservedClosed : R.syntenyPreserved
  geneDuplicationEventsAccountedClosed : R.geneDuplicationEventsAccounted
  pseudogeneDecayRateClosed : R.pseudogeneDecayRate

def MiRNomeEvolutionaryConservationClosed
    {P : MicroRNATargetRegulationPackage} {Q : MicroRNATargetRegulationEvidence P}
    (R : MiRNomeEvolutionaryConservationPackage Q) : Prop :=
  R.phylogeneticConservation ∧ R.syntenyPreserved ∧
  R.geneDuplicationEventsAccounted ∧ R.pseudogeneDecayRate

theorem mirnome_evolutionary_conservation_closed_from_evidence
    {P : MicroRNATargetRegulationPackage} {Q : MicroRNATargetRegulationEvidence P}
    (R : MiRNomeEvolutionaryConservationPackage Q)
    (E : MiRNomeEvolutionaryConservationEvidence R) :
    MiRNomeEvolutionaryConservationClosed R := by
  exact And.intro E.phylogeneticConservationClosed
    (And.intro E.syntenyPreservedClosed
      (And.intro E.geneDuplicationEventsAccountedClosed E.pseudogeneDecayRateClosed))

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse
