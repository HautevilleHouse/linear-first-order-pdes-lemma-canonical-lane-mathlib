import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure WeakSolutionPackage where
  testFunctionSpace : Type u
  weakFormulation : Prop
  integrationByParts : Prop
  regularityCondition : Prop
  equivalenceToClassical : Prop

structure WeakSolutionEvidence (W : WeakSolutionPackage) where
  testFunctionSpaceClosed : W.testFunctionSpace
  weakFormulationClosed : W.weakFormulation
  integrationByPartsClosed : W.integrationByParts
  regularityConditionClosed : W.regularityCondition
  equivalenceToClassicalClosed : W.equivalenceToClassical

def WeakSolutionClosed (W : WeakSolutionPackage) : Prop :=
  W.testFunctionSpace ∧ W.weakFormulation ∧ W.integrationByParts ∧ W.regularityCondition ∧ W.equivalenceToClassical

theorem weak_solution_closed_from_evidence (W : WeakSolutionPackage) (E : WeakSolutionEvidence W) : WeakSolutionClosed W := by
  exact And.intro E.testFunctionSpaceClosed (And.intro E.weakFormulationClosed (And.intro E.integrationByPartsClosed (And.intro E.regularityConditionClosed E.equivalenceToClassicalClosed)))

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse