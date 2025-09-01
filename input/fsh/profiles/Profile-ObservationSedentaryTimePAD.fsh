Profile:        ObservationSedentaryTimePAD
Parent:         Observation
Id:             Observation-sedentary-time-pad
Title:          "靜態/久坐時間-Observation Sedentary Time PAD"
Description:    "此靜態/久坐時間-Observation Sedentary Time PAD Profile說明PAD IG如何進一步定義FHIR的Observation Resource以呈現靜態/久坐時間的詳細記錄。"
* status = #final
* code.coding 1..1
* code.coding = https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics#sedentaryTime
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only integer
* valueInteger ^short = "靜態/久坐時間"
* valueInteger obeys 0-24
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)

Invariant:   0-24
Description: "必須介於 0 到 24"
Expression:  "$this >= 0 and $this <= 24"
Severity:    #error