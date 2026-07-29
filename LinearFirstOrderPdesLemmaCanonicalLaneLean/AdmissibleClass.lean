import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : LfopAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LfopWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse