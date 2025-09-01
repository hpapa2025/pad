Profile:        ConditionCardiovascularDiseasePAD
Parent:         TWCoreCondition
Id:             Condition-cvd-pad
Title:          "心血管疾病-Condition Cardiovascular Disease PAD"
Description:    "此心血管疾病Condition Cardiovascular Disease PAD Profile說明PAD IG如何進一步定義臺灣核心-病情、問題或診斷（TW Core Condition）Profile以呈現心血管疾病之資料。"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code 1..1
* code.coding ^slicing.rules = #closed
* code.coding 1..1
* code.coding[icd10-cm-2023] from ICDCMCvd (required)
* code.coding[icd10-cm-2021] 0..0
* code.coding[icd10-cm-2014] 0..0
* code.coding[icd9-cm-2001] 0..0
* code.coding[absentOrUnknownProblem] 0..0
* code.coding[sct] 0..0
* subject only Reference(PatientPAD)