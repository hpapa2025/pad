Profile:        ObservationExerciseFrequencyPAD
Parent:         Observation
Id:             Observation-exercise-frequency-pad
Title:          "運動頻率-Observation Exercise Frequency PAD"
Description:    "此運動頻率-Observation Exercise Frequency PAD Profile說明PAD IG如何進一步定義FHIR的Observation Resource以呈現運動頻率的詳細記錄。"
* status = #final
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity
* code.coding 1..1
* code.coding from PADMetrics
* code.coding = https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics#exerciseFrequency
* effective[x] only dateTime
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept.coding from ExerciseFrequency
* valueCodeableConcept.coding 1..1
* valueCodeableConcept.coding.code ^short = "運動頻率。0：幾乎不運動｜2：每週 1-2 次｜3：每週 3 次以上"
* valueCodeableConcept.coding.code 1..1 MS
* valueCodeableConcept.coding.system 1..1
* valueCodeableConcept.coding.system = "https://www.hpa.gov.tw/pad/CodeSystem/exercise-frequency"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)