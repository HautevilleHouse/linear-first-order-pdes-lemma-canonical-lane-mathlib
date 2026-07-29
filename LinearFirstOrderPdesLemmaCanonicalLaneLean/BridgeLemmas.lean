import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LfopWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse