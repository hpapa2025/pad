Profile:        ObservationExerciseAmountPAD
Parent:         Observation
Id:             Observation-exercise-amount-pad
Title:          "中高強度活動累計-Observation Exercise Amount PAD"
Description:    "此中高強度活動累計-Observation Exercise Amount PAD Profile說明PAD IG如何進一步定義FHIR的Observation Resource以呈現中高強度活動累計的詳細記錄。"
* status = #final
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity
* code.coding 1..1
* code.coding from PADMetrics
* code.coding = https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics#exerciseAmount
* effective[x] only dateTime
* value[x] 1..1
* value[x] only Quantity
* valueQuantity.value 1..1 MS
* valueQuantity ^short = "中高強度活動累計"
* valueQuantity.value ^short = "中高強度活動累計"
* valueQuantity.code ^short = "單位"
* valueQuantity.unit ^short = "單位"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)