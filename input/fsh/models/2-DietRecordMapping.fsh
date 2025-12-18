Mapping: DietRecord
Id: DietRecord
Title: "Mapping to DietRecordModel"
Source: DietRecordModel
Target: "https://hpacorepa.hpa.gov.tw/pad/"
* -> "BundleDiet"

// 飲食紀錄
* dietRecords -> "(飲食紀錄)"
* dietRecords.grains -> "entry:NutritionIntakePAD.nutritionItem.consumedItem.totalIntake.amount"
* dietRecords.vegetable -> "entry:NutritionIntakePAD.nutritionItem.consumedItem.totalIntake.amount"
* dietRecords.proteinFoods -> "entry:NutritionIntakePAD.nutritionItem.consumedItem.totalIntake.amount"
* dietRecords.fruits -> "entry:NutritionIntakePAD.nutritionItem.consumedItem.totalIntake.amount"
* dietRecords.dairy -> "entry:NutritionIntakePAD.nutritionItem.consumedItem.totalIntake.amount"
* dietRecords.oilsAndNuts -> "entry:NutritionIntakePAD.nutritionItem.consumedItem.totalIntake.amount" 
* dietRecords.protein -> "entry:NutritionIntakePAD.nutritionItem.consumedItem.totalIntake.amount"
* dietRecords.fats -> "entry:NutritionIntakePAD.nutritionItem.consumedItem.totalIntake.amount"
* dietRecords.carbohydrate -> "entry:NutritionIntakePAD.nutritionItem.consumedItem.totalIntake.amount"
* dietRecords.calories -> "entry:NutritionIntakePAD.nutritionItem.consumedItem.totalIntake.amount"

* dietRecords.intakeServings -> "entry:NutritionIntakePAD.nutritionItem.consumedItem.amount.value"
* dietRecords.foodName -> "entry:NutritionIntakePAD.nutritionItem.nutritionProduct.Reference(NutritionProduct)"
* dietRecords.foodImg -> "entry:NutritionIntakePAD.nutritionItem.nutritionProduct.Reference(NutritionProduct)"
* dietRecords.productBarcode -> "entry:NutritionIntakePAD.nutritionItem.nutritionProduct.Reference(NutritionProduct)"
* dietRecords.mealType -> "entry:NutritionIntakePAD.nutritionItem.nutritionProduct.Reference(NutritionProduct)"