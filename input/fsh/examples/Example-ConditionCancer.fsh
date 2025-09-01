Instance:     con-cancer
InstanceOf:   ConditionCancerPAD
Title:        "癌症"
Description:  "依據癌症-Condition Cancer PAD Profile呈現癌症之範例"
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* code.coding[icd10-cm-2023] = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw#C02.8
* subject.reference = "Patient/pat-min"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Condition-cancer-pad.html\">癌症-Condition Cancer PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>使用者之癌症名稱</b>：舌重疊部位之惡性腫瘤</p>
</div>"