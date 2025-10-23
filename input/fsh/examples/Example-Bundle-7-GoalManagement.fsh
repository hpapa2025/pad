Instance:       bundle-goal-management-min
InstanceOf:     BundleGoalManagement
Title:          "目標管理"
Description:    "依據目標管理-Bundle Goal Management PAD Profile呈現健康風險評估之範例"
Usage: #example
* type = #transaction

* entry[goal-weight].fullUrl = "https://fhir.hpa.gov.tw/pad/Goal/goal-weight"
* entry[goal-weight].resource = goal-weight
* entry[goal-weight].request.method = #PUT
* entry[goal-weight].request.url = "Goal"

* entry[goal-weight-change].fullUrl = "https://fhir.hpa.gov.tw/pad/Goal/goal-weight-change"
* entry[goal-weight-change].resource = goal-weight-change
* entry[goal-weight-change].request.method = #PUT
* entry[goal-weight-change].request.url = "Goal"

* entry[goal-loss-intensity].fullUrl = "https://fhir.hpa.gov.tw/pad/Goal/goal-weight-loss-intensity"
* entry[goal-loss-intensity].resource = goal-weight-loss-intensity
* entry[goal-loss-intensity].request.method = #PUT
* entry[goal-loss-intensity].request.url = "Goal"

* entry[goal-day-calories-burned].fullUrl = "https://fhir.hpa.gov.tw/pad/Goal/goal-day-calories-burned"
* entry[goal-day-calories-burned].resource = goal-day-calories-burned
* entry[goal-day-calories-burned].request.method = #PUT
* entry[goal-day-calories-burned].request.url = "Goal"

* entry[goal-day-steps].fullUrl = "https://fhir.hpa.gov.tw/pad/Goal/goal-day-steps"
* entry[goal-day-steps].resource = goal-day-steps
* entry[goal-day-steps].request.method = #PUT
* entry[goal-day-steps].request.url = "Goal"

* entry[goal-day-floors].fullUrl = "https://fhir.hpa.gov.tw/pad/Goal/goal-day-floors"
* entry[goal-day-floors].resource = goal-day-floors
* entry[goal-day-floors].request.method = #PUT
* entry[goal-day-floors].request.url = "Goal"

* entry[goal-day-distance].fullUrl = "https://fhir.hpa.gov.tw/pad/Goal/goal-day-distance"
* entry[goal-day-distance].resource = goal-day-distance
* entry[goal-day-distance].request.method = #PUT
* entry[goal-day-distance].request.url = "Goal"

* entry[goal-week-calories-burned].fullUrl = "https://fhir.hpa.gov.tw/pad/Goal/goal-week-calories-burned"
* entry[goal-week-calories-burned].resource = goal-week-calories-burned
* entry[goal-week-calories-burned].request.method = #PUT
* entry[goal-week-calories-burned].request.url = "Goal"

* entry[goal-week-exercise-amount].fullUrl = "https://fhir.hpa.gov.tw/pad/Goal/goal-week-exercise-amount"
* entry[goal-week-exercise-amount].resource = goal-week-exercise-amount
* entry[goal-week-exercise-amount].request.method = #PUT
* entry[goal-week-exercise-amount].request.url = "Goal"

* entry[goal-water-intake].fullUrl = "https://fhir.hpa.gov.tw/pad/Goal/goal-day-water-intake"
* entry[goal-water-intake].resource = goal-day-water-intake
* entry[goal-water-intake].request.method = #PUT
* entry[goal-water-intake].request.url = "Goal"

* entry[goal-calories-intake].fullUrl = "https://fhir.hpa.gov.tw/pad/Goal/goal-day-calories-intake"
* entry[goal-calories-intake].resource = goal-day-calories-intake
* entry[goal-calories-intake].request.method = #PUT
* entry[goal-calories-intake].request.url = "Goal"

* entry[goal-dairy].fullUrl = "https://fhir.hpa.gov.tw/pad/Goal/goal-dairy"
* entry[goal-dairy].resource = goal-dairy
* entry[goal-dairy].request.method = #PUT
* entry[goal-dairy].request.url = "Goal"

* entry[goal-fruits].fullUrl = "https://fhir.hpa.gov.tw/pad/Goal/goal-fruits"
* entry[goal-fruits].resource = goal-fruits
* entry[goal-fruits].request.method = #PUT
* entry[goal-fruits].request.url = "Goal"

* entry[goal-grains].fullUrl = "https://fhir.hpa.gov.tw/pad/Goal/goal-grains"
* entry[goal-grains].resource = goal-grains
* entry[goal-grains].request.method = #PUT
* entry[goal-grains].request.url = "Goal"

* entry[goal-oils-and-nuts].fullUrl = "https://fhir.hpa.gov.tw/pad/Goal/goal-oils-and-nuts"
* entry[goal-oils-and-nuts].resource = goal-oils-and-nuts
* entry[goal-oils-and-nuts].request.method = #PUT
* entry[goal-oils-and-nuts].request.url = "Goal"

* entry[goal-protein-foods].fullUrl = "https://fhir.hpa.gov.tw/pad/Goal/goal-protein-foods"
* entry[goal-protein-foods].resource = goal-protein-foods
* entry[goal-protein-foods].request.method = #PUT
* entry[goal-protein-foods].request.url = "Goal"

* entry[goal-vegetables].fullUrl = "https://fhir.hpa.gov.tw/pad/Goal/goal-vegetables"
* entry[goal-vegetables].resource = goal-vegetables
* entry[goal-vegetables].request.method = #PUT
* entry[goal-vegetables].request.url = "Goal"