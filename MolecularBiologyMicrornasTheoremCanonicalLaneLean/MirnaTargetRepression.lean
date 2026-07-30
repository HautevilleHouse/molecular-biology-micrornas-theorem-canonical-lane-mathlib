import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

structure MirnaTargetRepression where
  seedMatch : Prop
  argonauteRecruitment : Prop
  deadenylation : Prop
  translationalInhibition : Prop
  mrnaDecay : Prop

structure MirnaTargetRepressionEvidence (R : MirnaTargetRepression) where
  seedMatchClosed : R.seedMatch
  argonauteRecruitmentClosed : R.argonauteRecruitment
  deadenylationClosed : R.deadenylation
  translationalInhibitionClosed : R.translationalInhibition
  mrnaDecayClosed : R.mrnaDecay

def MirnaTargetRepressionClosed (R : MirnaTargetRepression) : Prop :=
  R.seedMatch ∧ R.argonauteRecruitment ∧ R.deadenylation ∧
  R.translationalInhibition ∧ R.mrnaDecay

theorem mirna_target_repression_closed_from_evidence (R : MirnaTargetRepression)
    (E : MirnaTargetRepressionEvidence R) : MirnaTargetRepressionClosed R := by
  exact And.intro E.seedMatchClosed
    (And.intro E.argonauteRecruitmentClosed
      (And.intro E.deadenylationClosed
        (And.intro E.translationalInhibitionClosed E.mrnaDecayClosed)))

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse
