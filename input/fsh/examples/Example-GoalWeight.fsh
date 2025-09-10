Instance:       goal-weight
InstanceOf:     GoalWeightPAD
Title:          "體重目標"
Description:    "依據體重目標-Goal Weight PAD Profile呈現使用者的體重目標之範例"
Usage: #example
* lifecycleStatus = #active
* category = http://terminology.hl7.org/CodeSystem/goal-category#behavioral
* description.coding = $SCT#1078215008 "Target body weight"
* subject.reference = "Patient/pat-min"

* startDate = "2025-08-30"

* target.measure.coding = $LOINC#50064-5 "Ideal body weight"

* target[0].detailQuantity.value = 65
* target[0].detailQuantity.unit = "kg"
* target[0].detailQuantity.system = "http://unitsofmeasure.org"
* target[0].detailQuantity.code = #kg


* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Goal-weight-pad.html\">體重目標-Goal Weight PAD</a></p>
    </div>
    <p><b>目標狀態</b>：active</p>  
    <p><b>目標說明</b>：設定體重目標</p>
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>目標紀錄日期</b>：2025-08-30</p>
    <p><b>體重目標</b>：65 kg</p>
</div>"