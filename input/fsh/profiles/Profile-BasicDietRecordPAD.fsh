// ====================NutritionIntake========================
Profile:        BasicDietRecordPAD
Parent:         Basic
Id:             Basic-diet-record-pad
Title:          "飲食紀錄-Basic Diet Record PAD"
Description:    "此飲食紀錄-Basic Diet Record PAD Profile說明PAD IG如何進一步定義FHIR的Basic Resource模擬R6的NutritionIntake及NutritionProduct Resource以呈現飲食紀錄的詳細記錄。"
* code = PADMetricsCodes#dietRecorde
* subject 1..1
* subject only Reference(PatientPAD)
* created 1..1

* extension 1..*
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #closed

* extension contains 
	MealType named mealType 0..1 and
	NutritionProductCharacteristic named img 0..1 and
	NutritionIntakeAmount named intake 0..1 and
	NutritionProductCode named name 0..1 and
	NutritionProductEnergy named calories 0..1 and
	NutritionProductNutrient named nutrient 0..6

* extension[mealType] ^short = "餐次。breakfast：早餐｜lunch：午餐｜dinner：晚餐｜snack：點心｜fruit：水果"
* extension[img] ^short = "食物照片"
* extension[intake] ^short = "攝取份數"
* extension[name] ^short = "食物名稱"
* extension[calories] ^short = "總熱量攝取"
* extension[nutrient] ^short = "六大類食物攝取份數"
* identifier ^short = "商品條碼"
* created ^short = "記錄時間"


Extension: MealType
Id: extension-meal-type
Description: "餐次"
Context: Basic
* . ^definition = "餐次"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept ^short = "餐次。breakfast：早餐｜lunch：午餐｜dinner：晚餐｜snack：點心｜fruit：水果"
* valueCodeableConcept from PADMealType

Extension: NutritionProductNutrient
Id: extension-nutritionproduct-nutrient
Description: "六大類食物攝取份數(NutritionProduct.nutrient)"
Context: Basic
* . ^definition = "六大類食物攝取份數"
* extension contains
    item 1..1 and
    amount 1..1

* extension[item] ^short = "六大類食物。80456-7：全穀雜糧類｜80464-1：豆魚肉蛋類｜80462-5：乳品類｜80460-9：蔬菜類｜80458-3：水果類｜80466-6：堅果種子類"
* extension[item].value[x] 1..1
* extension[item].value[x] only CodeableConcept
* extension[item].value[x] from SixFoodGroups

* extension[amount] ^short = "攝取份數"
* extension[amount].value[x] 1..1
* extension[amount].value[x] only integer
* extension[amount].valueInteger ^short = "攝取份數"

Extension: NutritionProductEnergy
Id: extension-nutritionproduct-energy
Description: "總熱量攝取(NutritionProduct.energy)"
Context: Basic
* . ^definition = "總熱量攝取"
* value[x] 1..1
* value[x] only Quantity
* valueQuantity ^short = "總熱量攝取"
* valueQuantity.value 1..1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kcal
* valueQuantity.unit = "kcal"

Extension: NutritionProductCode
Id: extension-nutritionproduct-code
Description: "食物名稱(NutritionProduct.code)"
Context: Basic
* . ^definition = "食物名稱"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept ^short = "食物名稱"

Extension: NutritionProductCharacteristic
Id: extension-nutritionproduct-characteristic
Description: "食物照片(NutritionProduct.characteristic.valueAttachment)"
Context: Basic
* . ^definition = "食物照片"
* value[x] 1..1
* value[x] only Attachment
* valueAttachment ^short = "食物照片"

Extension: NutritionIntakeAmount
Id: extension-nutritionintake-amount
Description: "攝取份數(NutritionIntake.nutritionItem.consumedItem.amount)"
Context: Basic
* . ^definition = "攝取份數"
* value[x] 1..1
* value[x] only Quantity
* valueQuantity ^short = "攝取份數"
* valueQuantity.value 1..1
* valueQuantity.unit 1..1
* valueQuantity.unit ^short = "單位。份 | 杯 | 個 | g | ml"


/*Extension: NutritionProductIdentifier
Id: extension-nutritionproduct-identifier
Description: "商品條碼(NutritionProduct.instance.identifier)"
Context: Basic
* . ^definition = "商品條碼"
* value[x] only Identifier
* valueIdentifier ^short = "商品條碼"*/