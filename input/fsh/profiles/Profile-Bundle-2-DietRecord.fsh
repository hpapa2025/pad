Profile:        BundleDietRecord
Parent:         TWCoreBundle
Id:             Bundle-diet-record-pad
Title:          "情境2-飲食紀錄-Bundle Diet Record PAD"
Description:    "此飲食紀錄-Bundle Diet Record PAD Profile說明本IG如何進一步定義資料交換基本單位(TW Core Bundle) Profile以呈現飲食紀錄之內容"
* type = #transaction
* entry 0..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
	basic-diet-record 1..* MS and
	patient 0..1 MS

* entry[patient] ^short = "使用者基本資訊"
* entry[patient].resource 1..1 MS
* entry[patient].resource only PatientPAD

* entry[basic-diet-record] ^short = "飲食紀錄"
* entry[basic-diet-record].resource 1..1 MS
* entry[basic-diet-record].resource only BasicDietRecordPAD
* entry[basic-diet-record].request 1..1
* entry[basic-diet-record].request.method = #POST