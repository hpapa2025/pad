Mapping: PhysAct
Id: PhysAct
Title: "Mapping to PhysicalActivityModel"
Source: PhysicalActivityModel
Target: "https://www.hpa.gov.tw/pad/"
* -> "BundlePhysicalActivity"

// 身體活動紀錄
* physActRecord -> "(身體活動紀錄)"
* physActRecord.weeklyCaloriesBurned -> "entry:ObservationPhysicalActivityPAD.where(code.coding.code = '41979-6' and code.coding.system='http://loinc.org').valueQuantity.value"
* physActRecord.weeklyExerciseAmount -> "entry:ObservationPhysicalActivityPAD.where(code.coding.code = '55411-3' and code.coding.system='http://loinc.org').valueQuantity.value"
* physActRecord.dailySteps -> "entry:ObservationPhysicalActivityPAD.where(code.coding.code = '41950-7' and code.coding.system='http://loinc.org').valueQuantity.value"
* physActRecord.dailyFloors -> "entry:ObservationPhysicalActivityPAD.where(code.coding.code = '129016000' and code.coding.system='http://snomed.info/sct').valueQuantity.value"
* physActRecord.dailyDistance -> "entry:ObservationPhysicalActivityPAD.where(code.coding.code = '93849-8' and code.coding.system='http://loinc.org').valueQuantity.value"
* physActRecord.standHours -> "entry:ObservationPhysicalActivityPAD.where(code.coding.code = '10904000' and code.coding.system='http://snomed.info/sct').valueQuantity.value"

// 運動紀錄
* exerciseRecord -> "(運動紀錄)"
* exerciseRecord.exerciseType -> "entry:ObservationExerciseRecordPAD.component.valueQuantity.value"
* exerciseRecord.mvpa -> "entry:ObservationExerciseRecordPAD.component.where(code.coding.code = 'mvpa' and code.coding.system='https://www.hpa.gov.tw/pad/CodeSystem/exercise-record').valueQuantity.value"
* exerciseRecord.exerciseDateTime -> "entry:ObservationExerciseRecordPAD.effectivePeriod"
* exerciseRecord.energyExpended -> "entry:ObservationExerciseRecordPAD.component.valueQuantity.value"

// 身體活動目標
* goalPhysicalActivity -> "(身體活動目標)"
* goalPhysicalActivity.goalWeeklyCaloriesBurned -> "entry:GoalWeeklyCaloriesBurnedPAD.target.detailQuantity.value"
* goalPhysicalActivity.goalWeeklyExerciseAmount -> "entry:GoalWeeklyExerciseAmountPAD.target.detailQuantity.value"
* goalPhysicalActivity.goalDailyCaloriesBurned -> "entry:GoalDailyCaloriesBurnedPAD.target.detailQuantity.value"
* goalPhysicalActivity.goalDailyDistance -> "entry:GoalDailyDistancePAD.target.detailQuantity.value"
* goalPhysicalActivity.goalDailyFloors -> "entry:GoalDailyFloorsPAD.target.detailQuantity.value"
* goalPhysicalActivity.goalDailySteps -> "entry:GoalDailyStepsPAD.target.detailQuantity.value"

// 生理檢測
* physiologicalMetrics -> "(生理檢測)"
* physiologicalMetrics.heartRate -> "entry:ObservationPhysicalActivityPAD.where(code.coding.code = '8867-4' and code.coding.system='http://loinc.org').valueQuantity.value"
* physiologicalMetrics.sleepHours -> "entry:ObservationPhysicalActivityPAD.where(code.coding.code = '93832-4' and code.coding.system='http://loinc.org').valueQuantity.value"
* physiologicalMetrics.stressIndex -> "entry:ObservationPhysicalActivityPAD.where(code.coding.code = '93038-8' and code.coding.system='http://loinc.org').valueQuantity.value"

