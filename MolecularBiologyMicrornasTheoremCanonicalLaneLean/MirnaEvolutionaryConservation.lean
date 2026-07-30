import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure MirnaEvolutionaryConservation where
  crossSpeciesConservation : Prop
  seedRegionConservation : Prop
  geneFamilyExpansion : Prop
  coevolutionWithTargets : Prop
  functionalDivergence : Prop

structure MirnaEvolutionaryConservationEvidence (E : MirnaEvolutionaryConservation) where
  crossSpeciesConservationClosed : E.crossSpeciesConservation
  seedRegionConservationClosed : E.seedRegionConservation
  geneFamilyExpansionClosed : E.geneFamilyExpansion
  coevolutionWithTargetsClosed : E.coevolutionWithTargets
  functionalDivergenceClosed : E.functionalDivergence

def MirnaEvolutionaryConservationClosed (E : MirnaEvolutionaryConservation) : Prop :=
  E.crossSpeciesConservation ∧ E.seedRegionConservation ∧ E.geneFamilyExpansion ∧
  E.coevolutionWithTargets ∧ E.functionalDivergence

theorem mirna_evolutionary_conservation_closed_from_evidence
    (E : MirnaEvolutionaryConservation)
    (Ev : MirnaEvolutionaryConservationEvidence E) : MirnaEvolutionaryConservationClosed E := by
  exact And.intro Ev.crossSpeciesConservationClosed
    (And.intro Ev.seedRegionConservationClosed
      (And.intro Ev.geneFamilyExpansionClosed
        (And.intro Ev.coevolutionWithTargetsClosed Ev.functionalDivergenceClosed)))

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse
