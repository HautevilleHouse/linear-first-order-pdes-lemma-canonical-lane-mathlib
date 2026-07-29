import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure IntegrationAlongCurvesPackage where
  curveSpace : Type u
  lineIntegral : Type v
  fundamentalSolution : Prop
  solutionExpressed : Prop

structure IntegrationAlongCurvesEvidence (I : IntegrationAlongCurvesPackage) where
  fundamentalSolutionClosed : I.fundamentalSolution
  solutionExpressedClosed : I.solutionExpressed

def IntegrationAlongCurvesClosed (I : IntegrationAlongCurvesPackage) : Prop :=
  I.fundamentalSolution ∧ I.solutionExpressed

theorem integration_along_curves_closed_from_evidence
    (I : IntegrationAlongCurvesPackage) (E : IntegrationAlongCurvesEvidence I) :
    IntegrationAlongCurvesClosed I := by
  exact And.intro E.fundamentalSolutionClosed E.solutionExpressedClosed

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse