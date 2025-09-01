Profile:        ObservationDietaryPreferencesPAD
Parent:         Observation
Id:             Observation-dietary-preferences-pad
Title:          "飲食偏好-Observation Dietary Preferences PAD"
Description:    "此飲食偏好-Observation Dietary Preferences PAD Profile說明PAD IG如何進一步定義FHIR的Observation Resource以呈現飲食偏好的詳細記錄。"
* status = #final
* code.coding 1..1
* code.coding = https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics#dietaryPreferences
* effective[x] only dateTime
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept.coding from DietaryPreferences
* valueCodeableConcept.coding 1..1
* valueCodeableConcept.coding.code ^short = "飲食偏好。高油：226097005｜高鹽：437411000124102｜高糖：412744006｜高熱量：436721000124103)"
* valueCodeableConcept.coding.code 1..1 MS
* valueCodeableConcept.coding.system 1..1
* valueCodeableConcept.coding.system = $SCT
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)