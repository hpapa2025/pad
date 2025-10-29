Profile:        ObservationBodyFatPercentagePAD
Parent:         TWCoreObservationVitalSigns
Id:             Observation-bfp-pad
Title:          "體脂率-Observation Body Fat Percentage PAD"
Description:    "此體脂率-Observation Body Fat Percentage PAD Profile說明PAD IG如何進一步定義臺灣核心-生命體徵（TW Core Observation Vital Signs）Profile以呈現體脂率的詳細記錄。"
* status = #final
* category 1..1
* category[VSCat].coding 1..1
* code.coding 1..1
* code.coding = http://loinc.org#41982-0
* effective[x] only dateTime
* value[x] 1..1
* valueQuantity 1..1
* valueQuantity.value 1..1 MS
* valueQuantity.code = #%
* valueQuantity.unit = "%"
* valueQuantity.code 1..1
* valueQuantity.system 1..1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity ^short = "體脂率及單位"
* valueQuantity.value ^short = "體脂率"
* valueQuantity.code ^short = "單位"
* valueQuantity.unit ^short = "單位"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)