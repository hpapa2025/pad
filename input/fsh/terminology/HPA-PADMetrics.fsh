CodeSystem:     PADMetricsCodes
Id:             pad-metrics
Title:          "HPA-身體活動與飲食指標"
Description:    "HPA-身體活動與飲食指標"
* ^url = "https://hpacorepa.hpa.gov.tw/pad/CodeSystem/pad-metrics"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
* #stressIndex "壓力指數" "壓力指數"
* #steps "步數" "步數"
* #exerciseType "運動類型" "運動類型"
* #mvpa "MVPA分鐘數" "MVPA分鐘數"
* #energyExpended "預估消耗熱量" "預估消耗熱量"
* #exerciseIntensity "運動強度" "運動強度"
* #exerciseRecordSource "運動紀錄來源" "運動紀錄來源"
* #dietRecorde "飲食紀錄" "飲食紀錄"


ValueSet:       PADMetrics
Id:             pad-metrics
Title:          "HPA-身體活動與飲食指標值集"
Description:    "HPA-身體活動與飲食指標值集"
* ^experimental = false
* ^version = "0.1.0"
* include codes from system PADMetricsCodes