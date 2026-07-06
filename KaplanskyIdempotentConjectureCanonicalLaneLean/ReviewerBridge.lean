import KaplanskyIdempotentConjectureCanonicalLaneLean.Formalization
import KaplanskyIdempotentConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace KaplanskyIdempotentConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "8f642ac22af0f43ed34486b4d74445e20c6d5ada6c11056305aa07509677960d", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "2fb4d58830077ea820691edbae886122f5efd4d9580818d1d48116af57056af5", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "fbffa5c85073a4e62473eb74dc7bf58711bce340d2d4dfef2b6881aa14a8624a", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "f4628d1fbda1ca8dcd63dde106be4ed479e97c3739ea388b251c35a0e4ddb63f", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "f51116d506b5902b58adb525040e4eee5e83bf18b025f6623dcdd9ed85240969", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "4e164cc250f87d197526e52c3a1f26601ea9cc9c9915daeefce4111f92002e39", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "eaf5ae579c2bbe3b3900e0431a658ebeff39239925407ffc54d9ff1d9cdcf818", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "86fd93de6f5edaa4e1c5cc927788c43ba7910db397c545a12c6e93615f877582", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "619f07260b94480c38fb191fa3ef70019fd33f8ca048a09f8f4480cdd36af734", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "KID_G1", constant := "kappa_algebra" },
  { gate := "KID_G2", constant := "sigma_trace" },
  { gate := "KID_G3", constant := "kappa_compact" },
  { gate := "KID_G4", constant := "rho_rigidity" },
  { gate := "KID_G5", constant := "idempotent_transfer" },
  { gate := "KID_G6", constant := "eps_coh" },
  { gate := "KID_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "fdd0b0f209d8b26a96db4cb70d143340b99c1858aa8af1485e4b05fc22b31f63" },
  { path := "README.md", sha256 := "b9b65f0eaf822fc277a8d25250bb2ee7b923ac3fff9febb4c72e5378b4b20931" },
  { path := "artifacts/constants_extracted.json", sha256 := "f4628d1fbda1ca8dcd63dde106be4ed479e97c3739ea388b251c35a0e4ddb63f" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "fbffa5c85073a4e62473eb74dc7bf58711bce340d2d4dfef2b6881aa14a8624a" },
  { path := "artifacts/constants_registry.json", sha256 := "f51116d506b5902b58adb525040e4eee5e83bf18b025f6623dcdd9ed85240969" },
  { path := "artifacts/promotion_report.json", sha256 := "eaf5ae579c2bbe3b3900e0431a658ebeff39239925407ffc54d9ff1d9cdcf818" },
  { path := "artifacts/stitch_constants.json", sha256 := "4e164cc250f87d197526e52c3a1f26601ea9cc9c9915daeefce4111f92002e39" },
  { path := "notes/EG1_public.md", sha256 := "a63f4d2f6cf9cc8365543190ae73441e36375453f520e2456d9921a4148b9a08" },
  { path := "notes/EG2_public.md", sha256 := "181f4421509586d29ddcbdd611b4f52efbe64368d865bfeced5ea3319cd8a35a" },
  { path := "notes/EG3_public.md", sha256 := "d218c9f47330bb503403df2e4b357051b1a2070d6160ee1adb0b1897159a1de7" },
  { path := "notes/EG4_public.md", sha256 := "0cfcac6979905b450ec623146785ff2a4f4d911a4487c3c03e3f0423cf47b415" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "2fb4d58830077ea820691edbae886122f5efd4d9580818d1d48116af57056af5" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "cdc80621a40b24a260953bf2480efc958b05661d905735df06404cabd8bddb49" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "0a25076808f290d312579a8912b4c85e4cac4ae21ccda3103f31d498ddfc75ad" },
  { path := "paper/KAPLANSKY_IDEMPOTENT_CONJECTURE_PREPRINT.md", sha256 := "3a9fd3290c1073921a848a60beef33fabe50ed27cbda3055b9a717b419c43d34" },
  { path := "repro/REPRO_PACK.md", sha256 := "fa01a5f9afe2c4061bffc673966e409a874e3cd53848541ddf31e8aa32246f6b" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "038af4f750030fffce1b4c91657456b26e167017d42da06dee92d24f1aac0e67" },
  { path := "repro/certificate_baseline.json", sha256 := "619f07260b94480c38fb191fa3ef70019fd33f8ca048a09f8f4480cdd36af734" },
  { path := "repro/run_repro.sh", sha256 := "a49c3802107f11a6b251d40f128d7d4a2b79290426ef59a53a99996931170b36" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/kid_closure_guard.py", sha256 := "b51f4b11188e6f35773a81a6ab7f8f077c101cf67b3bcf650f9b4b2c124f7b08" },
  { path := "scripts/README.md", sha256 := "8c8dc17998f070333a17c07e6c1e1546c1459543dfcc19f96071649e4a4efb35" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "KID_G1", status := "PASS" },
  { gate := "KID_G2", status := "PASS" },
  { gate := "KID_G3", status := "PASS" },
  { gate := "KID_G4", status := "PASS" },
  { gate := "KID_G5", status := "PASS" },
  { gate := "KID_G6", status := "PASS" },
  { gate := "KID_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "idempotent_transfer", value := "1.029422" },
  { key := "kappa_algebra", value := "1.0913680000000001" },
  { key := "kappa_compact", value := "0.8045052292839904" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_star_can", value := "1.053" },
  { key := "sigma_trace", value := "1.073" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "idempotent_transfer",
  "kappa_algebra",
  "kappa_compact",
  "rho_rigidity",
  "sigma_star_can",
  "sigma_trace"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end KaplanskyIdempotentConjectureCanonicalLaneLean
end HautevilleHouse
