CodeSystem:     HealthGoalsCodes
Id:             health-goals
Title:          "HPA-健康目標類別"
Description:    "HPA-健康目標類別"
* ^url = "https://www.hpa.gov.tw/pad/CodeSystem/health-goals"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
* ^version = "0.1.0"
* #increaseActivity "提升身體活動量"
* #balancedDiet "輔助達成均衡飲食"
* #basicHealthStatus "追蹤個人基本健康情形"
* #healthAdvice "獲得更多健康建議"

ValueSet:       HealthGoals
Id:             health-goals
Title:          "HPA-健康目標類別值集"
Description:    "HPA-健康目標類別值集"
* ^experimental = false
* ^version = "0.1.0"
* include codes from system HealthGoalsCodes