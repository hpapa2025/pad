Instance:       goal-day-calories-intake
InstanceOf:     GoalCaloriesIntakePAD
Title:          "每日熱量攝取目標"
Description:    "依據每日熱量攝取目標-Goal Calories Intake PAD Profile呈現每日熱量攝取目標之範例"
Usage: #example
* lifecycleStatus = #active
* category = http://terminology.hl7.org/CodeSystem/goal-category#dietary
* description.coding = $SCT#860729008 "Estimated quantity of intake of energy in 24 hours"
* subject.reference = "Patient/pat-min"

* startDate = "2025-08-30"

* target.measure = $LOINC#75298-0 "Calorie intake 24 hour Estimated"

* target[0].detailQuantity.value = 50
* target[0].detailQuantity.unit = "kcal"
* target[0].detailQuantity.system = "http://unitsofmeasure.org"
* target[0].detailQuantity.code = #kcal

* target[0].dueDuration.value = 1
* target[0].dueDuration.unit = "天"
* target[0].dueDuration.system = "http://unitsofmeasure.org"
* target[0].dueDuration.code = #d

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Goal-calories-intake-pad.html\">每日熱量攝取目標-Goal Calories Intake PAD</a></p>
    </div>
    <p><b>目標狀態</b>：active</p>
    <p><b>目標說明</b>：設定每日攝取的熱量目標</p>
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>目標紀錄日期</b>：2025-08-30</p>
    <p><b>熱量攝取目標</b>：50 kcal</p>
    <p><b>目標期限</b>：1 天內</p>
</div>"