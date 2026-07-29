import canonicalLaneMathlib.AdmissibleClass
import LinearFirstOrderPdesLemmaCanonicalLaneLean.CharacteristicMethod
import LinearFirstOrderPdesLemmaCanonicalLaneLean.CauchyData
import LinearFirstOrderPdesLemmaCanonicalLaneLean.MethodOfCharacteristics
import LinearFirstOrderPdesLemmaCanonicalLaneLean.TransportEquation
import LinearFirstOrderPdesLemmaCanonicalLaneLean.WellPosedness

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CharacteristicMethodClosed A.object ∧ CauchyDataClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedLinearFirstOrderPdesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_linear_first_order_pdes_endgame (A : AdmissibleClass) :
    ConstrainedLinearFirstOrderPdesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse