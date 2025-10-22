Instance:       goal-day-floors
InstanceOf:     GoalDailyFloorsPAD
Title:          "每日爬升樓層目標"
Description:    "依據每日爬升樓層目標-Goal Daily Floors PAD Profile呈現每日爬升樓層目標之範例"
Usage: #example
* lifecycleStatus = #active
* category = http://terminology.hl7.org/CodeSystem/goal-category#behavioral
* description.coding = $SCT#129016000 "Climbing stairs"
* subject.reference = "Patient/pat-min"

* startDate = "2025-08-30"

* target.measure = $SCT#129016000 "Climbing stairs"

* target[0].detailQuantity.value = 6
* target[0].detailQuantity.unit = "樓"
* target[0].dueDuration.system = "http://unitsofmeasure.org"
* target[0].detailQuantity.unit = "/d"

* target[0].dueDuration.value = 1
* target[0].dueDuration.unit = "天"
* target[0].dueDuration.system = "http://unitsofmeasure.org"
* target[0].dueDuration.code = #d

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Goal-daily-floors-pad.html\">每日爬升樓層目標-Goal Daily Floors PAD</a></p>
    </div>
    <p><b>目標狀態</b>：active</p>  
    <p><b>目標說明</b>：設定每日的爬升樓層目標</p>
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>目標紀錄日期</b>：2025-08-30</p>
    <p><b>爬升樓層目標</b>：6 樓/天</p>
    <p><b>目標期限</b>：1 天內</p>
</div>"