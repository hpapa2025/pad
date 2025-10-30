Instance:       obs-body-height
InstanceOf:     ObservationBodyHeightPAD
Title:          "身高"
Description:    "依據身高-Observation Body Height PAD Profile呈現身高之範例"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-10-30T14:20:00+08:00"
* code.coding[BodyHeightCode] = http://loinc.org#8302-2 "Body height"
* valueQuantity.value = 175
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-body-height-pad.html\">身高-Observation Body Height PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期/時間</b>：2025-10-30 14:20（UTC+08:00）</p>
    <p><b>身高測量值</b>：175 cm</p>
</div>"