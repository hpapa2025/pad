Instance:       obs-hip-line
InstanceOf:     ObservationHipLinePAD
Title:          "臀圍"
Description:    "依據臀圍-Observation Hip Line PAD Profile呈現臀圍之範例"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-08-30"
* code.coding = http://snomed.info/sct#284472007 "Hip circumference (observable entity)"
* valueQuantity.value = 95
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-hip-line-pad.html\">臀圍-Observation Hip Line PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期</b>：2025-08-30</p>
    <p><b>臀圍測量值</b>：95 cm</p>
</div>"