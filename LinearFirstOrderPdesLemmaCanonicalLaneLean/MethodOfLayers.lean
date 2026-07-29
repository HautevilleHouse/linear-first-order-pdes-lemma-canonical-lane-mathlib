import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure MethodOfLayersPackage where
  decompositionDomain : Type u
  layerPropagation : Prop
  boundaryConditionCompatible : Prop
  convergenceToSolution : Prop
  errorBound : Prop

structure MethodOfLayersEvidence (M : MethodOfLayersPackage) where
  decompositionDomainClosed : M.decompositionDomain
  layerPropagationClosed : M.layerPropagation
  boundaryConditionCompatibleClosed : M.boundaryConditionCompatible
  convergenceToSolutionClosed : M.convergenceToSolution
  errorBoundClosed : M.errorBound

def MethodOfLayersClosed (M : MethodOfLayersPackage) : Prop :=
  M.decompositionDomain ∧ M.layerPropagation ∧ M.boundaryConditionCompatible ∧ M.convergenceToSolution ∧ M.errorBound

theorem method_of_layers_closed_from_evidence (M : MethodOfLayersPackage) (E : MethodOfLayersEvidence M) : MethodOfLayersClosed M := by
  exact And.intro E.decompositionDomainClosed (And.intro E.layerPropagationClosed (And.intro E.boundaryConditionCompatibleClosed (And.intro E.convergenceToSolutionClosed E.errorBoundClosed)))

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse