Profile:        GoalWeightPAD
Parent:         TWCoreGoal
Id:             Goal-weight-pad
Title:          "體重目標-Goal Weight PAD"
Description:    "此體重目標-Goal Weight PAD Profile說明PAD IG如何進一步定義臺灣核心-目標（TW Core Goa）Profile以呈現使用者所設定的體重目標。"
* lifecycleStatus = #active
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/goal-category#behavioral
* description.coding from GoalDescription (extensible)
* description ^short = "設定使用者的體重目標"
* subject only Reference(PatientPAD)

* start[x] 1..1 
* start[x] only date
* start[x] ^short = "設定此目標的日期"

* target.measure 1..1
* target.measure ^short = "健康活動目標項目"
* target.measure.coding from HealthActivity

* target.detail[x] only Quantity
* target.detail[x] 1..1
* target.detailQuantity ^short = "體重目標"
* target.detailQuantity.value ^short = "設定目標值"
* target.detailQuantity.code ^short = "單位"
* target.detailQuantity.unit ^short = "單位"