CodeSystem:     EatingOutFrequencyCodes
Id:             eating-out-frequency
Title:          "HPA-每週外食頻率"
Description:    "HPA-每週外食頻率"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
* #0 "皆無外食"
* #7 "未滿7次"
* #13 "7-13次"
* #20 "14-20次"
* #21 "21次"

ValueSet:       EatingOutFrequency
Id:             eating-out-frequency
Title:          "HPA-每週外食頻率值集"
Description:    "HPA-每週外食頻率值集"
* ^experimental = false
* include codes from system EatingOutFrequencyCodes