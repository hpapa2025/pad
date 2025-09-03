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
* created ^short = "記錄時間"

* extension 1..*
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #closed

* extension contains 
	NutritionIntakeNote named mealType 0..1 and
	NutritionIntakeIdentifier named barcode 0..1 /*and
	brand 0..1 and
	photo 0..1*/


* extension[mealType] ^short = "餐次。breakfast：早餐｜lunch：午餐｜dinner：晚餐｜snack：點心｜fruit：水果"
* extension[barcode] ^short = "商品條碼"




Extension: NutritionIntakeNote
Id: extension-nutritionIntake-note
Description: "餐次"
Context: Basic
* . ^definition = "餐次"
* value[x] only CodeableConcept
* valueCodeableConcept ^short = "餐次。breakfast：早餐｜lunch：午餐｜dinner：晚餐｜snack：點心｜fruit：水果"
* valueCodeableConcept from PADMealType

Extension: NutritionIntakeIdentifier
Id: extension-nutritionIntake-identifier
Description: "商品條碼"
Context: Basic
* . ^definition = "商品條碼"
* value[x] only Identifier
* valueIdentifier ^short = "商品條碼"

/*Profile:        BundleWaterIntake
Parent:         TWCoreBundle
Id:             Bundle-water-intake-pad
Title:          "飲水紀錄-Bundle TWPAS"
Description:    "此飲水紀錄-Bundle TWPAS Profile說明本IG如何進一步定義資料交換基本單位(TW Core Bundle) Profile以呈現飲水紀錄之內容"
* type = #collection
* entry 1..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
	observation-water-intake 1.. MS */