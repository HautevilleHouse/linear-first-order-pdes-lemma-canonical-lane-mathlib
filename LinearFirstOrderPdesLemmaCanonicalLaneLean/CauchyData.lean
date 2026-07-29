import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure CauchyDataPackage where
  hypersurface : Type u
  initialData : Prop
  nonCharacteristicCondition : Prop
  uniqueSolution : Prop

structure CauchyDataEvidence (C : CauchyDataPackage) where
  initialDataClosed : C.initialData
  nonCharacteristicConditionClosed : C.nonCharacteristicCondition
  uniqueSolutionClosed : C.uniqueSolution

def CauchyDataClosed (C : CauchyDataPackage) : Prop :=
  C.initialData ∧ C.nonCharacteristicCondition ∧ C.uniqueSolution

theorem cauchy_data_closed_from_evidence (C : CauchyDataPackage)
    (E : CauchyDataEvidence C) : CauchyDataClosed C := by
  exact And.intro E.initialDataClosed (And.intro E.nonCharacteristicConditionClosed E.uniqueSolutionClosed)

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse