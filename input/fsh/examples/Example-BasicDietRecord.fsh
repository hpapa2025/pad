Instance:     bas-diet-record
InstanceOf:   BasicDietRecordPAD
Title:        "飲食紀錄"
Description:  "依據飲食紀錄-Basic Diet Record PAD Profile呈現飲食紀錄之範例"
Usage: #example
* code = PADMetricsCodes#dietRecorde
* subject.reference = "Patient/pat-min"

* extension[recorded].url = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/extension-nutritionintake-recorded"
* extension[recorded].valueDateTime = "2025-10-20T08:30:00+08:00"

* extension[mealType].url = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/extension-meal-type"
* extension[mealType].valueCodeableConcept = https://hpacorepa.hpa.gov.tw/pad/CodeSystem/pad-meal-type#breakfast

* extension[name].url = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/extension-nutritionproduct-code"
* extension[name].valueCodeableConcept = http://snomed.info/sct#226793001 "Soya milk"
* extension[name].valueCodeableConcept.text = "豆漿"

* extension[intake].url = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/extension-nutritionintake-amount"
* extension[intake].valueQuantity.value = 240
* extension[intake].valueQuantity.unit = "ml"
* extension[intake].valueQuantity.system = "http://unitsofmeasure.org"
* extension[intake].valueQuantity.code = #ml

* extension[calories].url = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/extension-nutritionproduct-energy"
* extension[calories].valueQuantity.value = 90
* extension[calories].valueQuantity.unit = "kcal"
* extension[calories].valueQuantity.system = "http://unitsofmeasure.org"
* extension[calories].valueQuantity.code = #kcal

* extension[nutrient][0].url = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/extension-nutritionproduct-nutrient"
* extension[nutrient][=].extension[proteinFoods].url = "proteinFoods"
* extension[nutrient][=].extension[proteinFoods].valueInteger = 1
* extension[nutrient][=].extension[protein].url = "protein"
* extension[nutrient][=].extension[protein].valueQuantity.value = 6
* extension[nutrient][=].extension[protein].valueQuantity.code = #g
* extension[nutrient][=].extension[protein].valueQuantity.unit = "g"
* extension[nutrient][=].extension[protein].valueQuantity.system = "http://unitsofmeasure.org"
* extension[nutrient][=].extension[fats].url = "fats"
* extension[nutrient][=].extension[fats].valueQuantity.value = 3
* extension[nutrient][=].extension[fats].valueQuantity.code = #g
* extension[nutrient][=].extension[fats].valueQuantity.unit = "g"
* extension[nutrient][=].extension[fats].valueQuantity.system = "http://unitsofmeasure.org"
* extension[nutrient][=].extension[carbohydrate].url = "carbohydrate"
* extension[nutrient][=].extension[carbohydrate].valueQuantity.value = 4
* extension[nutrient][=].extension[carbohydrate].valueQuantity.code = #g
* extension[nutrient][=].extension[carbohydrate].valueQuantity.unit = "g"
* extension[nutrient][=].extension[carbohydrate].valueQuantity.system = "http://unitsofmeasure.org"

* extension[img].url = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/extension-nutritionproduct-characteristic"
* extension[img].valueAttachment.url = "https://storage.google.com/h2u/2025/09/01/xxxxx.jpg"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Basic-diet-record-pad.html\">飲食紀錄-Basic Diet Record PAD</a></p>
    </div>
    <p><b>code</b>：<span title=\"Codes:{https://hpacorepa.hpa.gov.tw/pad/CodeSystem/pad-metrics dietRecorde}\">飲食紀錄</span></p>
    <p><b>餐次</b>：<span title=\"Codes:{https://hpacorepa.hpa.gov.tw/pad/CodeSystem/pad-meal-type breakfast}\">早餐</span>
    </p>
    <p><b>食物名稱</b>：<span title=\"Codes:{http://snomed.info/sct 226793001}\">豆漿</span></p>
    <p><b>攝取份數</b>：240 ml<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM codeml = 'ml')</span></p>
    <p><b>總熱量攝取</b>：90 kcal<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM codekcal = 'kcal')</span></p>
    <blockquote>
        <p><b>六大類食物攝取份數與營養素含量</b></p>
        <ul>
            <li>豆魚肉蛋類：1份</li>
            <li>蛋白質：6 g</li>
            <li>脂肪：3 g</li>
            <li>碳水化合物：4 g</li>
        </ul>
    </blockquote>
    <p><b>記錄人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>記錄時間</b>：2025-10-20</p>
</div>"