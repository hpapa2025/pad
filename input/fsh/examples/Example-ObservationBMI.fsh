Instance:       obs-bmi
InstanceOf:     ObservationBMIPAD
Title:          "身體質量指數(BMI)"
Description:    "依據身體質量指數-Observation BMI PAD Profile呈現BMI之範例"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-08-30T14:20:00+08:00"
* code.coding[BMICode] = http://loinc.org#39156-5 "Body mass index (BMI) [Ratio]"
* valueQuantity.value = 22.9
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg/m2

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-bmi-pad.html\">身體質量指數-Observation BMI PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期/時間</b>：2025-08-30 14:20（UTC+08:00）</p>
    <p><b>BMI計算值</b>：22.9 kg/m2</p>
</div>"