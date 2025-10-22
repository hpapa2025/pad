Instance:       goal-weight-change
InstanceOf:     GoalWeightChangePAD
Title:          "每週增/減重目標"
Description:    "依據每週增/減重目標-Goal Weight Change PAD Profile呈現每週增/減重目標之範例"
Usage: #example
* lifecycleStatus = #active
* category = http://terminology.hl7.org/CodeSystem/goal-category#behavioral
* description.coding = $SCT#248346009 "Weight change"
* subject.reference = "Patient/pat-min"

* startDate = "2025-08-30"

* target.measure = $LOINC#90734-5 "Body weight change goal"

* target[0].detailQuantity.value = -0.5
* target[0].detailQuantity.unit = "kg/wk"
* target[0].detailQuantity.system = "http://unitsofmeasure.org"
* target[0].detailQuantity.code = #kg/wk

* target[0].dueDuration.value = 1
* target[0].dueDuration.unit = "週"
* target[0].dueDuration.system = "http://unitsofmeasure.org"
* target[0].dueDuration.code = #wk

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Goal-weight-change-pad.html\">每週增/減重目標-Goal Weight Change PAD</a></p>
    </div>
    <p><b>目標狀態</b>：active</p>  
    <p><b>目標說明</b>：設定每週的增減重目標</p>
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>目標紀錄日期</b>：2025-08-30</p>
    <p><b>增/減重目標</b>：-0.5 km/wk</p>
    <p><b>目標期限</b>：1 週內</p>
</div>"