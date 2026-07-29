import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure CharacteristicSystem where
  domain : Type u
  independentVariable : Type v
  independentDim : Nat
  dependentVariable : Type w
  firstOrderCoefficient : (domain → independentVariable → Prop) → Prop
  cauchyDataSurface : Prop
  characteristicEquation : Prop

structure CharacteristicSolution where
  baseCharacteristics : Type u
  characteristicCurve : baseCharacteristics → Prop
  solutionAlongCharacteristics : Prop
  compatibilityCondition : Prop

def CharacteristicMappingSystem (C : CharacteristicSystem) : Prop :=
  C.characteristicEquation ∧ C.cauchyDataSurface

theorem characteristic_mapping_closed (C : CharacteristicSystem) (S : CharacteristicSolution) :
    CharacteristicMappingSystem C := by
  exact And.intro S.compatibilityCondition S.solutionAlongCharacteristics

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse