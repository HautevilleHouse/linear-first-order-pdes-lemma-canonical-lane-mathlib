import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure TransportEquationPackage where
  convectionField : Type u
  linearSource : Prop
  initialCondition : Prop
  explicitFormula : Prop

structure TransportEquationEvidence (T : TransportEquationPackage) where
  convectionFieldClosed : T.convectionField
  linearSourceClosed : T.linearSource
  initialConditionClosed : T.initialCondition
  explicitFormulaClosed : T.explicitFormula

def TransportEquationClosed (T : TransportEquationPackage) : Prop :=
  T.convectionField ∧ T.linearSource ∧ T.initialCondition ∧ T.explicitFormula

theorem transport_equation_closed_from_evidence (T : TransportEquationPackage)
    (E : TransportEquationEvidence T) : TransportEquationClosed T := by
  exact And.intro E.convectionFieldClosed
    (And.intro E.linearSourceClosed (And.intro E.initialConditionClosed E.explicitFormulaClosed))

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse