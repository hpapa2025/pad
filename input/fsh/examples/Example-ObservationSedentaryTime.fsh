Instance:       obs-sedentary-time
InstanceOf:     ObservationSedentaryTimePAD
Title:          "每日靜態/久坐時間"
Description:    "依據每日靜態/久坐時間-Observation Sedentary Time PAD Profile呈現每日靜態/久坐時間之範例"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity
* code.coding = https://fhir.hpa.gov.tw/pad/CodeSystem/pad-metrics#sedentaryTime
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-08-30"
* valueInteger = 3

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-sedentary-time-pad.html\">每日靜態/久坐時間-Observation Sedentary Time PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期</b>：2025-08-30</p>
    <p><b>每日靜態/久坐時間</b>：3 hr</p>
</div>"