CodeSystem:     PADMealTypeCodes
Id:             pad-meal-type
Title:          "HPA-餐次"
Description:    "HPA-餐次"
* ^url = "https://hpacorepa.hpa.gov.tw/pad/CodeSystem/pad-meal-type"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
* #breakfast "早餐"
* #lunch "午餐"
* #dinner "晚餐"
* #snack "點心"
* #fruit "水果"


ValueSet:       PADMealType
Id:             pad-meal-type
Title:          "HPA-餐次值集"
Description:    "HPA-餐次值集"
* ^experimental = false
* ^version = "0.1.0"
* include codes from system PADMealTypeCodes