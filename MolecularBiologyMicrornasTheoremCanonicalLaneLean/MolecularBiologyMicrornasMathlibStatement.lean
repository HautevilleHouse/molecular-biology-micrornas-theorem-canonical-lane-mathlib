import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MicrornaProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def micrornaProofObligation : MicrornaProofObligation := {
  sourceKey := "molecular-biology-micrornas-canonical-lane",
  theoremObject := "Microrna Regulation Network Closure",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem microrna_common_core_imported_checked :
    micrornaProofObligation.commonCoreImported = true := rfl

theorem microrna_theorem_specific_definitions_native_checked :
    micrornaProofObligation.theoremSpecificDefinitionsNative = true := rfl

theorem microrna_theorem_specific_bridge_native_checked :
    micrornaProofObligation.theoremSpecificBridgeNative = true := rfl

theorem microrna_theorem_specific_admitted_closure_native_checked :
    micrornaProofObligation.theoremSpecificAdmittedClosureNative = true := rfl

theorem microrna_unrestricted_classical_closure_carried :
    micrornaProofObligation.unrestrictedClassicalClosureNative = false := rfl

end MolecularBiologyMicrornasTheoremCanonicalLaneLean
end HautevilleHouse