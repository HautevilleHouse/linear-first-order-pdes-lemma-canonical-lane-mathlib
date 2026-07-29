import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearFirstOrderPdesLemmaCanonicalLaneLean.CharacteristicMethod
import HautevilleHouse.LinearFirstOrderPdesLemmaCanonicalLaneLean.FirstIntegralExistence

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure IntegralSurfacePackage {C : CharacteristicODEPackage}
    {F : FirstIntegralPackage C} where
  integralSurface : C.domain → ℝ
  surfaceIsLevelSet : Prop
  generatesSolutions : Prop

structure IntegralSurfaceEvidence {C : CharacteristicODEPackage}
    {F : FirstIntegralPackage C} (I : IntegralSurfacePackage C F) where
  surfaceIsLevelSetClosed : I.surfaceIsLevelSet
  generatesSolutionsClosed : I.generatesSolutions

def IntegralSurfaceClosed {C : CharacteristicODEPackage}
    {F : FirstIntegralPackage C} (I : IntegralSurfacePackage C F) : Prop :=
  I.surfaceIsLevelSet ∧ I.generatesSolutions

theorem integral_surface_closed_from_evidence {C : CharacteristicODEPackage}
    {F : FirstIntegralPackage C} (I : IntegralSurfacePackage C F)
    (E : IntegralSurfaceEvidence I) : IntegralSurfaceClosed I := by
  exact And.intro E.surfaceIsLevelSetClosed E.generatesSolutionsClosed

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse