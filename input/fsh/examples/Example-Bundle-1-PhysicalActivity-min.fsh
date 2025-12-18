Instance:       bundle-physical-activity-min
InstanceOf:     BundlePhysicalActivity
Title:          "運動紀錄"
Description:    "依據運動紀錄-Bundle Physical Activity PAD Profile呈現運動紀錄之範例"
Usage: #example
* type = #transaction

* entry[observation-steps].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Observation/obs-day-steps"
* entry[observation-steps].resource = obs-day-steps
* entry[observation-steps].request.method = #POST
* entry[observation-steps].request.url = "Observation"

* entry[observation-floors].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Observation/obs-day-floors"
* entry[observation-floors].resource = obs-day-floors
* entry[observation-floors].request.method = #POST
* entry[observation-floors].request.url = "Observation"

* entry[observation-distance].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Observation/obs-day-distance"
* entry[observation-distance].resource = obs-day-distance
* entry[observation-distance].request.method = #POST
* entry[observation-distance].request.url = "Observation"

* entry[observation-heart-rate].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Observation/obs-heart-rate"
* entry[observation-heart-rate].resource = obs-heart-rate
* entry[observation-heart-rate].request.method = #POST
* entry[observation-heart-rate].request.url = "Observation"

* entry[observation-sleep-hours].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Observation/obs-sleep-hours"
* entry[observation-sleep-hours].resource = obs-sleep-hours
* entry[observation-sleep-hours].request.method = #POST
* entry[observation-sleep-hours].request.url = "Observation"

* entry[observation-stress].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Observation/obs-stress-index"
* entry[observation-stress].resource = obs-stress-index
* entry[observation-stress].request.method = #POST
* entry[observation-stress].request.url = "Observation"

* entry[observation-stand].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Observation/obs-stand-hours"
* entry[observation-stand].resource = obs-stand-hours
* entry[observation-stand].request.method = #POST
* entry[observation-stand].request.url = "Observation"

* entry[observation-exercise].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Observation/obs-exercise"
* entry[observation-exercise].resource = obs-exercise
* entry[observation-exercise].request.method = #POST
* entry[observation-exercise].request.url = "Observation"