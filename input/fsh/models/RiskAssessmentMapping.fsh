/*Mapping: PADPatient
Id: PADPatient
Title: "Mapping to PAD Patient"
Source: HealthRiskAssessmentModel
Target: "https://www.hpa.gov.tw/pad/StructureDefinition/Patient-pad"
* basicInfo -> "Patient"
* basicInfo.age -> "Patient.extension.where(url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/person-age').valueAge"
* basicInfo.gender -> "Patient.gender"

Mapping: PADObservationBodyHeight
Id: PADObservationBodyHeight
Title: "Mapping to PAD Observation Body Height"
Source: HealthRiskAssessmentModel
Target: "https://www.hpa.gov.tw/pad/StructureDefinition/Observation-body-height-pad"
* healthStatus -> "Observation"
* healthStatus.height -> "Observation.valueQuantity"


// 健康狀況評估
* healthStatus -> "(健康狀況評估)"
* healthStatus.height -> "entry:ObservationBodyMetricsPAD.where(code.coding.code='8302-2' and code.coding.system='http://loinc.org').valueQuantity.value"
* healthStatus.weight -> "entry:ObservationBodyMetricsPAD.where(code.coding.code='29463-7' and code.coding.system='http://loinc.org').valueQuantity.value"
* healthStatus.waist -> "entry:ObservationBodyMetricsPAD.where(code.coding.code='8280-0' and code.coding.system='http://loinc.org').valueQuantity.value"

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

// 身體數值
* bodyMetrics -> "(身體數值)"
* bodyMetrics.sbp -> "entry:ObservationBodyMetricsPAD.where(code.coding.code = '8480-6' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.chol -> "entry:ObservationBodyMetricsPAD.where(code.coding.code = '2093-3' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.hdl -> "entry:ObservationBodyMetricsPAD.where(code.coding.code = '2085-9' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.ldl -> "entry:ObservationBodyMetricsPAD.where(code.coding.code = '2089-1' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.tg -> "entry:ObservationBodyMetricsPAD.where(code.coding.code = '2571-8' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.fg -> "entry:ObservationBodyMetricsPAD.where(code.coding.code = '1558-6' and code.coding.system='http://loinc.org').valueQuantity.value"*/