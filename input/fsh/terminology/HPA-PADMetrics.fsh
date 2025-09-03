CodeSystem:     PADMetricsCodes
Id:             pad-metrics
Title:          "HPA-身體活動與飲食指標"
Description:    "HPA-身體活動與飲食指標"
* ^url = "https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
* #eatingOutFrequency "每週外食頻率" "每週外食頻率"
* #dietaryPreferences "飲食偏好" "飲食偏好"
* #sedentaryTime "靜態/久坐時間" "3個月內每日靜態/久坐時間(不含睡覺)"
* #exerciseFrequency "運動頻率" "3個月內運動頻率(依運動333定義)"
* #exerciseAmount "中高強度活動累計" "3個月內每天平均進行中高強度身體活動之累計"
* #waterIntake "每次攝取水量" "每次攝取水量"
* #bri "BRI" "Body Roundness Index"
* #bmr "BMR" "Basal Metabolic Rate"
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