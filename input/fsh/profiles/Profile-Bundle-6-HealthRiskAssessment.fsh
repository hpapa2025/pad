Profile:        BundleHealthRiskAssessment
Parent:         TWCoreBundle
Id:             Bundle-health-risk-assessment-pad
Title:          "健康風險評估-Bundle Health Risk Assessment PAD"
Description:    "此健康風險評估-Bundle Health Risk Assessment PAD Profile說明本IG如何進一步定義資料交換基本單位(TW Core Bundle) Profile以呈現健康風險評估之內容"
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
	observation-blood-pressure 1..1 MS and
	observation-chol 1..1 MS and
	observation-tg 1..1 MS and
	observation-fg 1..1 MS and
	observation-smoking 1..1 MS and
	condition-dm 1..1 MS and
	condition-hbp 1..1 MS

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

* entry[observation-blood-pressure] ^short = "血壓(收縮壓+舒張壓)"
* entry[observation-blood-pressure].resource 1..1 MS
* entry[observation-blood-pressure].resource only ObservationBloodPressurePAD
* entry[observation-blood-pressure].request 1..1
* entry[observation-blood-pressure].request.method = #POST

* entry[observation-chol] ^short = "總膽固醇(含高密度膽固醇+低密度膽固醇)"
* entry[observation-chol].resource 1..1 MS
* entry[observation-chol].resource only ObservationCholesterolPAD
* entry[observation-chol].request 1..1
* entry[observation-chol].request.method = #POST
	
* entry[observation-tg] ^short = "三酸甘油脂"
* entry[observation-tg].resource 1..1 MS
* entry[observation-tg].resource only ObservationTriglyceridesPAD
* entry[observation-tg].request 1..1
* entry[observation-tg].request.method = #POST

* entry[observation-fg] ^short = "空腹血糖"
* entry[observation-fg].resource 1..1 MS
* entry[observation-fg].resource only ObservationFastingGlucosePAD
* entry[observation-fg].request 1..1
* entry[observation-fg].request.method = #POST

* entry[observation-smoking] ^short = "吸菸習慣"
* entry[observation-smoking].resource 1..1 MS
* entry[observation-smoking].resource only ObservationSmokingStatusPAD
* entry[observation-smoking].request 1..1
* entry[observation-smoking].request.method = #POST
	
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