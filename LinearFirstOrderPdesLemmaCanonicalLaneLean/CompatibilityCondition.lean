import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure CompatibilityConditionPackage where
  initialData : Type u
  compatibilityFunction : initialData → ℝ
  conditionSatisfied : Prop
  ensuresUniqueSolution : Prop
  conditionWithCauchyData : Prop

structure CompatibilityConditionEvidence (C : CompatibilityConditionPackage) where
  conditionSatisfiedClosed : C.conditionSatisfied
  ensuresUniqueSolutionClosed : C.ensuresUniqueSolution
  conditionWithCauchyDataClosed : C.conditionWithCauchyData

def CompatibilityConditionClosed (C : CompatibilityConditionPackage) : Prop :=
  C.conditionSatisfied ∧ C.ensuresUniqueSolution ∧ C.conditionWithCauchyData

theorem compatibility_condition_closed_from_evidence (C : CompatibilityConditionPackage) (E : CompatibilityConditionEvidence C) :
    CompatibilityConditionClosed C := by
  exact And.intro E.conditionSatisfiedClosed (And.intro E.ensuresUniqueSolutionClosed E.conditionWithCauchyDataClosed)

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse