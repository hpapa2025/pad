Profile:        ConditionCancerPAD
Parent:         TWCoreCondition
Id:             Condition-cancer-pad
Title:          "癌症-Condition Cancer PAD"
Description:    "此癌症-Condition Cancer PAD Profile說明PAD IG如何進一步定義臺灣核心-病情、問題或診斷（TW Core Condition）Profile以呈現癌症之資料。"
* clinicalStatus.coding 1..1
* category.coding 1..1
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code 1..1
* code ^short = "癌症"
* code.coding ^slicing.rules = #closed
* code.coding 1..1
* code.coding[icd10-cm-2023] from ICDCMCa (required)
* code.coding[icd10-cm-2021] 0..0
* code.coding[icd10-cm-2014] 0..0
* code.coding[icd9-cm-2001] 0..0
* code.coding[absentOrUnknownProblem] 0..0
* code.coding[sct] 0..0
* subject only Reference(PatientPAD)