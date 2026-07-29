import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure CauchyProblemPackage where
  domain : Type u
  initialSurface : ℝ → ℝ
  initialData : ℝ → ℝ
  pdeCoefficients : ℝ → ℝ → ℝ
  cauchyProblemWellPosed : Prop
  uniquenessByCharacteristics : Prop
  existenceByCharacteristics : Prop

structure CauchyProblemEvidence (C : CauchyProblemPackage) where
  cauchyProblemWellPosedClosed : C.cauchyProblemWellPosed
  uniquenessByCharacteristicsClosed : C.uniquenessByCharacteristics
  existenceByCharacteristicsClosed : C.existenceByCharacteristics

def CauchyProblemClosed (C : CauchyProblemPackage) : Prop :=
  C.cauchyProblemWellPosed ∧ C.uniquenessByCharacteristics ∧ C.existenceByCharacteristics

theorem cauchy_problem_closed_from_evidence (C : CauchyProblemPackage) (E : CauchyProblemEvidence C) :
    CauchyProblemClosed C := by
  exact And.intro E.cauchyProblemWellPosedClosed (And.intro E.uniquenessByCharacteristicsClosed E.existenceByCharacteristicsClosed)

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse