Logical: PhysicalActivityModel
Id: PhysicalActivityModel
Title: "情境1-運動紀錄之資料模型"
Description: """
本邏輯模型用於描述使用者之運動紀錄的資料結構，協助國民健康署推動以資料驅動的健康促進服務。為利實作者理解與應用，資料欄位採通俗命名，實作時可參考「Mappings」功能頁籤，對應至實際所使用之Profiles與資料項目。亦可參照[視覺化邏輯模型圖](vision-1.html)進行欄位對照與整體結構掌握。
"""
* ^version = "0.1.0"

// 身體活動紀錄
* physActRecord 0..1 BackboneElement "身體活動紀錄"
* physActRecord.dailySteps 0..1 integer "每日步數"
* physActRecord.dailyFloors 0..1 integer "每日爬升樓層"
* physActRecord.dailyDistance 0..1 integer "每日運動距離"
* physActRecord.standHours 0..1 integer "站立時數"

// 生理檢測
* physiologicalMetrics 0..1 BackboneElement "生理檢測"
* physiologicalMetrics.heartRate 0..* integer "心率"
* physiologicalMetrics.sleepHours 0..1 integer "睡眠時數"
* physiologicalMetrics.stressIndex 0..* integer "壓力指數"

// 運動紀錄
* exerciseRecord 0..* BackboneElement "運動紀錄"
* exerciseRecord.exerciseType 1..1 code "運動類型"
* exerciseRecord.mvpa 1..1 integer "MVPA分鐘數"
* exerciseRecord.exerciseDateTime 1..1 dateTime "運動時間/日期"
* exerciseRecord.energyExpended 1..1 integer "預估消耗熱量"
* exerciseRecord.exerciseIntensity 1..1 decimal "運動強度"
* exerciseRecord.exerciseRecordSource 1..1 CodeableConcept "運動紀錄來源"