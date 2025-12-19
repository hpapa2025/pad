Profile:        ObservationCholesterolPAD
Parent:         TWCoreObservationLaboratoryResult
Id:             Observation-chol-pad
Title:          "總膽固醇(含高密度膽固醇+低密度膽固醇)-Observation Cholesterol PAD"
Description:    "此總膽固醇(含高密度膽固醇+低密度膽固醇)-Observation Cholesterol PAD Profile說明PAD IG如何進一步定義臺灣核心-實驗室檢驗檢查（TW Core Observation Laboratory Result）Profile以呈現總膽固醇、高密度膽固醇及低密度膽固醇的詳細記錄。"
* status = #final
* code.coding 1..1
* code.coding[LOINCObservationCode] 1..1
* code.coding[LOINCObservationCode] = http://loinc.org#2093-3
* code.coding[TWLaboratoryCategory] 0..0
* effective[x] only dateTime
* value[x] only Quantity 
* valueQuantity 1..1
* valueQuantity.value 1..1
* valueQuantity.code = #mg/dL
* valueQuantity.unit = "mg/dL"
* valueQuantity.code 1..1
* valueQuantity.system 1..1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity ^short = "總膽固醇及單位"
* valueQuantity.value ^short = "總膽固醇"
* valueQuantity.code ^short = "單位"
* valueQuantity.unit ^short = "單位"
* subject 1..
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)
* component 2..2 MS
  *  ^short = "高密度膽固醇(HDL)與低密度膽固醇(LDL)"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component contains
    HDL 0..1 MS and
    LDL 0..1 MS

* component[HDL] ^short = "高密度膽固醇(HDL)"
* component[HDL].code = http://loinc.org#2085-9 "Cholesterol in HDL [Mass/volume] in Serum or Plasma"
* component[HDL].value[x] 1..1
* component[HDL].value[x] only Quantity
* component[HDL].valueQuantity.value 1..1 MS
* component[HDL].valueQuantity.value ^short = "高密度膽固醇(HDL)測量值"
* component[HDL].valueQuantity.unit = "mg/dL"
* component[HDL].valueQuantity.system 1..1
* component[HDL].valueQuantity.code 1..1
* component[HDL].valueQuantity.system = "http://unitsofmeasure.org"
* component[HDL].valueQuantity.code = #mg/dL
* component[HDL].valueQuantity.unit ^short = "單位"
* component[HDL].valueQuantity.code ^short = "單位"
* component[LDL] ^short = "低密度膽固醇(LDL)"
* component[LDL].code = http://loinc.org#2089-1 "Cholesterol in LDL [Mass/volume] in Serum or Plasma"
* component[LDL].value[x] 1..1
* component[LDL].value[x] only Quantity
* component[LDL].valueQuantity.value 1..1 MS
* component[LDL].valueQuantity.system 1..1
* component[LDL].valueQuantity.code 1..1
* component[LDL].valueQuantity.value ^short = "低密度膽固醇(LDL)測量值"
* component[LDL].valueQuantity.unit = "mg/dL"
* component[LDL].valueQuantity.system = "http://unitsofmeasure.org"
* component[LDL].valueQuantity.code = #mg/dL
* component[LDL].valueQuantity.unit ^short = "單位"
* component[LDL].valueQuantity.code ^short = "單位"