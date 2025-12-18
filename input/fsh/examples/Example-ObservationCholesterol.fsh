Instance:       obs-chol
InstanceOf:     ObservationCholesterolPAD
Title:          "總膽固醇(含高密度膽固醇+低密度膽固醇)"
Description:    "依據總膽固醇(含高密度膽固醇+低密度膽固醇)-Observation Cholesterol PAD Profile呈現總膽固醇、高密度膽固醇及低密度膽固醇之範例"
Usage: #example
* status = #final
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* category[twcore] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code.coding[LOINCObservationCode] = http://loinc.org#2093-3 "Cholesterol [Mass/volume] in Serum or Plasma"
* effectiveDateTime = "2025-10-30T23:30:00+08:00"
* valueQuantity.value = 180
* valueQuantity.unit = "mg/dL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mg/dL
* component[HDL].code = http://loinc.org#2085-9 "Cholesterol in HDL [Mass/volume] in Serum or Plasma"
* component[HDL].valueQuantity.value = 38
* component[HDL].valueQuantity.unit = "mg/dL"
* component[HDL].valueQuantity.system = "http://unitsofmeasure.org"
* component[HDL].valueQuantity.code = #mg/dL

* component[LDL].code = http://loinc.org#2089-1 "Cholesterol in LDL [Mass/volume] in Serum or Plasma"
* component[LDL].valueQuantity.value = 125
* component[LDL].valueQuantity.unit = "mg/dL"
* component[LDL].valueQuantity.system = "http://unitsofmeasure.org"
* component[LDL].valueQuantity.code = #mg/dL
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-chol-pad.html\">總膽固醇(高密度膽固醇+低密度膽固醇)-Observation Cholesterol PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期</b>：2025-10-30</p>
    <p><b>總膽固醇測量值</b>：180 mg/dL</p>
    <p><b>高密度膽固醇測量值</b>：38 mg/dL</p>
    <p><b>低密度醇測量值</b>：125 mg/dL</p>
</div>"