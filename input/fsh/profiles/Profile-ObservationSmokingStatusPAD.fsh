Profile:        ObservationSmokingStatusPAD
Parent:         TWCoreObservationSmokingStatus
Id:             Observation-smokingStatus-pad
Title:          "吸菸習慣-Observation Smoking Status PAD"
Description:    "此吸菸習慣-Observation Smoking Status PAD Profile說明PAD IG如何進一步定義臺灣核心-吸菸狀態（TW Core Observation Smoking Status） Profile以呈現吸菸習慣的詳細紀錄。"
* status = #final
* category[twcore].coding 1..1
* code.coding 1..1
* code.coding = http://loinc.org#72166-2
* subject 1..
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)
* effective[x] only dateTime
* value[x] only CodeableConcept
* value[x] ^short = "紀錄使用者是否有抽菸習慣。"
* valueCodeableConcept 1..1
* valueCodeableConcept.coding 1..1
* valueCodeableConcept.coding.code 1..1
* valueCodeableConcept.coding.code ^short = "紀錄使用者是否有抽菸習慣。8392000：未抽菸 | 77176002：有抽菸"
* valueCodeableConcept ^short = "紀錄使用者是否有抽菸習慣。"