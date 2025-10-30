Logical: HealthRiskAssessmentModel
Id: HealthRiskAssessmentModel
Title: "情境3-健康風險評估之資料模型"
Description: """
本邏輯模型用於描述使用者之健康風險評估的資料結構。為利實作者理解與應用，資料欄位採通俗命名，實作時可參考「Mappings」功能頁籤，對應至實際所使用之Profiles與資料項目。亦可參照[視覺化邏輯模型圖](vision-3.html)進行欄位對照與整體結構掌握。
"""
* ^version = "0.1.0"

// 使用者基本資訊
* basicInfo 1..1 BackboneElement "使用者基本資訊"
* basicInfo.age 1..1 Age "年齡"
* basicInfo.gender 1..1 code "性別"

// 健康狀況評估
* healthStatus 1..1 BackboneElement "健康狀況評估"
* healthStatus.height 1..1 decimal "身高"
* healthStatus.weight 1..1 decimal "體重"
* healthStatus.waist 1..1 decimal "腰圍"

// 健康風險評估
* healthRisk 1..1 BackboneElement "健康風險評估"
* healthRisk.diabetesMellitus 0..1 code "糖尿病"
* healthRisk.highBloodPressure 0..1 code "高血壓"
* healthRisk.smokingHabit 1..1 CodeableConcept "吸菸習慣"

// 身體數值
* bodyMetrics 1..1 BackboneElement "身體數值"
* bodyMetrics.sbp 1..1 integer "收縮壓"
* bodyMetrics.chol 1..1 integer "總膽固醇"
* bodyMetrics.hdl 1..1 integer "高密度膽固醇"
* bodyMetrics.ldl 1..1 integer "低密度膽固醇"
* bodyMetrics.tg 1..1 integer "三酸甘油脂"
* bodyMetrics.fg 1..1 integer "空腹血糖"