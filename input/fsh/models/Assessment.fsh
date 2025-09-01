Logical: HealthSelfAssessmentModel
Id: HealthSelfAssessmentModel
Title: "健康自評問卷之資料模型"
Description: """
本邏輯模型用於描述使用者之健康自評問卷的資料結構。為利實作者理解與應用，資料欄位採通俗命名，實作時可參考「Mappings」功能頁籤，對應至實際所使用之Profiles與資料項目。亦可參照[視覺化邏輯模型圖](vision.html)進行欄位對照與整體結構掌握。
"""
* ^version = "0.1.0"

// 使用者基本資訊
* basicInfo 1..1 BackboneElement "使用者基本資訊"
* basicInfo.birthDate 1..1 date "出生日期"
* basicInfo.age 1..1 integer "年齡"
* basicInfo.gender 1..1 code "性別"
* basicInfo.residenceCity 1..1 code "居住縣市"

// 健康狀況評估
* healthStatus 1..1 BackboneElement "健康狀況評估"
* healthStatus.height 1..1 decimal "身高"
* healthStatus.weight 1..1 decimal "體重"
* healthStatus.waist 1..1 decimal "腰圍"
* healthStatus.bmi 1..1 decimal "BMI"
* healthStatus.eatingOutFrequency 1..1 code "每週外食頻率"
* healthStatus.dietaryPreferences 1..1 code "飲食偏好"
* healthStatus.occupation 1..1 code "職業"

// 健康風險評估
* healthRisk 1..1 BackboneElement "健康風險評估"
* healthRisk.familyChronicHistory 0..1 code "慢性疾病家族史"
* healthRisk.cancer 0..1 code "癌症"
* healthRisk.cardioVascularDisease 0..1 code "心血管疾病"
* healthRisk.diabetesMellitus 0..1 code "糖尿病"
* healthRisk.highBloodPressure 0..1 code "高血壓"
* healthRisk.hyperlipidemia 0..1 code "高血脂"
* healthRisk.chronicDiseases 0..1 code "其他慢性病"
* healthRisk.smokingHabit 0..1 code "吸菸習慣"

// 運動習慣評估
* exerciseHabit 1..1 BackboneElement "運動習慣評估"
* exerciseHabit.sedentaryTime 1..1 integer "3個月內每日靜態/久坐時間(不含睡覺)"
* exerciseHabit.exerciseFrequency 1..1 code "3個月內運動頻率(依運動333定義)"
* exerciseHabit.exerciseAmount 1..1 integer "3個月內每天平均進行中高強度身體活動之累計"

// 健康目標
* goalHealth 1..1 BackboneElement "健康目標"
* goalHealth.goalHealth 1..1 code "健康目標"