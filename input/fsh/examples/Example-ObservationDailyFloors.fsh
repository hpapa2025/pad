Instance:       obs-day-floors
InstanceOf:     ObservationDailyFloorsPAD
Title:          "每日爬升樓層"
Description:    "依據每日爬升樓層-Observation Daily Floors PAD Profile呈現使用者每日爬升樓層之範例"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity "Activity"
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-10-30T23:30:00+08:00"
* code.coding = http://snomed.info/sct#129016000 "Climbing stairs"
* valueQuantity.value = 6
* valueQuantity.unit = "樓/天"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/d

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-daily-floors-pad.html\">每日爬升樓層-Observation Daily Floors PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期</b>：2025-10-30</p>
    <p><b>步數</b>：6 樓/天</p>
</div>"