Instance:       obs-diet-prefs
InstanceOf:     ObservationDietaryPreferencesPAD
Title:          "飲食偏好"
Description:    "依據飲食偏好-Observation Dietary Preferences PAD Profile呈現使用者的飲食偏好之範例"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code.coding = https://www.hpa.gov.tw/pad/CodeSystem/pad-metrics#dietaryPreferences
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectiveDateTime = "2025-08-30T14:20:00+08:00"
* valueCodeableConcept.coding = $SCT#412744006

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-dietary-preferences-pad.html\">飲食偏好-Observation Dietary Preferences PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄日期/時間</b>：2025-08-30 14:20（UTC+08:00）</p>
    <p><b>飲食偏好</b>：高糖</p>
</div>"