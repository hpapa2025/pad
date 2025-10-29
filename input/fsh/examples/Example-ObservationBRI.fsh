Instance:       obs-bri
InstanceOf:     ObservationBRIPAD
Title:          "身體圓度指數(BRI)"
Description:    "依據身體圓度指數-Observation BRI PAD Profile呈現BRI之範例"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-08-30T23:30:00+08:00"
* code.coding = https://fhir.hpa.gov.tw/pad/CodeSystem/pad-metrics#bri
* valueQuantity.value = 3.09

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-bri-pad.html\">身體圓度指數-Observation BRI PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期</b>：2025-08-30</p>
    <p><b>BRI計算值</b>：3.09</p>
</div>"