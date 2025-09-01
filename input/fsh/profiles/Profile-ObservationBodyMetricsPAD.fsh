Profile:        ObservationBodyFatPercentagePAD
Parent:         TWCoreObservationVitalSigns
Id:             Observation-bfp-pad
Title:          "體脂率-Observation Body Fat Percentage PAD"
Description:    "此體脂率-Observation Body Fat Percentage PAD Profile說明PAD IG如何進一步定義臺灣核心-生命體徵（TW Core Observation Vital Signs）Profile以呈現體脂率的詳細記錄。"
* status = #final
* effective[x] only dateTime
* code.coding 1..1
* code.coding = http://loinc.org#41982-0 //"Percentage of body fat Measured"
* value[x] 1..1
* valueQuantity 1..1
* valueQuantity.code = #%
* valueQuantity.unit = "%"
* valueQuantity ^short = "體脂率及單位"
* valueQuantity.value ^short = "體脂率"
* valueQuantity.code ^short = "單位"
* valueQuantity.unit ^short = "單位"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)

Profile:        ObservationBloodPressurePAD
Parent:         TWCoreObservationBloodPressure
Id:             Observation-bloodPressure-pad
Title:          "血壓(收縮壓+舒張壓)-Observation Blood Pressure PAD"
Description:    "此血壓(收縮壓+舒張壓)-Observation Blood Pressure PAD Profile說明PAD IG如何進一步定義臺灣核心-血壓（TW Core Observation Blood Pressure) PAD Profile以呈現收縮壓及舒張壓的詳細記錄。"
* status = #final
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

Profile:        ObservationCholesterolPAD
Parent:         TWCoreObservationLaboratoryResult
Id:             Observation-chol-pad
Title:          "總膽固醇(含高密度膽固醇+低密度膽固醇)-Observation Cholesterol PAD"
Description:    "此總膽固醇(含高密度膽固醇+低密度膽固醇)-Observation Cholesterol PAD Profile說明PAD IG如何進一步定義臺灣核心-實驗室檢驗檢查（TW Core Observation Laboratory Result）Profile以呈現總膽固醇、高密度膽固醇及低密度膽固醇的詳細記錄。"
* status = #final
* effective[x] only dateTime
* code.coding 1..*
* code.coding[LOINCObservationCode] 1..1
* code.coding[LOINCObservationCode] = http://loinc.org#2093-3 //"Cholesterol [Mass/volume] in Serum or Plasma"
* code.coding[TWLaboratoryCategory] 0..0
* value[x] only Quantity 
* valueQuantity 1..1
* valueQuantity.code = #mg/dL
* valueQuantity.unit = "mg/dL"
* valueQuantity ^short = "總膽固醇及單位"
* valueQuantity.value ^short = "總膽固醇"
* valueQuantity.code ^short = "單位"
* valueQuantity.unit ^short = "單位"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)
* component 2..2 MS
  *  ^short = "高密度膽固醇(HDL)與低密度膽固醇(LDL)"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component contains
    HDL 1..1 MS and
    LDL 1..1 MS

* component[HDL] ^short = "高密度膽固醇(HDL)"
* component[HDL].code = http://loinc.org#2085-9 "Cholesterol in HDL [Mass/volume] in Serum or Plasma"
* component[HDL].value[x] only Quantity
* component[HDL].valueQuantity.value 1..1 MS
* component[HDL].valueQuantity.value ^short = "高密度膽固醇(HDL)測量值"
* component[HDL].valueQuantity.unit = "mg/dL"
* component[HDL].valueQuantity.system = "http://unitsofmeasure.org"
* component[HDL].valueQuantity.code = #mg/dL
* component[HDL].valueQuantity.unit ^short = "單位"
* component[HDL].valueQuantity.code ^short = "單位"
* component[LDL] ^short = "低密度膽固醇(LDL)"
* component[LDL].code = http://loinc.org#2089-1 "Cholesterol in LDL [Mass/volume] in Serum or Plasma"
* component[LDL].value[x] only Quantity
* component[LDL].valueQuantity.value 1..1 MS
* component[LDL].valueQuantity.value ^short = "低密度膽固醇(LDL)測量值"
* component[LDL].valueQuantity.unit = "mg/dL"
* component[LDL].valueQuantity.system = "http://unitsofmeasure.org"
* component[LDL].valueQuantity.code = #mg/dL
* component[LDL].valueQuantity.unit ^short = "單位"
* component[LDL].valueQuantity.code ^short = "單位"

Profile:        ObservationTriglyceridesPAD
Parent:         TWCoreObservationLaboratoryResult
Id:             Observation-tg-pad
Title:          "三酸甘油脂-Observation Triglycerides PAD"
Description:    "此三酸甘油脂-Observation Triglycerides PAD Profile說明PAD IG如何進一步定義臺灣核心-實驗室檢驗檢查（TW Core Observation Laboratory Result）Profile以呈現三酸甘油脂的詳細記錄。"
* status = #final
* effective[x] only dateTime
* code.coding 1..1
* code.coding[LOINCObservationCode] 1..1
* code.coding[LOINCObservationCode] = http://loinc.org#2571-8 //"Triglyceride [Mass/volume] in Serum or Plasma"
* code.coding[TWLaboratoryCategory] 0..0
* code.coding ^slicing.rules = #closed
* value[x] only Quantity 
* valueQuantity 1..1
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "mg/dL"
* valueQuantity.code = #mg/dL
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity ^short = "三酸甘油脂及單位"
* valueQuantity.value ^short = "三酸甘油脂"
* valueQuantity.unit ^short = "單位"
* valueQuantity.code ^short = "單位"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)

Profile:        ObservationFastingGlucosePAD
Parent:         TWCoreObservationLaboratoryResult
Id:             Observation-fg-pad
Title:          "空腹血糖-Observation Fasting Glucose PAD"
Description:    "此空腹血糖-Observation Fasting Glucose PAD Profile說明PAD IG如何進一步定義臺灣核心-實驗室檢驗檢查（TW Core Observation Laboratory Result）Profile以呈現空腹血糖的詳細記錄。"
* code.coding 1..1
* code.coding[LOINCObservationCode] 1..1
* code.coding[LOINCObservationCode] = http://loinc.org#1558-6 //"Fasting glucose [Mass/volume] in Serum or Plasma"
* code.coding[TWLaboratoryCategory] 0..0
* code.coding ^slicing.rules = #closed
* value[x] only Quantity 
* valueQuantity 1..1 MS
* valueQuantity.unit = "mg/dL"
* valueQuantity.code = #mg/dL
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity ^short = "空腹血糖及單位"
* valueQuantity.value ^short = "空腹血糖"
* valueQuantity.unit ^short = "單位"
* valueQuantity.code ^short = "單位"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)