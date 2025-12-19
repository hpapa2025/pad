Profile:        ObservationDailyFloorsPAD
Parent:         Observation
Id:             Observation-daily-floors-pad
Title:          "每日爬升樓層-Observation Daily Floors PAD"
Description:    "此每日爬升樓層-Observation Daily Floors PAD Profile說明PAD IG如何進一步定義FHIR的Observation Resource以呈現每日爬升樓層的詳細記錄。"
* status = #final
* category 1..1
* category.coding 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity
* code.coding 1..1
* code.coding = http://snomed.info/sct#129016000
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only Quantity
* valueQuantity ^short = "每日爬升樓層"
* valueQuantity.value 1..1 MS
* valueQuantity.code 1..1
* valueQuantity.system 1..1
* valueQuantity.value ^short = "每日爬升樓層"
* valueQuantity.code ^short = "單位"
* valueQuantity.unit ^short = "單位"
* valueQuantity.code = #/d
* valueQuantity.system = "http://unitsofmeasure.org"
* subject 1..
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)