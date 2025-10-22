Profile:        BundleGoalManagement
Parent:         TWCoreBundle
Id:             Bundle-goal-management-pad
Title:          "目標管理-Bundle Goal Management PAD"
Description:    "此目標管理-Bundle Goal Management PAD Profile說明本IG如何進一步定義資料交換基本單位(TW Core Bundle) Profile以呈現目標管理之內容"
* type = #transaction
* entry 0..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
	goal-weight 0..1 MS and
	goal-weight-change 0..1 MS and
	goal-loss-intensity 0..1 MS and
	goal-day-calories-burned 0..1 MS and
	goal-day-steps 0..1 MS and
	goal-day-floors 0..1 MS and
	goal-day-distance 0..1 MS and
	goal-week-calories-burned 0..1 MS and
	goal-week-exercise-amount 0..1 MS and
	goal-water-intake 0..1 MS and
	goal-calories-intake 0..1 MS and
	goal-dairy 0..1 MS and
	goal-fruits 0..1 MS and
	goal-grains 0..1 MS and
	goal-oils-and-nuts 0..1 MS and
	goal-protein-foods 0..1 MS and
	goal-vegetables 0..1 MS

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

* entry[goal-loss-intensity] ^short = "減重強度目標"
* entry[goal-loss-intensity].resource 1..1 MS
* entry[goal-loss-intensity].resource only GoalWeightLossIntensityPAD
* entry[goal-loss-intensity].request 1..1
* entry[goal-loss-intensity].request.method = #POST

* entry[goal-day-calories-burned] ^short = "每日總熱量消耗目標"
* entry[goal-day-calories-burned].resource 1..1 MS
* entry[goal-day-calories-burned].resource only GoalDailyCaloriesBurnedPAD
* entry[goal-day-calories-burned].request 1..1
* entry[goal-day-calories-burned].request.method = #POST

* entry[goal-day-steps] ^short = "每日步數目標"
* entry[goal-day-steps].resource 1..1 MS
* entry[goal-day-steps].resource only GoalDailyStepsPAD
* entry[goal-day-steps].request 1..1
* entry[goal-day-steps].request.method = #POST

* entry[goal-day-floors] ^short = "每日爬升樓層目標"
* entry[goal-day-floors].resource 1..1 MS
* entry[goal-day-floors].resource only GoalDailyFloorsPAD
* entry[goal-day-floors].request 1..1
* entry[goal-day-floors].request.method = #POST

* entry[goal-day-distance] ^short = "每日運動距離目標"
* entry[goal-day-distance].resource 1..1 MS
* entry[goal-day-distance].resource only GoalDailyDistancePAD
* entry[goal-day-distance].request 1..1
* entry[goal-day-distance].request.method = #POST

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

* entry[goal-water-intake] ^short = "每日飲水量目標"
* entry[goal-water-intake].resource 1..1 MS
* entry[goal-water-intake].resource only GoalDailyWaterIntakePAD
* entry[goal-water-intake].request 1..1
* entry[goal-water-intake].request.method = #POST

* entry[goal-calories-intake] ^short = "每日熱量攝取目標"
* entry[goal-calories-intake].resource 1..1 MS
* entry[goal-calories-intake].resource only GoalCaloriesIntakePAD
* entry[goal-calories-intake].request 1..1
* entry[goal-calories-intake].request.method = #POST

* entry[goal-dairy] ^short = "每日乳品類食物攝取份數目標"
* entry[goal-dairy].resource 1..1 MS
* entry[goal-dairy].resource only GoalSixFoodGroupsDairyPAD
* entry[goal-dairy].request 1..1
* entry[goal-dairy].request.method = #POST

* entry[goal-fruits] ^short = "每日水果類食物飲食目標"
* entry[goal-fruits].resource 1..1 MS
* entry[goal-fruits].resource only GoalSixFoodGroupsFruitsPAD
* entry[goal-fruits].request 1..1
* entry[goal-fruits].request.method = #POST

* entry[goal-grains] ^short = "每日全穀雜糧類食物攝取份數目標"
* entry[goal-grains].resource 1..1 MS
* entry[goal-grains].resource only GoalSixFoodGroupsGrainsPAD
* entry[goal-grains].request 1..1
* entry[goal-grains].request.method = #POST

* entry[goal-oils-and-nuts] ^short = "每日油脂與堅果種子類食物攝取份數目標"
* entry[goal-oils-and-nuts].resource 1..1 MS
* entry[goal-oils-and-nuts].resource only GoalSixFoodGroupsOilsAndNutsPAD
* entry[goal-oils-and-nuts].request 1..1
* entry[goal-oils-and-nuts].request.method = #POST

* entry[goal-protein-foods] ^short = "每日豆魚肉蛋類食物攝取份數目標"
* entry[goal-protein-foods].resource 1..1 MS
* entry[goal-protein-foods].resource only GoalSixFoodGroupsProteinFoodsPAD
* entry[goal-protein-foods].request 1..1
* entry[goal-protein-foods].request.method = #POST

* entry[goal-vegetables] ^short = "每日蔬菜類食物攝取份數目標"
* entry[goal-vegetables].resource 1..1 MS
* entry[goal-vegetables].resource only GoalSixFoodGroupsVegetablesPAD
* entry[goal-vegetables].request 1..1
* entry[goal-vegetables].request.method = #POST