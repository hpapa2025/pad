Instance:       obs-occupation
InstanceOf:     ObservationOccupationPAD
Title:          "職業"
Description:    "依據職業-Observation Occupation PADProfile呈現職業之範例"
Usage: #example
* status = #final
* category[twcore] = http://terminology.hl7.org/CodeSystem/observation-category#social-history "Social History"
* code = http://loinc.org#11341-5 "History of Occupation"
* subject.reference = "Patient/pat-min"
* performer.reference = "Patient/pat-min"
* effectivePeriod.start = "2015-04-24"
* valueCodeableConcept = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/occupation-lia-roc-tw#04020030 "經理人員、行政人員"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #dbe7d9ff; padding: 6px; margin: 4px; border: 1px solid #9fc298ff; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Observation-occupation-pad.html\">職業-Observation Occupation PAD</a></p>
    </div>
    <p><b>狀態</b>：final</p>  
    <p><b>使用者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>紀錄者</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>職業</b>：經理人員、行政人員</p>
</div>"