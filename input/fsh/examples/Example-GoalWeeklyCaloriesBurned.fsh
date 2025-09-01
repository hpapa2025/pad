Instance:       goal-week-caloriesBurned
InstanceOf:     GoalWeeklyCaloriesBurnedPAD
Title:          "每週卡路里消耗目標"
Description:    "依據每週卡路里消耗目標-Goal Weekly Calories Burned PAD Profile呈現使用者的每週卡路里消耗目標之範例。"
Usage: #example
* lifecycleStatus = #active
* category = http://terminology.hl7.org/CodeSystem/goal-category#behavioral
* description.coding = $SCT#258790008 "calorie"
* subject.reference = "Patient/pat-min"

* startDate = "2025-08-30"

* target.measure.coding = $LOINC#41980-4 "Calories burned in 1 week Calculated"

* target[0].detailQuantity.value = 1800
* target[0].detailQuantity.unit = "kcal"
* target[0].detailQuantity.system = "http://unitsofmeasure.org"
* target[0].detailQuantity.code = #kcal

* target[0].dueDuration.value = 1
* target[0].dueDuration.unit = "週"
* target[0].dueDuration.system = "http://unitsofmeasure.org"
* target[0].dueDuration.code = #wk

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Goal-weekly-calories-burned-pad.html\">每週卡路里消耗目標-Goal Weekly Calories Burned PAD</a></p>
    </div>
    <p><b>目標狀態</b>：active</p>  
    <p><b>目標說明</b>：設定每週的卡路里消耗目標</p>
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>目標紀錄日期</b>：2025-08-30</p>
    <p><b>卡路里消耗目標</b>：1800 kcal</p>
    <p><b>目標期限</b>：1 週內</p>
</div>"