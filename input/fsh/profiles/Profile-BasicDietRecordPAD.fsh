// ====================NutritionIntake========================
Profile:        BasicDietRecordPAD
Parent:         Basic
Id:             Basic-diet-record-pad
Title:          "飲食紀錄-Basic Diet Record PAD"
Description:    "此飲食紀錄-Basic Diet Record PAD Profile說明PAD IG如何進一步定義FHIR的Basic Resource模擬R6的NutritionIntake及NutritionProduct Resource以呈現飲食紀錄的詳細記錄。"
* code = PADMetricsCodes#dietRecorde
* subject 1..1
* subject only Reference(PatientPAD)

* extension 1..*
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #closed

* extension contains 
	MealType named mealType 1..1 and
	NutritionProductCharacteristic named img 0..1 and
	NutritionIntakeAmount named intake 1..1 and
	NutritionProductCode named name 1..1 and
	NutritionProductEnergy named calories 1..1 and
	NutritionProductNutrient named nutrient 1..1 and
    NutritionIntakeRecorded named recorded 1..1

* extension[mealType] ^short = "餐次。breakfast：早餐｜lunch：午餐｜dinner：晚餐｜snack：點心｜fruit：水果"
* extension[img] ^short = "食物照片"
* extension[intake] ^short = "攝取份數"
* extension[name] ^short = "食物名稱"
* extension[calories] ^short = "總熱量攝取"
* extension[nutrient] ^short = "六大類食物攝取份數與營養素含量"
* extension[recorded] ^short = "記錄時間"
* identifier ^short = "商品條碼"


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
Description: "六大類食物攝取份數與營養素含量(NutritionProduct.nutrient)"
Context: Basic
* . ^definition = "六大類食物攝取份數與營養素含量"
* extension contains
    grains 0..1 and
    proteinFoods 0..1 and
    dairy 0..1 and
    vegetable 0..1 and
    fruits 0..1 and
    oilsAndNuts 0..1 and
    protein 0..1 and
    fats 0..1 and
    carbohydrate 0..1

* extension[grains] ^short = "全穀雜糧類"
* extension[grains].value[x] 1..1
* extension[grains].value[x] only integer
* extension[grains].valueInteger ^short = "攝取份數"

* extension[proteinFoods] ^short = "豆魚肉蛋類"
* extension[proteinFoods].value[x] 1..1
* extension[proteinFoods].value[x] only integer
* extension[proteinFoods].valueInteger ^short = "攝取份數"

* extension[dairy] ^short = "乳品類"
* extension[dairy].value[x] 1..1
* extension[dairy].value[x] only integer
* extension[dairy].valueInteger ^short = "攝取份數"

* extension[vegetable] ^short = "蔬菜類"
* extension[vegetable].value[x] 1..1
* extension[vegetable].value[x] only integer
* extension[vegetable].valueInteger ^short = "攝取份數"

* extension[fruits] ^short = "水果類"
* extension[fruits].value[x] 1..1
* extension[fruits].value[x] only integer
* extension[fruits].valueInteger ^short = "攝取份數"

* extension[oilsAndNuts] ^short = "堅果種子類"
* extension[oilsAndNuts].value[x] 1..1
* extension[oilsAndNuts].value[x] only integer
* extension[oilsAndNuts].valueInteger ^short = "攝取份數"

* extension[protein] ^short = "蛋白質"
* extension[protein].value[x] 1..1
* extension[protein].value[x] only Quantity
* extension[protein].valueQuantity ^short = "攝取量"
* extension[protein].valueQuantity.code = #g
* extension[protein].valueQuantity.unit = "g"
* extension[protein].valueQuantity.system = "http://unitsofmeasure.org"
* extension[protein].valueQuantity.unit 1..1
* extension[protein].valueQuantity.system 1..1
* extension[protein].valueQuantity.code 1..1
* extension[protein].valueQuantity.value 1..1

* extension[fats] ^short = "脂肪"
* extension[fats].value[x] 1..1
* extension[fats].value[x] only Quantity
* extension[fats].valueQuantity ^short = "攝取量"
* extension[fats].valueQuantity.code = #g
* extension[fats].valueQuantity.unit = "g"
* extension[fats].valueQuantity.system = "http://unitsofmeasure.org"
* extension[fats].valueQuantity.unit 1..1
* extension[fats].valueQuantity.system 1..1
* extension[fats].valueQuantity.code 1..1
* extension[fats].valueQuantity.value 1..1

* extension[carbohydrate] ^short = "碳水化合物"
* extension[carbohydrate].value[x] 1..1
* extension[carbohydrate].value[x] only Quantity
* extension[carbohydrate].valueQuantity ^short = "攝取量"
* extension[carbohydrate].valueQuantity.code = #g
* extension[carbohydrate].valueQuantity.unit = "g"
* extension[carbohydrate].valueQuantity.system = "http://unitsofmeasure.org"
* extension[carbohydrate].valueQuantity.unit 1..1
* extension[carbohydrate].valueQuantity.system 1..1
* extension[carbohydrate].valueQuantity.code 1..1
* extension[carbohydrate].valueQuantity.value 1..1

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

Extension: NutritionIntakeRecorded
Id: extension-nutritionintake-recorded
Description: "記錄時間(NutritionIntake.recorded)"
Context: Basic
* . ^definition = "記錄時間"
* value[x] 1..1
* value[x] only dateTime
* valueDateTime ^short = "記錄時間"
* valueDateTime only DateTimePAD


/*Extension: NutritionProductIdentifier
Id: extension-nutritionproduct-identifier
Description: "商品條碼(NutritionProduct.instance.identifier)"
Context: Basic
* . ^definition = "商品條碼"
* value[x] only Identifier
* valueIdentifier ^short = "商品條碼"*/