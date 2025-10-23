Instance:       bundle-water-intake-min
InstanceOf:     BundleWaterIntake
Title:          "飲水紀錄"
Description:    "依據飲水紀錄-Bundle Water Intake PAD Profile呈現飲水紀錄之範例"
Usage: #example
* type = #transaction

* entry[observation-water-intake].fullUrl = "https://fhir.hpa.gov.tw/pad/Observation/obs-water-intake"
* entry[observation-water-intake].resource = obs-water-intake
* entry[observation-water-intake].request.method = #POST
* entry[observation-water-intake].request.url = "Observation"