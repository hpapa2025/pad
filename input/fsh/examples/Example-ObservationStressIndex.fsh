Instance:       obs-stress-index
InstanceOf:     ObservationStressIndexPAD
Title:          "壓力指數"
Description:    "依據壓力指數-Observation Stress Index PAD Profile呈現壓力指數之範例"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity "Activity"
* code.coding = http://loinc.org#93038-8
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-10-30T23:30:00+08:00"
* valueInteger = 2

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-stress-index-pad.html\">壓力指數-Observation Stress Index PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期</b>：2025-10-30</p>
    <p><b>壓力指數</b>：2</p>
</div>"