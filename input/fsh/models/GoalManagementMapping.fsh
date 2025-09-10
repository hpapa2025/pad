Mapping: GoalManagement
Id: GoalManagement
Title: "Mapping to GoalManagementModel"
Source: GoalManagementModel
Target: "https://www.hpa.gov.tw/pad/"
* -> "BundleGoalManagement"

// 減重目標
* goalWeightLoss -> "(減重目標)"
* goalWeightLoss.goalWeight -> "entry:GoalWeightPAD.target.detailQuantity.value"
* goalWeightLoss.goalweightChange -> "entry:GoalWeightChangePAD.target.detailQuantity.value"
* goalWeightLoss.weightLossIntensity -> "entry:GoalWeightLossIntensityPAD.target.detailQuantity.value"

// 身體活動目標
* goalPhysicalActivity -> "(身體活動目標)"
* goalPhysicalActivity.goalWeeklyCaloriesBurned -> "entry:GoalWeeklyCaloriesBurnedPAD.target.detailQuantity.value"
* goalPhysicalActivity.goalWeeklyExerciseAmount -> "entry:GoalWeeklyExerciseAmountPAD.target.detailQuantity.value"
* goalPhysicalActivity.goalDailyCaloriesBurned -> "entry:GoalDailyCaloriesBurnedPAD.target.detailQuantity.value"
* goalPhysicalActivity.goalDailyDistance -> "entry:GoalDailyDistancePAD.target.detailQuantity.value"
* goalPhysicalActivity.goalDailyFloors -> "entry:GoalDailyFloorsPAD.target.detailQuantity.value"
* goalPhysicalActivity.goalDailySteps -> "entry:GoalDailyStepsPAD.target.detailQuantity.value"

// 飲水目標
* goalWater -> "飲水目標"
* goalWater.goalDailyWaterIntake -> "entry:GoalDailyWaterIntakePAD.target.detailQuantity.value"

// 飲食紀錄目標
* goalDiet -> "(飲食目標)"
* goalDiet.goalGrains -> "entry:GoalSixFoodGroupsPAD.target.detailQuantity.value"
* goalDiet.goalVegetables -> "entry:GoalSixFoodGroupsPAD.target.detailQuantity.value"
* goalDiet.goalProteinFoods -> "entry:GoalSixFoodGroupsPAD.target.detailQuantity.value"
* goalDiet.goalFruits -> "entry:GoalSixFoodGroupsPAD.target.detailQuantity.value"
* goalDiet.goalDairy -> "entry:GoalSixFoodGroupsPAD.target.detailQuantity.value"
* goalDiet.goalOilsAndNuts -> "entry:GoalSixFoodGroupsPAD.target.detailQuantity.value"
* goalDiet.goalCaloriesIntake -> "entry:GoalCaloriesIntakePAD.target.detailQuantity.value"