Profile:        ObservationTDEEPAD
Parent:         TWCoreObservationVitalSigns
Id:             Observation-tdee-pad
Title:          "每日總消耗熱量-Observation TDEE PAD"
Description:    "此每日總消耗熱量-Observation TDEE PAD Profile說明PAD IG如何進一步定義臺灣核心-生命體徵（TW Core Observation Vital Signs）Profile以呈現與每日總消耗熱量的詳細記錄。"
* status = #final
* category[VSCat].coding 1..1
* code.coding 1..1
* code.coding = http://loinc.org#41979-6
* effective[x] only dateTime
* value[x] 1..
* value[x] only Quantity
* valueQuantity.value 1..1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kcal/d
* valueQuantity.unit = "kcal/d"
* valueQuantity ^short = "TDEE及單位"
* valueQuantity.value ^short = "TDEE"
* valueQuantity.code ^short = "單位"
* valueQuantity.unit ^short = "單位"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)