Profile:        ObservationFastingGlucosePAD
Parent:         TWCoreObservationLaboratoryResult
Id:             Observation-fg-pad
Title:          "空腹血糖-Observation Fasting Glucose PAD"
Description:    "此空腹血糖-Observation Fasting Glucose PAD Profile說明PAD IG如何進一步定義臺灣核心-實驗室檢驗檢查（TW Core Observation Laboratory Result）Profile以呈現空腹血糖的詳細記錄。"
* status = #final
* category 1..1
* category[twcore] 1..1
* category[twcore].coding 1..1
* category[twcore] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.coding 1..1
* code.coding[LOINCObservationCode] 1..1
* code.coding[LOINCObservationCode] = http://loinc.org#1558-6
* code.coding[TWLaboratoryCategory] 0..0
* code.coding ^slicing.rules = #closed
* value[x] only Quantity 
* valueQuantity 1..1
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "mg/dL"
* valueQuantity.code = #mg/dL
* valueQuantity.code 1..1
* valueQuantity.system 1..1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity ^short = "空腹血糖及單位"
* valueQuantity.value ^short = "空腹血糖"
* valueQuantity.unit ^short = "單位"
* valueQuantity.code ^short = "單位"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)