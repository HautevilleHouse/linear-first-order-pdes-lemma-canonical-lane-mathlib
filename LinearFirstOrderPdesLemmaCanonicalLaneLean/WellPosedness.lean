import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure WellPosednessPackage where
  existence : Prop
  uniqueness : Prop
  stability : Prop
  aPrioriEstimate : Prop

structure WellPosednessEvidence (W : WellPosednessPackage) where
  existenceClosed : W.existence
  uniquenessClosed : W.uniqueness
  stabilityClosed : W.stability
  aPrioriEstimateClosed : W.aPrioriEstimate

def WellPosednessClosed (W : WellPosednessPackage) : Prop :=
  W.existence ∧ W.uniqueness ∧ W.stability ∧ W.aPrioriEstimate

theorem well_posedness_closed_from_evidence (W : WellPosednessPackage)
    (E : WellPosednessEvidence W) : WellPosednessClosed W := by
  exact And.intro E.existenceClosed
    (And.intro E.uniquenessClosed (And.intro E.stabilityClosed E.aPrioriEstimateClosed))

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse