Profile:        GoalWeightLossIntensityPAD
Parent:         TWCoreGoal
Id:             Goal-weight-loss-intensity-pad
Title:          "減重強度目標-Goal Weight Loss Intensity PAD"
Description:    "此減重強度目標-Goal Weight Loss Intensity PAD Profile說明PAD IG如何進一步定義臺灣核心-目標（TW Core Goa）Profile以呈現使用者的減重強度目標。"
* lifecycleStatus = #active
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/goal-category#behavioral
* description.coding from GoalDescription (extensible)
* description ^short = "設定使用者的減重強度目標"
* subject only Reference(PatientPAD)

* start[x] 1..1 
* start[x] only date
* start[x] ^short = "設定此目標的日期"

* target.measure 1..1
* target.measure ^short = "健康活動目標項目"
* target.measure.coding from HealthActivity

* target.detail[x] 1..1
* target.detail[x] only CodeableConcept
* target.detailCodeableConcept ^short = "減重強度目標選項"
* target.detailCodeableConcept.coding from WeightLossIntensity
