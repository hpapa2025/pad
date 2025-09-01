Mapping: BMeas
Id: BMeas
Title: "Mapping to BodyMetricsModel"
Source: BodyMetricsModel
Target: "https://www.hpa.gov.tw/pad/"
* -> "BundleBodyMetrics"

// 身體數值
* bodyMetrics -> "(身體數值)"
* bodyMetrics.height -> "entry:ObservationBodyMetricsPAD.where(code.coding.code='8302-2' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.weight -> "entry:ObservationBodyMetricsPAD.where(code.coding.code='29463-7' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.waist -> "entry:ObservationBodyMetricsPAD.where(code.coding.code='8280-0' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.hipline -> "entry:ObservationBodyMetricsPAD.where(code.coding.code = '284472007' and code.coding.system='https://www.snomed.org/'.valueQuantity.value"
* bodyMetrics.bmi -> "entry:ObservationBodyMetricsPAD.where(code.coding.code='39156-5' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.bri -> "entry:ObservationBodyMetricsPAD.where(code.coding.code = 'bri' and code.coding.system='https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics'.valueQuantity.value"
* bodyMetrics.bfp -> "entry:ObservationBodyMetricsPAD.where(code.coding.code = '41982-0' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.sbp -> "entry:ObservationBodyMetricsPAD.where(code.coding.code = '8480-6' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.dbp -> "entry:ObservationBodyMetricsPAD.where(code.coding.code = '8462-4' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.chol -> "entry:ObservationBodyMetricsPAD.where(code.coding.code = '2093-3' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.hdl -> "entry:ObservationBodyMetricsPAD.where(code.coding.code = '2085-9' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.ldl -> "entry:ObservationBodyMetricsPAD.where(code.coding.code = '2089-1' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.tg -> "entry:ObservationBodyMetricsPAD.where(code.coding.code = '2571-8' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.fg -> "entry:ObservationBodyMetricsPAD.where(code.coding.code = '1558-6' and code.coding.system='http://loinc.org').valueQuantity.value"
* bodyMetrics.bmr -> "entry:ObservationBodyMetricsPAD.where(code.coding.code = 'bmr' and code.coding.system='https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics').valueQuantity.value"
* bodyMetrics.tdee -> "entry:ObservationBodyMetricsPAD.where(code.coding.code = '41979-6' and code.coding.system='http://loinc.org')valueQuantity.value"


// 減重目標
* goalWeightLoss -> "(減重目標)"
* goalWeightLoss.goalWeight -> "entry:GoalWeightPAD.target.detailQuantity.value"
* goalWeightLoss.goalweightChange -> "entry:GoalWeightChangePAD.target.detailQuantity.value"
* goalWeightLoss.weightLossIntensity -> "entry:GoalWeightLossIntensityPAD.target.detailQuantity.value"