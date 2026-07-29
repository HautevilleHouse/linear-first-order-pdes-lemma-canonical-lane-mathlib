import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure SuperpositionPrinciplePackage where
  solutionSpace : Type u
  linearCombination : Type v
  homogeneousClosed : Prop
  particularSolution : Prop

structure SuperpositionPrincipleEvidence (S : SuperpositionPrinciplePackage) where
  homogeneousClosed : S.homogeneousClosed
  particularSolutionClosed : S.particularSolution

def SuperpositionPrincipleClosed (S : SuperpositionPrinciplePackage) : Prop :=
  S.homogeneousClosed ∧ S.particularSolution

theorem superposition_principle_closed_from_evidence
    (S : SuperpositionPrinciplePackage) (E : SuperpositionPrincipleEvidence S) :
    SuperpositionPrincipleClosed S := by
  exact And.intro E.homogeneousClosed E.particularSolutionClosed

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse