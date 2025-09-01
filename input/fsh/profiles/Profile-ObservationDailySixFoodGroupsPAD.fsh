Alias: $LOINC = http://loinc.org

Profile:        ObservationSixMajorFoodGroupsPAD
Parent:         Observation
Id:             Observation-six-major-food-groups-pad
Title:          "六大類食物紀錄-Observation Six Major Food Groups PAD"
Description:    "此六大類食物紀錄-Observation Six Major Food Groups PAD Profile說明PAD IG如何進一步定義FHIR的Observation Resource以呈現與身體活動及飲食相關的六大類食物紀錄。"

* status = #final
* code = $LOINC#80445-0
* performer 1..1 MS
* performer only Reference(PatientPAD)
* subject only Reference(PatientPAD)
* effectiveDateTime 1..1 MS

* component 6..6 MS
  *  ^short = "六大類食物紀錄"

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component  ^short = "每日六大類食物的攝取量"
* component contains
    Grains 1..1 MS and
    Vegetable 1..1 MS and
    Protein 1..1 MS and
    Fruit 1..1 MS and
    Dairy 1..1 MS and
    Oil 1..1 MS

* component[Grains] ^short = "全榖雜糧類的攝取量"
* component[Grains].code = $LOINC#80456-7
* component[Grains].value[x] only Quantity
* component[Grains].valueQuantity.value 1..1 MS
* component[Grains].valueQuantity.unit = "/d"
* component[Grains].valueQuantity.system = "http://unitsofmeasure.org"
* component[Grains].valueQuantity.code = #/d

* component[Vegetable] ^short = "蔬菜類的攝取量"
* component[Vegetable].code = $LOINC#80460-9
* component[Vegetable].value[x] only Quantity
* component[Vegetable].valueQuantity.value 1..1 MS
* component[Vegetable].valueQuantity.unit = "/d"
* component[Vegetable].valueQuantity.system = "http://unitsofmeasure.org"
* component[Vegetable].valueQuantity.code = #/d

* component[Protein] ^short = "豆魚肉蛋類的攝取量"
* component[Protein].code = $LOINC#80464-1
* component[Protein].value[x] only Quantity
* component[Protein].valueQuantity.value 1..1 MS
* component[Protein].valueQuantity.unit = "/d"
* component[Protein].valueQuantity.system = "http://unitsofmeasure.org"
* component[Protein].valueQuantity.code = #/d

* component[Fruit] ^short = "水果類的攝取量"
* component[Fruit].code = $LOINC#80458-3
* component[Fruit].value[x] only Quantity
* component[Fruit].valueQuantity.value 1..1 MS
* component[Fruit].valueQuantity.unit = "/d"
* component[Fruit].valueQuantity.system = "http://unitsofmeasure.org"
* component[Fruit].valueQuantity.code = #/d

* component[Dairy] ^short = "乳品類的攝取量"
* component[Dairy].code = $LOINC#80462-5
* component[Dairy].value[x] only Quantity
* component[Dairy].valueQuantity.value 1..1 MS
* component[Dairy].valueQuantity.unit = "/d"
* component[Dairy].valueQuantity.system = "http://unitsofmeasure.org"
* component[Dairy].valueQuantity.code = #/d

* component[Oil] ^short = "油脂與堅果種子類的攝取量"
* component[Oil].code = $LOINC#80466-6
* component[Oil].value[x] only Quantity
* component[Oil].valueQuantity.value 1..1 MS
* component[Oil].valueQuantity.unit = "/d"
* component[Oil].valueQuantity.system = "http://unitsofmeasure.org"
* component[Oil].valueQuantity.code = #/d
