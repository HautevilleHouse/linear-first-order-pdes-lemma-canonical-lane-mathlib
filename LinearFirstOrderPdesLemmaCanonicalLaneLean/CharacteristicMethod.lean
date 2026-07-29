import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure CharacteristicMethodPackage where
  vectorField : Type u
  characteristicSystem : Prop
  transportEquation : Prop
  solvabilityCondition : Prop

structure CharacteristicMethodEvidence (C : CharacteristicMethodPackage) where
  characteristicSystemClosed : C.characteristicSystem
  transportEquationClosed : C.transportEquation
  solvabilityConditionClosed : C.solvabilityCondition

def CharacteristicMethodClosed (C : CharacteristicMethodPackage) : Prop :=
  C.characteristicSystem ∧ C.transportEquation ∧ C.solvabilityCondition

theorem characteristic_method_closed_from_evidence (C : CharacteristicMethodPackage)
    (E : CharacteristicMethodEvidence C) : CharacteristicMethodClosed C := by
  exact And.intro E.characteristicSystemClosed (And.intro E.transportEquationClosed E.solvabilityConditionClosed)

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse