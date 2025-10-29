Instance:       obs-tg
InstanceOf:     ObservationTriglyceridesPAD
Title:          "三酸甘油脂"
Description:    "依據三酸甘油脂-Observation Triglycerides PAD Profile呈現三酸甘油脂之範例"
Usage: #example
* status = #final
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* category[twcore] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code.coding[LOINCObservationCode] = http://loinc.org#2571-8 "Triglyceride [Mass/volume] in Serum or Plasma"
* effectiveDateTime = "2025-08-30T23:30:00+08:00"
* valueQuantity.value = 110
* valueQuantity.unit = "mg/dL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mg/dL
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-tg-pad.html\">三酸甘油脂-Observation Triglycerides PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期</b>：2025-08-30</p>
    <p><b>三酸甘油脂測量值</b>：110 mg/dL</p>
</div>"