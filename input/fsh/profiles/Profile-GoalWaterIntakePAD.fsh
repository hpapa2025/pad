Profile:        GoalWaterIntakePAD
Parent:         TWCoreGoal
Id:             Goal-water-intake-pad
Title:          "每日飲水量目標-Goal Water Intake PAD"
Description:    "此每日飲水量目標-Goal Water Intake PAD Profile說明PAD IG如何進一步定義臺灣核心-目標（TW Core Goa）Profile以呈現使用者設定每日攝取水量的健康飲食目標。"
* lifecycleStatus = #active
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/goal-category#dietary
* description.coding from GoalDescription (extensible)
* description ^short = "設定每日攝取的水量目標"
* subject only Reference(PatientPAD)

* start[x] 1..1 
* start[x] only date
* start[x] ^short = "設定此目標的日期"

* target.measure 1..1
* target.measure ^short = "健康活動目標項目"
* target.measure.coding from HealthActivity

* target.detail[x] 1..1
* target.detail[x] only Quantity
* target.detailQuantity ^short = "飲水量目標"
* target.detailQuantity.value ^short = "設定目標值"
* target.detailQuantity.code ^short = "單位"
* target.detailQuantity.unit ^short = "單位"

* target.due[x] 1..1
* target.due[x] only Duration
* target.dueDuration ^short = "此目標應在多久內完成"
* target.dueDuration.value ^short = "設定目標天數"
* target.dueDuration.code ^short = "單位"
* target.dueDuration.unit ^short = "單位"