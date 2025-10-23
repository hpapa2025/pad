Profile:        GoalHealthPAD
Parent:         TWCoreGoal
Id:             Goal-health-pad
Title:          "健康目標-Goal Health PAD"
Description:    "此健康目標-Goal Health PAD Profile說明PAD IG如何進一步定義臺灣核心-目標（TW Core Goa）Profile以呈現使用者於全齡健康平台所設定的健康目標。"
* lifecycleStatus = #active
* category 1..1
* category.coding 1..1
* category = http://terminology.hl7.org/CodeSystem/goal-category#behavioral
* description ^short = "設定使用者使用全齡健康平台的健康目標"
* description.coding 1..1
* description.coding = $SCT#703039001
* subject only Reference(PatientPAD)

* start[x] 1..1 
* start[x] only date
* start[x] ^short = "設定此目標的日期"

* target.measure 1..1
* target.measure.coding 1..1
* target.measure = $LOINC#87528-6

* target.detail[x] 1..1
* target.detail[x] only CodeableConcept
* target.detailCodeableConcept ^short = "健康目標選項"
* target.detailCodeableConcept.coding from HealthGoals
