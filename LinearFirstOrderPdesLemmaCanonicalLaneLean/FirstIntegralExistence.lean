import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearFirstOrderPdesLemmaCanonicalLaneLean.CharacteristicMethod

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure FirstIntegralPackage {C : CharacteristicODEPackage} where
  firstIntegral : C.domain → ℝ
  constantOnCurves : Prop
  characterizesSolutions : Prop

structure FirstIntegralEvidence {C : CharacteristicODEPackage}
    (F : FirstIntegralPackage C) where
  constantOnCurvesClosed : F.constantOnCurves
  characterizesSolutionsClosed : F.characterizesSolutions

def FirstIntegralClosed {C : CharacteristicODEPackage}
    (F : FirstIntegralPackage C) : Prop :=
  F.constantOnCurves ∧ F.characterizesSolutions

theorem first_integral_closed_from_evidence {C : CharacteristicODEPackage}
    (F : FirstIntegralPackage C) (E : FirstIntegralEvidence F) :
    FirstIntegralClosed F := by
  exact And.intro E.constantOnCurvesClosed E.characterizesSolutionsClosed

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse