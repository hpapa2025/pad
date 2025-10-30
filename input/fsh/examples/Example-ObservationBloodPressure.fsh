Instance:       obs-bloodPressure
InstanceOf:     ObservationBloodPressurePAD
Title:          "血壓(收縮壓+舒張壓)"
Description:    "依據血壓(收縮壓+舒張壓)-Observation Blood Pressure PAD Profile呈現收縮壓及舒張壓之範例"
Usage: #example
* status = #final
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-10-30T23:30:00+08:00"
* code.coding[BPCode] = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* component[SystolicBP].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[SystolicBP].valueQuantity = 118 'mm[Hg]' "mmHg"
* component[DiastolicBP].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity = 75 'mm[Hg]' "mmHg"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-bloodPressure-pad.html\">血壓(收縮壓+舒張壓)-Observation Blood Pressure PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期</b>：2025-10-30</p>
    <p><b>收縮壓測量值</b>：118 mm/Hg</p>
    <p><b>舒張壓測量值</b>：75 mm/Hg</p>
</div>"