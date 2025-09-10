Logical: BodyMetricsModel
Id: BodyMetricsModel
Title: "情境4-身體數值之資料模型"
Description: """
本邏輯模型用於描述使用者之身體數值的資料結構，協助國民健康署推動以資料驅動的健康促進服務。為利實作者理解與應用，資料欄位採通俗命名，實作時可參考「Mappings」功能頁籤，對應至實際所使用之Profiles與資料項目。亦可參照[視覺化邏輯模型圖](vision-4.html)進行欄位對照與整體結構掌握。
"""
* ^version = "0.1.0"

// 身體數值
* bodyMetrics 1..1 BackboneElement "身體數值"
* bodyMetrics.height 1..1 decimal "身高"
* bodyMetrics.weightDateTime 1..1 dateTime "體重紀錄時間/日期"
* bodyMetrics.weight 1..1 decimal "體重"
* bodyMetrics.waist 1..1 decimal "腰圍"
* bodyMetrics.hipline 1..1 decimal "臀圍"
* bodyMetrics.bmi 1..1 decimal "BMI"
* bodyMetrics.bri 1..1 decimal "BRI"
* bodyMetrics.bfp 1..1 decimal "體脂率"
* bodyMetrics.sbp 1..1 integer "收縮壓"
* bodyMetrics.dbp 1..1 integer "舒張壓"
* bodyMetrics.chol 1..1 integer "總膽固醇"
* bodyMetrics.hdl 1..1 integer "高密度膽固醇"
* bodyMetrics.ldl 1..1 integer "低密度膽固醇"
* bodyMetrics.tg 1..1 integer "三酸甘油脂"
* bodyMetrics.fg 1..1 integer "空腹血糖"
* bodyMetrics.bmr 1..1 decimal "基礎代謝率(BMR)"
* bodyMetrics.tdee 1..1 integer "每日總消耗熱量(TDEE)"