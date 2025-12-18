Instance:       bundle-health-risk-assessment-min
InstanceOf:     BundleHealthRiskAssessment
Title:          "健康風險評估"
Description:    "依據健康風險評估-Bundle Health Risk Assessment PAD Profile呈現健康風險評估之範例"
Usage: #example
* type = #collection

* entry[patient].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Patient/pat-min"
* entry[patient].resource = pat-min

* entry[observation-height].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Observation/obs-body-height"
* entry[observation-height].resource = obs-body-height

* entry[observation-weight].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Observation/obs-body-weight"
* entry[observation-weight].resource = obs-body-weight

* entry[observation-waist].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Observation/obs-waist"
* entry[observation-waist].resource = obs-waist

* entry[observation-blood-pressure].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Observation/obs-bloodPressure"
* entry[observation-blood-pressure].resource = obs-bloodPressure

* entry[observation-chol].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Observation/obs-chol"
* entry[observation-chol].resource = obs-chol

* entry[observation-fg].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Observation/obs-fg"
* entry[observation-fg].resource = obs-fg

* entry[observation-tg].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Observation/obs-tg"
* entry[observation-tg].resource = obs-tg

* entry[observation-smoking].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Observation/obs-smokingStatus"
* entry[observation-smoking].resource = obs-smokingStatus

* entry[condition-dm].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Condition/con-dm"
* entry[condition-dm].resource = con-dm

* entry[condition-hbp].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Condition/con-hbp"
* entry[condition-hbp].resource = con-hbp