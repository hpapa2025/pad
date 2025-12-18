Instance:       obs-sleep-hours
InstanceOf:     ObservationSleepHoursPAD
Title:          "睡眠時數"
Description:    "依據睡眠時數-Observation Sleep Hours PAD Profile呈現睡眠時數之範例"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity
* code.coding = http://loinc.org#93832-4 "Sleep duration"
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-10-30T23:30:00+08:00"
* valueQuantity.value = 8
* valueQuantity.unit = "hr"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #h

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-sleep-hours-pad.html\">睡眠時數-Observation Sleep Hours PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期</b>：2025-10-30</p>
    <p><b>睡眠時數</b>：8 hr</p>
</div>"