Profile:        ObservationSleepHoursPAD
Parent:         Observation
Id:             Observation-sleep-hours-pad
Title:          "睡眠時數-Observation Sleep Hours PAD"
Description:    "此睡眠時數-Observation Sleep Hours PAD Profile說明PAD IG如何進一步定義FHIR的Observation Resource以呈現睡眠時數的詳細記錄。"
* status = #final
* category 1..1
* category.coding 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity
* code.coding 1..1
* code.coding = http://loinc.org#93832-4
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only Quantity
* valueQuantity ^short = "睡眠時數。值必須介於 0 到 24"
* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = "睡眠時數"
* valueQuantity.code ^short = "單位"
* valueQuantity.unit ^short = "單位"
* valueQuantity.code = #h
* valueQuantity.code 1..1
* valueQuantity.system 1..1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.value obeys 0-24
* subject 1..
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)