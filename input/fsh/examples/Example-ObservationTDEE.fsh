Instance:       obs-tdee
InstanceOf:     ObservationTDEEPAD
Title:          "每日總消耗熱量(TDEE)"
Description:    "依據每日總消耗熱量-Observation TDEE PAD Profile呈現TDEE之範例"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code.coding = http://loinc.org#41979-6 "Calories burned in 24 hour Calculated"
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-08-30"
* valueQuantity.value = 2538
* valueQuantity.unit = "kcal/d"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kcal/d

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-bmi-pad.html\">身體質量指數-Observation BMI PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期</b>：2025-08-30</p>
    <p><b>BMI計算值</b>：2538 kcal/d</p>
</div>"