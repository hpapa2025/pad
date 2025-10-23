Instance:       obs-exercise-amount
InstanceOf:     ObservationExerciseAmountPAD
Title:          "中高強度活動累計"
Description:    "依據中高強度活動累計-Observation Exercise Amount PAD Profile呈現中高強度活動累計之範例"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity
* code.coding = https://fhir.hpa.gov.tw/pad/CodeSystem/pad-metrics#exerciseAmount
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-08-30T14:20:00+08:00"
* valueQuantity.value = 150
* valueQuantity.unit = "min"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #min

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-exercise-amount-pad.html\">中高強度活動累計-Observation Exercise Amount PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期/時間</b>：2025-08-30 14:20（UTC+08:00）</p>
    <p><b>中高強度活動累計</b>：150 min</p>
</div>"