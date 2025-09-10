Profile:        BundleHealthSelfAssessment
Parent:         TWCoreBundle
Id:             Bundle-health-self-assessment-pad
Title:          "自填調查表-Bundle Health Self Assessment PAD"
Description:    "此自填調查表-Bundle Health Self Assessment PAD Profile說明本IG如何進一步定義資料交換基本單位(TW Core Bundle) Profile以呈現自填調查表之內容"
* type = #transaction
* entry 1..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
	patient 1..1 MS and
	observation-height 1..1 MS and
	observation-weight 1..1 MS and
	observation-waist 1..1 MS and
	observation-bmi 1..1 MS and
	observation-eating-out 1..1 MS and
	observation-dietary 1..1 MS and
	observation-occupation 1..1 MS and
	observation-sedentary 1..1 MS and
	observation-exercise-frequency 1..1 MS and
	observation-exercise-amount 1..1 MS and
	observation-smoking 1..1 MS and
	condition-cancer 1..1 MS and
	condition-cvd 1..1 MS and
	condition-dm 1..1 MS and
	condition-hbp 1..1 MS and
	condition-hld 1..1 MS and
	condition-cd 1..1 MS and
	familyMemberHistory  1..1 MS

* entry[patient] ^short = "使用者基本資訊"
* entry[patient].resource 1..1 MS
* entry[patient].resource only PatientPAD
* entry[patient].request 1..1
* entry[patient].request.method = #POST
	
* entry[observation-height] ^short = "身高"
* entry[observation-height].resource 1..1 MS
* entry[observation-height].resource only ObservationBodyHeightPAD
* entry[observation-height].request 1..1
* entry[observation-height].request.method = #POST
	
* entry[observation-weight] ^short = "體重"
* entry[observation-weight].resource 1..1 MS
* entry[observation-weight].resource only ObservationBodyWeightPAD
* entry[observation-weight].request 1..1
* entry[observation-weight].request.method = #POST
	
* entry[observation-waist] ^short = "腰圍"
* entry[observation-waist].resource 1..1 MS
* entry[observation-waist].resource only ObservationWaistPAD
* entry[observation-waist].request 1..1
* entry[observation-waist].request.method = #POST
	
* entry[observation-bmi] ^short = "BMI"
* entry[observation-bmi].resource 1..1 MS
* entry[observation-bmi].resource only ObservationBMIPAD
* entry[observation-bmi].request 1..1
* entry[observation-bmi].request.method = #POST
	
* entry[observation-eating-out] ^short = "每週外食頻率"
* entry[observation-eating-out].resource 1..1 MS
* entry[observation-eating-out].resource only ObservationEatingOutFrequencyPAD
* entry[observation-eating-out].request 1..1
* entry[observation-eating-out].request.method = #POST
	
* entry[observation-dietary] ^short = "飲食偏好"
* entry[observation-dietary].resource 1..1 MS
* entry[observation-dietary].resource only ObservationDietaryPreferencesPAD
* entry[observation-dietary].request 1..1
* entry[observation-dietary].request.method = #POST
	
* entry[observation-occupation] ^short = "職業"
* entry[observation-occupation].resource 1..1 MS
* entry[observation-occupation].resource only ObservationOccupationPAD
* entry[observation-occupation].request 1..1
* entry[observation-occupation].request.method = #POST
	
* entry[observation-sedentary] ^short = "每日靜態/久坐時間"
* entry[observation-sedentary].resource 1..1 MS
* entry[observation-sedentary].resource only ObservationSedentaryTimePAD
* entry[observation-sedentary].request 1..1
* entry[observation-sedentary].request.method = #POST
	
* entry[observation-exercise-frequency] ^short = "運動頻率"
* entry[observation-exercise-frequency].resource 1..1 MS
* entry[observation-exercise-frequency].resource only ObservationExerciseFrequencyPAD
* entry[observation-exercise-frequency].request 1..1
* entry[observation-exercise-frequency].request.method = #POST
	
* entry[observation-exercise-amount] ^short = "中高強度活動累計"
* entry[observation-exercise-amount].resource 1..1 MS
* entry[observation-exercise-amount].resource only ObservationExerciseAmountPAD
* entry[observation-exercise-amount].request 1..1
* entry[observation-exercise-amount].request.method = #POST
	
* entry[observation-smoking] ^short = "吸菸習慣"
* entry[observation-smoking].resource 1..1 MS
* entry[observation-smoking].resource only ObservationSmokingStatusPAD
* entry[observation-smoking].request 1..1
* entry[observation-smoking].request.method = #POST
	
* entry[condition-cancer] ^short = "癌症"
* entry[condition-cancer].resource 1..1 MS
* entry[condition-cancer].resource only ConditionCancerPAD
* entry[condition-cancer].request 1..1
* entry[condition-cancer].request.method = #POST
	
* entry[condition-cvd] ^short = "心血管疾病"
* entry[condition-cvd].resource 1..1 MS
* entry[condition-cvd].resource only ConditionCardiovascularDiseasePAD
* entry[condition-cvd].request 1..1
* entry[condition-cvd].request.method = #POST
	
* entry[condition-dm] ^short = "糖尿病"
* entry[condition-dm].resource 1..1 MS
* entry[condition-dm].resource only ConditionDiabetesMellitusPAD
* entry[condition-dm].request 1..1
* entry[condition-dm].request.method = #POST
	
* entry[condition-hbp] ^short = "高血壓"
* entry[condition-hbp].resource 1..1 MS
* entry[condition-hbp].resource only ConditionHighBloodPressurePAD
* entry[condition-hbp].request 1..1
* entry[condition-hbp].request.method = #POST
	
* entry[condition-hld] ^short = "高血脂"
* entry[condition-hld].resource 1..1 MS
* entry[condition-hld].resource only ConditionHyperlipidemiaPAD
* entry[condition-hld].request 1..1
* entry[condition-hld].request.method = #POST
	
* entry[condition-cd] ^short = "其他慢性病"
* entry[condition-cd].resource 1..1 MS
* entry[condition-cd].resource only ConditionChronicDiseasesPAD
* entry[condition-cd].request 1..1
* entry[condition-cd].request.method = #POST
	
* entry[familyMemberHistory] ^short = "慢性疾病家族史"
* entry[familyMemberHistory].resource 1..1 MS
* entry[familyMemberHistory].resource only FamilyMemberHistoryPAD
* entry[familyMemberHistory].request 1..1
* entry[familyMemberHistory].request.method = #POST