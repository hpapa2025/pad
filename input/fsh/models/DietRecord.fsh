Logical: DietRecordModel
Id: DietRecordModel
Title: "情境3-飲食紀錄之資料模型"
Description: """
本邏輯模型用於描述使用者之飲食紀錄的資料結構，協助國民健康署推動以資料驅動的健康促進服務。為利實作者理解與應用，資料欄位採通俗命名，實作時可參考「Mappings」功能頁籤，對應至實際所使用之Profiles與資料項目。亦可參照[視覺化邏輯模型圖](vision-4.html)進行欄位對照與整體結構掌握。
"""
* ^version = "0.1.0"

// 飲食紀錄
* dietRecords 1..1 BackboneElement "飲食紀錄"
* dietRecords.recordTime 1..1 dateTime "紀錄時間"
* dietRecords.grains 1..1 integer "全穀雜糧類"
* dietRecords.vegetable 1..1 integer "蔬菜"
* dietRecords.proteinFoods 1..1 integer "豆魚肉蛋"
* dietRecords.fruits 1..1 integer "水果"
* dietRecords.dairy 1..1 integer "乳品"
* dietRecords.oilsAndNuts 1..1 integer "油脂與堅果種子"
* dietRecords.protein 1..1 integer "蛋白質" 
* dietRecords.fats 1..1 integer "脂肪"
* dietRecords.carbohydrate 1..1 integer "碳水化合物"
* dietRecords.sodium 1..1 integer "鈉攝取量"
* dietRecords.calories 1..1 integer "熱量攝取"

// 食物
* food 1..1 BackboneElement "食物"
* food.intakeServings 1..1 integer "攝取份數"
* food.foodName 1..1 string "食物名稱"
* food.foodBrand 1..1 string "食物品牌"
* food.foodImg 1..1 base64Binary "食物照片"
* food.productBarcode 1..1 integer "食物條碼"
* food.foodGroupName 1..1 CodeableConcept "食物群組名稱"
* food.alcoholIntake 1..1 integer "酒精攝取量"
* food.mealType 1..1 CodeableConcept "餐次"