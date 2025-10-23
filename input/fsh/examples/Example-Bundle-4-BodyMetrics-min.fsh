Instance:       bundle-body-metrics-min
InstanceOf:     BundleBodyMetrics
Title:          "身體數值"
Description:    "依據身體數值-Bundle Body Metrics PAD Profile呈現身體數值之範例"
Usage: #example
* type = #transaction

* entry[observation-bmr].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-bmr"
* entry[observation-bmr].resource = obs-bmr
* entry[observation-bmr].request.method = #PUT
* entry[observation-bmr].request.url = "Observation"

* entry[observation-tdee].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-tdee"
* entry[observation-tdee].resource = obs-tdee
* entry[observation-tdee].request.method = #PUT
* entry[observation-tdee].request.url = "Observation"

* entry[observation-bfp].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-bfp"
* entry[observation-bfp].resource = obs-bfp
* entry[observation-bfp].request.method = #PUT
* entry[observation-bfp].request.url = "Observation"

* entry[observation-bri].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-bri"
* entry[observation-bri].resource = obs-bri
* entry[observation-bri].request.method = #PUT
* entry[observation-bri].request.url = "Observation"

* entry[observation-hip].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-hip-line"
* entry[observation-hip].resource = obs-hip-line
* entry[observation-hip].request.method = #PUT
* entry[observation-hip].request.url = "Observation"

* entry[observation-fg].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-fg"
* entry[observation-fg].resource = obs-fg
* entry[observation-fg].request.method = #PUT
* entry[observation-fg].request.url = "Observation"

* entry[observation-tg].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-tg"
* entry[observation-tg].resource = obs-tg
* entry[observation-tg].request.method = #PUT
* entry[observation-tg].request.url = "Observation"

* entry[observation-chol].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-chol"
* entry[observation-chol].resource = obs-chol
* entry[observation-chol].request.method = #PUT
* entry[observation-chol].request.url = "Observation"

* entry[observation-blood-pressure].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-bloodPressure"
* entry[observation-blood-pressure].resource = obs-bloodPressure
* entry[observation-blood-pressure].request.method = #PUT
* entry[observation-blood-pressure].request.url = "Observation"

* entry[observation-height].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-body-height"
* entry[observation-height].resource = obs-body-height
* entry[observation-height].request.method = #PUT
* entry[observation-height].request.url = "Observation"

* entry[observation-weight].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-body-weight"
* entry[observation-weight].resource = obs-body-weight
* entry[observation-weight].request.method = #PUT
* entry[observation-weight].request.url = "Observation"

* entry[observation-waist].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-waist"
* entry[observation-waist].resource = obs-waist
* entry[observation-waist].request.method = #PUT
* entry[observation-waist].request.url = "Observation"

* entry[observation-bmi].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-bmi"
* entry[observation-bmi].resource = obs-bmi
* entry[observation-bmi].request.method = #PUT
* entry[observation-bmi].request.url = "Observation"