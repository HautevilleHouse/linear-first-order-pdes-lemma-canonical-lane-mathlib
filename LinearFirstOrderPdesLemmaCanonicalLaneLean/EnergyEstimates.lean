import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure EnergyEstimatesPackage where
  energyFunctional : Type u
  energyInequality : Prop
  dissipativeTerm : Prop
  stabilityCondition : Prop
  uniquenessViaEnergy : Prop

structure EnergyEstimatesEvidence (E : EnergyEstimatesPackage) where
  energyFunctionalClosed : E.energyFunctional
  energyInequalityClosed : E.energyInequality
  dissipativeTermClosed : E.dissipativeTerm
  stabilityConditionClosed : E.stabilityCondition
  uniquenessViaEnergyClosed : E.uniquenessViaEnergy

def EnergyEstimatesClosed (E : EnergyEstimatesPackage) : Prop :=
  E.energyFunctional ∧ E.energyInequality ∧ E.dissipativeTerm ∧ E.stabilityCondition ∧ E.uniquenessViaEnergy

theorem energy_estimates_closed_from_evidence (E : EnergyEstimatesPackage) (Ev : EnergyEstimatesEvidence E) : EnergyEstimatesClosed E := by
  exact And.intro Ev.energyFunctionalClosed (And.intro Ev.energyInequalityClosed (And.intro Ev.dissipativeTermClosed (And.intro Ev.stabilityConditionClosed Ev.uniquenessViaEnergyClosed)))

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse