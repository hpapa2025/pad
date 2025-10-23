Instance:       bundle-health-self-assessment-min
InstanceOf:     BundleHealthSelfAssessment
Title:          "自填調查表"
Description:    "依據自填調查表-Bundle Health Self Assessment PAD Profile呈現自填調查表之範例"
Usage: #example
* type = #transaction

* entry[patient].fullUrl = "https://fhir.hpa.gov.tw/pad/Patient/pat-min"
* entry[patient].resource = pat-min
* entry[patient].request.method = #PUT
* entry[patient].request.url = "Patient"

* entry[goal-health].fullUrl = "https://fhir.hpa.gov.tw/pad/Goal/goal-health"
* entry[goal-health].resource = goal-health
* entry[goal-health].request.method = #PUT
* entry[goal-health].request.url = "Goal"

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

* entry[observation-eating-out].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-eat-out"
* entry[observation-eating-out].resource = obs-eat-out
* entry[observation-eating-out].request.method = #PUT
* entry[observation-eating-out].request.url = "Observation"

* entry[observation-dietary].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-diet-prefs"
* entry[observation-dietary].resource = obs-diet-prefs
* entry[observation-dietary].request.method = #PUT
* entry[observation-dietary].request.url = "Observation"

* entry[observation-occupation].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-occupation"
* entry[observation-occupation].resource = obs-occupation
* entry[observation-occupation].request.method = #PUT
* entry[observation-occupation].request.url = "Observation"

* entry[observation-sedentary].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-sedentary-time"
* entry[observation-sedentary].resource = obs-sedentary-time
* entry[observation-sedentary].request.method = #PUT
* entry[observation-sedentary].request.url = "Observation"

* entry[observation-exercise-frequency].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-exercise-freq"
* entry[observation-exercise-frequency].resource = obs-exercise-freq
* entry[observation-exercise-frequency].request.method = #PUT
* entry[observation-exercise-frequency].request.url = "Observation"

* entry[observation-exercise-amount].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-exercise-amount"
* entry[observation-exercise-amount].resource = obs-exercise-amount
* entry[observation-exercise-amount].request.method = #PUT
* entry[observation-exercise-amount].request.url = "Observation"

* entry[observation-smoking].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-smokingStatus"
* entry[observation-smoking].resource = obs-smokingStatus
* entry[observation-smoking].request.method = #PUT
* entry[observation-smoking].request.url = "Observation"

* entry[condition-cancer].fullUrl = "https://fhir.hpa.gov.tw/pad/Condition/con-cancer"
* entry[condition-cancer].resource = con-cancer
* entry[condition-cancer].request.method = #PUT
* entry[condition-cancer].request.url = "Condition"

* entry[condition-cvd].fullUrl = "https://fhir.hpa.gov.tw/pad/Condition/con-cvd"
* entry[condition-cvd].resource = con-cvd
* entry[condition-cvd].request.method = #PUT
* entry[condition-cvd].request.url = "Condition"

* entry[condition-dm].fullUrl = "https://fhir.hpa.gov.tw/pad/Condition/con-dm"
* entry[condition-dm].resource = con-dm
* entry[condition-dm].request.method = #PUT
* entry[condition-dm].request.url = "Condition"

* entry[condition-hbp].fullUrl = "https://fhir.hpa.gov.tw/pad/Condition/con-hbp"
* entry[condition-hbp].resource = con-hbp
* entry[condition-hbp].request.method = #PUT
* entry[condition-hbp].request.url = "Condition"

* entry[condition-hld].fullUrl = "https://fhir.hpa.gov.tw/pad/Condition/con-hld"
* entry[condition-hld].resource = con-hld
* entry[condition-hld].request.method = #PUT
* entry[condition-hld].request.url = "Condition"

* entry[condition-cd].fullUrl = "https://fhir.hpa.gov.tw/pad/Condition/con-cd"
* entry[condition-cd].resource = con-cd
* entry[condition-cd].request.method = #PUT
* entry[condition-cd].request.url = "Condition"

* entry[familyMemberHistory].fullUrl = "https://fhir.hpa.gov.tw/pad/FamilyMemberHistory/fam-hx"
* entry[familyMemberHistory].resource = fam-hx
* entry[familyMemberHistory].request.method = #PUT
* entry[familyMemberHistory].request.url = "FamilyMemberHistory"