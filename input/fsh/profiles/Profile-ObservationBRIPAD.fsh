Profile:        ObservationBRIPAD
Parent:         TWCoreObservationVitalSigns
Id:             Observation-bri-pad
Title:          "身體圓度指數-Observation BRI PAD"
Description:    "此身體圓度指數-Observation BRI PAD Profile說明PAD IG如何進一步定義臺灣核心-生命體徵（TW Core Observation Vital Signs）Profile以呈現身體圓度指數的詳細記錄。"
* status = #final
* code.coding 1..1
* code.coding = https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics#bri
* effective[x] only dateTime
* valueQuantity 1..1
* valueQuantity ^short = "BRI"
* valueQuantity.value 1..1 MS
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)