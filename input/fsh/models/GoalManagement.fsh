Logical: GoalManagementModel
Id: GoalManagementModel
Title: "情境7-目標管理之資料模型"
Description: """
本邏輯模型用於描述使用者之目標管理的資料結構。為利實作者理解與應用，資料欄位採通俗命名，實作時可參考「Mappings」功能頁籤，對應至實際所使用之Profiles與資料項目。亦可參照[視覺化邏輯模型圖](vision-7.html)進行欄位對照與整體結構掌握。
"""
* ^version = "0.1.0"

// 減重目標
* goalWeightLoss 0..1 BackboneElement "減重目標"
* goalWeightLoss.goalWeight 1..1 integer "目標體重"
* goalWeightLoss.goalweightChange 1..1 integer "每週增/減重目標"
* goalWeightLoss.weightLossIntensity 1..1 code "減重強度"

// 身體活動目標
* goalPhysicalActivity 0..1 BackboneElement "身體活動目標"
* goalPhysicalActivity.goalWeeklyCaloriesBurned 1..1 integer "每週卡路里消耗目標"
* goalPhysicalActivity.goalWeeklyExerciseAmount 1..1 integer "每週運動量目標"
* goalPhysicalActivity.goalDailyCaloriesBurned 1..1 integer "每日總熱量消耗目標"
* goalPhysicalActivity.goalDailySteps 1..1 integer "每日步數目標"
* goalPhysicalActivity.goalDailyFloors 1..1 integer "每日爬升樓層目標"
* goalPhysicalActivity.goalDailyDistance 1..1 integer "每日運動距離目標"

// 飲水目標
* goalWater 0..1 BackboneElement "飲水目標"
* goalWater.goalDailyWaterIntake 1..1 integer "每次飲水量目標"

// 飲食紀錄目標
* goalDiet 0..1 BackboneElement "飲食紀錄目標"
* goalDiet.goalGrains 1..1 integer "每日全穀雜糧類攝取份數目標"
* goalDiet.goalVegetables 1..1 integer "每日蔬菜攝取份數目標"
* goalDiet.goalProteinFoods 1..1 integer "每日豆魚肉蛋攝取份數目標"
* goalDiet.goalFruits 1..1 integer "每日水果攝取份數目標"
* goalDiet.goalDairy 1..1 integer "每日乳品攝取份數目標"
* goalDiet.goalOilsAndNuts 1..1 integer "每日油脂與堅果種子攝取份數目標"
* goalDiet.goalCaloriesIntake 1..1 integer "每日熱量攝取目標"