import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure LfopSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LfopAdmittedObject where
  space : LfopSpace
  domainOpen : Prop
  pdeEquation : Prop
  solutionClass : Type
  solutionSpace : Type
  conclusion : solutionSpace

def LfopWitnessClosed (O : LfopAdmittedObject) : Prop :=
  O.solutionSpace

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse