Profile:        ObservationHeartRatePAD
Parent:         TWCoreObservationHeartRate
Id:             Observation-heart-rate-pad
Title:          "心率-Observation Heart Rate PAD"
Description:    "此心率-Observation Heart Rate PAD Profile說明PAD IG如何進一步定義臺灣核心-心率（TW Core Observation Heart Rate）Profile以呈現心率的詳細記錄。"
* status = #final
* effective[x] only dateTime
* value[x] 1..1
* valueQuantity 1..1
* valueQuantity ^short = "心率及單位"
* valueQuantity.value ^short = "心率"
* valueQuantity.code ^short = "單位"
* valueQuantity.unit ^short = "單位"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)