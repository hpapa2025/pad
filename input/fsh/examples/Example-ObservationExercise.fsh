Instance:       obs-exercise
InstanceOf:     ObservationExercisePAD
Title:          "單次運動紀錄"
Description:    "依據單次運動紀錄-Observation Exercise PAD Profile呈現心血管疾病之範例"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity
* code.coding = http://loinc.org#82287-4 "Physical activity panel"
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectivePeriod.start = "2025-10-30T13:00:00+08:00"
* effectivePeriod.end = "2025-10-30T15:00:00+08:00"

* component[Type].valueCodeableConcept = ExerciseTypeCodes#volleyball

* component[MVPA].valueQuantity.value = 120
* component[MVPA].valueQuantity.unit = "min"
* component[MVPA].valueQuantity.system = "http://unitsofmeasure.org"
* component[MVPA].valueQuantity.code = #min

* component[Kcal].valueQuantity.value = 126
* component[Kcal].valueQuantity.unit = "kcal"
* component[Kcal].valueQuantity.system = "http://unitsofmeasure.org"
* component[Kcal].valueQuantity.code = #kcal

* component[Intensity].valueQuantity.value = 3.6
* component[Intensity].valueQuantity.unit = "METs"
* component[Intensity].valueQuantity.system = "http://unitsofmeasure.org"
* component[Intensity].valueQuantity.code = #[MET]

* component[Source].valueCodeableConcept = ExerciseRecordSourceCodes#app-third-party

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-exercise-pad.html\">單次運動紀錄-Observation Exercise PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>運動日期/時間(起)</b>：2025-10-30 13:00（UTC+08:00）</p>
    <p><b>運動日期/時間(訖)</b>：2025-10-30 15:00（UTC+08:00）</p>
    <p><b>運動類型</b>：排球</p>
    <p><b>MVPA分鐘數</b>：120 min</p>
    <p><b>預估消耗熱量</b>：126 kcal</p>
    <p><b>運動強度對應METs</b>：3.6</p>
    <p><b>運動紀錄來源</b>：第三方App同步</p>
</div>"