Instance:       goal-day-distance
InstanceOf:     GoalDailyDistancePAD
Title:          "每日運動距離目標"
Description:    "依據每日運動距離目標-Goal Daily Distance PAD Profile呈現每日運動距離目標之範例"
Usage: #example
* lifecycleStatus = #active
* category = http://terminology.hl7.org/CodeSystem/goal-category#behavioral
* description.coding = $SCT#246132006 "Distance"
* subject.reference = "Patient/pat-min"

* startDate = "2025-08-30"

* target.measure = $LOINC#93849-8 "Exercise distance in 24 hour"

* target[0].detailQuantity.value = 5
* target[0].detailQuantity.unit = "km"
* target[0].detailQuantity.system = "http://unitsofmeasure.org"
* target[0].detailQuantity.code = #km

* target[0].dueDuration.value = 1
* target[0].dueDuration.unit = "天"
* target[0].dueDuration.system = "http://unitsofmeasure.org"
* target[0].dueDuration.code = #d

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Goal-daily-distance-pad.html\">每日運動距離目標-Goal Daily Distance PAD</a></p>
    </div>
    <p><b>目標狀態</b>：active</p>  
    <p><b>目標說明</b>：設定每日的運動距離目標</p>
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>目標紀錄日期</b>：2025-08-30</p>
    <p><b>運動距離目標</b>：5 km</p>
    <p><b>目標期限</b>：1 天內</p>
</div>"