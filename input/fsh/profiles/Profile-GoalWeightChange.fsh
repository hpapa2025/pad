Profile:        GoalWeightChangePAD
Parent:         TWCoreGoal
Id:             Goal-weight-change-pad
Title:          "每週增/減重目標-Goal Weight PAD"
Description:    "此每週增/減重目標-Goal Weight PAD Profile說明PAD IG如何進一步定義臺灣核心-目標（TW Core Goa）Profile以呈現使用者所設定的每週增/減重目標。"
* lifecycleStatus = #active
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/goal-category#behavioral
* description.coding from GoalDescription (extensible)
* description ^short = "設定使用者每週的增減重目標"
* subject only Reference(PatientPAD)

* start[x] 1..1 
* start[x] only date
* start[x] ^short = "設定此目標的日期"

* target.measure 1..1
* target.measure ^short = "健康活動目標項目"
* target.measure.coding from HealthActivity

* target.detail[x] 1..1
* target.detail[x] only Quantity
* target.detailQuantity ^short = "每週增/減重目標"
* target.detailQuantity.value ^short = "設定目標值"
* target.detailQuantity.code ^short = "單位"
* target.detailQuantity.unit ^short = "單位"

* target.due[x] 1..1
* target.due[x] only Duration 
* target.dueDuration ^short = "此目標應在多久內完成"
* target.dueDuration.value ^short = "設定目標週數"
* target.dueDuration.code ^short = "單位"
* target.dueDuration.unit ^short = "單位"