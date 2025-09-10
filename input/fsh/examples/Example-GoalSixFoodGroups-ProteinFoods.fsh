Instance:       goal-six-food-groups-proteinFoods
InstanceOf:     GoalSixFoodGroupsPAD
Title:          "每日豆魚蛋肉類食物攝取份數目標"
Description:    "依據六大類食物飲食目標-Goal Six Food Groups PAD Profile呈現使用者的每日豆魚蛋肉類食物攝取目標之範例"
Usage: #example
* lifecycleStatus = #active
* category.coding = http://terminology.hl7.org/CodeSystem/goal-category#dietary
* description.coding = $SCT#789331001 "Estimated intake of protein and/or protein derivative food servings in 24 hours"
* subject.reference = "Patient/pat-min"

* startDate = "2025-08-30"

* target.measure.coding = $LOINC#80464-1 "Protein servings 24 hour Measured"

* target[0].detailQuantity.value = 7
* target[0].detailQuantity.unit = "份/天"
* target[0].detailQuantity.system = "http://unitsofmeasure.org"
* target[0].detailQuantity.code = #/d

* target[0].dueDuration.value = 1
* target[0].dueDuration.unit = "day"
* target[0].dueDuration.system = "http://unitsofmeasure.org"
* target[0].dueDuration.code = #d

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Goal-six-food-groups-pad.html\">每日六大類食物攝取份數目標-Goal Six Food Groups PAD</a></p>
    </div>
    <p><b>目標狀態</b>：active</p>  
    <p><b>目標說明</b>：設定每日攝取的豆魚蛋肉類食物</p>
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>目標紀錄日期</b>：2025-08-30</p>
    <p><b>豆魚蛋肉類目標</b>：7 份/天</p>
    <p><b>目標期限</b>：1 天內</p>
</div>"