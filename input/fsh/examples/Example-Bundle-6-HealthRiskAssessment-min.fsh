Instance:       bundle-health-risk-assessment-min
InstanceOf:     BundleHealthRiskAssessment
Title:          "健康風險評估"
Description:    "依據健康風險評估-Bundle Health Risk Assessment PAD Profile呈現健康風險評估之範例"
Usage: #example
* type = #transaction

* entry[patient].fullUrl = "https://www.hpa.gov.tw/pad/Patient/pat-min"
* entry[patient].resource = pat-min
* entry[patient].request.method = #POST
* entry[patient].request.url = "Patient"

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

* entry[observation-blood-pressure].fullUrl = "https://www.hpa.gov.tw/pad/Observation/obs-bloodPressure"
* entry[observation-blood-pressure].resource = obs-bloodPressure
* entry[observation-blood-pressure].request.method = #POST
* entry[observation-blood-pressure].request.url = "Observation"

* entry[observation-chol].fullUrl = "https://www.hpa.gov.tw/pad/Observation/obs-chol"
* entry[observation-chol].resource = obs-chol
* entry[observation-chol].request.method = #POST
* entry[observation-chol].request.url = "Observation"

* entry[observation-fg].fullUrl = "https://www.hpa.gov.tw/pad/Observation/obs-fg"
* entry[observation-fg].resource = obs-fg
* entry[observation-fg].request.method = #POST
* entry[observation-fg].request.url = "Observation"

* entry[observation-tg].fullUrl = "https://www.hpa.gov.tw/pad/Observation/obs-tg"
* entry[observation-tg].resource = obs-tg
* entry[observation-tg].request.method = #POST
* entry[observation-tg].request.url = "Observation"

* entry[observation-smoking].fullUrl = "https://www.hpa.gov.tw/pad/Observation/obs-smokingStatus"
* entry[observation-smoking].resource = obs-smokingStatus
* entry[observation-smoking].request.method = #POST
* entry[observation-smoking].request.url = "Observation"

* entry[condition-dm].fullUrl = "https://www.hpa.gov.tw/pad/Condition/con-dm"
* entry[condition-dm].resource = con-dm
* entry[condition-dm].request.method = #POST
* entry[condition-dm].request.url = "Condition"

* entry[condition-hbp].fullUrl = "https://www.hpa.gov.tw/pad/Condition/con-hbp"
* entry[condition-hbp].resource = con-hbp
* entry[condition-hbp].request.method = #POST
* entry[condition-hbp].request.url = "Condition"