Profile:        GoalSixFoodGroupsOilsAndNutsPAD
Parent:         TWCoreGoal
Id:             Goal-six-food-groups-oilsAndNuts-pad
Title:          "每日油脂與堅果種子類食物攝取份數目標-Goal Six Food Groups Oils and Nuts PAD"
Description:    "此每日油脂與堅果種子類食物攝取份數目標-Goal Six Food Groups Oils and Nuts PAD Profile說明PAD IG如何進一步定義臺灣核心-目標（TW Core Goa）Profile以呈現每日六大類食物中的油脂與堅果種子類攝取份數目標。"
* lifecycleStatus = #active
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/goal-category#dietary
* description ^short = "設定油脂與堅果種子類食物攝取份數目標"
* description.coding 1..1
* description.coding = $SCT#1003948007
* subject only Reference(PatientPAD)

* start[x] 1..1 
* start[x] only date
* start[x] ^short = "設定此目標的日期"

* target 0..1

* target.measure 1..1
* target.measure ^short = "油脂與堅果種子類食物"
* target.measure = $LOINC#80466-6

* target.detail[x] 1..1
* target.detail[x] only Quantity
* target.detailQuantity ^short = "油脂與堅果種子類食物攝取目標"
* target.detailQuantity.value ^short = "設定目標值"
* target.detailQuantity.code ^short = "單位"
* target.detailQuantity.unit ^short = "單位"

* target.due[x] 1..1
* target.due[x] only Duration 
* target.dueDuration ^short = "此目標應在多久內完成"
* target.dueDuration.value ^short = "設定目標天數"
* target.dueDuration.code ^short = "單位"
* target.dueDuration.unit ^short = "單位"