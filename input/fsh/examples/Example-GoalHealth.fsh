Instance:       goal-health
InstanceOf:     GoalHealthPAD
Title:          "健康目標"
Description:    "依據健康目標-Goal Health PAD Profile呈現使用者使用全齡健康平台目標之範例"
Usage: #example
* lifecycleStatus = #active
* category = http://terminology.hl7.org/CodeSystem/goal-category#behavioral
* description.coding = $SCT#703039001 "Health objective"
* subject.reference = "Patient/pat-min"

* startDate = "2025-08-30"

* target.measure = $LOINC#87528-6 "Personal health goal"

* target[0].detailCodeableConcept.coding = https://fhir.hpa.gov.tw/pad/CodeSystem/health-goals#balancedDiet "輔助達成均衡飲食"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Goal-health-pad.html\">健康目標-Goal Health PAD</a></p>
    </div>
    <p><b>目標狀態</b>：active</p>  
    <p><b>目標說明</b>：設定使用者使用全齡健康平台的健康目標</p>
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>使用全齡健康平台之健康目標</b>：輔助達成均衡飲食</p>
</div>"