Profile:        ObservationWaistPAD
Parent:         TWCoreObservationVitalSigns
Id:             Observation-waist-pad
Title:          "腰圍-Observation Waist PAD"
Description:    "此腰圍-Observation Waist PAD Profile說明PAD IG如何進一步定義臺灣核心-生命體徵（TW Core Observation Vital Signs） Profile以呈現腰圍的詳細記錄。"
* status = #final
* category[VSCat] 1..1
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding 1..1
* code.coding = http://loinc.org#8280-0
* valueQuantity 1..1
* valueQuantity ^short = "腰圍及單位"
* valueQuantity.value 1..1 MS
* valueQuantity.code = #cm
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)