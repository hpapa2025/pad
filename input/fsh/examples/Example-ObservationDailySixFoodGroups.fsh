Instance:    ObservationSixMajorFoodGroups
InstanceOf:  ObservationSixMajorFoodGroupsPAD
Title:       "六大類食物紀錄"
Description: "依據六大類食物紀錄-Observation Six Major Food Groups PAD Profile呈現使用者一日中六大類食物的攝取量。"
Usage: #example

* status = #final
* code = $LOINC#80445-0
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-08-30"

* component[Grains].code = $LOINC#80456-7
* component[Grains].valueQuantity.value = 16
* component[Grains].valueQuantity.unit = "/d"
* component[Grains].valueQuantity.system = "http://unitsofmeasure.org"
* component[Grains].valueQuantity.code = #/d

* component[Vegetable].code = $LOINC#80460-9
* component[Vegetable].valueQuantity.value = 5
* component[Vegetable].valueQuantity.unit = "/d"
* component[Vegetable].valueQuantity.system = "http://unitsofmeasure.org"
* component[Vegetable].valueQuantity.code = #/d

* component[Protein].code = $LOINC#80464-1
* component[Protein].valueQuantity.value = 7
* component[Protein].valueQuantity.unit = "/d"
* component[Protein].valueQuantity.system = "http://unitsofmeasure.org"
* component[Protein].valueQuantity.code = #/d

* component[Fruit].code = $LOINC#80458-3
* component[Fruit].valueQuantity.value = 4
* component[Fruit].valueQuantity.unit = "/d"
* component[Fruit].valueQuantity.system = "http://unitsofmeasure.org"
* component[Fruit].valueQuantity.code = #/d

* component[Dairy].code = $LOINC#80462-5
* component[Dairy].valueQuantity.value = 1.5
* component[Dairy].valueQuantity.unit = "/d"
* component[Dairy].valueQuantity.system = "http://unitsofmeasure.org"
* component[Dairy].valueQuantity.code = #/d

* component[Oil].code = $LOINC#80466-6
* component[Oil].valueQuantity.value = 7
* component[Oil].valueQuantity.unit = "/d"
* component[Oil].valueQuantity.system = "http://unitsofmeasure.org"
* component[Oil].valueQuantity.code = #/d

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Observation-six-major-food-groups-pad.html\">六大類食物紀錄-Observation Six Major Food Groups PAD</a></p>
    </div>
    <h3><b>六大類食物紀錄</b></h3>
    <p><b>狀態</b>：final</p>
    <p><b>紀錄人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期</b>：2025-08-30</p>
    <blockquote>
        <p><b>全榖雜糧類</b>：16 /日</p>
        <p><b>蔬菜類</b>：5 /日</p>
        <p><b>豆魚蛋肉類</b>：7 /日</p>
        <p><b>水果類</b>：4 /日</p>
        <p><b>乳品類</b>：1.5 /日</p>
        <p><b>油脂與</b>：7 /日</p>
    </blockquote>
</div>"