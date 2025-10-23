Instance:       goal-weight-loss-intensity
InstanceOf:     GoalWeightLossIntensityPAD
Title:          "減重強度目標"
Description:    "依據減重強度目標-Goal Weight Loss Intensity PAD Profile呈現減重強度目標範例"
Usage: #example
* lifecycleStatus = #active
* category = http://terminology.hl7.org/CodeSystem/goal-category#behavioral
* description.coding = $SCT#248114003 "Actions to lose weight"
* subject.reference = "Patient/pat-min"

* startDate = "2025-08-30"

* target.measure = $SCT#248114003 "Actions to lose weight"

* target[0].detailCodeableConcept.coding = https://fhir.hpa.gov.tw/pad/CodeSystem/weight-loss-intensity#low "低"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Goal-weight-loss-intensity-pad.html\">減重強度目標-Goal Weight Loss Intensity PAD</a></p>
    </div>
    <p><b>目標狀態</b>：active</p>  
    <p><b>目標說明</b>：設定使用者的減重強度目標</p>
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>目標紀錄日期</b>：2025-08-30</p>
    <p><b>目標選擇</b>：低</p>
</div>"