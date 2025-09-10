Mapping: BMeas
Id: BMeas
Title: "Mapping to BodyMetricsModel"
Source: BodyMetricsModel
Target: "https://www.hpa.gov.tw/pad/"
* -> "BundleBodyMetrics"

// 身體數值
* bodyMetrics -> "(身體數值)"
* bodyMetrics.height -> "entry:ObservationBodyHeightPAD.where(code.coding.code='8302-2' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.weightDateTime -> "entry:ObservationBodyWeightPAD.where(code.coding.code='29463-7' and code.coding.system='http://loinc.org').effectiveDateTime"
* bodyMetrics.weight -> "entry:ObservationBodyWeightPAD.where(code.coding.code='29463-7' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.waist -> "entry:ObservationWaistPAD.where(code.coding.code='8280-0' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.hipline -> "entry:ObservationHipLinePAD.where(code.coding.code = '284472007' and code.coding.system='https://www.snomed.org/').valueQuantity.value"
* bodyMetrics.bmi -> "entry:ObservationBMIPAD.where(code.coding.code='39156-5' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.bri -> "entry:ObservationBRIPAD.where(code.coding.code = 'bri' and code.coding.system='https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics').valueQuantity.value"
* bodyMetrics.bfp -> "entry:ObservationBodyFatPercentagePAD.where(code.coding.code = '41982-0' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.sbp -> "entry:ObservationBloodPressurePAD.where(code.coding.code = '8480-6' and code.coding.system='http://loinc.org').component[SystolicBP].valueQuantity.value"
* bodyMetrics.dbp -> "entry:ObservationBloodPressurePAD.where(code.coding.code = '8462-4' and code.coding.system='http://loinc.org').component[DiastolicBP].valueQuantity.value"
* bodyMetrics.chol -> "entry:ObservationCholesterolPAD.where(code.coding.code = '2093-3' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.hdl -> "entry:ObservationCholesterolPAD.where(code.coding.code = '2085-9' and code.coding.system='http://loinc.org').component[HDL].valueQuantity.value"
* bodyMetrics.ldl -> "entry:ObservationCholesterolPAD.where(code.coding.code = '2089-1' and code.coding.system='http://loinc.org').component[LDL].valueQuantity.value"
* bodyMetrics.tg -> "entry:ObservationTriglyceridesPAD.where(code.coding.code = '2571-8' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.fg -> "entry:ObservationFastingGlucosePAD.where(code.coding.code = '1558-6' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.bmr -> "entry:ObservationBMRPAD.where(code.coding.code = 'bmr' and code.coding.system='https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics').valueQuantity.value"
* bodyMetrics.tdee -> "entry:ObservationTDEEPAD.where(code.coding.code = '41979-6' and code.coding.system='http://loinc.org')valueQuantity.value"
