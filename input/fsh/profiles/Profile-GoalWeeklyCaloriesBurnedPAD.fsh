Profile:        GoalWeeklyCaloriesBurnedPAD
Parent:         TWCoreGoal
Id:             Goal-weekly-calories-burned-pad
Title:          "每週卡路里消耗目標-Goal Weekly Calories Burned PAD"
Description:    "此每週卡路里消耗目標-Goal Weekly Calories Burned PAD Profile說明PAD IG如何進一步定義臺灣核心-目標（TW Core Goa）Profile以呈現每週的卡路里消耗目標。"
* lifecycleStatus = #active
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/goal-category#behavioral
* description ^short = "設定每週卡路里消耗的目標"
* description.coding 1..1
* description.coding = $SCT#258790008
* subject only Reference(PatientPAD)

* start[x] 1..1  
* start[x] only date
* start[x] ^short = "設定此目標的日期"

* target.measure 1..1
* target.measure ^short = "每週卡路里消耗"
* target.measure = $LOINC#41980-4

* target.detail[x] 1..1
* target.detail[x] only Quantity
* target.detailQuantity ^short = "每週卡路里數消耗目標"
* target.detailQuantity.value ^short = "設定目標值"
* target.detailQuantity.code ^short = "單位"
* target.detailQuantity.unit ^short = "單位"

* target.due[x] 1..1
* target.due[x] only Duration 
* target.dueDuration ^short = "此目標應在多久內完成"
* target.dueDuration.value ^short = "設定目標週數"
* target.dueDuration.code ^short = "單位"
* target.dueDuration.unit ^short = "單位"