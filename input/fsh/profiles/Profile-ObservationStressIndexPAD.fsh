Profile:        ObservationStressIndexPAD
Parent:         Observation
Id:             Observation-stress-index-pad
Title:          "壓力指數-Observation Stress Index PAD"
Description:    "此壓力指數-Observation Stress Index PAD Profile說明PAD IG如何進一步定義FHIR的Observation Resource以呈現壓力指數的詳細記錄。"
* status = #final
* code.coding 1..1
* code.coding = https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics#stressIndex
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only integer
* valueInteger ^short = "壓力指數"
/* valueInteger ^minValueInteger = 0
* valueInteger ^maxValueInteger = 12*/
* valueInteger obeys 0-12
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)

Invariant:   0-12
Description: "必須介於 0 到 12"
Expression:  "$this >= 0 and $this <= 12"
Severity:    #error