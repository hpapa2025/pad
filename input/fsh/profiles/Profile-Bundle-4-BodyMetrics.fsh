Profile:        BundleBodyMetrics
Parent:         TWCoreBundle
Id:             Bundle-body-metrics-pad
Title:          "身體數值-Bundle Body Metrics PAD"
Description:    "此身體數值-Bundle Body Metrics PAD Profile說明本IG如何進一步定義資料交換基本單位(TW Core Bundle) Profile以呈現身體數值之內容"
* type = #transaction
* entry 0..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
	observation-height 0..1 MS and
	observation-weight 0..1 MS and
	observation-bmi 0..1 MS and
	observation-blood-pressure 0..1 MS and
	observation-chol 0..1 MS and
	observation-tg 0..1 MS and
	observation-fg 0..1 MS and
	observation-waist 0..1 MS and
	observation-hip 0..1 MS and
	observation-bri 0..1 MS and
	observation-bfp 0..1 MS and
	observation-tdee 0..1 MS and
	observation-bmr 0..1 MS
	
* entry[observation-bmr] ^short = "基礎代謝率(BMR)"
* entry[observation-bmr].resource 1..1 MS
* entry[observation-bmr].resource only ObservationBMRPAD
* entry[observation-bmr].request 1..1
* entry[observation-bmr].request.method ^short = "POST | PUT"
	
* entry[observation-tdee] ^short = "每日總消耗熱量(TDEE)"
* entry[observation-tdee].resource 1..1 MS
* entry[observation-tdee].resource only ObservationTDEEPAD
* entry[observation-tdee].request 1..1
* entry[observation-tdee].request.method ^short = "POST | PUT"
	
* entry[observation-bfp] ^short = "體脂率"
* entry[observation-bfp].resource 1..1 MS
* entry[observation-bfp].resource only ObservationBodyFatPercentagePAD
* entry[observation-bfp].request 1..1
* entry[observation-bfp].request.method ^short = "POST | PUT"
	
* entry[observation-bri] ^short = "身體圓度指數(BRI)"
* entry[observation-bri].resource 1..1 MS
* entry[observation-bri].resource only ObservationBRIPAD
* entry[observation-bri].request 1..1
* entry[observation-bri].request.method ^short = "POST | PUT"
	
* entry[observation-hip] ^short = "臀圍"
* entry[observation-hip].resource 1..1 MS
* entry[observation-hip].resource only ObservationHipLinePAD
* entry[observation-hip].request 1..1
* entry[observation-hip].request.method ^short = "POST | PUT"
	
* entry[observation-fg] ^short = "空腹血糖"
* entry[observation-fg].resource 1..1 MS
* entry[observation-fg].resource only ObservationFastingGlucosePAD
* entry[observation-fg].request 1..1
* entry[observation-fg].request.method ^short = "POST | PUT"
	
* entry[observation-tg] ^short = "三酸甘油脂"
* entry[observation-tg].resource 1..1 MS
* entry[observation-tg].resource only ObservationTriglyceridesPAD
* entry[observation-tg].request 1..1
* entry[observation-tg].request.method ^short = "POST | PUT"
	
* entry[observation-chol] ^short = "總膽固醇(含高密度膽固醇+低密度膽固醇)"
* entry[observation-chol].resource 1..1 MS
* entry[observation-chol].resource only ObservationCholesterolPAD
* entry[observation-chol].request 1..1
* entry[observation-chol].request.method ^short = "POST | PUT"
	
* entry[observation-blood-pressure] ^short = "血壓(收縮壓+舒張壓)"
* entry[observation-blood-pressure].resource 1..1 MS
* entry[observation-blood-pressure].resource only ObservationBloodPressurePAD
* entry[observation-blood-pressure].request 1..1
* entry[observation-blood-pressure].request.method ^short = "POST | PUT"
	
* entry[observation-height] ^short = "身高"
* entry[observation-height].resource 1..1 MS
* entry[observation-height].resource only ObservationBodyHeightPAD
* entry[observation-height].request 1..1
* entry[observation-height].request.method ^short = "POST | PUT"
	
* entry[observation-weight] ^short = "體重"
* entry[observation-weight].resource 1..1 MS
* entry[observation-weight].resource only ObservationBodyWeightPAD
* entry[observation-weight].request 1..1
* entry[observation-weight].request.method ^short = "POST | PUT"
	
* entry[observation-waist] ^short = "腰圍"
* entry[observation-waist].resource 1..1 MS
* entry[observation-waist].resource only ObservationWaistPAD
* entry[observation-waist].request 1..1
* entry[observation-waist].request.method ^short = "POST | PUT"
	
* entry[observation-bmi] ^short = "BMI"
* entry[observation-bmi].resource 1..1 MS
* entry[observation-bmi].resource only ObservationBMIPAD
* entry[observation-bmi].request 1..1
* entry[observation-bmi].request.method ^short = "POST | PUT"