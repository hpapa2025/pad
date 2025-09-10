Profile:        ObservationWaterIntakePAD
Parent:         Observation
Id:             Observation-water-intake-pad
Title:          "每次攝取水量-Observation Water Intake PAD"
Description:    "此每次攝取水量-Observation Water Intake PAD Profile說明PAD IG如何進一步定義FHIR的Observation Resource以呈現每次攝取水量的詳細記錄。"
* status = #final
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding 1..1
* code.coding = http://snomed.info/sct#226354008
* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "每次攝取時間/日期"
* value[x] 1..1
* value[x] only Quantity
* valueQuantity ^short = "每次攝取水量及單位"
* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = "每次攝取水量"
* valueQuantity.code ^short = "單位"
* valueQuantity.unit ^short = "單位"
* valueQuantity.code = #mL
* valueQuantity.system = "http://unitsofmeasure.org"
* subject only Reference(PatientPAD)
* performer only Reference(PatientPAD)

/*Profile:        BundleWaterIntake
Parent:         TWCoreBundle
Id:             Bundle-water-intake-pad
Title:          "飲水紀錄-Bundle TWPAS"
Description:    "此飲水紀錄-Bundle TWPAS Profile說明本IG如何進一步定義資料交換基本單位(TW Core Bundle) Profile以呈現飲水紀錄之內容"
* type = #transaction
* entry 1..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
	observation-water-intake 1.. MS */