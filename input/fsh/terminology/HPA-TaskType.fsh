CodeSystem:     TaskTypeCodes
Id:             task-type
Title:          "HPA-任務類別"
Description:    "HPA-任務類別"
* ^url = "https://www.hpa.gov.tw/pad/CodeSystem/task-type"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
* ^version = "0.1.0"
* #exercise "運動"
* #diet "飲食"
* #water "飲水"
* #bodyMmetrics "身體數值"

ValueSet:       TaskType
Id:             task-type
Title:          "HPA-任務類別值集"
Description:    "HPA-任務類別值集"
* ^experimental = false
* ^version = "0.1.0"
* include codes from system TaskTypeCodes