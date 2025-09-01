Instance:     con-cd
InstanceOf:   ConditionChronicDiseasesPAD
Title:        "其他慢性病"
Description:  "依據其他慢性病-Condition Chronic Disease PAD Profile呈現其他慢性病之範例"
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* code.coding[icd10-cm-2023] = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw#A18.7
* subject.reference = "Patient/pat-min"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Condition-cd-pad.html\">其他慢性病-Condition Chronic Disease PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>使用者之其他慢性病名稱</b>：腎上腺結核</p>
</div>"