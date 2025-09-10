Profile:        FamilyMemberHistoryPAD
Parent:         FamilyMemberHistory
Id:             FamilyMemberHistory-pad
Title:          "慢性疾病家族史-FamilyMemberHistory PAD"
Description:    "此慢性疾病家族史-FamilyMemberHistory PAD Profile說明PAD IG如何進一步定義FHIR的FamilyMemberHistory Resource以呈現慢性疾病家族史的詳細記錄。"
* status = #completed
* patient only Reference(PatientPAD)
* relationship from http://terminology.hl7.org/ValueSet/v3-FamilyMember|3.0.0
* condition 1..* MS
* condition ^slicing.discriminator.type = #value
* condition ^slicing.discriminator.path = "code"
* condition ^slicing.rules = #closed
* condition contains
    cancer 0..1 MS and
    cvd 0..1 MS and
    dm 0..1 MS and
    hbp 0..1 MS and
    chronicDiseases 0..1 MS
* condition[cancer] ^short = "癌症"
* condition[cancer].code from ICDCMCa
* condition[cvd] ^short = "心血管疾病"
* condition[cvd].code from ICDCMCvd
* condition[dm] ^short = "糖尿病"
* condition[dm].code from ICDCMDm
* condition[hbp] ^short = "高血壓"
* condition[hbp].code from ICDCMHbp
* condition[chronicDiseases] ^short = "其他慢性病"
* condition[chronicDiseases].code from ICDCMOcd