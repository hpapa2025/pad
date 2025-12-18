Instance:       obs-day-distance
InstanceOf:     ObservationDailyDistancePAD
Title:          "每日運動距離"
Description:    "依據每日運動距離-Observation Daily Distance PAD Profile呈現使用者每日運動距離之範例"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity "Activity"
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-10-30T23:30:00+08:00"
* code.coding = http://snomed.info/sct#246132006 "Distance"
* valueQuantity.value = 5
* valueQuantity.unit = "km"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #km

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-daily-distance-pad.html\">每日運動距離-Observation Daily Distance PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期</b>：2025-10-30</p>
    <p><b>步數</b>：5 km</p>
</div>"