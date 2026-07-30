import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure GeneRegulatoryEffect where
  regulatedGenes : List String
  expressionChange : String -> Prop
  pathwayImpact : Prop
  phenotypicOutcome : Prop

structure GeneRegulatoryEffectEvidence (G : GeneRegulatoryEffect) where
  expressionChangeClosed : G.expressionChange
  pathwayImpactClosed : G.pathwayImpact
  phenotypicOutcomeClosed : G.phenotypicOutcome

def GeneRegulatoryEffectClosed (G : GeneRegulatoryEffect) : Prop :=
  G.expressionChange ∧ G.pathwayImpact ∧ G.phenotypicOutcome

theorem gene_regulatory_effect_closed_from_evidence
    (G : GeneRegulatoryEffect) (E : GeneRegulatoryEffectEvidence G) :
    GeneRegulatoryEffectClosed G := by
  exact And.intro E.expressionChangeClosed (And.intro E.pathwayImpactClosed E.phenotypicOutcomeClosed)

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse