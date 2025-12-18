Profile:        ObservationTriglyceridesPAD
Parent:         TWCoreObservationLaboratoryResult
Id:             Observation-tg-pad
Title:          "三酸甘油脂-Observation Triglycerides PAD"
Description:    "此三酸甘油脂-Observation Triglycerides PAD Profile說明PAD IG如何進一步定義臺灣核心-實驗室檢驗檢查（TW Core Observation Laboratory Result）Profile以呈現三酸甘油脂的詳細記錄。"
* status = #final
* category[twcore].coding 1..1
* code.coding 1..1
* code.coding[LOINCObservationCode] 1..1
* code.coding[LOINCObservationCode] = http://loinc.org#2571-8
* code.coding[TWLaboratoryCategory] 0..0
* code.coding ^slicing.rules = #closed
* effective[x] only dateTime
* value[x] only Quantity 
* valueQuantity 1..1
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "mg/dL"
* valueQuantity.code = #mg/dL
* valueQuantity.code 1..1
* valueQuantity.system 1..1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity ^short = "三酸甘油脂及單位"
* valueQuantity.value ^short = "三酸甘油脂"
* valueQuantity.unit ^short = "單位"
* valueQuantity.code ^short = "單位"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)