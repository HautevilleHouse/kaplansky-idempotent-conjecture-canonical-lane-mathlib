import KaplanskyIdempotentConjectureCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace KaplanskyIdempotentConjectureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.algebraicObstructionGateWitness,
    A.object.ringGroupBridgeWitness,
    A.object.sourceBoundaryLedgerWitness,
    A.object.classicalRemainderCarried⟩

end KaplanskyIdempotentConjectureCanonicalLaneLean
end HautevilleHouse
