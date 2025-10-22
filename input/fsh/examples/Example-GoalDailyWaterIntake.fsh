Instance:       goal-day-water-intake
InstanceOf:     GoalDailyWaterIntakePAD
Title:          "每日飲水量目標"
Description:    "依據每日飲水量目標-Goal Water Intake PAD Profile呈現每日飲水量目標之範例"
Usage: #example
* lifecycleStatus = #active
* category.coding = http://terminology.hl7.org/CodeSystem/goal-category#dietary
* description.coding = $SCT#226278001 "Water requirement"
* subject.reference = "Patient/pat-min"

* startDate = "2025-08-30"

* target.measure = $LOINC#105999-7 "Drinks of water per day"

* target[0].detailQuantity.value = 2100
* target[0].detailQuantity.unit = "ml"
* target[0].detailQuantity.system = "http://unitsofmeasure.org"
* target[0].detailQuantity.code = #mL

* target[0].dueDuration.value = 1
* target[0].dueDuration.unit = "day"
* target[0].dueDuration.system = "http://unitsofmeasure.org"
* target[0].dueDuration.code = #d

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Goal-daily-water-intake-pad.html\">每日飲水量目標-Goal Daily Water Intake PAD</a></p>
    </div>
    <p><b>目標狀態</b>：active</p>  
    <p><b>目標說明</b>：設定每日攝取的水量</p>
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>目標紀錄日期</b>：2025-08-30</p>
    <p><b>飲水量目標</b>：2100 ml</p>
    <p><b>目標期限</b>：1 天內</p>
</div>"