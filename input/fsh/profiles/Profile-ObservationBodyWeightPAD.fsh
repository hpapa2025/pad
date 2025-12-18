Profile:        ObservationBodyWeightPAD
Parent:         TWCoreObservationBodyWeight
Id:             Observation-body-weight-pad
Title:          "體重-Observation Body Weight PAD"
Description:    "此體重-Observation Body Weight PAD Profile說明PAD IG如何進一步定義臺灣核心-體重（TW Core Observation Body Weight） Profile以呈現與體重的詳細記錄。"
* status = #final
* category 1..1
* category[VSCat] 1..1
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding 1..1
* code.coding ^slicing.rules = #closed
* code.coding[BodyWeightCode] = http://loinc.org#29463-7
* effective[x] only DateTimePAD
* effective[x] ^short = "體重記錄時間"
* valueQuantity 1..1
* valueQuantity.code = #kg
* valueQuantity.unit = "kg"
* valueQuantity ^short = "體重及單位"
* valueQuantity.value ^short = "體重"
* valueQuantity.code ^short = "單位"
* valueQuantity.unit ^short = "單位"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)