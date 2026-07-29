import LinearFirstOrderPdesLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace LinearFirstOrderPdesLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

end LinearFirstOrderPdesLemmaCanonicalLaneLean
end HautevilleHouse
