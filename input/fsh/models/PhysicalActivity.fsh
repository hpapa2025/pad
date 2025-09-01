Logical: PhysicalActivityModel
Id: PhysicalActivityModel
Title: "身體活動之資料模型"
Description: """
本邏輯模型用於描述使用者之身體活動的資料結構，協助國民健康署推動以資料驅動的健康促進服務。為利實作者理解與應用，資料欄位採通俗命名，實作時可參考「Mappings」功能頁籤，對應至實際所使用之Profiles與資料項目。亦可參照[視覺化邏輯模型圖](vision.html)進行欄位對照與整體結構掌握。
"""
* ^version = "0.1.0"

// 身體活動
* physActRecord 1..1 BackboneElement "身體活動紀錄"
* physActRecord.weeklyCaloriesBurned 0..1 integer "每週實際卡路里消耗"
* physActRecord.weeklyExerciseAmount 0..1 integer "每週實際運動量"
* physActRecord.dailySteps 0..1 integer "每日步數"
* physActRecord.dailyFloors 0..1 integer "每日爬升樓層"
* physActRecord.dailyDistance 0..1 integer "每日運動距離"
* physActRecord.standHours 0..1 integer "站立時數"

// 運動紀錄
* exerciseRecord 1..1 BackboneElement "運動紀錄"
* exerciseRecord.exerciseType 0..1 code "運動類型"
* exerciseRecord.mvpa 0..1 integer "MVPA分鐘數"
* exerciseRecord.exerciseDateTime 0..1 dateTime "運動時間/日期"
* exerciseRecord.energyExpended 0..1 integer "預估消耗熱量"


// 身體活動目標
* goalPhysicalActivity 1..1 BackboneElement "身體活動目標"
* goalPhysicalActivity.goalWeeklyCaloriesBurned 0..1 integer "每週卡路里消耗目標"
* goalPhysicalActivity.goalWeeklyExerciseAmount 0..1 integer "每週運動量目標"
* goalPhysicalActivity.goalDailyCaloriesBurned 0..1 integer "每日總熱量消耗目標"
* goalPhysicalActivity.goalDailySteps 0..1 integer "每日步數目標"
* goalPhysicalActivity.goalDailyFloors 0..1 integer "每日爬升樓層目標"
* goalPhysicalActivity.goalDailyDistance 0..1 integer "每日運動距離目標"

// 生理檢測
* physiologicalMetrics 1..1 BackboneElement "生理檢測"
* physiologicalMetrics.heartRate 0..1 integer "心率"
* physiologicalMetrics.sleepHours 0..1 integer "睡眠時數"
* physiologicalMetrics.stressIndex 0..1 integer "壓力指數"

