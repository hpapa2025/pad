Profile:        ObservationOccupationPAD
Parent:         TWCoreObservationOccupation
Id:             Observation-occupation-pad
Title:          "職業-Observation Occupation PAD"
Description:    "此職業-Observation Occupation PAD Profile說明PAD IG如何進一步定義臺灣核心-職業（TW Core Observation Occupation） Profile以呈現職業資料。"
* status = #final
* category 1..
* category[twcore] 1..
* code.coding 1..1
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)