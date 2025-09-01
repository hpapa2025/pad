Instance:       obs-bfp
InstanceOf:     ObservationBodyFatPercentagePAD
Title:          "體脂率"
Description:    "依據體脂率-Observation Body Fat Percentage PAD Profile呈現體脂率之範例"
Usage: #example
* status = #final
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code.coding = http://loinc.org#41982-0 "Percentage of body fat Measured"
* effectiveDateTime = "2025-08-30"
* valueQuantity.value = 18
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-bfp-pad.html\">體脂率-Observation Body Fat Percentage PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期</b>：2025-08-30</p>
    <p><b>體脂率測量值</b>：18%</p>
</div>"

Instance:       obs-bloodPressure
InstanceOf:     ObservationBloodPressurePAD
Title:          "血壓(收縮壓+舒張壓)"
Description:    "依據血壓(收縮壓+舒張壓)-Observation Blood Pressure PAD Profile呈現收縮壓及舒張壓之範例"
Usage: #example
* status = #final
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-08-30"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* component[SystolicBP].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[SystolicBP].valueQuantity = 118 'mm[Hg]' "mmHg"
* component[DiastolicBP].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity = 75 'mm[Hg]' "mmHg"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-bloodPressure-pad.html\">血壓(收縮壓+舒張壓)-Observation Blood Pressure PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期</b>：2025-08-30</p>
    <p><b>收縮壓測量值</b>：118 mm/Hg</p>
    <p><b>舒張壓測量值</b>：75 mm/Hg</p>
</div>"

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
* effectiveDateTime = "2025-08-30"
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
    <p><b>紀錄日期</b>：2025-08-30</p>
    <p><b>總膽固醇測量值</b>：180 mg/dL</p>
    <p><b>高密度膽固醇測量值</b>：38 mg/dL</p>
    <p><b>低密度醇測量值</b>：125 mg/dL</p>
</div>"

Instance:       obs-tg
InstanceOf:     ObservationTriglyceridesPAD
Title:          "三酸甘油脂"
Description:    "依據三酸甘油脂-Observation Triglycerides PAD Profile呈現三酸甘油脂之範例"
Usage: #example
* status = #final
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* category[twcore] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code.coding[LOINCObservationCode] = http://loinc.org#2571-8 "Triglyceride [Mass/volume] in Serum or Plasma"
* effectiveDateTime = "2025-08-30"
* valueQuantity.value = 110
* valueQuantity.unit = "mg/dL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mg/dL
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-tg-pad.html\">三酸甘油脂-Observation Triglycerides PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期</b>：2025-08-30</p>
    <p><b>三酸甘油脂測量值</b>：110 mg/dL</p>
</div>"

Instance:       obs-fg
InstanceOf:     ObservationFastingGlucosePAD
Title:          "空腹血糖"
Description:    "依據空腹血糖-Observation Fasting Glucose PAD Profile呈現空腹血糖之範例"
Usage: #example
* status = #final
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* category[twcore] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code.coding[LOINCObservationCode] = http://loinc.org#1558-6 "Fasting glucose [Mass/volume] in Serum or Plasma"
* effectiveDateTime = "2025-08-30"
* valueQuantity.value = 80
* valueQuantity.unit = "mg/dL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mg/dL
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-fg-pad.html\">空腹血糖-Observation Fasting Glucose PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期</b>：2025-08-30</p>
    <p><b>空腹血糖測量值</b>：80 mg/dL</p>
</div>"