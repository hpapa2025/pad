Profile:        PatientPAD
Parent:         TWCorePatient
Id:             Patient-pad
Title:          "使用者資訊-Patient PAD"
Description:    "此使用者資訊-Patient PAD Profile說明PAD IG如何進一步定義臺灣核心-使用者(TW Core Patient) Profile以呈現身體活動與飲食之使用者基本資料"
* extension[age] 1..1 MS
* name 1..1
* name[official] 0..0
* name[temp] 0..0
* name[anonymous] 0..0
* name[usual] 1..1
* name[usual].text 1..1
* address 1..1
* address.postalCode 1..
* address.postalCode.extension[PostalCode] 1..
* address.postalCode.extension[PostalCode].valueCodeableConcept 1..
* address.postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3] 1..1

* name obeys pat-name
* name[usual] ^short = "姓名"
* gender ^short = "使用者性別。male:男性 ｜ female:女性 ｜ other:其他 ｜ unknown:未知"
* birthDate ^short = "出生日期，YYYY-MM-DD，西元年月日。"
* address.postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].code ^short = "居住縣市"


Invariant:   pat-name
Description: "使用者姓名有誤，超過12字"
Expression:  "text.length() <= 12"
Severity:    #error