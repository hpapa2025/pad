Instance:       obs-water-intake
InstanceOf:     ObservationWaterIntakePAD
Title:          "每次攝取水量"
Description:    "依據每次攝取水量-Observation Water Intake PAD Profile呈現使用者的每次攝取水量之範例。"
Usage: #example
* status = #final
* code.coding = http://snomed.info/sct#226354008 "Water intake"
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-08-30T14:20:00+08:00"
* valueQuantity.value = 250
* valueQuantity.unit = "mL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mL

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-water-intake-pad.html\">每次攝取水量-Observation Water Intake PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期/時間</b>：2025-08-30 14:20（UTC+08:00）</p>
    <p><b>每次攝取水量</b>：250 mL</p>
</div>"