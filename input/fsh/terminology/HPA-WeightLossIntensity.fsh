CodeSystem:     WeightLossIntensityCodes
Id:             weight-loss-intensity
Title:          "HPA-減重強度等級"
Description:    "HPA-減重強度等級"
* ^url = "https://fhir.hpa.gov.tw/pad/CodeSystem/weight-loss-intensity"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
* ^version = "0.1.0"
* #low "低"
* #moderate "中"
* #high "高"
* #very-high "極高"

ValueSet:       WeightLossIntensity
Id:             weight-loss-intensity
Title:          "HPA-減重強度等級值集"
Description:    "HPA-減重強度等級值集"
* ^experimental = false
* ^version = "0.1.0"
* include codes from system WeightLossIntensityCodes