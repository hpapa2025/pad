Mapping: DietRecord
Id: DietRecord
Title: "Mapping to DietRecordModel"
Source: DietRecordModel
Target: "https://www.hpa.gov.tw/pad/"
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
* dietRecords.sodium -> "entry:NutritionIntakePAD.nutritionItem.consumedItem.totalIntake.amount"
* dietRecords.calories -> "entry:NutritionIntakePAD.nutritionItem.consumedItem.totalIntake.amount"

// 食物
* food -> "(食物)"
* food.intakeServings -> "entry:NutritionIntakePAD.nutritionItem.consumedItem.amount.value"
* food.foodName -> "entry:NutritionIntakePAD.nutritionItem.nutritionProduct.Reference(NutritionProduct)"
* food.foodBrand -> "entry:NutritionIntakePAD.nutritionItem.nutritionProduct.Reference(NutritionProduct)"
* food.foodImg -> "entry:NutritionIntakePAD.nutritionItem.nutritionProduct.Reference(NutritionProduct)"
* food.productBarcode -> "entry:NutritionIntakePAD.nutritionItem.nutritionProduct.Reference(NutritionProduct)"
* food.foodGroupName -> "entry:NutritionIntakePAD.nutritionItem.nutritionProduct.Reference(NutritionProduct)"
* food.alcoholIntake -> "entry:NutritionIntakePAD.nutritionItem.nutritionProduct.Reference(NutritionProduct)"
* food.mealType -> "entry:NutritionIntakePAD.nutritionItem.nutritionProduct.Reference(NutritionProduct)"