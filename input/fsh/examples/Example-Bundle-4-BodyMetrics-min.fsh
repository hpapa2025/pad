Instance:       bundle-body-metrics-min
InstanceOf:     BundleBodyMetrics
Title:          "身體數值"
Description:    "依據身體數值-Bundle Body Metrics PAD Profile呈現身體數值之範例"
Usage: #example
* type = #transaction

* entry[observation-bmr].fullUrl = "https://www.hpa.gov.tw/pad/Observation/obs-bmr"
* entry[observation-bmr].resource = obs-bmr
* entry[observation-bmr].request.method = #POST
* entry[observation-bmr].request.url = "Observation"

* entry[observation-tdee].fullUrl = "https://www.hpa.gov.tw/pad/Observation/obs-tdee"
* entry[observation-tdee].resource = obs-tdee
* entry[observation-tdee].request.method = #POST
* entry[observation-tdee].request.url = "Observation"

* entry[observation-bfp].fullUrl = "https://www.hpa.gov.tw/pad/Observation/obs-bfp"
* entry[observation-bfp].resource = obs-bfp
* entry[observation-bfp].request.method = #POST
* entry[observation-bfp].request.url = "Observation"

* entry[observation-bri].fullUrl = "https://www.hpa.gov.tw/pad/Observation/obs-bri"
* entry[observation-bri].resource = obs-bri
* entry[observation-bri].request.method = #POST
* entry[observation-bri].request.url = "Observation"

* entry[observation-hip].fullUrl = "https://www.hpa.gov.tw/pad/Observation/obs-hip-line"
* entry[observation-hip].resource = obs-hip-line
* entry[observation-hip].request.method = #POST
* entry[observation-hip].request.url = "Observation"

* entry[observation-fg].fullUrl = "https://www.hpa.gov.tw/pad/Observation/obs-fg"
* entry[observation-fg].resource = obs-fg
* entry[observation-fg].request.method = #POST
* entry[observation-fg].request.url = "Observation"

* entry[observation-tg].fullUrl = "https://www.hpa.gov.tw/pad/Observation/obs-tg"
* entry[observation-tg].resource = obs-tg
* entry[observation-tg].request.method = #POST
* entry[observation-tg].request.url = "Observation"

* entry[observation-chol].fullUrl = "https://www.hpa.gov.tw/pad/Observation/obs-chol"
* entry[observation-chol].resource = obs-chol
* entry[observation-chol].request.method = #POST
* entry[observation-chol].request.url = "Observation"

* entry[observation-blood-pressure].fullUrl = "https://www.hpa.gov.tw/pad/Observation/obs-bloodPressure"
* entry[observation-blood-pressure].resource = obs-bloodPressure
* entry[observation-blood-pressure].request.method = #POST
* entry[observation-blood-pressure].request.url = "Observation"

* entry[observation-height].fullUrl = "https://www.hpa.gov.tw/pad/Observation/obs-body-height"
* entry[observation-height].resource = obs-body-height
* entry[observation-height].request.method = #POST
* entry[observation-height].request.url = "Observation"

* entry[observation-weight].fullUrl = "https://www.hpa.gov.tw/pad/Observation/obs-body-weight"
* entry[observation-weight].resource = obs-body-weight
* entry[observation-weight].request.method = #POST
* entry[observation-weight].request.url = "Observation"

* entry[observation-waist].fullUrl = "https://www.hpa.gov.tw/pad/Observation/obs-waist"
* entry[observation-waist].resource = obs-waist
* entry[observation-waist].request.method = #POST
* entry[observation-waist].request.url = "Observation"

* entry[observation-bmi].fullUrl = "https://www.hpa.gov.tw/pad/Observation/obs-bmi"
* entry[observation-bmi].resource = obs-bmi
* entry[observation-bmi].request.method = #POST
* entry[observation-bmi].request.url = "Observation"