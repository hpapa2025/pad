Mapping: HealthRiskAssessment
Id: HealthRiskAssessment
Title: "Mapping to HealthRiskAssessmentModel"
Source: HealthRiskAssessmentModel
Target: "https://hpacorepa.hpa.gov.tw/pad/"
* -> "BundleRiskAssessment"

// 使用者基本資訊
* basicInfo -> "(使用者基本資訊)"
* basicInfo.age -> "entry:PatientPAD.extension.age.valueAge"
* basicInfo.gender -> "entry:PatientPAD.gender"

// 健康狀況評估
* healthStatus -> "(健康狀況評估)"
* healthStatus.height -> "entry:ObservationBodyHeightPAD.where(code.coding.code='8302-2' and code.coding.system='http://loinc.org').valueQuantity.value"
* healthStatus.weight -> "entry:ObservationBodyWeightPAD.where(code.coding.code='29463-7' and code.coding.system='http://loinc.org').valueQuantity.value"
* healthStatus.waist -> "entry:ObservationWaistPAD.where(code.coding.code='8280-0' and code.coding.system='http://loinc.org').valueQuantity.value"

// 健康風險評估
* healthRisk -> "(健康風險評估)"
* healthRisk.diabetesMellitus -> "entry:ConditionDiabetesMellitusPAD.code"
* healthRisk.highBloodPressure -> "entry:ConditionHighBloodPressurePAD.code"
* healthRisk.smokingHabit -> "entry:ObservationSmokingStatusPAD.where(code.coding.code='72166-2' and code.coding.system='http://loinc.org').valueCodeableConcept.coding.code"

// 身體數值
* bodyMetrics -> "(身體數值)"
* bodyMetrics.sbp -> "entry:ObservationBloodPressurePAD.where(code.coding.code = '8480-6' and code.coding.system='http://loinc.org').component[SystolicBP].valueQuantity.value"
* bodyMetrics.chol -> "entry:ObservationCholesterolPAD.where(code.coding.code = '2093-3' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.hdl -> "entry:ObservationCholesterolPAD.where(code.coding.code = '2085-9' and code.coding.system='http://loinc.org').component[HDL].valueQuantity.value"
* bodyMetrics.ldl -> "entry:ObservationCholesterolPAD.where(code.coding.code = '2089-1' and code.coding.system='http://loinc.org').component[LDL].valueQuantity.value"
* bodyMetrics.tg -> "entry:ObservationTriglyceridesPAD.where(code.coding.code = '2571-8' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.fg -> "entry:ObservationFastingGlucosePAD.where(code.coding.code = '1558-6' and code.coding.system='http://loinc.org').valueQuantity.value"
