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
* basicInfo.residenceCity -> "entry:PatientPAD.address.postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3]"

// 健康狀況評估
* healthStatus -> "(健康狀況評估)"
* healthStatus.height -> "entry:ObservationBodyHeightPAD.where(code.coding.code='8302-2' and code.coding.system='http://loinc.org').valueQuantity.value"
* healthStatus.weightDateTime -> "entry:ObservationBodyWeightPAD.where(code.coding.code='29463-7' and code.coding.system='http://loinc.org').effectiveDateTime"
* healthStatus.weight -> "entry:ObservationBodyWeightPAD.where(code.coding.code='29463-7' and code.coding.system='http://loinc.org').valueQuantity.value"
* healthStatus.waist -> "entry:ObservationWaistPAD.where(code.coding.code='8280-0' and code.coding.system='http://loinc.org').valueQuantity.value"
* healthStatus.bmi -> "entry:ObservationBMIPAD.where(code.coding.code='39156-5' and code.coding.system='http://loinc.org').valueQuantity.value"
* healthStatus.eatingOutFrequency -> "entry:ObservationEatingOutFrequencyPAD.where(code.coding.code='eatingOutFrequency' and code.coding.system='https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics').valueCodeableConcept.coding"
* healthStatus.dietaryPreferences -> "entry:ObservationDietaryPreferencesPAD.where(code.coding.code='dietaryPreferences' and code.coding.system='https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics').valueCodeableConcept.coding"
* healthStatus.occupation -> "entry:ObservationOccupationPAD.where(code.coding.code='11341-5' and code.coding.system='http://loinc.org').valueCodeableConcept.coding.code"

// 健康風險評估
* healthRisk -> "(健康風險評估)"
* healthRisk.familyChronicHistory -> "entry:FamilyMemberHistoryPAD.condition.code"
* healthRisk.cancer -> "entry:ConditionCancerPAD.code"
* healthRisk.cardioVascularDisease -> "entry:ConditionCardiovascularDiseasePAD.code"
* healthRisk.diabetesMellitus -> "entry:ConditionDiabetesMellitusPAD.code"
* healthRisk.highBloodPressure -> "entry:ConditionHighBloodPressurePAD.code"
* healthRisk.hyperlipidemia -> "entry:ConditionHyperlipidemiaPAD.code"
* healthRisk.chronicDiseases -> "entry:ConditionChronicDiseasesPAD.code"
* healthRisk.smokingHabit -> "entry:ObservationSmokingStatusPAD.where(code.coding.code='72166-2' and code.coding.system='http://loinc.org').valueCodeableConcept.coding.code"

// 運動習慣評估
* exerciseHabit -> "(運動習慣評估)"
* exerciseHabit.sedentaryTime -> "entry:ObservationSedentaryTimePAD.where(code.coding.code='sedentaryTime' and code.coding.system='https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics').valueInteger"
* exerciseHabit.exerciseFrequency -> "entry:ObservationExerciseFrequencyPAD.where(code.coding.code='exerciseFrequency' and code.coding.system='https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics').valueCodeableConcept.coding.code"
* exerciseHabit.exerciseAmount -> "entry:ObservationExerciseAmountPAD.where(code.coding.code='exerciseAmount' and code.coding.system='https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics').valueQuantity.value"

// 健康目標
* goalHealth -> "(健康目標)"
* goalHealth.goalHealth -> "entry:GoalHealthPAD.target.detailQuantity.value"

