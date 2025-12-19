Profile:        ObservationExercisePAD
Parent:         Observation
Id:             Observation-exercise-pad
Title:          "單次運動紀錄-Observation Exercise PAD"
Description:    "此單次運動紀錄-Observation Exercise PAD Profile說明PAD IG如何進一步定義FHIR的Observation Resource以呈現單次運動紀錄。"
* status = #final
* category 1..1
* category.coding 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity
* code.coding 1..1
* code.coding = http://loinc.org#82287-4
* performer 1..1 MS
* performer only Reference(PatientPAD)
* subject 1..
* subject only Reference(PatientPAD)
* effective[x] 1..1
* effective[x] only Period
* effectivePeriod 1..1 MS
* effectivePeriod.start 1..1 MS
* effectivePeriod.start only DateTimePAD
* effectivePeriod.end 1..1 MS
* effectivePeriod.end only DateTimePAD
* effectivePeriod ^short = "運動時間/日期(運動時長)"

* component 5..5 MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component contains
    Type 1..1 MS and
    MVPA 1..1 MS and
    Kcal 1..1 MS and
    Intensity 1..1 MS and
    Source 1..1 MS

* component[Type] ^short = "運動類型"
* component[Type].code = PADMetricsCodes#exerciseType
* component[Type].value[x] only CodeableConcept
* component[Type].valueCodeableConcept from ExerciseType
* component[Type].valueCodeableConcept.coding 1..1
* component[Type].valueCodeableConcept.coding.code 1..1 MS

* component[MVPA] ^short = "MVPA分鐘數"
* component[MVPA].code = PADMetricsCodes#mvpa
* component[MVPA].value[x] only Quantity
* component[MVPA].valueQuantity.value 1..1 MS
* component[MVPA].valueQuantity.unit = "min"
* component[MVPA].valueQuantity.system = "http://unitsofmeasure.org"
* component[MVPA].valueQuantity.code = #min
* component[MVPA].valueQuantity.system 1..1
* component[MVPA].valueQuantity.code 1..1

* component[Kcal] ^short = "預估消耗熱量"
* component[Kcal].code = PADMetricsCodes#energyExpended
* component[Kcal].value[x] only Quantity
* component[Kcal].valueQuantity.value 1..1 MS
* component[Kcal].valueQuantity.unit = "kcal"
* component[Kcal].valueQuantity.system = "http://unitsofmeasure.org"
* component[Kcal].valueQuantity.code = #kcal
* component[Kcal].valueQuantity.system 1..1
* component[Kcal].valueQuantity.code 1..1

* component[Intensity] ^short = "運動強度"
* component[Intensity].code = PADMetricsCodes#exerciseIntensity
* component[Intensity].value[x] only Quantity
* component[Intensity].valueQuantity.value 1..1 MS
* component[Intensity].valueQuantity.unit = "METs"
* component[Intensity].valueQuantity.system = "http://unitsofmeasure.org"
* component[Intensity].valueQuantity.code = #[MET]
* component[Intensity].valueQuantity.system 1..1
* component[Intensity].valueQuantity.code 1..1

* component[Source] ^short = "運動紀錄來源"
* component[Source].code = PADMetricsCodes#exerciseRecordSource
* component[Source].value[x] only CodeableConcept
* component[Source].valueCodeableConcept from ExerciseRecordSource
* component[Source].valueCodeableConcept.coding 1..1
* component[Source].valueCodeableConcept.coding.code 1..1 MS