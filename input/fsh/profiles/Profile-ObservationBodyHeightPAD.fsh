Profile:        ObservationBodyHeightPAD
Parent:         TWCoreObservationBodyHeight
Id:             Observation-body-height-pad
Title:          "身高-Observation Body Height PAD"
Description:    "此身高-Observation Body Height PAD Profile說明PAD IG如何進一步定義臺灣核心-身高（TW Core Observation Body Height） Profile以呈現身高的詳細記錄。"
* status = #final
* category 1..1
* category[VSCat].coding 1..1
* code.coding 1..1
* code.coding ^slicing.rules = #closed
* code.coding[BodyHeightCode] = http://loinc.org#8302-2
* effective[x] only dateTime
* valueQuantity 1..1
* valueQuantity.code = #cm
* valueQuantity.unit = "cm"
* valueQuantity ^short = "身高及單位"
* valueQuantity.value ^short = "身高"
* valueQuantity.code ^short = "單位"
* valueQuantity.unit ^short = "單位"
* subject 1..
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)