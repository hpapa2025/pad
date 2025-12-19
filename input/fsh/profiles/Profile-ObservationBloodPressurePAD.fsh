Profile:        ObservationBloodPressurePAD
Parent:         TWCoreObservationBloodPressure
Id:             Observation-bloodPressure-pad
Title:          "血壓(收縮壓+舒張壓)-Observation Blood Pressure PAD"
Description:    "此血壓(收縮壓+舒張壓)-Observation Blood Pressure PAD Profile說明PAD IG如何進一步定義臺灣核心-血壓（TW Core Observation Blood Pressure) PAD Profile以呈現收縮壓及舒張壓的詳細記錄。"
* status = #final
* category 1..1
* category[VSCat].coding 1..1
* code.coding 1..1
* code.coding ^slicing.rules = #closed
* code.coding[BPCode] = http://loinc.org#85354-9
* subject 1..
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)
* effective[x] only dateTime
* component ..2
* component[SystolicBP].valueQuantity.value ^short = "收縮壓"
* component[SystolicBP].valueQuantity.code ^short = "單位"
* component[SystolicBP].valueQuantity.unit ^short = "單位"
* component[DiastolicBP].valueQuantity.value ^short = "舒張壓"
* component[DiastolicBP].valueQuantity.code ^short = "單位"
* component[DiastolicBP].valueQuantity.unit ^short = "單位"