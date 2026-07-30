import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure SystemsBiologyDynamicsPackage where
  geneRegulatoryNetwork : Type u
  feedbackLoop : Prop
  populationModel : Prop
  evolutionaryConservation : Prop
  perturbationResponse : Prop

structure SystemsBiologyDynamicsEvidence (Pkg : SystemsBiologyDynamicsPackage) where
  feedbackLoopClosed : Pkg.feedbackLoop
  populationModelClosed : Pkg.populationModel
  evolutionaryConservationClosed : Pkg.evolutionaryConservation
  perturbationResponseClosed : Pkg.perturbationResponse

def SystemsBiologyDynamicsClosed (Pkg : SystemsBiologyDynamicsPackage) : Prop :=
  Pkg.feedbackLoop ∧ Pkg.populationModel ∧
  Pkg.evolutionaryConservation ∧ Pkg.perturbationResponse

theorem systems_biology_dynamics_closed_from_evidence (Pkg : SystemsBiologyDynamicsPackage)
    (E : SystemsBiologyDynamicsEvidence Pkg) : SystemsBiologyDynamicsClosed Pkg := by
  exact And.intro E.feedbackLoopClosed
    (And.intro E.populationModelClosed
      (And.intro E.evolutionaryConservationClosed E.perturbationResponseClosed))

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse