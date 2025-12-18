CodeSystem:     ExerciseRecordSourceCodes
Id:             exercise-record-source
Title:          "HPA-運動紀錄來源"
Description:    "HPA-運動紀錄來源"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
* #manual "手動輸入"
* #phone-native "手機原生"
* #app-third-party "第三方App同步"

ValueSet:       ExerciseRecordSource
Id:             exercise-record-source
Title:          "HPA-運動紀錄來源值集"
Description:    "HPA-運動紀錄來源值集"
* ^experimental = false
* include codes from system ExerciseRecordSourceCodes