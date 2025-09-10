Profile:        ObservationBMRPAD
Parent:         TWCoreObservationVitalSigns
Id:             Observation-bmr-pad
Title:          "基礎代謝率-Observation BMR PAD"
Description:    "此基礎代謝率-Observation BMR PAD Profile說明PAD IG如何進一步定義臺灣核心-生命體徵（TW Core Observation Vital Signs）Profile以呈現與基礎代謝率的詳細記錄。"
* status = #final
* category 1..1
* category[VSCat] 1..1
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding 1..1
* code.coding from PADMetrics
* code.coding = https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics#bmr
* effective[x] only dateTime
* value[x] 1..
* value[x] only Quantity
* valueQuantity.value 1..1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kcal
* valueQuantity.unit = "kcal"
* valueQuantity ^short = "BMR及單位"
* valueQuantity.value ^short = "BMR"
* valueQuantity.code ^short = "單位"
* valueQuantity.unit ^short = "單位"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)