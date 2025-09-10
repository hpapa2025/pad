Profile:        ObservationEatingOutFrequencyPAD
Parent:         Observation
Id:             Observation-eating-out-frequency-pad
Title:          "每週外食頻率-Observation Eating Out Frequency PAD"
Description:    "此每週外食頻率-Observation Eating Out Frequency PAD Profile說明PAD IG如何進一步定義FHIR的Observation Resource以呈現每週外食頻率的詳細記錄。"
* status = #final
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code.coding 1..1
* code.coding from PADMetrics
* code.coding = https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics#eatingOutFrequency
* effective[x] only dateTime
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept.coding from EatingOutFrequency
* valueCodeableConcept.coding 1..1
* valueCodeableConcept.coding.code ^short = "每週外食頻率。0：皆無外食｜7：未滿7次｜13：7-13次｜20：14-20次｜21：21次"
* valueCodeableConcept.coding.code 1..1 MS
* valueCodeableConcept.coding.system 1..1
* valueCodeableConcept.coding.system = "https://www.hpa.gov.tw/pad/CodeSystem/eating-out-frequency"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)