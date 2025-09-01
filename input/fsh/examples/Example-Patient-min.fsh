Instance:    pat-min
InstanceOf:  PatientPAD
Title:       "使用者資訊"
Description: "依據使用者資訊-Patient PAD Profile呈現使用者基本資料之範例"
Usage: #example

* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[idCardNumber].type.coding.code = #NNxxx
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "A123456789"

* name[usual].use = #usual
* name[usual].text = "王大明"

* gender = #male
* birthDate = "2001-01-01"
* address.postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3] = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/postal-code3-tw#103

* extension[age].url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/person-age"
* extension[age].valueAge.value = 35
* extension[age].valueAge.system = "http://unitsofmeasure.org"
* extension[age].valueAge.code = #a

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Patient-pad.html\">使用者資訊-Patient PAD</a></p>
    </div>
    <p><b>姓名</b>：王大明</p>
    <p><b>使用者性別</b>：male</p>
    <p><b>出生日期</b>：2001-01-01</p>
    <p><b>年齡</b>：35 歲</p>
    <p><b>居住縣市</b>：台北市</p>
</div>"