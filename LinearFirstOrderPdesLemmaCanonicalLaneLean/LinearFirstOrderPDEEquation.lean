import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure LinearFirstOrderPDEPackage where
  domain : Type u
  coefficientVector : domain → domain
  sourceTerm : domain → ℝ
  unknownFunction : domain → ℝ
  equationSatisfied : Prop

structure LinearFirstOrderPDEEvidence (P : LinearFirstOrderPDEPackage) where
  equationSatisfiedClosed : P.equationSatisfied

def LinearFirstOrderPDEClosed (P : LinearFirstOrderPDEPackage) : Prop :=
  P.equationSatisfied

theorem linear_first_order_pde_closed_from_evidence (P : LinearFirstOrderPDEPackage)
    (E : LinearFirstOrderPDEEvidence P) : LinearFirstOrderPDEClosed P := by
  exact E.equationSatisfiedClosed

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse