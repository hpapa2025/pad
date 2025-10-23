Profile:        ObservationHipLinePAD
Parent:         TWCoreObservationVitalSigns
Id:             Observation-hip-line-pad
Title:          "臀圍-Observation Hip Line PAD"
Description:    "此臀圍-Observation Hip Line PAD Profile說明PAD IG如何進一步定義臺灣核心-生命體徵（TW Core Observation Vital Signs）Profile以呈現臀圍的詳細記錄。"
* status = #final
* category[VSCat].coding 1..1
* code.coding 1..1
* code.coding = http://snomed.info/sct#284472007
* effective[x] only dateTime
* valueQuantity 1..1
* valueQuantity ^short = "臀圍及單位"
* valueQuantity.value 1..1 MS
* valueQuantity.code = #cm
* valueQuantity.unit = "cm"
* valueQuantity.value ^short = "臀圍"
* valueQuantity.code ^short = "單位"
* valueQuantity.unit ^short = "單位"
* valueQuantity.system = "http://unitsofmeasure.org"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)
