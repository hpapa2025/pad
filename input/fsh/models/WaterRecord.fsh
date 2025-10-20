Logical: WaterRecordModel
Id: WaterRecordModel
Title: "情境5-飲水紀錄之資料模型"
Description: """
本邏輯模型用於描述使用者之飲水紀錄的資料結構，協助國民健康署推動以資料驅動的健康促進服務。為利實作者理解與應用，資料欄位採通俗命名，實作時可參考「Mappings」功能頁籤，對應至實際所使用之Profiles與資料項目。亦可參照[視覺化邏輯模型圖](vision-5.html)進行欄位對照與整體結構掌握。
"""
* ^version = "0.1.0"

// 飲水紀錄
* waterRecord 1..1 BackboneElement "飲水紀錄"
* waterRecord.waterIntakeDateTime 1..1 dateTime "每次攝取時間/日期"
* waterRecord.waterIntake 1..1 integer "每次攝取水量"