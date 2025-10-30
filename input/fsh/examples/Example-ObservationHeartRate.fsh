Instance:       obs-heart-rate
InstanceOf:     ObservationHeartRatePAD
Title:          "心率"
Description:    "依據心率-Observation Heart Rate PAD Profile呈現心率之範例"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-10-30T14:20:00+08:00"
* code.coding[HeartRateCode] = http://loinc.org#8867-4 "Heart rate"
* valueQuantity.value = 72
* valueQuantity.unit = "下/min"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-heart-rate-pad.html\">心率-Observation Heart Rate PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期/時間</b>：2025-10-30 14:20（UTC+08:00）</p>
    <p><b>心率測量值</b>：72 下/min</p>
</div>"