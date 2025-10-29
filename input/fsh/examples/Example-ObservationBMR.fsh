Instance:       obs-bmr
InstanceOf:     ObservationBMRPAD
Title:          "基礎代謝率(BMR)"
Description:    "依據基礎代謝率-Observation BMR PAD Profile呈現基礎代謝率之範例"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-08-30T14:20:00+08:00"
* code.coding = https://fhir.hpa.gov.tw/pad/CodeSystem/pad-metrics#bmr
* valueQuantity.value = 1675
* valueQuantity.unit = "kcal/d"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kcal/d

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-bmr-pad.html\">基礎代謝率-Observation BMR PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期/時間</b>：2025-08-30 14:20（UTC+08:00）</p>
    <p><b>BMR計算值</b>：1675 kcal/d</p>
</div>"