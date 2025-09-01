Mapping: HealthSelfAssessment
Id: HealthSelfAssessment
Title: "Mapping to HealthSelfAssessmentModel"
Source: HealthSelfAssessmentModel
Target: "https://www.hpa.gov.tw/pad/"
* -> "BundleAssessment"

// 使用者基本資訊
* basicInfo -> "(使用者基本資訊)"
* basicInfo.birthDate -> "entry:PatientPAD.birthDate"
* basicInfo.age -> "entry:PatientPAD.extension.age.valueAge"
* basicInfo.gender -> "entry:PatientPAD.gender"
* basicInfo.residenceCity -> "entry:PatientPAD.address.postalCode.extension:PostalCode.value[x].coding:PostalCode3"

// 健康狀況評估
* healthStatus -> "(健康狀況評估)"
* healthStatus.height -> "entry:ObservationBodyMetricsPAD.where(code.coding.code='8302-2' and code.coding.system='http://loinc.org').valueQuantity.value"
* healthStatus.weight -> "entry:ObservationBodyMetricsPAD.where(code.coding.code='29463-7' and code.coding.system='http://loinc.org').valueQuantity.value"
* healthStatus.waist -> "entry:ObservationBodyMetricsPAD.where(code.coding.code='8280-0' and code.coding.system='http://loinc.org').valueQuantity.value"
* healthStatus.bmi -> "entry:ObservationBodyMetricsPAD.where(code.coding.code='39156-5' and code.coding.system='http://loinc.org').valueQuantity.value"
* healthStatus.eatingOutFrequency -> "entry:ObservationBodyMetricsPAD."
* healthStatus.dietaryPreferences -> "entry:ObservationBodyMetricsPAD."
* healthStatus.occupation -> "entry:ObservationBodyMetricsPAD.where(code.coding.code='11341-5' and code.coding.system='http://loinc.org').valueQuantity.value"

// 健康風險評估
* healthRisk -> "(健康風險評估)"
* healthRisk.familyChronicHistory -> "entry:FamilyChronicHistoryChronicPAD.condition.code"
* healthRisk.cancer -> "entry:ConditionCancerPAD.code"
* healthRisk.cardioVascularDisease -> "entry:ConditionCardiovascularDiseasePAD.code"
* healthRisk.diabetesMellitus -> "entry:ConditionDiabetesMellitusPAD.code"
* healthRisk.highBloodPressure -> "entry:ConditionHighBloodPressurePAD.code"
* healthRisk.hyperlipidemia -> "entry:ConditionHyperlipidemiaPAD.code"
* healthRisk.chronicDiseases -> "entry:ConditionOtherChronicDiseasesPAD.code"
* healthRisk.smokingHabit -> "entry:ObservationSmokingStatusPAD.where(code.coding.code='72166-2' and code.coding.system='http://loinc.org').valueCodeableConcept.coding.code"

// 運動習慣評估
* exerciseHabit -> "(運動習慣評估)"
* exerciseHabit.sedentaryTime -> "entry:ObservationExercisePAD.component.valueInteger"
* exerciseHabit.exerciseFrequency -> "entry:ObservationExercisePAD.component.valueInteger"
* exerciseHabit.exerciseAmount -> "entry:ObservationExercisePAD.component.valueInteger"

// 健康目標
* goalHealth -> "(健康目標)"
* goalHealth.goalHealth -> "entry:GoalHealthPAD.target.detailQuantity.value"

