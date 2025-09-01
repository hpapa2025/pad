Profile:        ObservationSmokingStatusPAD
Parent:         TWCoreObservationSmokingStatus
Id:             Observation-smokingStatus-pad
Title:          "吸菸習慣-Observation Smoking Status PAD"
Description:    "此吸菸習慣-Observation Smoking Status PAD Profile說明PAD IG如何進一步定義臺灣核心-吸菸狀態（TW Core Observation Smoking Status） Profile以呈現使用者之吸菸習慣紀錄。"
* status = #final
* code.coding 1..1
* code.coding.code 1..1
* code.coding = http://loinc.org#72166-2
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept ^short = "紀錄使用者是否有抽菸習慣。8392000：未抽菸 | 77176002：有抽菸"