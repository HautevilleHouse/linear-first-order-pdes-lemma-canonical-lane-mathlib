import LinearFirstOrderPdesLemmaCanonicalLaneLean.MethodOfCharacteristics

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure TransportEquationPackage where
  vectorFieldDomain : Type u
  vectorFieldTime : Type v
  transportCoefficient : Prop
  initialCondition : Prop
  solutionPropagation : Prop

structure TransportAdmissibleEvidence (T : TransportEquationPackage) where
  coefficientRegularityClosed : T.transportCoefficient
  initialConditionClosed : T.initialCondition
  solutionClosed : T.solutionPropagation

def TransportAdmissibleClosed (T : TransportEquationPackage) : Prop :=
  T.transportCoefficient ∧ T.initialCondition ∧ T.solutionPropagation

theorem transport_admissible_closed_from_evidence (T : TransportEquationPackage)
    (E : TransportAdmissibleEvidence T) : TransportAdmissibleClosed T := by
  exact And.intro E.coefficientRegularityClosed
    (And.intro E.initialConditionClosed E.solutionClosed)

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse