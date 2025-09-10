Instance:       goal-week-exerciseAmount
InstanceOf:     GoalWeeklyExerciseAmountPAD
Title:          "每週運動量目標"
Description:    "依據每週運動量目標-Goal Weekly Exercise Amount PAD Profile呈現使用者的每週運動量目標之範例"
Usage: #example
* lifecycleStatus = #active
* category = http://terminology.hl7.org/CodeSystem/goal-category#behavioral
* description.coding = $SCT#309604004 "During exercise"
* subject.reference = "Patient/pat-min"

* startDate = "2025-08-30"

* target.measure.coding = $LOINC#74009-2 "Exercise duration/Exercise frequency"

* target[0].detailQuantity.value = 210
* target[0].detailQuantity.unit = "min"
* target[0].detailQuantity.system = "http://unitsofmeasure.org"
* target[0].detailQuantity.code = #min

* target[0].dueDuration.value = 1
* target[0].dueDuration.unit = "週"
* target[0].dueDuration.system = "http://unitsofmeasure.org"
* target[0].dueDuration.code = #wk

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Goal-weekly-exercise-amount-pad.html\">每週運動量目標-Goal Weekly Exercise Amount PAD</a></p>
    </div>
    <p><b>目標狀態</b>：active</p>  
    <p><b>目標說明</b>：設定每週的運動量目標</p>
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>目標紀錄日期</b>：2025-08-30</p>
    <p><b>運動量目標</b>：210 min</p>
    <p><b>目標期限</b>：1 週內</p>
</div>"