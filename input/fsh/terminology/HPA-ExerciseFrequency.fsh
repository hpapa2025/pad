CodeSystem:     ExerciseFrequencyCodes
Id:             exercise-frequency
Title:          "HPA-運動頻率"
Description:    "HPA-運動頻率"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
* #0 "幾乎不運動"
* #2 "每週 1-2 次"
* #3 "每週 3 次以上"

ValueSet:       ExerciseFrequency
Id:             exercise-frequency
Title:          "HPA-運動頻率值集"
Description:    "HPA-運動頻率值集"
* ^experimental = false
* include codes from system ExerciseFrequencyCodes