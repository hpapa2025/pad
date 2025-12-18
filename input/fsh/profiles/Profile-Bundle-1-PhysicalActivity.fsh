Profile:        BundlePhysicalActivity
Parent:         TWCoreBundle
Id:             Bundle-physical-activity-pad
Title:          "情境1-運動紀錄-Bundle Physical Activity PAD"
Description:    "此運動紀錄-Bundle Physical Activity PAD Profile說明本IG如何進一步定義資料交換基本單位(TW Core Bundle) Profile以呈現運動紀錄之內容"
* type = #transaction
* entry 0..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
	observation-steps 0..1 MS and
	observation-floors 0..1 MS and
	observation-distance 0..1 MS and
	observation-heart-rate 0..* MS and
	observation-sleep-hours 0..1 MS and
	observation-stress 0..* MS and
	observation-stand 0..1 MS and
	observation-exercise 0..* MS and
	patient 0..1 MS

* entry[patient] ^short = "使用者基本資訊"
* entry[patient].resource 1..1 MS
* entry[patient].resource only PatientPAD
	
* entry[observation-steps] ^short = "每日步數"
* entry[observation-steps].resource 1..1 MS
* entry[observation-steps].resource only ObservationDailyStepsPAD
* entry[observation-steps].request 1..1
* entry[observation-steps].request.method ^short = "POST | PUT"
	
* entry[observation-floors] ^short = "每日爬升樓層"
* entry[observation-floors].resource 1..1 MS
* entry[observation-floors].resource only ObservationDailyFloorsPAD
* entry[observation-floors].request 1..1
* entry[observation-floors].request.method ^short = "POST | PUT"
	
* entry[observation-distance] ^short = "每日運動距離"
* entry[observation-distance].resource 1..1 MS
* entry[observation-distance].resource only ObservationDailyDistancePAD
* entry[observation-distance].request 1..1
* entry[observation-distance].request.method ^short = "POST | PUT"
	
* entry[observation-heart-rate] ^short = "心率"
* entry[observation-heart-rate].resource 1..1 MS
* entry[observation-heart-rate].resource only ObservationHeartRatePAD
* entry[observation-heart-rate].request 1..1
* entry[observation-heart-rate].request.method ^short = "POST | PUT"
	
* entry[observation-sleep-hours] ^short = "睡眠時數"
* entry[observation-sleep-hours].resource 1..1 MS
* entry[observation-sleep-hours].resource only ObservationSleepHoursPAD
* entry[observation-sleep-hours].request 1..1
* entry[observation-sleep-hours].request.method ^short = "POST | PUT"
	
* entry[observation-stress] ^short = "壓力指數"
* entry[observation-stress].resource 1..1 MS
* entry[observation-stress].resource only ObservationStressIndexPAD
* entry[observation-stress].request 1..1
* entry[observation-stress].request.method ^short = "POST | PUT"
	
* entry[observation-stand] ^short = "站立時數"
* entry[observation-stand].resource 1..1 MS
* entry[observation-stand].resource only ObservationStandHoursPAD
* entry[observation-stand].request 1..1
* entry[observation-stand].request.method ^short = "POST | PUT"
	
* entry[observation-exercise] ^short = "單次運動紀錄"
* entry[observation-exercise].resource 1..1 MS
* entry[observation-exercise].resource only ObservationExercisePAD
* entry[observation-exercise].request 1..1
* entry[observation-exercise].request.method ^short = "POST | PUT"