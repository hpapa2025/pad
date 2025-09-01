Profile:        ObservationBMIPAD
Parent:         TWCoreObservationBMI
Id:             Observation-bmi-pad
Title:          "身體質量指數-Observation BMI PAD"
Description:    "此身體質量指數-Observation BMI PAD Profile說明PAD IG如何進一步定義臺灣核心-身體質量指數（TW Core Observation Body BMI） Profile以呈現與身體數值之身體質量指數的詳細記錄。"
* status = #final
* code.coding ^slicing.rules = #closed
* effective[x] only dateTime
* value[x] 1..
* value[x] only Quantity
* valueQuantity.unit = "kg/m2"
* valueQuantity ^short = "紀錄使用者BMI及使用者BMI單位"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)