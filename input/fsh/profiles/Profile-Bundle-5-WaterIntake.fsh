Profile:        BundleWaterIntake
Parent:         TWCoreBundle
Id:             Bundle-water-intake-pad
Title:          "飲水紀錄-Bundle Water Intake PAD"
Description:    "此飲水紀錄-Bundle Water Intake PAD Profile說明本IG如何進一步定義資料交換基本單位(TW Core Bundle) Profile以呈現飲水紀錄之內容"
* type = #transaction
* entry 1..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
	observation-water-intake 1..* MS

* entry[observation-water-intake] ^short = "飲水紀錄"
* entry[observation-water-intake].resource 1..1 MS
* entry[observation-water-intake].resource only ObservationWaterIntakePAD
* entry[observation-water-intake].request 1..1
* entry[observation-water-intake].request.method = #POST