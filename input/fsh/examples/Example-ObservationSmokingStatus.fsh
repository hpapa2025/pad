Instance:       obs-smokingStatus
InstanceOf:     ObservationSmokingStatusPAD
Title:          "吸菸習慣"
Description:    "依據吸菸習慣-Observation Smoking Status PAD Profile呈現吸菸習慣之範例"
Usage: #example
* status = #final
* category[twcore] = http://terminology.hl7.org/CodeSystem/observation-category#social-history "Social History"
* code.coding = http://loinc.org#72166-2 "Tobacco smoking status"
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-10-30T14:20:00+08:00"
* valueCodeableConcept = http://snomed.info/sct#8392000

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-smokingStatus-pad.html\">吸菸習慣-Observation Smoking Status PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期/時間</b>：2025-10-30 14:20（UTC+08:00）</p>
    <p><b>是否有吸菸習慣</b>：未抽菸</p>
</div>"