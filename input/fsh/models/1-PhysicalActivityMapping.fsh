Mapping: PhysAct
Id: PhysAct
Title: "Mapping to PhysicalActivityModel"
Source: PhysicalActivityModel
Target: "https://hpacorepa.hpa.gov.tw/pad/"
* -> "BundlePhysicalActivity"

// 身體活動紀錄
* physActRecord -> "(身體活動紀錄)"
* physActRecord.dailySteps -> "entry:ObservationDailyStepsPAD.where(code.coding.code = '41950-7' and code.coding.system='http://loinc.org').valueQuantity.value"
* physActRecord.dailyFloors -> "entry:ObservationDailyFloorsPAD.where(code.coding.code = '129016000' and code.coding.system='http://snomed.info/sct').valueQuantity.value"
* physActRecord.dailyDistance -> "entry:ObservationDailyDistancePAD.where(code.coding.code = '246132006' and code.coding.system='http://loinc.org').valueQuantity.value"
* physActRecord.standHours -> "entry:ObservationStandHoursPAD.where(code.coding.code = '10904000' and code.coding.system='http://snomed.info/sct').valueQuantity.value"

// 生理檢測
* physiologicalMetrics -> "(生理檢測)"
* physiologicalMetrics.heartRate -> "entry:ObservationHeartRatePAD.where(code.coding.code = '8867-4' and code.coding.system='http://loinc.org').valueQuantity.value"
* physiologicalMetrics.sleepHours -> "entry:ObservationSleepHoursPAD.where(code.coding.code = '93832-4' and code.coding.system='http://loinc.org').valueQuantity.value"
* physiologicalMetrics.stressIndex -> "entry:ObservationStressIndexPAD.where(code.coding.code = '93038-8' and code.coding.system='http://loinc.org').valueQuantity.value"

// 運動紀錄
* exerciseRecord -> "(運動紀錄)"
* exerciseRecord.exerciseType -> "entry:ObservationExercise.where(code.coding.code = 'exerciseType' and code.coding.system='https://hpacorepa.hpa.gov.tw/pad/CodeSystem/pad-metrics').component[Type].valueCodeableConcept.coding.code"
* exerciseRecord.mvpa -> "entry:ObservationExercise.where(code.coding.code = 'mvpa' and code.coding.system='https://hpacorepa.hpa.gov.tw/pad/CodeSystem/pad-metrics').component[MVPA].valueQuantity.value"
* exerciseRecord.exerciseDateTime -> "entry:ObservationExercise.where(code.coding.code = '82287-4' and code.coding.system='http://loinc.org').effectivePeriod"
* exerciseRecord.energyExpended -> "entry:ObservationExercise.where(code.coding.code = 'energyExpended' and code.coding.system='https://hpacorepa.hpa.gov.tw/pad/CodeSystem/pad-metrics').component[Kcal].valueQuantity.value"
* exerciseRecord.exerciseIntensity -> "entry:ObservationExercise.where(code.coding.code = 'exerciseIntensity' and code.coding.system='https://hpacorepa.hpa.gov.tw/pad/CodeSystem/pad-metrics').component[Intensity].valueQuantity.value"
* exerciseRecord.exerciseRecordSource -> "entry:ObservationExercise.where(code.coding.code = 'exerciseRecordSource' and code.coding.system='https://hpacorepa.hpa.gov.tw/pad/CodeSystem/pad-metrics').component[Source].valueCodeableConcept.coding.code"
