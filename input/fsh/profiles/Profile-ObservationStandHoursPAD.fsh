Profile:        ObservationStandHoursPAD
Parent:         Observation
Id:             Observation-stand-hours-pad
Title:          "站立時數-Observation Stand Hours PAD"
Description:    "此站立時數-Observation Stand Hours PAD Profile說明PAD IG如何進一步定義FHIR的Observation Resource以呈現站立時數的詳細記錄。"
* status = #final
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity
* code.coding 1..1
* code.coding = http://snomed.info/sct#10904000
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only Quantity
* valueQuantity ^short = "站立時數及單位"
* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = "站立時數"
* valueQuantity.code ^short = "單位"
* valueQuantity.unit ^short = "單位"
* valueQuantity.code = #h
* valueQuantity.system = "http://unitsofmeasure.org"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)