Profile:        BundleGoalManagement
Parent:         TWCoreBundle
Id:             Bundle-goal-management-pad
Title:          "目標管理-Bundle Health Risk Assessment PAD"
Description:    "此目標管理-Bundle Health Risk Assessment PAD Profile說明本IG如何進一步定義資料交換基本單位(TW Core Bundle) Profile以呈現健康風險評估之內容"
* type = #transaction
* entry 1..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
	goal-health 1..1 MS and
	goal-weight 1..1 MS and
	goal-weight-change 1..1 MS and
	goal-weight-loss-intensity 1..1 MS and
	goal-week-calories-burned 1..1 MS and
	goal-week-exercise-amount 1..1 MS and
	goal-day-calories-burned 1..1 MS and
	goal-day-distance 1..1 MS and
	goal-day-floors 1..1 MS and
	goal-day-steps 1..1 MS and
	goal-day-water-intake 1..1 MS and
	goal-calories-intake 1..1 MS and
	goal-six-food-groups 1..1 MS
	
* entry[goal-health] ^short = "健康目標"
* entry[goal-health].resource 1..1 MS
* entry[goal-health].resource only GoalHealthPAD
* entry[goal-health].request 1..1
* entry[goal-health].request.method = #POST

* entry[goal-weight] ^short = "體重目標"
* entry[goal-weight].resource 1..1 MS
* entry[goal-weight].resource only GoalWeightPAD
* entry[goal-weight].request 1..1
* entry[goal-weight].request.method = #POST

* entry[goal-weight-change] ^short = "每週增/減重目標"
* entry[goal-weight-change].resource 1..1 MS
* entry[goal-weight-change].resource only GoalWeightChangePAD
* entry[goal-weight-change].request 1..1
* entry[goal-weight-change].request.method = #POST

* entry[goal-weight-loss-intensity] ^short = "減重強度目標"
* entry[goal-weight-loss-intensity].resource 1..1 MS
* entry[goal-weight-loss-intensity].resource only GoalWeightLossIntensityPAD
* entry[goal-weight-loss-intensity].request 1..1
* entry[goal-weight-loss-intensity].request.method = #POST

* entry[goal-week-calories-burned] ^short = "每週卡路里消耗目標"
* entry[goal-week-calories-burned].resource 1..1 MS
* entry[goal-week-calories-burned].resource only GoalWeeklyCaloriesBurnedPAD
* entry[goal-week-calories-burned].request 1..1
* entry[goal-week-calories-burned].request.method = #POST

* entry[goal-week-exercise-amount] ^short = "每週運動量目標"
* entry[goal-week-exercise-amount].resource 1..1 MS
* entry[goal-week-exercise-amount].resource only GoalWeeklyExerciseAmountPAD
* entry[goal-week-exercise-amount].request 1..1
* entry[goal-week-exercise-amount].request.method = #POST

* entry[goal-day-calories-burned] ^short = "每日總熱量消耗目標"
* entry[goal-day-calories-burned].resource 1..1 MS
* entry[goal-day-calories-burned].resource only GoalDailyCaloriesBurnedPAD
* entry[goal-day-calories-burned].request 1..1
* entry[goal-day-calories-burned].request.method = #POST

* entry[goal-day-distance] ^short = "每日運動距離目標"
* entry[goal-day-distance].resource 1..1 MS
* entry[goal-day-distance].resource only GoalDailyDistancePAD
* entry[goal-day-distance].request 1..1
* entry[goal-day-distance].request.method = #POST

* entry[goal-day-floors] ^short = "每日爬升樓層目標"
* entry[goal-day-floors].resource 1..1 MS
* entry[goal-day-floors].resource only GoalDailyFloorsPAD
* entry[goal-day-floors].request 1..1
* entry[goal-day-floors].request.method = #POST

* entry[goal-day-steps] ^short = "每日步數目標"
* entry[goal-day-steps].resource 1..1 MS
* entry[goal-day-steps].resource only GoalDailyStepsPAD
* entry[goal-day-steps].request 1..1
* entry[goal-day-steps].request.method = #POST

* entry[goal-day-water-intake] ^short = "每日飲水量目標"
* entry[goal-day-water-intake].resource 1..1 MS
* entry[goal-day-water-intake].resource only GoalDailyWaterIntakePAD
* entry[goal-day-water-intake].request 1..1
* entry[goal-day-water-intake].request.method = #POST

* entry[goal-calories-intake] ^short = "每日熱量攝取目標"
* entry[goal-calories-intake].resource 1..1 MS
* entry[goal-calories-intake].resource only GoalCaloriesIntakePAD
* entry[goal-calories-intake].request 1..1
* entry[goal-calories-intake].request.method = #POST

* entry[goal-six-food-groups] ^short = ""
* entry[goal-six-food-groups].resource 1..1 MS
* entry[goal-six-food-groups].resource only GoalSixFoodGroupsPAD
* entry[goal-six-food-groups].request 1..1
* entry[goal-six-food-groups].request.method = #POST