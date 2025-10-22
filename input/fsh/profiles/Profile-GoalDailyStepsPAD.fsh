Profile:        GoalDailyStepsPAD
Parent:         TWCoreGoal
Id:             Goal-daily-steps-pad
Title:          "每日步數目標-Goal Daily Steps PAD"
Description:    "此每日步數目標-Goal Daily Steps PAD Profile說明PAD IG如何進一步定義臺灣核心-目標（TW Core Goa）Profile以呈現使用者每日的身體活動目標。"
* lifecycleStatus = #active
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/goal-category#behavioral
* description ^short = "設定每日步數的目標"
* description.coding 1..1
* description.coding from PADMetrics (extensible)
* description.coding = https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics#steps
* subject only Reference(PatientPAD)

* start[x] 1..1 
* start[x] only date
* start[x] ^short = "設定此目標的日期"

* target.measure 1..1
* target.measure ^short = "每日步數"
* target.measure = $LOINC#41950-7

* target.detail[x] 1..1
* target.detail[x] only Quantity
* target.detailQuantity ^short = "每日步數目標"
* target.detailQuantity.value ^short = "設定目標值"
* target.detailQuantity.code ^short = "單位"
* target.detailQuantity.unit ^short = "單位"

* target.due[x] 1..1
* target.due[x] only Duration 
* target.dueDuration ^short = "此目標應在多久內完成"
* target.dueDuration.value ^short = "設定目標天數"
* target.dueDuration.code ^short = "單位"
* target.dueDuration.unit ^short = "單位"