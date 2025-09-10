Instance:       fam-hx
InstanceOf:     FamilyMemberHistoryPAD
Title:          "慢性疾病家族史"
Description:    "依據慢性疾病家族史-FamilyMemberHistory PADProfile呈現其慢性疾病家族史之範例"
Usage: #example
* status = #completed
* patient.reference = "Patient/pat-min"
* relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* relationship.coding.code = #FTH
* relationship.coding.display = "father"
* condition[hbp].code.coding = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw#I11.9

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-FamilyMemberHistory-pad.html\">慢性疾病家族史-FamilyMemberHistory PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>患有慢性疾病之家人稱謂</b>：父親</p>
    <p><b>使用者之慢性疾病家族史</b>：高血壓性心臟病，無心臟衰竭</p>
</div>"