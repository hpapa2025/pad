Profile:        ObservationBodyWeightPAD
Parent:         TWCoreObservationBodyWeight
Id:             Observation-body-weight-pad
Title:          "體重-Observation Body Weight PAD"
Description:    "此體重-Observation Body Weight PAD Profile說明PAD IG如何進一步定義臺灣核心-體重（TW Core Observation Body Weight） Profile以呈現與體重的詳細記錄。"
* status = #final
* code.coding ^slicing.rules = #closed
* effective[x] only dateTime
* valueQuantity 1..1
* valueQuantity.code = #kg
* valueQuantity.unit = "kg"
* valueQuantity ^short = "體重及單位"
* valueQuantity.value ^short = "體重"
* valueQuantity.code ^short = "單位"
* valueQuantity.unit ^short = "單位"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)