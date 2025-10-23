Mapping: WaterRecord
Id: WaterRecord
Title: "Mapping to WaterRecordModel"
Source: WaterRecordModel
Target: "https://fhir.hpa.gov.tw/pad/"
* -> "BundleWater"

// 飲水紀錄
* waterRecord -> "飲水紀錄"
* waterRecord.waterIntakeDateTime -> "entry:ObservationWaterIntakePAD.effectiveDateTime"
* waterRecord.waterIntake -> "entry:ObservationWaterIntakePAD.where(code.coding.code = '226354008' and code.coding.system='http://snomed.info/sct').valueQuantity.value"