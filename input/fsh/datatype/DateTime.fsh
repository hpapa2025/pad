Profile: DateTimePAD
Parent: dateTime
Id: DateTime-pad
Title: "PAD DateTime"
Description: "此PAD DateTime Data Type Profile說明本IG如何進一步定義FHIR的DateTime資料類型以呈現DateTime"

* . obeys datetime-mm


Invariant: datetime-mm
Description: "日期時間至少要精確到分鐘"
Severity: #error
Expression: "value.length() > 16"
